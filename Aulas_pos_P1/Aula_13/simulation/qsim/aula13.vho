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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "10/26/2022 19:09:22"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	aula13 IS
    PORT (
	CLOCK_50 : IN std_logic;
	Ctrl_write : IN std_logic;
	Sel_ULA : IN std_logic_vector(1 DOWNTO 0);
	Instru_opcode : OUT std_logic_vector(5 DOWNTO 0);
	Funct : OUT std_logic_vector(5 DOWNTO 0);
	ULAA_OUT : OUT std_logic_vector(31 DOWNTO 0);
	RS_OUT : OUT std_logic_vector(31 DOWNTO 0);
	RT_OUT : OUT std_logic_vector(31 DOWNTO 0);
	Rs_End : OUT std_logic_vector(4 DOWNTO 0);
	Rt_End : OUT std_logic_vector(4 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(31 DOWNTO 0)
	);
END aula13;

-- Design Ports Information
-- Instru_opcode[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instru_opcode[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instru_opcode[2]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instru_opcode[3]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instru_opcode[4]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instru_opcode[5]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Funct[0]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Funct[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Funct[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Funct[3]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Funct[4]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Funct[5]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[0]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[1]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[2]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[3]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[4]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[5]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[6]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[7]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[8]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[9]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[10]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[11]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[12]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[13]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[14]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[15]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[16]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[17]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[18]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[19]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[20]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[21]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[22]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[23]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[24]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[25]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[26]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[27]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[28]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[29]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[30]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[31]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[0]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[1]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[4]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[5]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[6]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[7]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[8]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[9]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[10]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[11]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[12]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[13]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[14]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[15]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[16]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[17]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[18]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[19]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[20]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[21]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[22]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[23]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[24]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[25]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[26]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[27]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[28]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[29]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[30]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[31]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[0]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[1]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[2]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[3]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[4]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[5]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[6]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[7]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[8]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[9]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[10]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[11]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[12]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[13]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[14]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[15]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[16]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[17]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[18]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[19]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[20]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[21]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[22]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[23]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[24]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[25]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[26]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[27]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[28]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[29]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[30]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[31]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_End[0]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_End[1]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_End[2]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_End[3]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_End[4]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_End[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_End[1]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_End[2]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_End[3]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_End[4]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[9]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[10]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[11]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[12]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[13]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[14]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[15]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[16]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[17]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[18]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[19]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[20]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[21]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[22]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[23]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[24]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[25]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[26]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[27]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[28]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[29]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[30]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[31]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel_ULA[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel_ULA[0]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ctrl_write	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF aula13 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_Ctrl_write : std_logic;
SIGNAL ww_Sel_ULA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Instru_opcode : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Funct : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_ULAA_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RS_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RT_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Rs_End : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Rt_End : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \REG_PC|DOUT[0]~0_combout\ : std_logic;
SIGNAL \somador|Add0~25_sumout\ : std_logic;
SIGNAL \REG_PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \somador|Add0~26\ : std_logic;
SIGNAL \somador|Add0~5_sumout\ : std_logic;
SIGNAL \REG_PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \somador|Add0~6\ : std_logic;
SIGNAL \somador|Add0~1_sumout\ : std_logic;
SIGNAL \REG_PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \somador|Add0~2\ : std_logic;
SIGNAL \somador|Add0~13_sumout\ : std_logic;
SIGNAL \REG_PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \somador|Add0~14\ : std_logic;
SIGNAL \somador|Add0~9_sumout\ : std_logic;
SIGNAL \REG_PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \somador|Add0~10\ : std_logic;
SIGNAL \somador|Add0~21_sumout\ : std_logic;
SIGNAL \somador|Add0~22\ : std_logic;
SIGNAL \somador|Add0~17_sumout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \REG_PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[1]~0_combout\ : std_logic;
SIGNAL \Sel_ULA[0]~input_o\ : std_logic;
SIGNAL \Sel_ULA[1]~input_o\ : std_logic;
SIGNAL \BANCO_REG|saidaA[0]~1_combout\ : std_logic;
SIGNAL \REG_PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1062_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~38feeder_combout\ : std_logic;
SIGNAL \Ctrl_write~input_o\ : std_logic;
SIGNAL \BANCO_REG|registrador~1088_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~38_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1063_combout\ : std_logic;
SIGNAL \ULA1|Add0~130_cout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~294feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1089_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~294_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[0]~2_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[0]~0_combout\ : std_logic;
SIGNAL \ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \ULA1|saida[0]~1_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~295feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[1]~3_combout\ : std_logic;
SIGNAL \ULA1|Add0~5_wirecell_combout\ : std_logic;
SIGNAL \ULA1|saida[1]~2_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~39_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[1]~1_combout\ : std_logic;
SIGNAL \ULA1|saida[1]~2_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~295_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1064_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|saida[1]~3_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~40feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~40_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1065_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~296feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~296_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[2]~4_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[2]~2_combout\ : std_logic;
SIGNAL \ULA1|saida[2]~4_combout\ : std_logic;
SIGNAL \ULA1|saida[2]~5_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~297feeder_combout\ : std_logic;
SIGNAL \ULA1|Add0~13_wirecell_combout\ : std_logic;
SIGNAL \ULA1|saida[3]~6_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~41_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[3]~3_combout\ : std_logic;
SIGNAL \ULA1|saida[3]~6_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~297_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[3]~5_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1066_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|saida[3]~7_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~298feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~42feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~42_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[4]~4_combout\ : std_logic;
SIGNAL \ULA1|saida[4]~8_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~298_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[4]~6_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1067_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|saida[4]~9_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~299feeder_combout\ : std_logic;
SIGNAL \ULA1|Add0~21_wirecell_combout\ : std_logic;
SIGNAL \ULA1|saida[5]~10_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~43_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[5]~5_combout\ : std_logic;
SIGNAL \ULA1|saida[5]~10_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~299_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[5]~7_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1068_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|saida[5]~11_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~300feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~44feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~44_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[6]~6_combout\ : std_logic;
SIGNAL \ULA1|saida[6]~12_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~300_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[6]~8_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1069_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|saida[6]~13_combout\ : std_logic;
SIGNAL \ULA1|Add0~29_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~301feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~301_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[7]~7_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[7]~9_combout\ : std_logic;
SIGNAL \ULA1|saida[7]~14_combout\ : std_logic;
SIGNAL \ULA1|saida[7]~14_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~45_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1070_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|saida[7]~15_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~46feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~302feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~302_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[8]~10_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[8]~8_combout\ : std_logic;
SIGNAL \ULA1|saida[8]~16_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~46_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1071_combout\ : std_logic;
SIGNAL \ULA1|Add0~30\ : std_logic;
SIGNAL \ULA1|Add0~33_sumout\ : std_logic;
SIGNAL \ULA1|saida[8]~17_combout\ : std_logic;
SIGNAL \ULA1|Add0~37_wirecell_combout\ : std_logic;
SIGNAL \ULA1|saida[9]~18_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~47_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1072_combout\ : std_logic;
SIGNAL \ULA1|Add0~34\ : std_logic;
SIGNAL \ULA1|Add0~37_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~303feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~303_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[9]~11_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[9]~9_combout\ : std_logic;
SIGNAL \ULA1|saida[9]~18_combout\ : std_logic;
SIGNAL \ULA1|saida[9]~19_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~48feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~48_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1073_combout\ : std_logic;
SIGNAL \ULA1|Add0~38\ : std_logic;
SIGNAL \ULA1|Add0~41_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~304feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~304_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[10]~12_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[10]~10_combout\ : std_logic;
SIGNAL \ULA1|saida[10]~20_combout\ : std_logic;
SIGNAL \ULA1|saida[10]~21_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~305feeder_combout\ : std_logic;
SIGNAL \ULA1|Add0~45_wirecell_combout\ : std_logic;
SIGNAL \ULA1|saida[11]~22_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~49_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[11]~11_combout\ : std_logic;
SIGNAL \ULA1|saida[11]~22_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~305_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[11]~13_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1074_combout\ : std_logic;
SIGNAL \ULA1|Add0~42\ : std_logic;
SIGNAL \ULA1|Add0~45_sumout\ : std_logic;
SIGNAL \ULA1|saida[11]~23_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~306feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~50feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~50_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[12]~12_combout\ : std_logic;
SIGNAL \ULA1|saida[12]~24_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~306_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[12]~14_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1075_combout\ : std_logic;
SIGNAL \ULA1|Add0~46\ : std_logic;
SIGNAL \ULA1|Add0~49_sumout\ : std_logic;
SIGNAL \ULA1|saida[12]~25_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~307feeder_combout\ : std_logic;
SIGNAL \ULA1|Add0~53_wirecell_combout\ : std_logic;
SIGNAL \ULA1|saida[13]~26_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~51_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[13]~13_combout\ : std_logic;
SIGNAL \ULA1|saida[13]~26_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~307_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[13]~15_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1076_combout\ : std_logic;
SIGNAL \ULA1|Add0~50\ : std_logic;
SIGNAL \ULA1|Add0~53_sumout\ : std_logic;
SIGNAL \ULA1|saida[13]~27_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~308feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~52feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~52_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[14]~14_combout\ : std_logic;
SIGNAL \ULA1|saida[14]~28_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~308_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[14]~16_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1077_combout\ : std_logic;
SIGNAL \ULA1|Add0~54\ : std_logic;
SIGNAL \ULA1|Add0~57_sumout\ : std_logic;
SIGNAL \ULA1|saida[14]~29_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~309feeder_combout\ : std_logic;
SIGNAL \ULA1|Add0~61_wirecell_combout\ : std_logic;
SIGNAL \ULA1|saida[15]~30_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~53_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[15]~15_combout\ : std_logic;
SIGNAL \ULA1|saida[15]~30_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~309_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[15]~17_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1078_combout\ : std_logic;
SIGNAL \ULA1|Add0~58\ : std_logic;
SIGNAL \ULA1|Add0~61_sumout\ : std_logic;
SIGNAL \ULA1|saida[15]~31_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~54feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~54_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1079_combout\ : std_logic;
SIGNAL \ULA1|Add0~62\ : std_logic;
SIGNAL \ULA1|Add0~65_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~310feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~310_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[16]~18_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[16]~16_combout\ : std_logic;
SIGNAL \ULA1|saida[16]~32_combout\ : std_logic;
SIGNAL \ULA1|saida[16]~33_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~311feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~311_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[17]~19_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1080_combout\ : std_logic;
SIGNAL \ULA1|Add0~66\ : std_logic;
SIGNAL \ULA1|Add0~69_sumout\ : std_logic;
SIGNAL \ULA1|Add0~69_wirecell_combout\ : std_logic;
SIGNAL \ULA1|saida[17]~34_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~55_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[17]~17_combout\ : std_logic;
SIGNAL \ULA1|saida[17]~34_combout\ : std_logic;
SIGNAL \ULA1|saida[17]~35_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~312feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~56feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~56_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[18]~18_combout\ : std_logic;
SIGNAL \ULA1|saida[18]~36_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~312_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[18]~20_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1081_combout\ : std_logic;
SIGNAL \ULA1|Add0~70\ : std_logic;
SIGNAL \ULA1|Add0~73_sumout\ : std_logic;
SIGNAL \ULA1|saida[18]~37_combout\ : std_logic;
SIGNAL \ULA1|Add0~77_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~313feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~313_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[19]~21_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[19]~19_combout\ : std_logic;
SIGNAL \ULA1|saida[19]~38_combout\ : std_logic;
SIGNAL \ULA1|saida[19]~38_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~57_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1082_combout\ : std_logic;
SIGNAL \ULA1|Add0~74\ : std_logic;
SIGNAL \ULA1|Add0~77_sumout\ : std_logic;
SIGNAL \ULA1|saida[19]~39_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~58feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~58_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1083_combout\ : std_logic;
SIGNAL \ULA1|Add0~78\ : std_logic;
SIGNAL \ULA1|Add0~81_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~314feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~314_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[20]~22_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[20]~20_combout\ : std_logic;
SIGNAL \ULA1|saida[20]~40_combout\ : std_logic;
SIGNAL \ULA1|saida[20]~41_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~315feeder_combout\ : std_logic;
SIGNAL \ULA1|Add0~85_wirecell_combout\ : std_logic;
SIGNAL \ULA1|saida[21]~42_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~59_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[21]~21_combout\ : std_logic;
SIGNAL \ULA1|saida[21]~42_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~315_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[21]~23_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1084_combout\ : std_logic;
SIGNAL \ULA1|Add0~82\ : std_logic;
SIGNAL \ULA1|Add0~85_sumout\ : std_logic;
SIGNAL \ULA1|saida[21]~43_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~316feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~60feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~60_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[22]~22_combout\ : std_logic;
SIGNAL \ULA1|saida[22]~44_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~316_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[22]~24_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1085_combout\ : std_logic;
SIGNAL \ULA1|Add0~86\ : std_logic;
SIGNAL \ULA1|Add0~89_sumout\ : std_logic;
SIGNAL \ULA1|saida[22]~45_combout\ : std_logic;
SIGNAL \ULA1|Add0~93_wirecell_combout\ : std_logic;
SIGNAL \ULA1|saida[23]~46_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~61_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1086_combout\ : std_logic;
SIGNAL \ULA1|Add0~90\ : std_logic;
SIGNAL \ULA1|Add0~93_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~317feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~317_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[23]~25_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[23]~23_combout\ : std_logic;
SIGNAL \ULA1|saida[23]~46_combout\ : std_logic;
SIGNAL \ULA1|saida[23]~47_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~318feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[24]~26_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~62feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~62_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[24]~24_combout\ : std_logic;
SIGNAL \ULA1|saida[24]~48_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~318_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1087_combout\ : std_logic;
SIGNAL \ULA1|Add0~94\ : std_logic;
SIGNAL \ULA1|Add0~97_sumout\ : std_logic;
SIGNAL \ULA1|saida[24]~49_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~319feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[25]~25_combout\ : std_logic;
SIGNAL \ULA1|saida[25]~50_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~319_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[25]~27_combout\ : std_logic;
SIGNAL \ULA1|Add0~101_wirecell_combout\ : std_logic;
SIGNAL \ULA1|saida[25]~50_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~63_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1090_combout\ : std_logic;
SIGNAL \ULA1|Add0~98\ : std_logic;
SIGNAL \ULA1|Add0~101_sumout\ : std_logic;
SIGNAL \ULA1|saida[25]~51_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~64feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~64_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1091_combout\ : std_logic;
SIGNAL \ULA1|Add0~102\ : std_logic;
SIGNAL \ULA1|Add0~105_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~320feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~320_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[26]~28_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[26]~26_combout\ : std_logic;
SIGNAL \ULA1|saida[26]~52_combout\ : std_logic;
SIGNAL \ULA1|saida[26]~53_combout\ : std_logic;
SIGNAL \ULA1|Add0~109_wirecell_combout\ : std_logic;
SIGNAL \ULA1|saida[27]~54_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~65_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1092_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[27]~29_combout\ : std_logic;
SIGNAL \ULA1|Add0~106\ : std_logic;
SIGNAL \ULA1|Add0~109_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~321feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~321_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[27]~27_combout\ : std_logic;
SIGNAL \ULA1|saida[27]~54_combout\ : std_logic;
SIGNAL \ULA1|saida[27]~55_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[28]~30_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~66feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~66_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1093_combout\ : std_logic;
SIGNAL \ULA1|Add0~110\ : std_logic;
SIGNAL \ULA1|Add0~113_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~322feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~322_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[28]~28_combout\ : std_logic;
SIGNAL \ULA1|saida[28]~56_combout\ : std_logic;
SIGNAL \ULA1|saida[28]~57_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~323feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[29]~29_combout\ : std_logic;
SIGNAL \ULA1|saida[29]~58_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~323_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[29]~31_combout\ : std_logic;
SIGNAL \ULA1|Add0~117_wirecell_combout\ : std_logic;
SIGNAL \ULA1|saida[29]~58_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~67_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1094_combout\ : std_logic;
SIGNAL \ULA1|Add0~114\ : std_logic;
SIGNAL \ULA1|Add0~117_sumout\ : std_logic;
SIGNAL \ULA1|saida[29]~59_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~68feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~68_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1095_combout\ : std_logic;
SIGNAL \ULA1|Add0~118\ : std_logic;
SIGNAL \ULA1|Add0~121_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~324feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~324_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[30]~32_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[30]~30_combout\ : std_logic;
SIGNAL \ULA1|saida[30]~60_combout\ : std_logic;
SIGNAL \ULA1|saida[30]~61_combout\ : std_logic;
SIGNAL \ULA1|Add0~125_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~325_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[31]~33_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[31]~31_combout\ : std_logic;
SIGNAL \ULA1|saida[31]~62_combout\ : std_logic;
SIGNAL \ULA1|saida[31]~62_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~69_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1096_combout\ : std_logic;
SIGNAL \ULA1|Add0~122\ : std_logic;
SIGNAL \ULA1|Add0~125_sumout\ : std_logic;
SIGNAL \ULA1|saida[31]~63_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \REG_PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \somador|Add0~18\ : std_logic;
SIGNAL \somador|Add0~29_sumout\ : std_logic;
SIGNAL \somador|Add0~30\ : std_logic;
SIGNAL \somador|Add0~33_sumout\ : std_logic;
SIGNAL \REG_PC|DOUT[10]~DUPLICATE_q\ : std_logic;
SIGNAL \somador|Add0~34\ : std_logic;
SIGNAL \somador|Add0~37_sumout\ : std_logic;
SIGNAL \somador|Add0~38\ : std_logic;
SIGNAL \somador|Add0~41_sumout\ : std_logic;
SIGNAL \REG_PC|DOUT[12]~DUPLICATE_q\ : std_logic;
SIGNAL \somador|Add0~42\ : std_logic;
SIGNAL \somador|Add0~45_sumout\ : std_logic;
SIGNAL \somador|Add0~46\ : std_logic;
SIGNAL \somador|Add0~49_sumout\ : std_logic;
SIGNAL \REG_PC|DOUT[14]~DUPLICATE_q\ : std_logic;
SIGNAL \somador|Add0~50\ : std_logic;
SIGNAL \somador|Add0~53_sumout\ : std_logic;
SIGNAL \somador|Add0~54\ : std_logic;
SIGNAL \somador|Add0~57_sumout\ : std_logic;
SIGNAL \REG_PC|DOUT[16]~DUPLICATE_q\ : std_logic;
SIGNAL \somador|Add0~58\ : std_logic;
SIGNAL \somador|Add0~61_sumout\ : std_logic;
SIGNAL \REG_PC|DOUT[17]~DUPLICATE_q\ : std_logic;
SIGNAL \somador|Add0~62\ : std_logic;
SIGNAL \somador|Add0~65_sumout\ : std_logic;
SIGNAL \somador|Add0~66\ : std_logic;
SIGNAL \somador|Add0~69_sumout\ : std_logic;
SIGNAL \somador|Add0~70\ : std_logic;
SIGNAL \somador|Add0~73_sumout\ : std_logic;
SIGNAL \REG_PC|DOUT[20]~DUPLICATE_q\ : std_logic;
SIGNAL \somador|Add0~74\ : std_logic;
SIGNAL \somador|Add0~77_sumout\ : std_logic;
SIGNAL \REG_PC|DOUT[21]~DUPLICATE_q\ : std_logic;
SIGNAL \somador|Add0~78\ : std_logic;
SIGNAL \somador|Add0~81_sumout\ : std_logic;
SIGNAL \REG_PC|DOUT[22]~DUPLICATE_q\ : std_logic;
SIGNAL \somador|Add0~82\ : std_logic;
SIGNAL \somador|Add0~85_sumout\ : std_logic;
SIGNAL \somador|Add0~86\ : std_logic;
SIGNAL \somador|Add0~89_sumout\ : std_logic;
SIGNAL \REG_PC|DOUT[24]~DUPLICATE_q\ : std_logic;
SIGNAL \somador|Add0~90\ : std_logic;
SIGNAL \somador|Add0~93_sumout\ : std_logic;
SIGNAL \REG_PC|DOUT[25]~DUPLICATE_q\ : std_logic;
SIGNAL \somador|Add0~94\ : std_logic;
SIGNAL \somador|Add0~97_sumout\ : std_logic;
SIGNAL \REG_PC|DOUT[26]~DUPLICATE_q\ : std_logic;
SIGNAL \somador|Add0~98\ : std_logic;
SIGNAL \somador|Add0~101_sumout\ : std_logic;
SIGNAL \REG_PC|DOUT[27]~DUPLICATE_q\ : std_logic;
SIGNAL \somador|Add0~102\ : std_logic;
SIGNAL \somador|Add0~105_sumout\ : std_logic;
SIGNAL \REG_PC|DOUT[28]~DUPLICATE_q\ : std_logic;
SIGNAL \somador|Add0~106\ : std_logic;
SIGNAL \somador|Add0~109_sumout\ : std_logic;
SIGNAL \somador|Add0~110\ : std_logic;
SIGNAL \somador|Add0~113_sumout\ : std_logic;
SIGNAL \somador|Add0~114\ : std_logic;
SIGNAL \somador|Add0~117_sumout\ : std_logic;
SIGNAL \REG_PC|DOUT[31]~DUPLICATE_q\ : std_logic;
SIGNAL \somador|Add0~118\ : std_logic;
SIGNAL \somador|Add0~121_sumout\ : std_logic;
SIGNAL \REG_PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \REG_PC|ALT_INV_DOUT[31]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_PC|ALT_INV_DOUT[28]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_PC|ALT_INV_DOUT[27]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_PC|ALT_INV_DOUT[26]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_PC|ALT_INV_DOUT[25]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_PC|ALT_INV_DOUT[24]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_PC|ALT_INV_DOUT[22]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_PC|ALT_INV_DOUT[21]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_PC|ALT_INV_DOUT[20]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_PC|ALT_INV_DOUT[17]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_PC|ALT_INV_DOUT[16]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_PC|ALT_INV_DOUT[14]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_PC|ALT_INV_DOUT[12]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_PC|ALT_INV_DOUT[10]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Ctrl_write~input_o\ : std_logic;
SIGNAL \ALT_INV_Sel_ULA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sel_ULA[1]~input_o\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1096_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1095_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1094_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1093_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1092_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1091_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1090_combout\ : std_logic;
SIGNAL \REG_PC|ALT_INV_DOUT\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \ULA1|ALT_INV_saida[31]~62_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[31]~33_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[31]~31_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[30]~60_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[30]~32_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[30]~30_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[29]~58_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[29]~31_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[29]~29_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[28]~56_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[28]~30_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[28]~28_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[27]~54_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[27]~29_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[27]~27_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[26]~52_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[26]~28_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[26]~26_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[25]~50_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[25]~27_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[25]~25_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[24]~48_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[24]~26_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[24]~24_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1087_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[23]~46_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[23]~25_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[23]~23_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1086_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[22]~44_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[22]~24_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[22]~22_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1085_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[21]~42_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[21]~23_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[21]~21_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1084_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[20]~40_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[20]~22_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[20]~20_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1083_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[19]~38_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[19]~21_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[19]~19_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1082_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[18]~36_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[18]~20_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[18]~18_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1081_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[17]~34_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[17]~19_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[17]~17_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1080_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[16]~32_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[16]~18_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[16]~16_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1079_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[15]~30_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[15]~17_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[15]~15_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1078_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[14]~28_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[14]~16_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[14]~14_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1077_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[13]~26_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[13]~15_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[13]~13_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1076_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[12]~24_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[12]~14_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[12]~12_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1075_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[11]~22_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[11]~13_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[11]~11_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1074_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[10]~20_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[10]~12_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[10]~10_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1073_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[9]~18_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[9]~11_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[9]~9_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1072_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[8]~16_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[8]~10_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[8]~8_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1071_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[7]~14_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[7]~9_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[7]~7_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1070_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[6]~12_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[6]~8_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[6]~6_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1069_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[5]~10_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[5]~7_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[5]~5_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1068_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[4]~8_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[4]~6_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[4]~4_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1067_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[3]~6_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[3]~5_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[3]~3_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1066_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[2]~4_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[2]~4_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[2]~2_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1065_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[1]~2_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[1]~3_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[1]~1_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1064_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[0]~2_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[0]~1_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[0]~0_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1063_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1062_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[1]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~325_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~69_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~324_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~68_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~323_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~67_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~322_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~66_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~321_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~65_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~320_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~64_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~319_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~63_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~318_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~62_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~317_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~61_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~316_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~60_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~315_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~59_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~314_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~58_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~313_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~57_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~312_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~56_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~311_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~55_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~310_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~54_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~309_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~53_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~308_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~52_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~307_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~51_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~306_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~50_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~305_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~49_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~304_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~48_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~303_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~47_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~302_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~46_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~301_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~45_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~300_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~44_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~299_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~43_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~298_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~297_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~296_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~295_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~294_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~38_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_Ctrl_write <= Ctrl_write;
ww_Sel_ULA <= Sel_ULA;
Instru_opcode <= ww_Instru_opcode;
Funct <= ww_Funct;
ULAA_OUT <= ww_ULAA_OUT;
RS_OUT <= ww_RS_OUT;
RT_OUT <= ww_RT_OUT;
Rs_End <= ww_Rs_End;
Rt_End <= ww_Rt_End;
PC_OUT <= ww_PC_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\REG_PC|ALT_INV_DOUT[31]~DUPLICATE_q\ <= NOT \REG_PC|DOUT[31]~DUPLICATE_q\;
\REG_PC|ALT_INV_DOUT[28]~DUPLICATE_q\ <= NOT \REG_PC|DOUT[28]~DUPLICATE_q\;
\REG_PC|ALT_INV_DOUT[27]~DUPLICATE_q\ <= NOT \REG_PC|DOUT[27]~DUPLICATE_q\;
\REG_PC|ALT_INV_DOUT[26]~DUPLICATE_q\ <= NOT \REG_PC|DOUT[26]~DUPLICATE_q\;
\REG_PC|ALT_INV_DOUT[25]~DUPLICATE_q\ <= NOT \REG_PC|DOUT[25]~DUPLICATE_q\;
\REG_PC|ALT_INV_DOUT[24]~DUPLICATE_q\ <= NOT \REG_PC|DOUT[24]~DUPLICATE_q\;
\REG_PC|ALT_INV_DOUT[22]~DUPLICATE_q\ <= NOT \REG_PC|DOUT[22]~DUPLICATE_q\;
\REG_PC|ALT_INV_DOUT[21]~DUPLICATE_q\ <= NOT \REG_PC|DOUT[21]~DUPLICATE_q\;
\REG_PC|ALT_INV_DOUT[20]~DUPLICATE_q\ <= NOT \REG_PC|DOUT[20]~DUPLICATE_q\;
\REG_PC|ALT_INV_DOUT[17]~DUPLICATE_q\ <= NOT \REG_PC|DOUT[17]~DUPLICATE_q\;
\REG_PC|ALT_INV_DOUT[16]~DUPLICATE_q\ <= NOT \REG_PC|DOUT[16]~DUPLICATE_q\;
\REG_PC|ALT_INV_DOUT[14]~DUPLICATE_q\ <= NOT \REG_PC|DOUT[14]~DUPLICATE_q\;
\REG_PC|ALT_INV_DOUT[12]~DUPLICATE_q\ <= NOT \REG_PC|DOUT[12]~DUPLICATE_q\;
\REG_PC|ALT_INV_DOUT[10]~DUPLICATE_q\ <= NOT \REG_PC|DOUT[10]~DUPLICATE_q\;
\REG_PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \REG_PC|DOUT[8]~DUPLICATE_q\;
\REG_PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \REG_PC|DOUT[1]~DUPLICATE_q\;
\REG_PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \REG_PC|DOUT[6]~DUPLICATE_q\;
\REG_PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \REG_PC|DOUT[7]~DUPLICATE_q\;
\REG_PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \REG_PC|DOUT[4]~DUPLICATE_q\;
\REG_PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \REG_PC|DOUT[5]~DUPLICATE_q\;
\REG_PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \REG_PC|DOUT[2]~DUPLICATE_q\;
\REG_PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \REG_PC|DOUT[3]~DUPLICATE_q\;
\ALT_INV_Ctrl_write~input_o\ <= NOT \Ctrl_write~input_o\;
\ALT_INV_Sel_ULA[0]~input_o\ <= NOT \Sel_ULA[0]~input_o\;
\ALT_INV_Sel_ULA[1]~input_o\ <= NOT \Sel_ULA[1]~input_o\;
\BANCO_REG|ALT_INV_registrador~1096_combout\ <= NOT \BANCO_REG|registrador~1096_combout\;
\BANCO_REG|ALT_INV_registrador~1095_combout\ <= NOT \BANCO_REG|registrador~1095_combout\;
\BANCO_REG|ALT_INV_registrador~1094_combout\ <= NOT \BANCO_REG|registrador~1094_combout\;
\BANCO_REG|ALT_INV_registrador~1093_combout\ <= NOT \BANCO_REG|registrador~1093_combout\;
\BANCO_REG|ALT_INV_registrador~1092_combout\ <= NOT \BANCO_REG|registrador~1092_combout\;
\BANCO_REG|ALT_INV_registrador~1091_combout\ <= NOT \BANCO_REG|registrador~1091_combout\;
\BANCO_REG|ALT_INV_registrador~1090_combout\ <= NOT \BANCO_REG|registrador~1090_combout\;
\REG_PC|ALT_INV_DOUT\(30) <= NOT \REG_PC|DOUT\(30);
\REG_PC|ALT_INV_DOUT\(29) <= NOT \REG_PC|DOUT\(29);
\REG_PC|ALT_INV_DOUT\(23) <= NOT \REG_PC|DOUT\(23);
\REG_PC|ALT_INV_DOUT\(19) <= NOT \REG_PC|DOUT\(19);
\REG_PC|ALT_INV_DOUT\(18) <= NOT \REG_PC|DOUT\(18);
\REG_PC|ALT_INV_DOUT\(15) <= NOT \REG_PC|DOUT\(15);
\REG_PC|ALT_INV_DOUT\(13) <= NOT \REG_PC|DOUT\(13);
\REG_PC|ALT_INV_DOUT\(11) <= NOT \REG_PC|DOUT\(11);
\REG_PC|ALT_INV_DOUT\(9) <= NOT \REG_PC|DOUT\(9);
\REG_PC|ALT_INV_DOUT\(0) <= NOT \REG_PC|DOUT\(0);
\ULA1|ALT_INV_saida[31]~62_combout\ <= NOT \ULA1|saida[31]~62_combout\;
\BANCO_REG|ALT_INV_saidaA[31]~33_combout\ <= NOT \BANCO_REG|saidaA[31]~33_combout\;
\BANCO_REG|ALT_INV_saidaB[31]~31_combout\ <= NOT \BANCO_REG|saidaB[31]~31_combout\;
\ULA1|ALT_INV_saida[30]~60_combout\ <= NOT \ULA1|saida[30]~60_combout\;
\BANCO_REG|ALT_INV_saidaA[30]~32_combout\ <= NOT \BANCO_REG|saidaA[30]~32_combout\;
\BANCO_REG|ALT_INV_saidaB[30]~30_combout\ <= NOT \BANCO_REG|saidaB[30]~30_combout\;
\ULA1|ALT_INV_saida[29]~58_combout\ <= NOT \ULA1|saida[29]~58_combout\;
\BANCO_REG|ALT_INV_saidaA[29]~31_combout\ <= NOT \BANCO_REG|saidaA[29]~31_combout\;
\BANCO_REG|ALT_INV_saidaB[29]~29_combout\ <= NOT \BANCO_REG|saidaB[29]~29_combout\;
\ULA1|ALT_INV_saida[28]~56_combout\ <= NOT \ULA1|saida[28]~56_combout\;
\BANCO_REG|ALT_INV_saidaA[28]~30_combout\ <= NOT \BANCO_REG|saidaA[28]~30_combout\;
\BANCO_REG|ALT_INV_saidaB[28]~28_combout\ <= NOT \BANCO_REG|saidaB[28]~28_combout\;
\ULA1|ALT_INV_saida[27]~54_combout\ <= NOT \ULA1|saida[27]~54_combout\;
\BANCO_REG|ALT_INV_saidaA[27]~29_combout\ <= NOT \BANCO_REG|saidaA[27]~29_combout\;
\BANCO_REG|ALT_INV_saidaB[27]~27_combout\ <= NOT \BANCO_REG|saidaB[27]~27_combout\;
\ULA1|ALT_INV_saida[26]~52_combout\ <= NOT \ULA1|saida[26]~52_combout\;
\BANCO_REG|ALT_INV_saidaA[26]~28_combout\ <= NOT \BANCO_REG|saidaA[26]~28_combout\;
\BANCO_REG|ALT_INV_saidaB[26]~26_combout\ <= NOT \BANCO_REG|saidaB[26]~26_combout\;
\ULA1|ALT_INV_saida[25]~50_combout\ <= NOT \ULA1|saida[25]~50_combout\;
\BANCO_REG|ALT_INV_saidaA[25]~27_combout\ <= NOT \BANCO_REG|saidaA[25]~27_combout\;
\BANCO_REG|ALT_INV_saidaB[25]~25_combout\ <= NOT \BANCO_REG|saidaB[25]~25_combout\;
\ULA1|ALT_INV_saida[24]~48_combout\ <= NOT \ULA1|saida[24]~48_combout\;
\BANCO_REG|ALT_INV_saidaA[24]~26_combout\ <= NOT \BANCO_REG|saidaA[24]~26_combout\;
\BANCO_REG|ALT_INV_saidaB[24]~24_combout\ <= NOT \BANCO_REG|saidaB[24]~24_combout\;
\BANCO_REG|ALT_INV_registrador~1087_combout\ <= NOT \BANCO_REG|registrador~1087_combout\;
\ULA1|ALT_INV_saida[23]~46_combout\ <= NOT \ULA1|saida[23]~46_combout\;
\BANCO_REG|ALT_INV_saidaA[23]~25_combout\ <= NOT \BANCO_REG|saidaA[23]~25_combout\;
\BANCO_REG|ALT_INV_saidaB[23]~23_combout\ <= NOT \BANCO_REG|saidaB[23]~23_combout\;
\BANCO_REG|ALT_INV_registrador~1086_combout\ <= NOT \BANCO_REG|registrador~1086_combout\;
\ULA1|ALT_INV_saida[22]~44_combout\ <= NOT \ULA1|saida[22]~44_combout\;
\BANCO_REG|ALT_INV_saidaA[22]~24_combout\ <= NOT \BANCO_REG|saidaA[22]~24_combout\;
\BANCO_REG|ALT_INV_saidaB[22]~22_combout\ <= NOT \BANCO_REG|saidaB[22]~22_combout\;
\BANCO_REG|ALT_INV_registrador~1085_combout\ <= NOT \BANCO_REG|registrador~1085_combout\;
\ULA1|ALT_INV_saida[21]~42_combout\ <= NOT \ULA1|saida[21]~42_combout\;
\BANCO_REG|ALT_INV_saidaA[21]~23_combout\ <= NOT \BANCO_REG|saidaA[21]~23_combout\;
\BANCO_REG|ALT_INV_saidaB[21]~21_combout\ <= NOT \BANCO_REG|saidaB[21]~21_combout\;
\BANCO_REG|ALT_INV_registrador~1084_combout\ <= NOT \BANCO_REG|registrador~1084_combout\;
\ULA1|ALT_INV_saida[20]~40_combout\ <= NOT \ULA1|saida[20]~40_combout\;
\BANCO_REG|ALT_INV_saidaA[20]~22_combout\ <= NOT \BANCO_REG|saidaA[20]~22_combout\;
\BANCO_REG|ALT_INV_saidaB[20]~20_combout\ <= NOT \BANCO_REG|saidaB[20]~20_combout\;
\BANCO_REG|ALT_INV_registrador~1083_combout\ <= NOT \BANCO_REG|registrador~1083_combout\;
\ULA1|ALT_INV_saida[19]~38_combout\ <= NOT \ULA1|saida[19]~38_combout\;
\BANCO_REG|ALT_INV_saidaA[19]~21_combout\ <= NOT \BANCO_REG|saidaA[19]~21_combout\;
\BANCO_REG|ALT_INV_saidaB[19]~19_combout\ <= NOT \BANCO_REG|saidaB[19]~19_combout\;
\BANCO_REG|ALT_INV_registrador~1082_combout\ <= NOT \BANCO_REG|registrador~1082_combout\;
\ULA1|ALT_INV_saida[18]~36_combout\ <= NOT \ULA1|saida[18]~36_combout\;
\BANCO_REG|ALT_INV_saidaA[18]~20_combout\ <= NOT \BANCO_REG|saidaA[18]~20_combout\;
\BANCO_REG|ALT_INV_saidaB[18]~18_combout\ <= NOT \BANCO_REG|saidaB[18]~18_combout\;
\BANCO_REG|ALT_INV_registrador~1081_combout\ <= NOT \BANCO_REG|registrador~1081_combout\;
\ULA1|ALT_INV_saida[17]~34_combout\ <= NOT \ULA1|saida[17]~34_combout\;
\BANCO_REG|ALT_INV_saidaA[17]~19_combout\ <= NOT \BANCO_REG|saidaA[17]~19_combout\;
\BANCO_REG|ALT_INV_saidaB[17]~17_combout\ <= NOT \BANCO_REG|saidaB[17]~17_combout\;
\BANCO_REG|ALT_INV_registrador~1080_combout\ <= NOT \BANCO_REG|registrador~1080_combout\;
\ULA1|ALT_INV_saida[16]~32_combout\ <= NOT \ULA1|saida[16]~32_combout\;
\BANCO_REG|ALT_INV_saidaA[16]~18_combout\ <= NOT \BANCO_REG|saidaA[16]~18_combout\;
\BANCO_REG|ALT_INV_saidaB[16]~16_combout\ <= NOT \BANCO_REG|saidaB[16]~16_combout\;
\BANCO_REG|ALT_INV_registrador~1079_combout\ <= NOT \BANCO_REG|registrador~1079_combout\;
\ULA1|ALT_INV_saida[15]~30_combout\ <= NOT \ULA1|saida[15]~30_combout\;
\BANCO_REG|ALT_INV_saidaA[15]~17_combout\ <= NOT \BANCO_REG|saidaA[15]~17_combout\;
\BANCO_REG|ALT_INV_saidaB[15]~15_combout\ <= NOT \BANCO_REG|saidaB[15]~15_combout\;
\BANCO_REG|ALT_INV_registrador~1078_combout\ <= NOT \BANCO_REG|registrador~1078_combout\;
\ULA1|ALT_INV_saida[14]~28_combout\ <= NOT \ULA1|saida[14]~28_combout\;
\BANCO_REG|ALT_INV_saidaA[14]~16_combout\ <= NOT \BANCO_REG|saidaA[14]~16_combout\;
\BANCO_REG|ALT_INV_saidaB[14]~14_combout\ <= NOT \BANCO_REG|saidaB[14]~14_combout\;
\BANCO_REG|ALT_INV_registrador~1077_combout\ <= NOT \BANCO_REG|registrador~1077_combout\;
\ULA1|ALT_INV_saida[13]~26_combout\ <= NOT \ULA1|saida[13]~26_combout\;
\BANCO_REG|ALT_INV_saidaA[13]~15_combout\ <= NOT \BANCO_REG|saidaA[13]~15_combout\;
\BANCO_REG|ALT_INV_saidaB[13]~13_combout\ <= NOT \BANCO_REG|saidaB[13]~13_combout\;
\BANCO_REG|ALT_INV_registrador~1076_combout\ <= NOT \BANCO_REG|registrador~1076_combout\;
\ULA1|ALT_INV_saida[12]~24_combout\ <= NOT \ULA1|saida[12]~24_combout\;
\BANCO_REG|ALT_INV_saidaA[12]~14_combout\ <= NOT \BANCO_REG|saidaA[12]~14_combout\;
\BANCO_REG|ALT_INV_saidaB[12]~12_combout\ <= NOT \BANCO_REG|saidaB[12]~12_combout\;
\BANCO_REG|ALT_INV_registrador~1075_combout\ <= NOT \BANCO_REG|registrador~1075_combout\;
\ULA1|ALT_INV_saida[11]~22_combout\ <= NOT \ULA1|saida[11]~22_combout\;
\BANCO_REG|ALT_INV_saidaA[11]~13_combout\ <= NOT \BANCO_REG|saidaA[11]~13_combout\;
\BANCO_REG|ALT_INV_saidaB[11]~11_combout\ <= NOT \BANCO_REG|saidaB[11]~11_combout\;
\BANCO_REG|ALT_INV_registrador~1074_combout\ <= NOT \BANCO_REG|registrador~1074_combout\;
\ULA1|ALT_INV_saida[10]~20_combout\ <= NOT \ULA1|saida[10]~20_combout\;
\BANCO_REG|ALT_INV_saidaA[10]~12_combout\ <= NOT \BANCO_REG|saidaA[10]~12_combout\;
\BANCO_REG|ALT_INV_saidaB[10]~10_combout\ <= NOT \BANCO_REG|saidaB[10]~10_combout\;
\BANCO_REG|ALT_INV_registrador~1073_combout\ <= NOT \BANCO_REG|registrador~1073_combout\;
\ULA1|ALT_INV_saida[9]~18_combout\ <= NOT \ULA1|saida[9]~18_combout\;
\BANCO_REG|ALT_INV_saidaA[9]~11_combout\ <= NOT \BANCO_REG|saidaA[9]~11_combout\;
\BANCO_REG|ALT_INV_saidaB[9]~9_combout\ <= NOT \BANCO_REG|saidaB[9]~9_combout\;
\BANCO_REG|ALT_INV_registrador~1072_combout\ <= NOT \BANCO_REG|registrador~1072_combout\;
\ULA1|ALT_INV_saida[8]~16_combout\ <= NOT \ULA1|saida[8]~16_combout\;
\BANCO_REG|ALT_INV_saidaA[8]~10_combout\ <= NOT \BANCO_REG|saidaA[8]~10_combout\;
\BANCO_REG|ALT_INV_saidaB[8]~8_combout\ <= NOT \BANCO_REG|saidaB[8]~8_combout\;
\BANCO_REG|ALT_INV_registrador~1071_combout\ <= NOT \BANCO_REG|registrador~1071_combout\;
\ULA1|ALT_INV_saida[7]~14_combout\ <= NOT \ULA1|saida[7]~14_combout\;
\BANCO_REG|ALT_INV_saidaA[7]~9_combout\ <= NOT \BANCO_REG|saidaA[7]~9_combout\;
\BANCO_REG|ALT_INV_saidaB[7]~7_combout\ <= NOT \BANCO_REG|saidaB[7]~7_combout\;
\BANCO_REG|ALT_INV_registrador~1070_combout\ <= NOT \BANCO_REG|registrador~1070_combout\;
\ULA1|ALT_INV_saida[6]~12_combout\ <= NOT \ULA1|saida[6]~12_combout\;
\BANCO_REG|ALT_INV_saidaA[6]~8_combout\ <= NOT \BANCO_REG|saidaA[6]~8_combout\;
\BANCO_REG|ALT_INV_saidaB[6]~6_combout\ <= NOT \BANCO_REG|saidaB[6]~6_combout\;
\BANCO_REG|ALT_INV_registrador~1069_combout\ <= NOT \BANCO_REG|registrador~1069_combout\;
\ULA1|ALT_INV_saida[5]~10_combout\ <= NOT \ULA1|saida[5]~10_combout\;
\BANCO_REG|ALT_INV_saidaA[5]~7_combout\ <= NOT \BANCO_REG|saidaA[5]~7_combout\;
\BANCO_REG|ALT_INV_saidaB[5]~5_combout\ <= NOT \BANCO_REG|saidaB[5]~5_combout\;
\BANCO_REG|ALT_INV_registrador~1068_combout\ <= NOT \BANCO_REG|registrador~1068_combout\;
\ULA1|ALT_INV_saida[4]~8_combout\ <= NOT \ULA1|saida[4]~8_combout\;
\BANCO_REG|ALT_INV_saidaA[4]~6_combout\ <= NOT \BANCO_REG|saidaA[4]~6_combout\;
\BANCO_REG|ALT_INV_saidaB[4]~4_combout\ <= NOT \BANCO_REG|saidaB[4]~4_combout\;
\BANCO_REG|ALT_INV_registrador~1067_combout\ <= NOT \BANCO_REG|registrador~1067_combout\;
\ULA1|ALT_INV_saida[3]~6_combout\ <= NOT \ULA1|saida[3]~6_combout\;
\BANCO_REG|ALT_INV_saidaA[3]~5_combout\ <= NOT \BANCO_REG|saidaA[3]~5_combout\;
\BANCO_REG|ALT_INV_saidaB[3]~3_combout\ <= NOT \BANCO_REG|saidaB[3]~3_combout\;
\BANCO_REG|ALT_INV_registrador~1066_combout\ <= NOT \BANCO_REG|registrador~1066_combout\;
\ULA1|ALT_INV_saida[2]~4_combout\ <= NOT \ULA1|saida[2]~4_combout\;
\BANCO_REG|ALT_INV_saidaA[2]~4_combout\ <= NOT \BANCO_REG|saidaA[2]~4_combout\;
\BANCO_REG|ALT_INV_saidaB[2]~2_combout\ <= NOT \BANCO_REG|saidaB[2]~2_combout\;
\BANCO_REG|ALT_INV_registrador~1065_combout\ <= NOT \BANCO_REG|registrador~1065_combout\;
\ULA1|ALT_INV_saida[1]~2_combout\ <= NOT \ULA1|saida[1]~2_combout\;
\BANCO_REG|ALT_INV_saidaA[1]~3_combout\ <= NOT \BANCO_REG|saidaA[1]~3_combout\;
\BANCO_REG|ALT_INV_saidaB[1]~1_combout\ <= NOT \BANCO_REG|saidaB[1]~1_combout\;
\BANCO_REG|ALT_INV_registrador~1064_combout\ <= NOT \BANCO_REG|registrador~1064_combout\;
\ULA1|ALT_INV_saida[0]~0_combout\ <= NOT \ULA1|saida[0]~0_combout\;
\BANCO_REG|ALT_INV_saidaA[0]~2_combout\ <= NOT \BANCO_REG|saidaA[0]~2_combout\;
\BANCO_REG|ALT_INV_saidaA[0]~1_combout\ <= NOT \BANCO_REG|saidaA[0]~1_combout\;
\BANCO_REG|ALT_INV_saidaB[0]~0_combout\ <= NOT \BANCO_REG|saidaB[0]~0_combout\;
\BANCO_REG|ALT_INV_registrador~1063_combout\ <= NOT \BANCO_REG|registrador~1063_combout\;
\BANCO_REG|ALT_INV_registrador~1062_combout\ <= NOT \BANCO_REG|registrador~1062_combout\;
\BANCO_REG|ALT_INV_saidaA[1]~0_combout\ <= NOT \BANCO_REG|saidaA[1]~0_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\REG_PC|ALT_INV_DOUT\(6) <= NOT \REG_PC|DOUT\(6);
\REG_PC|ALT_INV_DOUT\(7) <= NOT \REG_PC|DOUT\(7);
\REG_PC|ALT_INV_DOUT\(4) <= NOT \REG_PC|DOUT\(4);
\REG_PC|ALT_INV_DOUT\(5) <= NOT \REG_PC|DOUT\(5);
\REG_PC|ALT_INV_DOUT\(2) <= NOT \REG_PC|DOUT\(2);
\REG_PC|ALT_INV_DOUT\(3) <= NOT \REG_PC|DOUT\(3);
\ULA1|ALT_INV_Add0~125_sumout\ <= NOT \ULA1|Add0~125_sumout\;
\BANCO_REG|ALT_INV_registrador~325_q\ <= NOT \BANCO_REG|registrador~325_q\;
\BANCO_REG|ALT_INV_registrador~69_q\ <= NOT \BANCO_REG|registrador~69_q\;
\ULA1|ALT_INV_Add0~121_sumout\ <= NOT \ULA1|Add0~121_sumout\;
\BANCO_REG|ALT_INV_registrador~324_q\ <= NOT \BANCO_REG|registrador~324_q\;
\BANCO_REG|ALT_INV_registrador~68_q\ <= NOT \BANCO_REG|registrador~68_q\;
\ULA1|ALT_INV_Add0~117_sumout\ <= NOT \ULA1|Add0~117_sumout\;
\BANCO_REG|ALT_INV_registrador~323_q\ <= NOT \BANCO_REG|registrador~323_q\;
\BANCO_REG|ALT_INV_registrador~67_q\ <= NOT \BANCO_REG|registrador~67_q\;
\ULA1|ALT_INV_Add0~113_sumout\ <= NOT \ULA1|Add0~113_sumout\;
\BANCO_REG|ALT_INV_registrador~322_q\ <= NOT \BANCO_REG|registrador~322_q\;
\BANCO_REG|ALT_INV_registrador~66_q\ <= NOT \BANCO_REG|registrador~66_q\;
\ULA1|ALT_INV_Add0~109_sumout\ <= NOT \ULA1|Add0~109_sumout\;
\BANCO_REG|ALT_INV_registrador~321_q\ <= NOT \BANCO_REG|registrador~321_q\;
\BANCO_REG|ALT_INV_registrador~65_q\ <= NOT \BANCO_REG|registrador~65_q\;
\ULA1|ALT_INV_Add0~105_sumout\ <= NOT \ULA1|Add0~105_sumout\;
\BANCO_REG|ALT_INV_registrador~320_q\ <= NOT \BANCO_REG|registrador~320_q\;
\BANCO_REG|ALT_INV_registrador~64_q\ <= NOT \BANCO_REG|registrador~64_q\;
\ULA1|ALT_INV_Add0~101_sumout\ <= NOT \ULA1|Add0~101_sumout\;
\BANCO_REG|ALT_INV_registrador~319_q\ <= NOT \BANCO_REG|registrador~319_q\;
\BANCO_REG|ALT_INV_registrador~63_q\ <= NOT \BANCO_REG|registrador~63_q\;
\ULA1|ALT_INV_Add0~97_sumout\ <= NOT \ULA1|Add0~97_sumout\;
\BANCO_REG|ALT_INV_registrador~318_q\ <= NOT \BANCO_REG|registrador~318_q\;
\BANCO_REG|ALT_INV_registrador~62_q\ <= NOT \BANCO_REG|registrador~62_q\;
\ULA1|ALT_INV_Add0~93_sumout\ <= NOT \ULA1|Add0~93_sumout\;
\BANCO_REG|ALT_INV_registrador~317_q\ <= NOT \BANCO_REG|registrador~317_q\;
\BANCO_REG|ALT_INV_registrador~61_q\ <= NOT \BANCO_REG|registrador~61_q\;
\ULA1|ALT_INV_Add0~89_sumout\ <= NOT \ULA1|Add0~89_sumout\;
\BANCO_REG|ALT_INV_registrador~316_q\ <= NOT \BANCO_REG|registrador~316_q\;
\BANCO_REG|ALT_INV_registrador~60_q\ <= NOT \BANCO_REG|registrador~60_q\;
\ULA1|ALT_INV_Add0~85_sumout\ <= NOT \ULA1|Add0~85_sumout\;
\BANCO_REG|ALT_INV_registrador~315_q\ <= NOT \BANCO_REG|registrador~315_q\;
\BANCO_REG|ALT_INV_registrador~59_q\ <= NOT \BANCO_REG|registrador~59_q\;
\ULA1|ALT_INV_Add0~81_sumout\ <= NOT \ULA1|Add0~81_sumout\;
\BANCO_REG|ALT_INV_registrador~314_q\ <= NOT \BANCO_REG|registrador~314_q\;
\BANCO_REG|ALT_INV_registrador~58_q\ <= NOT \BANCO_REG|registrador~58_q\;
\ULA1|ALT_INV_Add0~77_sumout\ <= NOT \ULA1|Add0~77_sumout\;
\BANCO_REG|ALT_INV_registrador~313_q\ <= NOT \BANCO_REG|registrador~313_q\;
\BANCO_REG|ALT_INV_registrador~57_q\ <= NOT \BANCO_REG|registrador~57_q\;
\ULA1|ALT_INV_Add0~73_sumout\ <= NOT \ULA1|Add0~73_sumout\;
\BANCO_REG|ALT_INV_registrador~312_q\ <= NOT \BANCO_REG|registrador~312_q\;
\BANCO_REG|ALT_INV_registrador~56_q\ <= NOT \BANCO_REG|registrador~56_q\;
\ULA1|ALT_INV_Add0~69_sumout\ <= NOT \ULA1|Add0~69_sumout\;
\BANCO_REG|ALT_INV_registrador~311_q\ <= NOT \BANCO_REG|registrador~311_q\;
\BANCO_REG|ALT_INV_registrador~55_q\ <= NOT \BANCO_REG|registrador~55_q\;
\ULA1|ALT_INV_Add0~65_sumout\ <= NOT \ULA1|Add0~65_sumout\;
\BANCO_REG|ALT_INV_registrador~310_q\ <= NOT \BANCO_REG|registrador~310_q\;
\BANCO_REG|ALT_INV_registrador~54_q\ <= NOT \BANCO_REG|registrador~54_q\;
\ULA1|ALT_INV_Add0~61_sumout\ <= NOT \ULA1|Add0~61_sumout\;
\BANCO_REG|ALT_INV_registrador~309_q\ <= NOT \BANCO_REG|registrador~309_q\;
\BANCO_REG|ALT_INV_registrador~53_q\ <= NOT \BANCO_REG|registrador~53_q\;
\ULA1|ALT_INV_Add0~57_sumout\ <= NOT \ULA1|Add0~57_sumout\;
\BANCO_REG|ALT_INV_registrador~308_q\ <= NOT \BANCO_REG|registrador~308_q\;
\BANCO_REG|ALT_INV_registrador~52_q\ <= NOT \BANCO_REG|registrador~52_q\;
\ULA1|ALT_INV_Add0~53_sumout\ <= NOT \ULA1|Add0~53_sumout\;
\BANCO_REG|ALT_INV_registrador~307_q\ <= NOT \BANCO_REG|registrador~307_q\;
\BANCO_REG|ALT_INV_registrador~51_q\ <= NOT \BANCO_REG|registrador~51_q\;
\ULA1|ALT_INV_Add0~49_sumout\ <= NOT \ULA1|Add0~49_sumout\;
\BANCO_REG|ALT_INV_registrador~306_q\ <= NOT \BANCO_REG|registrador~306_q\;
\BANCO_REG|ALT_INV_registrador~50_q\ <= NOT \BANCO_REG|registrador~50_q\;
\ULA1|ALT_INV_Add0~45_sumout\ <= NOT \ULA1|Add0~45_sumout\;
\BANCO_REG|ALT_INV_registrador~305_q\ <= NOT \BANCO_REG|registrador~305_q\;
\BANCO_REG|ALT_INV_registrador~49_q\ <= NOT \BANCO_REG|registrador~49_q\;
\ULA1|ALT_INV_Add0~41_sumout\ <= NOT \ULA1|Add0~41_sumout\;
\BANCO_REG|ALT_INV_registrador~304_q\ <= NOT \BANCO_REG|registrador~304_q\;
\BANCO_REG|ALT_INV_registrador~48_q\ <= NOT \BANCO_REG|registrador~48_q\;
\ULA1|ALT_INV_Add0~37_sumout\ <= NOT \ULA1|Add0~37_sumout\;
\BANCO_REG|ALT_INV_registrador~303_q\ <= NOT \BANCO_REG|registrador~303_q\;
\BANCO_REG|ALT_INV_registrador~47_q\ <= NOT \BANCO_REG|registrador~47_q\;
\ULA1|ALT_INV_Add0~33_sumout\ <= NOT \ULA1|Add0~33_sumout\;
\BANCO_REG|ALT_INV_registrador~302_q\ <= NOT \BANCO_REG|registrador~302_q\;
\BANCO_REG|ALT_INV_registrador~46_q\ <= NOT \BANCO_REG|registrador~46_q\;
\ULA1|ALT_INV_Add0~29_sumout\ <= NOT \ULA1|Add0~29_sumout\;
\BANCO_REG|ALT_INV_registrador~301_q\ <= NOT \BANCO_REG|registrador~301_q\;
\BANCO_REG|ALT_INV_registrador~45_q\ <= NOT \BANCO_REG|registrador~45_q\;
\ULA1|ALT_INV_Add0~25_sumout\ <= NOT \ULA1|Add0~25_sumout\;
\BANCO_REG|ALT_INV_registrador~300_q\ <= NOT \BANCO_REG|registrador~300_q\;
\BANCO_REG|ALT_INV_registrador~44_q\ <= NOT \BANCO_REG|registrador~44_q\;
\ULA1|ALT_INV_Add0~21_sumout\ <= NOT \ULA1|Add0~21_sumout\;
\BANCO_REG|ALT_INV_registrador~299_q\ <= NOT \BANCO_REG|registrador~299_q\;
\BANCO_REG|ALT_INV_registrador~43_q\ <= NOT \BANCO_REG|registrador~43_q\;
\ULA1|ALT_INV_Add0~17_sumout\ <= NOT \ULA1|Add0~17_sumout\;
\BANCO_REG|ALT_INV_registrador~298_q\ <= NOT \BANCO_REG|registrador~298_q\;
\BANCO_REG|ALT_INV_registrador~42_q\ <= NOT \BANCO_REG|registrador~42_q\;
\ULA1|ALT_INV_Add0~13_sumout\ <= NOT \ULA1|Add0~13_sumout\;
\BANCO_REG|ALT_INV_registrador~297_q\ <= NOT \BANCO_REG|registrador~297_q\;
\BANCO_REG|ALT_INV_registrador~41_q\ <= NOT \BANCO_REG|registrador~41_q\;
\ULA1|ALT_INV_Add0~9_sumout\ <= NOT \ULA1|Add0~9_sumout\;
\BANCO_REG|ALT_INV_registrador~296_q\ <= NOT \BANCO_REG|registrador~296_q\;
\BANCO_REG|ALT_INV_registrador~40_q\ <= NOT \BANCO_REG|registrador~40_q\;
\ULA1|ALT_INV_Add0~5_sumout\ <= NOT \ULA1|Add0~5_sumout\;
\BANCO_REG|ALT_INV_registrador~295_q\ <= NOT \BANCO_REG|registrador~295_q\;
\BANCO_REG|ALT_INV_registrador~39_q\ <= NOT \BANCO_REG|registrador~39_q\;
\ULA1|ALT_INV_Add0~1_sumout\ <= NOT \ULA1|Add0~1_sumout\;
\BANCO_REG|ALT_INV_registrador~294_q\ <= NOT \BANCO_REG|registrador~294_q\;
\BANCO_REG|ALT_INV_registrador~38_q\ <= NOT \BANCO_REG|registrador~38_q\;

-- Location: IOOBUF_X43_Y45_N2
\Instru_opcode[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instru_opcode(0));

-- Location: IOOBUF_X42_Y45_N19
\Instru_opcode[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instru_opcode(1));

-- Location: IOOBUF_X40_Y45_N59
\Instru_opcode[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instru_opcode(2));

-- Location: IOOBUF_X8_Y45_N76
\Instru_opcode[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instru_opcode(3));

-- Location: IOOBUF_X40_Y45_N76
\Instru_opcode[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instru_opcode(4));

-- Location: IOOBUF_X52_Y45_N36
\Instru_opcode[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instru_opcode(5));

-- Location: IOOBUF_X46_Y0_N36
\Funct[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Funct(0));

-- Location: IOOBUF_X22_Y45_N36
\Funct[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_Funct(1));

-- Location: IOOBUF_X38_Y45_N2
\Funct[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~3_combout\,
	devoe => ww_devoe,
	o => ww_Funct(2));

-- Location: IOOBUF_X0_Y20_N39
\Funct[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Funct(3));

-- Location: IOOBUF_X48_Y45_N19
\Funct[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Funct(4));

-- Location: IOOBUF_X54_Y17_N22
\Funct[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_Funct(5));

-- Location: IOOBUF_X22_Y45_N19
\ULAA_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(0));

-- Location: IOOBUF_X54_Y19_N56
\ULAA_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(1));

-- Location: IOOBUF_X0_Y18_N79
\ULAA_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(2));

-- Location: IOOBUF_X38_Y0_N2
\ULAA_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(3));

-- Location: IOOBUF_X18_Y45_N19
\ULAA_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[4]~9_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(4));

-- Location: IOOBUF_X32_Y45_N93
\ULAA_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[5]~11_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(5));

-- Location: IOOBUF_X12_Y0_N19
\ULAA_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[6]~13_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(6));

-- Location: IOOBUF_X22_Y45_N2
\ULAA_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[7]~15_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(7));

-- Location: IOOBUF_X54_Y18_N45
\ULAA_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[8]~17_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(8));

-- Location: IOOBUF_X10_Y0_N93
\ULAA_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[9]~19_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(9));

-- Location: IOOBUF_X29_Y0_N2
\ULAA_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[10]~21_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(10));

-- Location: IOOBUF_X43_Y0_N53
\ULAA_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[11]~23_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(11));

-- Location: IOOBUF_X54_Y19_N22
\ULAA_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[12]~25_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(12));

-- Location: IOOBUF_X12_Y0_N2
\ULAA_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[13]~27_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(13));

-- Location: IOOBUF_X34_Y45_N53
\ULAA_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[14]~29_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(14));

-- Location: IOOBUF_X44_Y0_N53
\ULAA_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[15]~31_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(15));

-- Location: IOOBUF_X40_Y0_N93
\ULAA_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[16]~33_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(16));

-- Location: IOOBUF_X14_Y0_N19
\ULAA_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[17]~35_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(17));

-- Location: IOOBUF_X0_Y19_N39
\ULAA_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[18]~37_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(18));

-- Location: IOOBUF_X51_Y0_N53
\ULAA_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[19]~39_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(19));

-- Location: IOOBUF_X23_Y0_N59
\ULAA_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[20]~41_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(20));

-- Location: IOOBUF_X34_Y0_N53
\ULAA_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[21]~43_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(21));

-- Location: IOOBUF_X11_Y0_N53
\ULAA_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[22]~45_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(22));

-- Location: IOOBUF_X34_Y45_N2
\ULAA_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[23]~47_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(23));

-- Location: IOOBUF_X20_Y45_N36
\ULAA_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[24]~49_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(24));

-- Location: IOOBUF_X22_Y0_N19
\ULAA_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[25]~51_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(25));

-- Location: IOOBUF_X34_Y0_N36
\ULAA_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[26]~53_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(26));

-- Location: IOOBUF_X19_Y0_N36
\ULAA_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[27]~55_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(27));

-- Location: IOOBUF_X16_Y0_N42
\ULAA_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[28]~57_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(28));

-- Location: IOOBUF_X12_Y0_N53
\ULAA_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[29]~59_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(29));

-- Location: IOOBUF_X23_Y0_N76
\ULAA_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[30]~61_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(30));

-- Location: IOOBUF_X33_Y0_N93
\ULAA_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[31]~63_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(31));

-- Location: IOOBUF_X0_Y18_N45
\RS_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(0));

-- Location: IOOBUF_X46_Y0_N53
\RS_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(1));

-- Location: IOOBUF_X14_Y0_N2
\RS_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[2]~4_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(2));

-- Location: IOOBUF_X22_Y45_N53
\RS_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[3]~5_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(3));

-- Location: IOOBUF_X54_Y14_N96
\RS_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[4]~6_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(4));

-- Location: IOOBUF_X54_Y20_N39
\RS_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[5]~7_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(5));

-- Location: IOOBUF_X0_Y20_N22
\RS_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[6]~8_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(6));

-- Location: IOOBUF_X54_Y16_N22
\RS_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[7]~9_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(7));

-- Location: IOOBUF_X54_Y16_N56
\RS_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[8]~10_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(8));

-- Location: IOOBUF_X16_Y0_N59
\RS_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[9]~11_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(9));

-- Location: IOOBUF_X54_Y14_N45
\RS_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[10]~12_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(10));

-- Location: IOOBUF_X23_Y0_N42
\RS_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[11]~13_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(11));

-- Location: IOOBUF_X46_Y0_N2
\RS_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[12]~14_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(12));

-- Location: IOOBUF_X16_Y0_N76
\RS_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[13]~15_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(13));

-- Location: IOOBUF_X54_Y17_N56
\RS_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[14]~16_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(14));

-- Location: IOOBUF_X25_Y0_N2
\RS_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[15]~17_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(15));

-- Location: IOOBUF_X40_Y0_N59
\RS_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[16]~18_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(16));

-- Location: IOOBUF_X10_Y0_N76
\RS_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[17]~19_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(17));

-- Location: IOOBUF_X54_Y15_N5
\RS_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[18]~20_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(18));

-- Location: IOOBUF_X29_Y0_N53
\RS_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[19]~21_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(19));

-- Location: IOOBUF_X19_Y0_N53
\RS_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[20]~22_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(20));

-- Location: IOOBUF_X33_Y0_N59
\RS_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[21]~23_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(21));

-- Location: IOOBUF_X24_Y0_N36
\RS_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[22]~24_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(22));

-- Location: IOOBUF_X36_Y0_N19
\RS_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[23]~25_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(23));

-- Location: IOOBUF_X22_Y0_N36
\RS_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[24]~26_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(24));

-- Location: IOOBUF_X22_Y0_N2
\RS_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[25]~27_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(25));

-- Location: IOOBUF_X24_Y0_N2
\RS_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[26]~28_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(26));

-- Location: IOOBUF_X19_Y0_N19
\RS_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[27]~29_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(27));

-- Location: IOOBUF_X24_Y0_N19
\RS_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[28]~30_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(28));

-- Location: IOOBUF_X34_Y0_N19
\RS_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[29]~31_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(29));

-- Location: IOOBUF_X19_Y0_N2
\RS_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[30]~32_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(30));

-- Location: IOOBUF_X33_Y0_N42
\RS_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[31]~33_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(31));

-- Location: IOOBUF_X38_Y0_N19
\RT_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(0));

-- Location: IOOBUF_X29_Y0_N19
\RT_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(1));

-- Location: IOOBUF_X54_Y19_N39
\RT_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(2));

-- Location: IOOBUF_X40_Y0_N76
\RT_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(3));

-- Location: IOOBUF_X18_Y45_N53
\RT_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(4));

-- Location: IOOBUF_X54_Y18_N79
\RT_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(5));

-- Location: IOOBUF_X11_Y0_N19
\RT_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(6));

-- Location: IOOBUF_X54_Y15_N39
\RT_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(7));

-- Location: IOOBUF_X12_Y0_N36
\RT_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[8]~8_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(8));

-- Location: IOOBUF_X54_Y14_N62
\RT_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[9]~9_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(9));

-- Location: IOOBUF_X14_Y0_N36
\RT_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[10]~10_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(10));

-- Location: IOOBUF_X43_Y0_N2
\RT_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[11]~11_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(11));

-- Location: IOOBUF_X48_Y0_N59
\RT_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[12]~12_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(12));

-- Location: IOOBUF_X54_Y21_N22
\RT_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[13]~13_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(13));

-- Location: IOOBUF_X32_Y45_N76
\RT_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[14]~14_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(14));

-- Location: IOOBUF_X48_Y0_N76
\RT_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[15]~15_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(15));

-- Location: IOOBUF_X50_Y0_N36
\RT_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[16]~16_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(16));

-- Location: IOOBUF_X11_Y0_N36
\RT_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[17]~17_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(17));

-- Location: IOOBUF_X40_Y0_N42
\RT_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[18]~18_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(18));

-- Location: IOOBUF_X36_Y0_N36
\RT_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[19]~19_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(19));

-- Location: IOOBUF_X14_Y0_N53
\RT_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[20]~20_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(20));

-- Location: IOOBUF_X34_Y0_N2
\RT_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[21]~21_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(21));

-- Location: IOOBUF_X18_Y0_N2
\RT_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[22]~22_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(22));

-- Location: IOOBUF_X0_Y19_N22
\RT_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[23]~23_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(23));

-- Location: IOOBUF_X0_Y18_N62
\RT_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[24]~24_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(24));

-- Location: IOOBUF_X18_Y0_N19
\RT_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[25]~25_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(25));

-- Location: IOOBUF_X24_Y0_N53
\RT_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[26]~26_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(26));

-- Location: IOOBUF_X11_Y0_N2
\RT_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[27]~27_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(27));

-- Location: IOOBUF_X18_Y0_N36
\RT_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[28]~28_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(28));

-- Location: IOOBUF_X36_Y45_N2
\RT_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[29]~29_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(29));

-- Location: IOOBUF_X18_Y0_N53
\RT_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[30]~30_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(30));

-- Location: IOOBUF_X54_Y18_N96
\RT_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[31]~31_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(31));

-- Location: IOOBUF_X54_Y19_N5
\Rs_End[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~5_combout\,
	devoe => ww_devoe,
	o => ww_Rs_End(0));

-- Location: IOOBUF_X50_Y45_N36
\Rs_End[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_End(1));

-- Location: IOOBUF_X14_Y45_N19
\Rs_End[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_End(2));

-- Location: IOOBUF_X54_Y17_N39
\Rs_End[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_Rs_End(3));

-- Location: IOOBUF_X50_Y45_N53
\Rs_End[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_End(4));

-- Location: IOOBUF_X52_Y0_N53
\Rt_End[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_End(0));

-- Location: IOOBUF_X54_Y15_N56
\Rt_End[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_Rt_End(1));

-- Location: IOOBUF_X40_Y45_N93
\Rt_End[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_End(2));

-- Location: IOOBUF_X54_Y17_N5
\Rt_End[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_Rt_End(3));

-- Location: IOOBUF_X46_Y45_N76
\Rt_End[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_End(4));

-- Location: IOOBUF_X20_Y45_N2
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(0),
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X32_Y45_N59
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(1),
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X25_Y0_N36
\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(2),
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X25_Y0_N53
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(3),
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X54_Y14_N79
\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(4),
	devoe => ww_devoe,
	o => ww_PC_OUT(4));

-- Location: IOOBUF_X0_Y19_N5
\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X54_Y16_N39
\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(6),
	devoe => ww_devoe,
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X25_Y0_N19
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X36_Y0_N2
\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(8),
	devoe => ww_devoe,
	o => ww_PC_OUT(8));

-- Location: IOOBUF_X51_Y0_N2
\PC_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(9),
	devoe => ww_devoe,
	o => ww_PC_OUT(9));

-- Location: IOOBUF_X32_Y45_N42
\PC_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(10),
	devoe => ww_devoe,
	o => ww_PC_OUT(10));

-- Location: IOOBUF_X50_Y0_N53
\PC_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(11),
	devoe => ww_devoe,
	o => ww_PC_OUT(11));

-- Location: IOOBUF_X38_Y0_N36
\PC_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(12),
	devoe => ww_devoe,
	o => ww_PC_OUT(12));

-- Location: IOOBUF_X10_Y0_N59
\PC_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(13),
	devoe => ww_devoe,
	o => ww_PC_OUT(13));

-- Location: IOOBUF_X34_Y45_N36
\PC_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(14),
	devoe => ww_devoe,
	o => ww_PC_OUT(14));

-- Location: IOOBUF_X44_Y0_N19
\PC_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(15),
	devoe => ww_devoe,
	o => ww_PC_OUT(15));

-- Location: IOOBUF_X43_Y0_N19
\PC_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(16),
	devoe => ww_devoe,
	o => ww_PC_OUT(16));

-- Location: IOOBUF_X44_Y0_N2
\PC_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(17),
	devoe => ww_devoe,
	o => ww_PC_OUT(17));

-- Location: IOOBUF_X46_Y0_N19
\PC_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(18),
	devoe => ww_devoe,
	o => ww_PC_OUT(18));

-- Location: IOOBUF_X20_Y45_N19
\PC_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(19),
	devoe => ww_devoe,
	o => ww_PC_OUT(19));

-- Location: IOOBUF_X44_Y0_N36
\PC_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(20),
	devoe => ww_devoe,
	o => ww_PC_OUT(20));

-- Location: IOOBUF_X29_Y0_N36
\PC_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(21),
	devoe => ww_devoe,
	o => ww_PC_OUT(21));

-- Location: IOOBUF_X54_Y16_N5
\PC_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(22),
	devoe => ww_devoe,
	o => ww_PC_OUT(22));

-- Location: IOOBUF_X23_Y0_N93
\PC_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(23),
	devoe => ww_devoe,
	o => ww_PC_OUT(23));

-- Location: IOOBUF_X33_Y0_N76
\PC_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(24),
	devoe => ww_devoe,
	o => ww_PC_OUT(24));

-- Location: IOOBUF_X43_Y0_N36
\PC_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(25),
	devoe => ww_devoe,
	o => ww_PC_OUT(25));

-- Location: IOOBUF_X48_Y0_N93
\PC_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(26),
	devoe => ww_devoe,
	o => ww_PC_OUT(26));

-- Location: IOOBUF_X50_Y0_N19
\PC_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(27),
	devoe => ww_devoe,
	o => ww_PC_OUT(27));

-- Location: IOOBUF_X22_Y0_N53
\PC_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(28),
	devoe => ww_devoe,
	o => ww_PC_OUT(28));

-- Location: IOOBUF_X36_Y0_N53
\PC_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(29),
	devoe => ww_devoe,
	o => ww_PC_OUT(29));

-- Location: IOOBUF_X38_Y0_N53
\PC_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(30),
	devoe => ww_devoe,
	o => ww_PC_OUT(30));

-- Location: IOOBUF_X16_Y0_N93
\PC_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(31),
	devoe => ww_devoe,
	o => ww_PC_OUT(31));

-- Location: IOIBUF_X54_Y18_N61
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G10
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X25_Y15_N33
\REG_PC|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_PC|DOUT[0]~0_combout\ = ( !\REG_PC|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \REG_PC|ALT_INV_DOUT\(0),
	combout => \REG_PC|DOUT[0]~0_combout\);

-- Location: FF_X25_Y15_N34
\REG_PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_PC|DOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(0));

-- Location: LABCELL_X26_Y13_N0
\somador|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~25_sumout\ = SUM(( \REG_PC|DOUT[1]~DUPLICATE_q\ ) + ( \REG_PC|DOUT\(0) ) + ( !VCC ))
-- \somador|Add0~26\ = CARRY(( \REG_PC|DOUT[1]~DUPLICATE_q\ ) + ( \REG_PC|DOUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_PC|ALT_INV_DOUT\(0),
	datad => \REG_PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => GND,
	sumout => \somador|Add0~25_sumout\,
	cout => \somador|Add0~26\);

-- Location: FF_X26_Y13_N2
\REG_PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X26_Y13_N3
\somador|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~5_sumout\ = SUM(( \REG_PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~26\ ))
-- \somador|Add0~6\ = CARRY(( \REG_PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \somador|Add0~26\,
	sumout => \somador|Add0~5_sumout\,
	cout => \somador|Add0~6\);

-- Location: FF_X26_Y13_N5
\REG_PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X26_Y13_N6
\somador|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~1_sumout\ = SUM(( \REG_PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~6\ ))
-- \somador|Add0~2\ = CARRY(( \REG_PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \somador|Add0~6\,
	sumout => \somador|Add0~1_sumout\,
	cout => \somador|Add0~2\);

-- Location: FF_X26_Y13_N8
\REG_PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X26_Y13_N9
\somador|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~13_sumout\ = SUM(( \REG_PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~2\ ))
-- \somador|Add0~14\ = CARRY(( \REG_PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \somador|Add0~2\,
	sumout => \somador|Add0~13_sumout\,
	cout => \somador|Add0~14\);

-- Location: FF_X26_Y13_N11
\REG_PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X26_Y13_N12
\somador|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~9_sumout\ = SUM(( \REG_PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~14\ ))
-- \somador|Add0~10\ = CARRY(( \REG_PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \somador|Add0~14\,
	sumout => \somador|Add0~9_sumout\,
	cout => \somador|Add0~10\);

-- Location: FF_X26_Y13_N14
\REG_PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT[5]~DUPLICATE_q\);

-- Location: FF_X26_Y13_N4
\REG_PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(2));

-- Location: LABCELL_X26_Y13_N15
\somador|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~21_sumout\ = SUM(( \REG_PC|DOUT\(6) ) + ( GND ) + ( \somador|Add0~10\ ))
-- \somador|Add0~22\ = CARRY(( \REG_PC|DOUT\(6) ) + ( GND ) + ( \somador|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_PC|ALT_INV_DOUT\(6),
	cin => \somador|Add0~10\,
	sumout => \somador|Add0~21_sumout\,
	cout => \somador|Add0~22\);

-- Location: FF_X26_Y13_N17
\REG_PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(6));

-- Location: LABCELL_X26_Y13_N18
\somador|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~17_sumout\ = SUM(( \REG_PC|DOUT\(7) ) + ( GND ) + ( \somador|Add0~22\ ))
-- \somador|Add0~18\ = CARRY(( \REG_PC|DOUT\(7) ) + ( GND ) + ( \somador|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_PC|ALT_INV_DOUT\(7),
	cin => \somador|Add0~22\,
	sumout => \somador|Add0~17_sumout\,
	cout => \somador|Add0~18\);

-- Location: FF_X26_Y13_N20
\REG_PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(7));

-- Location: LABCELL_X25_Y13_N9
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( !\REG_PC|DOUT\(7) & ( (!\REG_PC|DOUT[4]~DUPLICATE_q\ & (!\REG_PC|DOUT[5]~DUPLICATE_q\ & (!\REG_PC|DOUT\(2) & !\REG_PC|DOUT\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \REG_PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \REG_PC|ALT_INV_DOUT\(2),
	datad => \REG_PC|ALT_INV_DOUT\(6),
	dataf => \REG_PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~0_combout\);

-- Location: LABCELL_X25_Y15_N42
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( \REG_PC|DOUT[3]~DUPLICATE_q\ & ( \ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \REG_PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X25_Y13_N21
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( !\REG_PC|DOUT\(7) & ( !\REG_PC|DOUT\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(6),
	dataf => \REG_PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~2_combout\);

-- Location: FF_X26_Y13_N13
\REG_PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(5));

-- Location: LABCELL_X25_Y15_N6
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( !\REG_PC|DOUT[4]~DUPLICATE_q\ & ( \REG_PC|DOUT[2]~DUPLICATE_q\ & ( (!\REG_PC|DOUT[3]~DUPLICATE_q\ & (\ROM1|memROM~2_combout\ & !\REG_PC|DOUT\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \REG_PC|ALT_INV_DOUT\(5),
	datae => \REG_PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \REG_PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~3_combout\);

-- Location: FF_X26_Y13_N10
\REG_PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(4));

-- Location: FF_X26_Y13_N19
\REG_PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT[7]~DUPLICATE_q\);

-- Location: FF_X26_Y13_N7
\REG_PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(3));

-- Location: LABCELL_X25_Y11_N24
\BANCO_REG|saidaA[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[1]~0_combout\ = ( \REG_PC|DOUT\(3) & ( !\REG_PC|DOUT\(6) & ( (!\REG_PC|DOUT[5]~DUPLICATE_q\ & (!\REG_PC|DOUT\(4) & (!\REG_PC|DOUT\(2) & !\REG_PC|DOUT[7]~DUPLICATE_q\))) ) ) ) # ( !\REG_PC|DOUT\(3) & ( !\REG_PC|DOUT\(6) & ( 
-- (!\REG_PC|DOUT[5]~DUPLICATE_q\ & (!\REG_PC|DOUT\(4) & !\REG_PC|DOUT[7]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \REG_PC|ALT_INV_DOUT\(4),
	datac => \REG_PC|ALT_INV_DOUT\(2),
	datad => \REG_PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \REG_PC|ALT_INV_DOUT\(3),
	dataf => \REG_PC|ALT_INV_DOUT\(6),
	combout => \BANCO_REG|saidaA[1]~0_combout\);

-- Location: IOIBUF_X54_Y15_N21
\Sel_ULA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel_ULA(0),
	o => \Sel_ULA[0]~input_o\);

-- Location: IOIBUF_X0_Y18_N95
\Sel_ULA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel_ULA(1),
	o => \Sel_ULA[1]~input_o\);

-- Location: LABCELL_X26_Y14_N48
\BANCO_REG|saidaA[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[0]~1_combout\ = ( !\REG_PC|DOUT\(4) & ( (!\REG_PC|DOUT\(3) & (!\REG_PC|DOUT\(5) & !\REG_PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_PC|ALT_INV_DOUT\(3),
	datac => \REG_PC|ALT_INV_DOUT\(5),
	datad => \REG_PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \REG_PC|ALT_INV_DOUT\(4),
	combout => \BANCO_REG|saidaA[0]~1_combout\);

-- Location: FF_X26_Y13_N16
\REG_PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X25_Y15_N12
\BANCO_REG|registrador~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1062_combout\ = ( \REG_PC|DOUT\(3) & ( \REG_PC|DOUT\(5) ) ) # ( !\REG_PC|DOUT\(3) & ( \REG_PC|DOUT\(5) ) ) # ( \REG_PC|DOUT\(3) & ( !\REG_PC|DOUT\(5) & ( (((\REG_PC|DOUT[2]~DUPLICATE_q\) # (\REG_PC|DOUT[4]~DUPLICATE_q\)) # 
-- (\REG_PC|DOUT[6]~DUPLICATE_q\)) # (\REG_PC|DOUT\(7)) ) ) ) # ( !\REG_PC|DOUT\(3) & ( !\REG_PC|DOUT\(5) & ( ((\REG_PC|DOUT[4]~DUPLICATE_q\) # (\REG_PC|DOUT[6]~DUPLICATE_q\)) # (\REG_PC|DOUT\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(7),
	datab => \REG_PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \REG_PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \REG_PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \REG_PC|ALT_INV_DOUT\(3),
	dataf => \REG_PC|ALT_INV_DOUT\(5),
	combout => \BANCO_REG|registrador~1062_combout\);

-- Location: LABCELL_X25_Y13_N6
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \REG_PC|DOUT\(3) & ( (!\REG_PC|DOUT[5]~DUPLICATE_q\ & (!\REG_PC|DOUT[2]~DUPLICATE_q\ & !\REG_PC|DOUT[4]~DUPLICATE_q\)) ) ) # ( !\REG_PC|DOUT\(3) & ( (!\REG_PC|DOUT[5]~DUPLICATE_q\ & !\REG_PC|DOUT[4]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \REG_PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \REG_PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \REG_PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~4_combout\);

-- Location: LABCELL_X24_Y14_N0
\BANCO_REG|registrador~38feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~38feeder_combout\ = ( \ULA1|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~1_sumout\,
	combout => \BANCO_REG|registrador~38feeder_combout\);

-- Location: IOIBUF_X54_Y20_N4
\Ctrl_write~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ctrl_write,
	o => \Ctrl_write~input_o\);

-- Location: LABCELL_X25_Y15_N54
\BANCO_REG|registrador~1088\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1088_combout\ = ( \Ctrl_write~input_o\ & ( !\BANCO_REG|saidaA[1]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Ctrl_write~input_o\,
	dataf => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	combout => \BANCO_REG|registrador~1088_combout\);

-- Location: FF_X24_Y14_N2
\BANCO_REG|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~38feeder_combout\,
	asdata => \ULA1|saida[0]~0_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~38_q\);

-- Location: LABCELL_X25_Y14_N21
\BANCO_REG|registrador~1063\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1063_combout\ = ( \ROM1|memROM~0_combout\ & ( (\ROM1|memROM~4_combout\ & \ROM1|memROM~2_combout\) ) ) # ( !\ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~4_combout\ & (((\BANCO_REG|registrador~38_q\)))) # (\ROM1|memROM~4_combout\ & 
-- ((!\ROM1|memROM~2_combout\ & (\BANCO_REG|registrador~38_q\)) # (\ROM1|memROM~2_combout\ & ((\BANCO_REG|registrador~294_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~38_q\,
	datad => \BANCO_REG|ALT_INV_registrador~294_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1063_combout\);

-- Location: LABCELL_X25_Y14_N30
\ULA1|Add0~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~130_cout\ = CARRY(( (!\Sel_ULA[0]~input_o\) # (\Sel_ULA[1]~input_o\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \ALT_INV_Sel_ULA[0]~input_o\,
	cin => GND,
	cout => \ULA1|Add0~130_cout\);

-- Location: LABCELL_X25_Y14_N33
\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( \BANCO_REG|saidaA[0]~2_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1063_combout\) # (\BANCO_REG|registrador~1062_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1063_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~130_cout\ ))
-- \ULA1|Add0~2\ = CARRY(( \BANCO_REG|saidaA[0]~2_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1063_combout\) # (\BANCO_REG|registrador~1062_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1063_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[0]~2_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1063_combout\,
	cin => \ULA1|Add0~130_cout\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

-- Location: LABCELL_X26_Y14_N0
\BANCO_REG|registrador~294feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~294feeder_combout\ = \ULA1|Add0~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|ALT_INV_Add0~1_sumout\,
	combout => \BANCO_REG|registrador~294feeder_combout\);

-- Location: LABCELL_X25_Y15_N27
\BANCO_REG|registrador~1089\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1089_combout\ = ( \Ctrl_write~input_o\ & ( \BANCO_REG|saidaA[1]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Ctrl_write~input_o\,
	dataf => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	combout => \BANCO_REG|registrador~1089_combout\);

-- Location: FF_X26_Y14_N2
\BANCO_REG|registrador~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~294feeder_combout\,
	asdata => \ULA1|saida[0]~0_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~294_q\);

-- Location: LABCELL_X26_Y14_N21
\BANCO_REG|saidaA[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[0]~2_combout\ = ( \ROM1|memROM~4_combout\ & ( (!\BANCO_REG|saidaA[0]~1_combout\ & (\BANCO_REG|registrador~294_q\ & \ROM1|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~294_q\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REG|saidaA[0]~2_combout\);

-- Location: MLABCELL_X28_Y14_N9
\BANCO_REG|saidaB[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[0]~0_combout\ = ( !\BANCO_REG|registrador~1062_combout\ & ( \ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~2_combout\ & (\BANCO_REG|registrador~38_q\)) # (\ROM1|memROM~2_combout\ & 
-- ((\BANCO_REG|registrador~294_q\))))) # (\ROM1|memROM~0_combout\ & (((\ROM1|memROM~2_combout\)))) ) ) ) # ( !\BANCO_REG|registrador~1062_combout\ & ( !\ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~0_combout\ & \BANCO_REG|registrador~38_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000000000000000000100010010111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~38_q\,
	datac => \BANCO_REG|ALT_INV_registrador~294_q\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REG|saidaB[0]~0_combout\);

-- Location: LABCELL_X26_Y14_N30
\ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~0_combout\ = ( \BANCO_REG|saidaB[0]~0_combout\ & ( (!\Sel_ULA[0]~input_o\) # ((!\Sel_ULA[1]~input_o\) # (\BANCO_REG|saidaA[0]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010111111111111101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[0]~2_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaB[0]~0_combout\,
	combout => \ULA1|saida[0]~0_combout\);

-- Location: LABCELL_X24_Y14_N30
\ULA1|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~1_combout\ = ( \ULA1|Add0~1_sumout\ & ( (!\Sel_ULA[1]~input_o\) # (\ULA1|saida[0]~0_combout\) ) ) # ( !\ULA1|Add0~1_sumout\ & ( (\ULA1|saida[0]~0_combout\ & \Sel_ULA[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA1|ALT_INV_saida[0]~0_combout\,
	datad => \ALT_INV_Sel_ULA[1]~input_o\,
	dataf => \ULA1|ALT_INV_Add0~1_sumout\,
	combout => \ULA1|saida[0]~1_combout\);

-- Location: LABCELL_X26_Y14_N51
\BANCO_REG|registrador~295feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~295feeder_combout\ = ( \ULA1|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~5_sumout\,
	combout => \BANCO_REG|registrador~295feeder_combout\);

-- Location: LABCELL_X25_Y14_N27
\BANCO_REG|saidaA[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[1]~3_combout\ = ( \BANCO_REG|saidaA[0]~1_combout\ & ( (\ROM1|memROM~4_combout\ & \ROM1|memROM~2_combout\) ) ) # ( !\BANCO_REG|saidaA[0]~1_combout\ & ( (\ROM1|memROM~4_combout\ & (\BANCO_REG|registrador~295_q\ & \ROM1|memROM~2_combout\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~295_q\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	combout => \BANCO_REG|saidaA[1]~3_combout\);

-- Location: LABCELL_X24_Y14_N57
\ULA1|Add0~5_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_wirecell_combout\ = !\ULA1|Add0~5_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|ALT_INV_Add0~5_sumout\,
	combout => \ULA1|Add0~5_wirecell_combout\);

-- Location: LABCELL_X24_Y14_N45
\ULA1|saida[1]~2_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~2_wirecell_combout\ = ( !\ULA1|saida[1]~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_saida[1]~2_combout\,
	combout => \ULA1|saida[1]~2_wirecell_combout\);

-- Location: FF_X24_Y14_N59
\BANCO_REG|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~5_wirecell_combout\,
	asdata => \ULA1|saida[1]~2_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~39_q\);

-- Location: MLABCELL_X28_Y12_N39
\BANCO_REG|saidaB[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[1]~1_combout\ = ( \BANCO_REG|registrador~39_q\ & ( \BANCO_REG|registrador~295_q\ & ( (\ROM1|memROM~4_combout\ & (\ROM1|memROM~2_combout\ & !\BANCO_REG|registrador~1062_combout\)) ) ) ) # ( !\BANCO_REG|registrador~39_q\ & ( 
-- \BANCO_REG|registrador~295_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & ((!\ROM1|memROM~0_combout\) # ((\ROM1|memROM~4_combout\ & \ROM1|memROM~2_combout\)))) ) ) ) # ( \BANCO_REG|registrador~39_q\ & ( !\BANCO_REG|registrador~295_q\ & ( 
-- (\ROM1|memROM~4_combout\ & (\ROM1|memROM~2_combout\ & (!\BANCO_REG|registrador~1062_combout\ & \ROM1|memROM~0_combout\))) ) ) ) # ( !\BANCO_REG|registrador~39_q\ & ( !\BANCO_REG|registrador~295_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & 
-- (!\ROM1|memROM~0_combout\ $ (((\ROM1|memROM~4_combout\ & \ROM1|memROM~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000000010000000000000001000011110000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~39_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~295_q\,
	combout => \BANCO_REG|saidaB[1]~1_combout\);

-- Location: LABCELL_X24_Y14_N15
\ULA1|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~2_combout\ = ( \BANCO_REG|saidaB[1]~1_combout\ & ( (!\Sel_ULA[0]~input_o\) # ((!\Sel_ULA[1]~input_o\) # (\BANCO_REG|saidaA[1]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010111111111111101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[1]~3_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaB[1]~1_combout\,
	combout => \ULA1|saida[1]~2_combout\);

-- Location: FF_X26_Y14_N53
\BANCO_REG|registrador~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~295feeder_combout\,
	asdata => \ULA1|saida[1]~2_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~295_q\);

-- Location: LABCELL_X25_Y14_N3
\BANCO_REG|registrador~1064\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1064_combout\ = ( \ROM1|memROM~0_combout\ & ( (\ROM1|memROM~4_combout\ & \ROM1|memROM~2_combout\) ) ) # ( !\ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~4_combout\ & (((!\BANCO_REG|registrador~39_q\)))) # (\ROM1|memROM~4_combout\ & 
-- ((!\ROM1|memROM~2_combout\ & ((!\BANCO_REG|registrador~39_q\))) # (\ROM1|memROM~2_combout\ & (\BANCO_REG|registrador~295_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111100000001111011110000000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~295_q\,
	datad => \BANCO_REG|ALT_INV_registrador~39_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1064_combout\);

-- Location: LABCELL_X25_Y14_N36
\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1064_combout\) # (\BANCO_REG|registrador~1062_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ (((!\BANCO_REG|registrador~1064_combout\) # 
-- (\BANCO_REG|registrador~1062_combout\))))) ) + ( \BANCO_REG|saidaA[1]~3_combout\ ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1064_combout\) # (\BANCO_REG|registrador~1062_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ (((!\BANCO_REG|registrador~1064_combout\) # 
-- (\BANCO_REG|registrador~1062_combout\))))) ) + ( \BANCO_REG|saidaA[1]~3_combout\ ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011101101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1064_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaA[1]~3_combout\,
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

-- Location: LABCELL_X24_Y14_N54
\ULA1|saida[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~3_combout\ = ( \ULA1|saida[1]~2_combout\ & ( (\Sel_ULA[1]~input_o\) # (\ULA1|Add0~5_sumout\) ) ) # ( !\ULA1|saida[1]~2_combout\ & ( (\ULA1|Add0~5_sumout\ & !\Sel_ULA[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|ALT_INV_Add0~5_sumout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	dataf => \ULA1|ALT_INV_saida[1]~2_combout\,
	combout => \ULA1|saida[1]~3_combout\);

-- Location: LABCELL_X24_Y14_N24
\BANCO_REG|registrador~40feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~40feeder_combout\ = ( \ULA1|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~9_sumout\,
	combout => \BANCO_REG|registrador~40feeder_combout\);

-- Location: FF_X24_Y14_N26
\BANCO_REG|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~40feeder_combout\,
	asdata => \ULA1|saida[2]~4_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~40_q\);

-- Location: LABCELL_X25_Y14_N6
\BANCO_REG|registrador~1065\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1065_combout\ = ( !\ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~4_combout\ & (((\BANCO_REG|registrador~40_q\)))) # (\ROM1|memROM~4_combout\ & ((!\ROM1|memROM~2_combout\ & ((\BANCO_REG|registrador~40_q\))) # (\ROM1|memROM~2_combout\ & 
-- (\BANCO_REG|registrador~296_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110101001100110011010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~296_q\,
	datab => \BANCO_REG|ALT_INV_registrador~40_q\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1065_combout\);

-- Location: LABCELL_X25_Y14_N39
\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( \BANCO_REG|saidaA[2]~4_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1065_combout\) # (\BANCO_REG|registrador~1062_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1065_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( \BANCO_REG|saidaA[2]~4_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1065_combout\) # (\BANCO_REG|registrador~1062_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1065_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[2]~4_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1065_combout\,
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

-- Location: LABCELL_X24_Y14_N21
\BANCO_REG|registrador~296feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~296feeder_combout\ = ( \ULA1|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~9_sumout\,
	combout => \BANCO_REG|registrador~296feeder_combout\);

-- Location: FF_X24_Y14_N23
\BANCO_REG|registrador~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~296feeder_combout\,
	asdata => \ULA1|saida[2]~4_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~296_q\);

-- Location: LABCELL_X25_Y14_N9
\BANCO_REG|saidaA[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[2]~4_combout\ = ( !\BANCO_REG|saidaA[0]~1_combout\ & ( (\BANCO_REG|registrador~296_q\ & (\ROM1|memROM~4_combout\ & \ROM1|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~296_q\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	combout => \BANCO_REG|saidaA[2]~4_combout\);

-- Location: MLABCELL_X23_Y14_N6
\BANCO_REG|saidaB[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[2]~2_combout\ = ( \BANCO_REG|registrador~40_q\ & ( \BANCO_REG|registrador~296_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & !\ROM1|memROM~0_combout\) ) ) ) # ( !\BANCO_REG|registrador~40_q\ & ( \BANCO_REG|registrador~296_q\ & ( 
-- (\ROM1|memROM~4_combout\ & (!\BANCO_REG|registrador~1062_combout\ & (!\ROM1|memROM~0_combout\ & \ROM1|memROM~2_combout\))) ) ) ) # ( \BANCO_REG|registrador~40_q\ & ( !\BANCO_REG|registrador~296_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & 
-- (!\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~4_combout\) # (!\ROM1|memROM~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001000000000000000010000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~40_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~296_q\,
	combout => \BANCO_REG|saidaB[2]~2_combout\);

-- Location: MLABCELL_X23_Y14_N48
\ULA1|saida[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~4_combout\ = ( \BANCO_REG|saidaB[2]~2_combout\ & ( (!\Sel_ULA[0]~input_o\) # ((!\Sel_ULA[1]~input_o\) # (\BANCO_REG|saidaA[2]~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaA[2]~4_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaB[2]~2_combout\,
	combout => \ULA1|saida[2]~4_combout\);

-- Location: LABCELL_X24_Y14_N36
\ULA1|saida[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~5_combout\ = ( \ULA1|Add0~9_sumout\ & ( (!\Sel_ULA[1]~input_o\) # (\ULA1|saida[2]~4_combout\) ) ) # ( !\ULA1|Add0~9_sumout\ & ( (\Sel_ULA[1]~input_o\ & \ULA1|saida[2]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \ULA1|ALT_INV_saida[2]~4_combout\,
	dataf => \ULA1|ALT_INV_Add0~9_sumout\,
	combout => \ULA1|saida[2]~5_combout\);

-- Location: LABCELL_X26_Y14_N24
\BANCO_REG|registrador~297feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~297feeder_combout\ = ( \ULA1|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~13_sumout\,
	combout => \BANCO_REG|registrador~297feeder_combout\);

-- Location: MLABCELL_X28_Y14_N0
\ULA1|Add0~13_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_wirecell_combout\ = ( !\ULA1|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~13_sumout\,
	combout => \ULA1|Add0~13_wirecell_combout\);

-- Location: MLABCELL_X28_Y12_N54
\ULA1|saida[3]~6_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~6_wirecell_combout\ = ( !\ULA1|saida[3]~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ULA1|ALT_INV_saida[3]~6_combout\,
	combout => \ULA1|saida[3]~6_wirecell_combout\);

-- Location: FF_X28_Y14_N2
\BANCO_REG|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~13_wirecell_combout\,
	asdata => \ULA1|saida[3]~6_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~41_q\);

-- Location: MLABCELL_X28_Y12_N36
\BANCO_REG|saidaB[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[3]~3_combout\ = ( \BANCO_REG|registrador~41_q\ & ( \BANCO_REG|registrador~297_q\ & ( (\ROM1|memROM~4_combout\ & (\ROM1|memROM~2_combout\ & !\BANCO_REG|registrador~1062_combout\)) ) ) ) # ( !\BANCO_REG|registrador~41_q\ & ( 
-- \BANCO_REG|registrador~297_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & ((!\ROM1|memROM~0_combout\) # ((\ROM1|memROM~4_combout\ & \ROM1|memROM~2_combout\)))) ) ) ) # ( \BANCO_REG|registrador~41_q\ & ( !\BANCO_REG|registrador~297_q\ & ( 
-- (\ROM1|memROM~4_combout\ & (\ROM1|memROM~2_combout\ & (\ROM1|memROM~0_combout\ & !\BANCO_REG|registrador~1062_combout\))) ) ) ) # ( !\BANCO_REG|registrador~41_q\ & ( !\BANCO_REG|registrador~297_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & 
-- (!\ROM1|memROM~0_combout\ $ (((\ROM1|memROM~4_combout\ & \ROM1|memROM~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000100000000000000010000000011110001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~41_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~297_q\,
	combout => \BANCO_REG|saidaB[3]~3_combout\);

-- Location: MLABCELL_X28_Y12_N21
\ULA1|saida[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~6_combout\ = ( \BANCO_REG|saidaB[3]~3_combout\ & ( \BANCO_REG|saidaA[3]~5_combout\ ) ) # ( \BANCO_REG|saidaB[3]~3_combout\ & ( !\BANCO_REG|saidaA[3]~5_combout\ & ( (!\Sel_ULA[0]~input_o\) # (!\Sel_ULA[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010101000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datad => \ALT_INV_Sel_ULA[1]~input_o\,
	datae => \BANCO_REG|ALT_INV_saidaB[3]~3_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaA[3]~5_combout\,
	combout => \ULA1|saida[3]~6_combout\);

-- Location: FF_X26_Y14_N26
\BANCO_REG|registrador~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~297feeder_combout\,
	asdata => \ULA1|saida[3]~6_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~297_q\);

-- Location: LABCELL_X26_Y14_N3
\BANCO_REG|saidaA[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[3]~5_combout\ = ( \ROM1|memROM~4_combout\ & ( (\ROM1|memROM~2_combout\ & ((\BANCO_REG|saidaA[0]~1_combout\) # (\BANCO_REG|registrador~297_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~297_q\,
	datac => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REG|saidaA[3]~5_combout\);

-- Location: LABCELL_X25_Y14_N24
\BANCO_REG|registrador~1066\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1066_combout\ = ( \ROM1|memROM~0_combout\ & ( (\ROM1|memROM~4_combout\ & \ROM1|memROM~2_combout\) ) ) # ( !\ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~4_combout\ & (((!\BANCO_REG|registrador~41_q\)))) # (\ROM1|memROM~4_combout\ & 
-- ((!\ROM1|memROM~2_combout\ & ((!\BANCO_REG|registrador~41_q\))) # (\ROM1|memROM~2_combout\ & (\BANCO_REG|registrador~297_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010110001111100001011000100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~297_q\,
	datac => \BANCO_REG|ALT_INV_registrador~41_q\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1066_combout\);

-- Location: LABCELL_X25_Y14_N42
\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( \BANCO_REG|saidaA[3]~5_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1066_combout\) # (\BANCO_REG|registrador~1062_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1066_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( \BANCO_REG|saidaA[3]~5_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1066_combout\) # (\BANCO_REG|registrador~1062_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1066_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[3]~5_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1066_combout\,
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

-- Location: MLABCELL_X28_Y12_N3
\ULA1|saida[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~7_combout\ = ( \Sel_ULA[1]~input_o\ & ( \ULA1|saida[3]~6_combout\ ) ) # ( !\Sel_ULA[1]~input_o\ & ( \ULA1|Add0~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA1|ALT_INV_Add0~13_sumout\,
	datad => \ULA1|ALT_INV_saida[3]~6_combout\,
	dataf => \ALT_INV_Sel_ULA[1]~input_o\,
	combout => \ULA1|saida[3]~7_combout\);

-- Location: LABCELL_X26_Y14_N9
\BANCO_REG|registrador~298feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~298feeder_combout\ = \ULA1|Add0~17_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA1|ALT_INV_Add0~17_sumout\,
	combout => \BANCO_REG|registrador~298feeder_combout\);

-- Location: LABCELL_X24_Y14_N12
\BANCO_REG|registrador~42feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~42feeder_combout\ = ( \ULA1|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~17_sumout\,
	combout => \BANCO_REG|registrador~42feeder_combout\);

-- Location: FF_X24_Y14_N14
\BANCO_REG|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~42feeder_combout\,
	asdata => \ULA1|saida[4]~8_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~42_q\);

-- Location: MLABCELL_X23_Y14_N30
\BANCO_REG|saidaB[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[4]~4_combout\ = ( \BANCO_REG|registrador~42_q\ & ( \BANCO_REG|registrador~298_q\ & ( (!\ROM1|memROM~0_combout\ & !\BANCO_REG|registrador~1062_combout\) ) ) ) # ( !\BANCO_REG|registrador~42_q\ & ( \BANCO_REG|registrador~298_q\ & ( 
-- (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & !\BANCO_REG|registrador~1062_combout\))) ) ) ) # ( \BANCO_REG|registrador~42_q\ & ( !\BANCO_REG|registrador~298_q\ & ( (!\ROM1|memROM~0_combout\ & 
-- (!\BANCO_REG|registrador~1062_combout\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010000000000000000010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~42_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~298_q\,
	combout => \BANCO_REG|saidaB[4]~4_combout\);

-- Location: MLABCELL_X23_Y14_N51
\ULA1|saida[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~8_combout\ = ( \BANCO_REG|saidaB[4]~4_combout\ & ( (!\Sel_ULA[0]~input_o\) # ((!\Sel_ULA[1]~input_o\) # (\BANCO_REG|saidaA[4]~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101110111111111110111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[4]~6_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaB[4]~4_combout\,
	combout => \ULA1|saida[4]~8_combout\);

-- Location: FF_X26_Y14_N11
\BANCO_REG|registrador~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~298feeder_combout\,
	asdata => \ULA1|saida[4]~8_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~298_q\);

-- Location: LABCELL_X26_Y14_N27
\BANCO_REG|saidaA[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[4]~6_combout\ = ( \ROM1|memROM~4_combout\ & ( (!\BANCO_REG|saidaA[0]~1_combout\ & (\BANCO_REG|registrador~298_q\ & \ROM1|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~298_q\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REG|saidaA[4]~6_combout\);

-- Location: LABCELL_X25_Y14_N12
\BANCO_REG|registrador~1067\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1067_combout\ = ( !\ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~4_combout\ & (((\BANCO_REG|registrador~42_q\)))) # (\ROM1|memROM~4_combout\ & ((!\ROM1|memROM~2_combout\ & ((\BANCO_REG|registrador~42_q\))) # (\ROM1|memROM~2_combout\ & 
-- (\BANCO_REG|registrador~298_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~298_q\,
	datad => \BANCO_REG|ALT_INV_registrador~42_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1067_combout\);

-- Location: LABCELL_X25_Y14_N45
\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( \BANCO_REG|saidaA[4]~6_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1067_combout\) # (\BANCO_REG|registrador~1062_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1067_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( \BANCO_REG|saidaA[4]~6_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1067_combout\) # (\BANCO_REG|registrador~1062_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1067_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[4]~6_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1067_combout\,
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

-- Location: MLABCELL_X23_Y14_N15
\ULA1|saida[4]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~9_combout\ = ( \ULA1|saida[4]~8_combout\ & ( (\ULA1|Add0~17_sumout\) # (\Sel_ULA[1]~input_o\) ) ) # ( !\ULA1|saida[4]~8_combout\ & ( (!\Sel_ULA[1]~input_o\ & \ULA1|Add0~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \ULA1|ALT_INV_Add0~17_sumout\,
	dataf => \ULA1|ALT_INV_saida[4]~8_combout\,
	combout => \ULA1|saida[4]~9_combout\);

-- Location: MLABCELL_X23_Y14_N0
\BANCO_REG|registrador~299feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~299feeder_combout\ = ( \ULA1|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~21_sumout\,
	combout => \BANCO_REG|registrador~299feeder_combout\);

-- Location: LABCELL_X24_Y14_N27
\ULA1|Add0~21_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_wirecell_combout\ = !\ULA1|Add0~21_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA1|ALT_INV_Add0~21_sumout\,
	combout => \ULA1|Add0~21_wirecell_combout\);

-- Location: MLABCELL_X23_Y14_N24
\ULA1|saida[5]~10_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~10_wirecell_combout\ = ( !\ULA1|saida[5]~10_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_saida[5]~10_combout\,
	combout => \ULA1|saida[5]~10_wirecell_combout\);

-- Location: FF_X24_Y14_N29
\BANCO_REG|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~21_wirecell_combout\,
	asdata => \ULA1|saida[5]~10_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~43_q\);

-- Location: LABCELL_X26_Y15_N30
\BANCO_REG|saidaB[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[5]~5_combout\ = ( \BANCO_REG|registrador~43_q\ & ( \BANCO_REG|registrador~299_q\ & ( (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~0_combout\ & (!\BANCO_REG|registrador~1062_combout\ & \ROM1|memROM~2_combout\))) ) ) ) # ( 
-- !\BANCO_REG|registrador~43_q\ & ( \BANCO_REG|registrador~299_q\ & ( (!\ROM1|memROM~0_combout\ & !\BANCO_REG|registrador~1062_combout\) ) ) ) # ( !\BANCO_REG|registrador~43_q\ & ( !\BANCO_REG|registrador~299_q\ & ( (!\ROM1|memROM~0_combout\ & 
-- (!\BANCO_REG|registrador~1062_combout\ & ((!\ROM1|memROM~4_combout\) # (!\ROM1|memROM~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010000000000000000000000011000000110000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~43_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~299_q\,
	combout => \BANCO_REG|saidaB[5]~5_combout\);

-- Location: LABCELL_X26_Y15_N48
\ULA1|saida[5]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~10_combout\ = ( \BANCO_REG|saidaA[5]~7_combout\ & ( \BANCO_REG|saidaB[5]~5_combout\ ) ) # ( !\BANCO_REG|saidaA[5]~7_combout\ & ( (\BANCO_REG|saidaB[5]~5_combout\ & ((!\Sel_ULA[1]~input_o\) # (!\Sel_ULA[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaB[5]~5_combout\,
	datad => \ALT_INV_Sel_ULA[0]~input_o\,
	dataf => \BANCO_REG|ALT_INV_saidaA[5]~7_combout\,
	combout => \ULA1|saida[5]~10_combout\);

-- Location: FF_X23_Y14_N2
\BANCO_REG|registrador~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~299feeder_combout\,
	asdata => \ULA1|saida[5]~10_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~299_q\);

-- Location: LABCELL_X26_Y14_N57
\BANCO_REG|saidaA[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[5]~7_combout\ = ( \ROM1|memROM~4_combout\ & ( (\BANCO_REG|registrador~299_q\ & (\ROM1|memROM~2_combout\ & !\BANCO_REG|saidaA[0]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~299_q\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REG|saidaA[5]~7_combout\);

-- Location: LABCELL_X25_Y14_N18
\BANCO_REG|registrador~1068\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1068_combout\ = ( !\ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~4_combout\ & (((!\BANCO_REG|registrador~43_q\)))) # (\ROM1|memROM~4_combout\ & ((!\ROM1|memROM~2_combout\ & (!\BANCO_REG|registrador~43_q\)) # (\ROM1|memROM~2_combout\ & 
-- ((\BANCO_REG|registrador~299_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011110001111000001111000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~43_q\,
	datad => \BANCO_REG|ALT_INV_registrador~299_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1068_combout\);

-- Location: LABCELL_X25_Y14_N48
\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( \BANCO_REG|saidaA[5]~7_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1068_combout\) # (\BANCO_REG|registrador~1062_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1068_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( \BANCO_REG|saidaA[5]~7_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1068_combout\) # (\BANCO_REG|registrador~1062_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1068_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[5]~7_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1068_combout\,
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

-- Location: LABCELL_X24_Y14_N51
\ULA1|saida[5]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~11_combout\ = ( \ULA1|saida[5]~10_combout\ & ( (\Sel_ULA[1]~input_o\) # (\ULA1|Add0~21_sumout\) ) ) # ( !\ULA1|saida[5]~10_combout\ & ( (\ULA1|Add0~21_sumout\ & !\Sel_ULA[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|ALT_INV_Add0~21_sumout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	dataf => \ULA1|ALT_INV_saida[5]~10_combout\,
	combout => \ULA1|saida[5]~11_combout\);

-- Location: LABCELL_X24_Y14_N48
\BANCO_REG|registrador~300feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~300feeder_combout\ = ( \ULA1|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~25_sumout\,
	combout => \BANCO_REG|registrador~300feeder_combout\);

-- Location: LABCELL_X24_Y14_N42
\BANCO_REG|registrador~44feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~44feeder_combout\ = ( \ULA1|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~25_sumout\,
	combout => \BANCO_REG|registrador~44feeder_combout\);

-- Location: FF_X24_Y14_N44
\BANCO_REG|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~44feeder_combout\,
	asdata => \ULA1|saida[6]~12_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~44_q\);

-- Location: MLABCELL_X23_Y14_N33
\BANCO_REG|saidaB[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[6]~6_combout\ = ( \BANCO_REG|registrador~44_q\ & ( \BANCO_REG|registrador~300_q\ & ( (!\ROM1|memROM~0_combout\ & !\BANCO_REG|registrador~1062_combout\) ) ) ) # ( !\BANCO_REG|registrador~44_q\ & ( \BANCO_REG|registrador~300_q\ & ( 
-- (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~2_combout\ & (!\BANCO_REG|registrador~1062_combout\ & \ROM1|memROM~4_combout\))) ) ) ) # ( \BANCO_REG|registrador~44_q\ & ( !\BANCO_REG|registrador~300_q\ & ( (!\ROM1|memROM~0_combout\ & 
-- (!\BANCO_REG|registrador~1062_combout\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001000000000000000001000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~44_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~300_q\,
	combout => \BANCO_REG|saidaB[6]~6_combout\);

-- Location: MLABCELL_X23_Y14_N3
\ULA1|saida[6]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~12_combout\ = (\BANCO_REG|saidaB[6]~6_combout\ & (((!\Sel_ULA[1]~input_o\) # (!\Sel_ULA[0]~input_o\)) # (\BANCO_REG|saidaA[6]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010001010101010101000101010101010100010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaB[6]~6_combout\,
	datab => \BANCO_REG|ALT_INV_saidaA[6]~8_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \ALT_INV_Sel_ULA[0]~input_o\,
	combout => \ULA1|saida[6]~12_combout\);

-- Location: FF_X24_Y14_N50
\BANCO_REG|registrador~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~300feeder_combout\,
	asdata => \ULA1|saida[6]~12_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~300_q\);

-- Location: LABCELL_X26_Y14_N42
\BANCO_REG|saidaA[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[6]~8_combout\ = ( \ROM1|memROM~4_combout\ & ( (\BANCO_REG|registrador~300_q\ & (!\BANCO_REG|saidaA[0]~1_combout\ & \ROM1|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCO_REG|ALT_INV_registrador~300_q\,
	datac => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REG|saidaA[6]~8_combout\);

-- Location: LABCELL_X25_Y14_N15
\BANCO_REG|registrador~1069\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1069_combout\ = ( !\ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~4_combout\ & (((\BANCO_REG|registrador~44_q\)))) # (\ROM1|memROM~4_combout\ & ((!\ROM1|memROM~2_combout\ & ((\BANCO_REG|registrador~44_q\))) # (\ROM1|memROM~2_combout\ & 
-- (\BANCO_REG|registrador~300_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~300_q\,
	datad => \BANCO_REG|ALT_INV_registrador~44_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1069_combout\);

-- Location: LABCELL_X25_Y14_N51
\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( \BANCO_REG|saidaA[6]~8_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1069_combout\) # (\BANCO_REG|registrador~1062_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1069_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( \BANCO_REG|saidaA[6]~8_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1069_combout\) # (\BANCO_REG|registrador~1062_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1069_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[6]~8_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1069_combout\,
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

-- Location: MLABCELL_X23_Y14_N45
\ULA1|saida[6]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~13_combout\ = (!\Sel_ULA[1]~input_o\ & (\ULA1|Add0~25_sumout\)) # (\Sel_ULA[1]~input_o\ & ((\ULA1|saida[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \ULA1|ALT_INV_Add0~25_sumout\,
	datad => \ULA1|ALT_INV_saida[6]~12_combout\,
	combout => \ULA1|saida[6]~13_combout\);

-- Location: LABCELL_X26_Y15_N6
\ULA1|Add0~29_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_wirecell_combout\ = ( !\ULA1|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ULA1|ALT_INV_Add0~29_sumout\,
	combout => \ULA1|Add0~29_wirecell_combout\);

-- Location: LABCELL_X26_Y15_N42
\BANCO_REG|registrador~301feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~301feeder_combout\ = \ULA1|Add0~29_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA1|ALT_INV_Add0~29_sumout\,
	combout => \BANCO_REG|registrador~301feeder_combout\);

-- Location: FF_X26_Y15_N44
\BANCO_REG|registrador~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~301feeder_combout\,
	asdata => \ULA1|saida[7]~14_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~301_q\);

-- Location: LABCELL_X26_Y15_N33
\BANCO_REG|saidaB[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[7]~7_combout\ = ( \BANCO_REG|registrador~45_q\ & ( \BANCO_REG|registrador~301_q\ & ( (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~2_combout\ & !\BANCO_REG|registrador~1062_combout\))) ) ) ) # ( 
-- !\BANCO_REG|registrador~45_q\ & ( \BANCO_REG|registrador~301_q\ & ( (!\ROM1|memROM~0_combout\ & !\BANCO_REG|registrador~1062_combout\) ) ) ) # ( !\BANCO_REG|registrador~45_q\ & ( !\BANCO_REG|registrador~301_q\ & ( (!\ROM1|memROM~0_combout\ & 
-- (!\BANCO_REG|registrador~1062_combout\ & ((!\ROM1|memROM~4_combout\) # (!\ROM1|memROM~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000000000000000000000000011001100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~45_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~301_q\,
	combout => \BANCO_REG|saidaB[7]~7_combout\);

-- Location: LABCELL_X26_Y14_N33
\BANCO_REG|saidaA[7]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[7]~9_combout\ = ( \ROM1|memROM~4_combout\ & ( (\BANCO_REG|registrador~301_q\ & (\ROM1|memROM~2_combout\ & !\BANCO_REG|saidaA[0]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCO_REG|ALT_INV_registrador~301_q\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REG|saidaA[7]~9_combout\);

-- Location: LABCELL_X26_Y15_N54
\ULA1|saida[7]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~14_combout\ = ( \BANCO_REG|saidaA[7]~9_combout\ & ( \BANCO_REG|saidaB[7]~7_combout\ ) ) # ( !\BANCO_REG|saidaA[7]~9_combout\ & ( (\BANCO_REG|saidaB[7]~7_combout\ & ((!\Sel_ULA[1]~input_o\) # (!\Sel_ULA[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaB[7]~7_combout\,
	datad => \ALT_INV_Sel_ULA[0]~input_o\,
	dataf => \BANCO_REG|ALT_INV_saidaA[7]~9_combout\,
	combout => \ULA1|saida[7]~14_combout\);

-- Location: LABCELL_X26_Y15_N51
\ULA1|saida[7]~14_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~14_wirecell_combout\ = !\ULA1|saida[7]~14_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ULA1|ALT_INV_saida[7]~14_combout\,
	combout => \ULA1|saida[7]~14_wirecell_combout\);

-- Location: FF_X26_Y15_N8
\BANCO_REG|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~29_wirecell_combout\,
	asdata => \ULA1|saida[7]~14_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~45_q\);

-- Location: LABCELL_X25_Y14_N0
\BANCO_REG|registrador~1070\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1070_combout\ = ( !\ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~4_combout\ & (((!\BANCO_REG|registrador~45_q\)))) # (\ROM1|memROM~4_combout\ & ((!\ROM1|memROM~2_combout\ & (!\BANCO_REG|registrador~45_q\)) # (\ROM1|memROM~2_combout\ & 
-- ((\BANCO_REG|registrador~301_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011110001111000001111000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~45_q\,
	datad => \BANCO_REG|ALT_INV_registrador~301_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1070_combout\);

-- Location: LABCELL_X25_Y14_N54
\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1070_combout\) # (\BANCO_REG|registrador~1062_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ (((!\BANCO_REG|registrador~1070_combout\) # 
-- (\BANCO_REG|registrador~1062_combout\))))) ) + ( \BANCO_REG|saidaA[7]~9_combout\ ) + ( \ULA1|Add0~26\ ))
-- \ULA1|Add0~30\ = CARRY(( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1070_combout\) # (\BANCO_REG|registrador~1062_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ (((!\BANCO_REG|registrador~1070_combout\) # 
-- (\BANCO_REG|registrador~1062_combout\))))) ) + ( \BANCO_REG|saidaA[7]~9_combout\ ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011101101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1070_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaA[7]~9_combout\,
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\,
	cout => \ULA1|Add0~30\);

-- Location: LABCELL_X26_Y15_N15
\ULA1|saida[7]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~15_combout\ = (!\Sel_ULA[1]~input_o\ & (\ULA1|Add0~29_sumout\)) # (\Sel_ULA[1]~input_o\ & ((\ULA1|saida[7]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~29_sumout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \ULA1|ALT_INV_saida[7]~14_combout\,
	combout => \ULA1|saida[7]~15_combout\);

-- Location: LABCELL_X24_Y14_N3
\BANCO_REG|registrador~46feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~46feeder_combout\ = ( \ULA1|Add0~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~33_sumout\,
	combout => \BANCO_REG|registrador~46feeder_combout\);

-- Location: LABCELL_X24_Y14_N6
\BANCO_REG|registrador~302feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~302feeder_combout\ = ( \ULA1|Add0~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~33_sumout\,
	combout => \BANCO_REG|registrador~302feeder_combout\);

-- Location: FF_X24_Y14_N8
\BANCO_REG|registrador~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~302feeder_combout\,
	asdata => \ULA1|saida[8]~16_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~302_q\);

-- Location: LABCELL_X26_Y14_N15
\BANCO_REG|saidaA[8]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[8]~10_combout\ = ( \ROM1|memROM~4_combout\ & ( (!\BANCO_REG|saidaA[0]~1_combout\ & (\BANCO_REG|registrador~302_q\ & \ROM1|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~302_q\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REG|saidaA[8]~10_combout\);

-- Location: MLABCELL_X23_Y14_N9
\BANCO_REG|saidaB[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[8]~8_combout\ = ( \BANCO_REG|registrador~46_q\ & ( \BANCO_REG|registrador~302_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & !\ROM1|memROM~0_combout\) ) ) ) # ( !\BANCO_REG|registrador~46_q\ & ( \BANCO_REG|registrador~302_q\ & ( 
-- (\ROM1|memROM~4_combout\ & (!\BANCO_REG|registrador~1062_combout\ & (\ROM1|memROM~2_combout\ & !\ROM1|memROM~0_combout\))) ) ) ) # ( \BANCO_REG|registrador~46_q\ & ( !\BANCO_REG|registrador~302_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & 
-- (!\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~4_combout\) # (!\ROM1|memROM~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010000000000000000100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~46_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~302_q\,
	combout => \BANCO_REG|saidaB[8]~8_combout\);

-- Location: MLABCELL_X23_Y14_N27
\ULA1|saida[8]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[8]~16_combout\ = ( \BANCO_REG|saidaB[8]~8_combout\ & ( (!\Sel_ULA[0]~input_o\) # ((!\Sel_ULA[1]~input_o\) # (\BANCO_REG|saidaA[8]~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010111111111111101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[8]~10_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaB[8]~8_combout\,
	combout => \ULA1|saida[8]~16_combout\);

-- Location: FF_X24_Y14_N5
\BANCO_REG|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~46feeder_combout\,
	asdata => \ULA1|saida[8]~16_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~46_q\);

-- Location: LABCELL_X24_Y14_N33
\BANCO_REG|registrador~1071\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1071_combout\ = ( \ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~2_combout\ & (\BANCO_REG|registrador~46_q\)) # (\ROM1|memROM~2_combout\ & ((\BANCO_REG|registrador~302_q\))))) ) ) # ( 
-- !\ROM1|memROM~4_combout\ & ( (\BANCO_REG|registrador~46_q\ & !\ROM1|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000001100000101000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~46_q\,
	datab => \BANCO_REG|ALT_INV_registrador~302_q\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REG|registrador~1071_combout\);

-- Location: LABCELL_X25_Y14_N57
\ULA1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~33_sumout\ = SUM(( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1071_combout\) # (\BANCO_REG|registrador~1062_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ (((!\BANCO_REG|registrador~1071_combout\) # 
-- (\BANCO_REG|registrador~1062_combout\))))) ) + ( \BANCO_REG|saidaA[8]~10_combout\ ) + ( \ULA1|Add0~30\ ))
-- \ULA1|Add0~34\ = CARRY(( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1071_combout\) # (\BANCO_REG|registrador~1062_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ (((!\BANCO_REG|registrador~1071_combout\) # 
-- (\BANCO_REG|registrador~1062_combout\))))) ) + ( \BANCO_REG|saidaA[8]~10_combout\ ) + ( \ULA1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011101101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1071_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaA[8]~10_combout\,
	cin => \ULA1|Add0~30\,
	sumout => \ULA1|Add0~33_sumout\,
	cout => \ULA1|Add0~34\);

-- Location: LABCELL_X24_Y14_N18
\ULA1|saida[8]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[8]~17_combout\ = (!\Sel_ULA[1]~input_o\ & (\ULA1|Add0~33_sumout\)) # (\Sel_ULA[1]~input_o\ & ((\ULA1|saida[8]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~33_sumout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \ULA1|ALT_INV_saida[8]~16_combout\,
	combout => \ULA1|saida[8]~17_combout\);

-- Location: LABCELL_X24_Y13_N51
\ULA1|Add0~37_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~37_wirecell_combout\ = ( !\ULA1|Add0~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~37_sumout\,
	combout => \ULA1|Add0~37_wirecell_combout\);

-- Location: MLABCELL_X23_Y14_N18
\ULA1|saida[9]~18_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[9]~18_wirecell_combout\ = ( !\ULA1|saida[9]~18_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_saida[9]~18_combout\,
	combout => \ULA1|saida[9]~18_wirecell_combout\);

-- Location: FF_X24_Y13_N53
\BANCO_REG|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~37_wirecell_combout\,
	asdata => \ULA1|saida[9]~18_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~47_q\);

-- Location: LABCELL_X25_Y13_N12
\BANCO_REG|registrador~1072\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1072_combout\ = ( \BANCO_REG|registrador~47_q\ & ( (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & (\BANCO_REG|registrador~303_q\ & !\ROM1|memROM~0_combout\))) ) ) # ( !\BANCO_REG|registrador~47_q\ & ( 
-- (!\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~2_combout\) # ((!\ROM1|memROM~4_combout\) # (\BANCO_REG|registrador~303_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111100000000111011110000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~303_q\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~47_q\,
	combout => \BANCO_REG|registrador~1072_combout\);

-- Location: LABCELL_X25_Y13_N30
\ULA1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~37_sumout\ = SUM(( \BANCO_REG|saidaA[9]~11_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1072_combout\) # (\BANCO_REG|registrador~1062_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1072_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~34\ ))
-- \ULA1|Add0~38\ = CARRY(( \BANCO_REG|saidaA[9]~11_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1072_combout\) # (\BANCO_REG|registrador~1062_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1072_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[9]~11_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1072_combout\,
	cin => \ULA1|Add0~34\,
	sumout => \ULA1|Add0~37_sumout\,
	cout => \ULA1|Add0~38\);

-- Location: LABCELL_X24_Y14_N39
\BANCO_REG|registrador~303feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~303feeder_combout\ = ( \ULA1|Add0~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~37_sumout\,
	combout => \BANCO_REG|registrador~303feeder_combout\);

-- Location: FF_X24_Y14_N41
\BANCO_REG|registrador~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~303feeder_combout\,
	asdata => \ULA1|saida[9]~18_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~303_q\);

-- Location: LABCELL_X26_Y14_N6
\BANCO_REG|saidaA[9]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[9]~11_combout\ = ( \ROM1|memROM~4_combout\ & ( (\BANCO_REG|registrador~303_q\ & (!\BANCO_REG|saidaA[0]~1_combout\ & \ROM1|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~303_q\,
	datac => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REG|saidaA[9]~11_combout\);

-- Location: MLABCELL_X28_Y14_N24
\BANCO_REG|saidaB[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[9]~9_combout\ = ( !\BANCO_REG|registrador~1062_combout\ & ( \ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~2_combout\ & (!\BANCO_REG|registrador~47_q\)) # (\ROM1|memROM~2_combout\ & 
-- ((\BANCO_REG|registrador~303_q\))))) ) ) ) # ( !\BANCO_REG|registrador~1062_combout\ & ( !\ROM1|memROM~4_combout\ & ( (!\BANCO_REG|registrador~47_q\ & !\ROM1|memROM~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000010000000110100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~47_q\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~303_q\,
	datae => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REG|saidaB[9]~9_combout\);

-- Location: MLABCELL_X23_Y14_N12
\ULA1|saida[9]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[9]~18_combout\ = ( \BANCO_REG|saidaB[9]~9_combout\ & ( (!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[9]~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111110011111111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaA[9]~11_combout\,
	datad => \ALT_INV_Sel_ULA[0]~input_o\,
	dataf => \BANCO_REG|ALT_INV_saidaB[9]~9_combout\,
	combout => \ULA1|saida[9]~18_combout\);

-- Location: MLABCELL_X23_Y14_N57
\ULA1|saida[9]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[9]~19_combout\ = ( \ULA1|Add0~37_sumout\ & ( (!\Sel_ULA[1]~input_o\) # (\ULA1|saida[9]~18_combout\) ) ) # ( !\ULA1|Add0~37_sumout\ & ( (\Sel_ULA[1]~input_o\ & \ULA1|saida[9]~18_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \ULA1|ALT_INV_saida[9]~18_combout\,
	datae => \ULA1|ALT_INV_Add0~37_sumout\,
	combout => \ULA1|saida[9]~19_combout\);

-- Location: LABCELL_X24_Y13_N57
\BANCO_REG|registrador~48feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~48feeder_combout\ = ( \ULA1|Add0~41_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~41_sumout\,
	combout => \BANCO_REG|registrador~48feeder_combout\);

-- Location: FF_X24_Y13_N59
\BANCO_REG|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~48feeder_combout\,
	asdata => \ULA1|saida[10]~20_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~48_q\);

-- Location: LABCELL_X24_Y13_N48
\BANCO_REG|registrador~1073\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1073_combout\ = ( \BANCO_REG|registrador~304_q\ & ( (!\ROM1|memROM~0_combout\ & (((\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\)) # (\BANCO_REG|registrador~48_q\))) ) ) # ( !\BANCO_REG|registrador~304_q\ & ( 
-- (\BANCO_REG|registrador~48_q\ & (!\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000100000001100000010000000110000011100000011000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~48_q\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~304_q\,
	combout => \BANCO_REG|registrador~1073_combout\);

-- Location: LABCELL_X25_Y13_N33
\ULA1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~41_sumout\ = SUM(( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1073_combout\) # (\BANCO_REG|registrador~1062_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ (((!\BANCO_REG|registrador~1073_combout\) # 
-- (\BANCO_REG|registrador~1062_combout\))))) ) + ( \BANCO_REG|saidaA[10]~12_combout\ ) + ( \ULA1|Add0~38\ ))
-- \ULA1|Add0~42\ = CARRY(( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1073_combout\) # (\BANCO_REG|registrador~1062_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ (((!\BANCO_REG|registrador~1073_combout\) # 
-- (\BANCO_REG|registrador~1062_combout\))))) ) + ( \BANCO_REG|saidaA[10]~12_combout\ ) + ( \ULA1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011101101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1073_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaA[10]~12_combout\,
	cin => \ULA1|Add0~38\,
	sumout => \ULA1|Add0~41_sumout\,
	cout => \ULA1|Add0~42\);

-- Location: LABCELL_X24_Y13_N12
\BANCO_REG|registrador~304feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~304feeder_combout\ = ( \ULA1|Add0~41_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~41_sumout\,
	combout => \BANCO_REG|registrador~304feeder_combout\);

-- Location: FF_X24_Y13_N14
\BANCO_REG|registrador~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~304feeder_combout\,
	asdata => \ULA1|saida[10]~20_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~304_q\);

-- Location: LABCELL_X24_Y13_N15
\BANCO_REG|saidaA[10]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[10]~12_combout\ = ( !\BANCO_REG|saidaA[0]~1_combout\ & ( (\ROM1|memROM~4_combout\ & (\BANCO_REG|registrador~304_q\ & \ROM1|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~304_q\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	combout => \BANCO_REG|saidaA[10]~12_combout\);

-- Location: LABCELL_X24_Y13_N18
\BANCO_REG|saidaB[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[10]~10_combout\ = ( \BANCO_REG|registrador~48_q\ & ( \BANCO_REG|registrador~304_q\ & ( (!\ROM1|memROM~0_combout\ & !\BANCO_REG|registrador~1062_combout\) ) ) ) # ( !\BANCO_REG|registrador~48_q\ & ( \BANCO_REG|registrador~304_q\ & ( 
-- (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & !\BANCO_REG|registrador~1062_combout\))) ) ) ) # ( \BANCO_REG|registrador~48_q\ & ( !\BANCO_REG|registrador~304_q\ & ( (!\ROM1|memROM~0_combout\ & 
-- (!\BANCO_REG|registrador~1062_combout\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010000000000000000010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~48_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~304_q\,
	combout => \BANCO_REG|saidaB[10]~10_combout\);

-- Location: LABCELL_X24_Y13_N54
\ULA1|saida[10]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[10]~20_combout\ = ( \BANCO_REG|saidaB[10]~10_combout\ & ( ((!\Sel_ULA[1]~input_o\) # (!\Sel_ULA[0]~input_o\)) # (\BANCO_REG|saidaA[10]~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111100111111111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCO_REG|ALT_INV_saidaA[10]~12_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \ALT_INV_Sel_ULA[0]~input_o\,
	dataf => \BANCO_REG|ALT_INV_saidaB[10]~10_combout\,
	combout => \ULA1|saida[10]~20_combout\);

-- Location: MLABCELL_X28_Y13_N24
\ULA1|saida[10]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[10]~21_combout\ = ( \ULA1|Add0~41_sumout\ & ( (!\Sel_ULA[1]~input_o\) # (\ULA1|saida[10]~20_combout\) ) ) # ( !\ULA1|Add0~41_sumout\ & ( (\ULA1|saida[10]~20_combout\ & \Sel_ULA[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[10]~20_combout\,
	datad => \ALT_INV_Sel_ULA[1]~input_o\,
	dataf => \ULA1|ALT_INV_Add0~41_sumout\,
	combout => \ULA1|saida[10]~21_combout\);

-- Location: LABCELL_X26_Y11_N0
\BANCO_REG|registrador~305feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~305feeder_combout\ = ( \ULA1|Add0~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~45_sumout\,
	combout => \BANCO_REG|registrador~305feeder_combout\);

-- Location: LABCELL_X26_Y11_N36
\ULA1|Add0~45_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~45_wirecell_combout\ = ( !\ULA1|Add0~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~45_sumout\,
	combout => \ULA1|Add0~45_wirecell_combout\);

-- Location: LABCELL_X26_Y11_N3
\ULA1|saida[11]~22_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[11]~22_wirecell_combout\ = ( !\ULA1|saida[11]~22_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_saida[11]~22_combout\,
	combout => \ULA1|saida[11]~22_wirecell_combout\);

-- Location: FF_X26_Y11_N38
\BANCO_REG|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~45_wirecell_combout\,
	asdata => \ULA1|saida[11]~22_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~49_q\);

-- Location: LABCELL_X26_Y11_N15
\BANCO_REG|saidaB[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[11]~11_combout\ = ( \BANCO_REG|registrador~49_q\ & ( \BANCO_REG|registrador~305_q\ & ( (!\ROM1|memROM~0_combout\ & (!\BANCO_REG|registrador~1062_combout\ & (\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\))) ) ) ) # ( 
-- !\BANCO_REG|registrador~49_q\ & ( \BANCO_REG|registrador~305_q\ & ( (!\ROM1|memROM~0_combout\ & !\BANCO_REG|registrador~1062_combout\) ) ) ) # ( !\BANCO_REG|registrador~49_q\ & ( !\BANCO_REG|registrador~305_q\ & ( (!\ROM1|memROM~0_combout\ & 
-- (!\BANCO_REG|registrador~1062_combout\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000000000000000000010001000100010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~49_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~305_q\,
	combout => \BANCO_REG|saidaB[11]~11_combout\);

-- Location: LABCELL_X26_Y11_N48
\ULA1|saida[11]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[11]~22_combout\ = ( \BANCO_REG|saidaB[11]~11_combout\ & ( (!\Sel_ULA[0]~input_o\) # ((!\Sel_ULA[1]~input_o\) # (\BANCO_REG|saidaA[11]~13_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111100111111111111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[11]~13_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaB[11]~11_combout\,
	combout => \ULA1|saida[11]~22_combout\);

-- Location: FF_X26_Y11_N2
\BANCO_REG|registrador~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~305feeder_combout\,
	asdata => \ULA1|saida[11]~22_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~305_q\);

-- Location: LABCELL_X26_Y11_N57
\BANCO_REG|saidaA[11]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[11]~13_combout\ = ( !\BANCO_REG|saidaA[0]~1_combout\ & ( (\BANCO_REG|registrador~305_q\ & (\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~305_q\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	combout => \BANCO_REG|saidaA[11]~13_combout\);

-- Location: LABCELL_X26_Y11_N45
\BANCO_REG|registrador~1074\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1074_combout\ = ( !\ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~2_combout\ & (!\BANCO_REG|registrador~49_q\)) # (\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~4_combout\ & (!\BANCO_REG|registrador~49_q\)) # (\ROM1|memROM~4_combout\ & 
-- ((\BANCO_REG|registrador~305_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100011101010101010001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~49_q\,
	datab => \BANCO_REG|ALT_INV_registrador~305_q\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1074_combout\);

-- Location: LABCELL_X25_Y13_N36
\ULA1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~45_sumout\ = SUM(( \BANCO_REG|saidaA[11]~13_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1074_combout\) # (\BANCO_REG|registrador~1062_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1074_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~42\ ))
-- \ULA1|Add0~46\ = CARRY(( \BANCO_REG|saidaA[11]~13_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1074_combout\) # (\BANCO_REG|registrador~1062_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1074_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[11]~13_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1074_combout\,
	cin => \ULA1|Add0~42\,
	sumout => \ULA1|Add0~45_sumout\,
	cout => \ULA1|Add0~46\);

-- Location: LABCELL_X26_Y11_N54
\ULA1|saida[11]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[11]~23_combout\ = ( \ULA1|saida[11]~22_combout\ & ( (\ULA1|Add0~45_sumout\) # (\Sel_ULA[1]~input_o\) ) ) # ( !\ULA1|saida[11]~22_combout\ & ( (!\Sel_ULA[1]~input_o\ & \ULA1|Add0~45_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \ULA1|ALT_INV_Add0~45_sumout\,
	dataf => \ULA1|ALT_INV_saida[11]~22_combout\,
	combout => \ULA1|saida[11]~23_combout\);

-- Location: LABCELL_X26_Y15_N18
\BANCO_REG|registrador~306feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~306feeder_combout\ = ( \ULA1|Add0~49_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~49_sumout\,
	combout => \BANCO_REG|registrador~306feeder_combout\);

-- Location: LABCELL_X26_Y15_N36
\BANCO_REG|registrador~50feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~50feeder_combout\ = ( \ULA1|Add0~49_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~49_sumout\,
	combout => \BANCO_REG|registrador~50feeder_combout\);

-- Location: FF_X26_Y15_N38
\BANCO_REG|registrador~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~50feeder_combout\,
	asdata => \ULA1|saida[12]~24_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~50_q\);

-- Location: LABCELL_X26_Y15_N24
\BANCO_REG|saidaB[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[12]~12_combout\ = ( \BANCO_REG|registrador~50_q\ & ( \BANCO_REG|registrador~306_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & !\ROM1|memROM~0_combout\) ) ) ) # ( !\BANCO_REG|registrador~50_q\ & ( \BANCO_REG|registrador~306_q\ & ( 
-- (!\BANCO_REG|registrador~1062_combout\ & (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & !\ROM1|memROM~0_combout\))) ) ) ) # ( \BANCO_REG|registrador~50_q\ & ( !\BANCO_REG|registrador~306_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & 
-- (!\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010000000000000000010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~50_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~306_q\,
	combout => \BANCO_REG|saidaB[12]~12_combout\);

-- Location: LABCELL_X26_Y15_N21
\ULA1|saida[12]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[12]~24_combout\ = ( \BANCO_REG|saidaB[12]~12_combout\ & ( ((!\Sel_ULA[1]~input_o\) # (!\Sel_ULA[0]~input_o\)) # (\BANCO_REG|saidaA[12]~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111100111111111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCO_REG|ALT_INV_saidaA[12]~14_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \ALT_INV_Sel_ULA[0]~input_o\,
	dataf => \BANCO_REG|ALT_INV_saidaB[12]~12_combout\,
	combout => \ULA1|saida[12]~24_combout\);

-- Location: FF_X26_Y15_N20
\BANCO_REG|registrador~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~306feeder_combout\,
	asdata => \ULA1|saida[12]~24_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~306_q\);

-- Location: LABCELL_X26_Y15_N12
\BANCO_REG|saidaA[12]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[12]~14_combout\ = ( !\BANCO_REG|saidaA[0]~1_combout\ & ( (\ROM1|memROM~2_combout\ & (\BANCO_REG|registrador~306_q\ & \ROM1|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~306_q\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	combout => \BANCO_REG|saidaA[12]~14_combout\);

-- Location: LABCELL_X25_Y13_N0
\BANCO_REG|registrador~1075\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1075_combout\ = ( !\ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~4_combout\ & (((\BANCO_REG|registrador~50_q\)))) # (\ROM1|memROM~4_combout\ & ((!\ROM1|memROM~2_combout\ & ((\BANCO_REG|registrador~50_q\))) # (\ROM1|memROM~2_combout\ & 
-- (\BANCO_REG|registrador~306_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011101000011110001110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~306_q\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~50_q\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1075_combout\);

-- Location: LABCELL_X25_Y13_N39
\ULA1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~49_sumout\ = SUM(( \BANCO_REG|saidaA[12]~14_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1075_combout\) # (\BANCO_REG|registrador~1062_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1075_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~46\ ))
-- \ULA1|Add0~50\ = CARRY(( \BANCO_REG|saidaA[12]~14_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1075_combout\) # (\BANCO_REG|registrador~1062_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1075_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[12]~14_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1075_combout\,
	cin => \ULA1|Add0~46\,
	sumout => \ULA1|Add0~49_sumout\,
	cout => \ULA1|Add0~50\);

-- Location: LABCELL_X26_Y15_N39
\ULA1|saida[12]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[12]~25_combout\ = (!\Sel_ULA[1]~input_o\ & (\ULA1|Add0~49_sumout\)) # (\Sel_ULA[1]~input_o\ & ((\ULA1|saida[12]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~49_sumout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \ULA1|ALT_INV_saida[12]~24_combout\,
	combout => \ULA1|saida[12]~25_combout\);

-- Location: LABCELL_X24_Y13_N0
\BANCO_REG|registrador~307feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~307feeder_combout\ = ( \ULA1|Add0~53_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~53_sumout\,
	combout => \BANCO_REG|registrador~307feeder_combout\);

-- Location: LABCELL_X24_Y13_N30
\ULA1|Add0~53_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~53_wirecell_combout\ = ( !\ULA1|Add0~53_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~53_sumout\,
	combout => \ULA1|Add0~53_wirecell_combout\);

-- Location: MLABCELL_X23_Y13_N27
\ULA1|saida[13]~26_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[13]~26_wirecell_combout\ = ( !\ULA1|saida[13]~26_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ULA1|ALT_INV_saida[13]~26_combout\,
	combout => \ULA1|saida[13]~26_wirecell_combout\);

-- Location: FF_X24_Y13_N32
\BANCO_REG|registrador~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~53_wirecell_combout\,
	asdata => \ULA1|saida[13]~26_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~51_q\);

-- Location: LABCELL_X24_Y13_N39
\BANCO_REG|saidaB[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[13]~13_combout\ = ( \BANCO_REG|registrador~51_q\ & ( \BANCO_REG|registrador~307_q\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~2_combout\ & (!\BANCO_REG|registrador~1062_combout\ & \ROM1|memROM~4_combout\))) ) ) ) # ( 
-- !\BANCO_REG|registrador~51_q\ & ( \BANCO_REG|registrador~307_q\ & ( (!\ROM1|memROM~0_combout\ & !\BANCO_REG|registrador~1062_combout\) ) ) ) # ( !\BANCO_REG|registrador~51_q\ & ( !\BANCO_REG|registrador~307_q\ & ( (!\ROM1|memROM~0_combout\ & 
-- (!\BANCO_REG|registrador~1062_combout\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000000000000000000010100000101000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~51_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~307_q\,
	combout => \BANCO_REG|saidaB[13]~13_combout\);

-- Location: MLABCELL_X23_Y14_N42
\ULA1|saida[13]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[13]~26_combout\ = ( \BANCO_REG|saidaB[13]~13_combout\ & ( (!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[13]~15_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111110011111111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaA[13]~15_combout\,
	datad => \ALT_INV_Sel_ULA[0]~input_o\,
	dataf => \BANCO_REG|ALT_INV_saidaB[13]~13_combout\,
	combout => \ULA1|saida[13]~26_combout\);

-- Location: FF_X24_Y13_N2
\BANCO_REG|registrador~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~307feeder_combout\,
	asdata => \ULA1|saida[13]~26_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~307_q\);

-- Location: LABCELL_X25_Y13_N27
\BANCO_REG|saidaA[13]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[13]~15_combout\ = ( !\BANCO_REG|saidaA[0]~1_combout\ & ( (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & \BANCO_REG|registrador~307_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~307_q\,
	dataf => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	combout => \BANCO_REG|saidaA[13]~15_combout\);

-- Location: LABCELL_X24_Y13_N27
\BANCO_REG|registrador~1076\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1076_combout\ = ( \ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~4_combout\ & ((!\BANCO_REG|registrador~51_q\))) # (\ROM1|memROM~4_combout\ & (\BANCO_REG|registrador~307_q\)))) ) ) # ( 
-- !\ROM1|memROM~2_combout\ & ( (!\BANCO_REG|registrador~51_q\ & !\ROM1|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000010110001000000001011000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~307_q\,
	datac => \BANCO_REG|ALT_INV_registrador~51_q\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \BANCO_REG|registrador~1076_combout\);

-- Location: LABCELL_X25_Y13_N42
\ULA1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~53_sumout\ = SUM(( \BANCO_REG|saidaA[13]~15_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1076_combout\) # (\BANCO_REG|registrador~1062_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1076_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~50\ ))
-- \ULA1|Add0~54\ = CARRY(( \BANCO_REG|saidaA[13]~15_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1076_combout\) # (\BANCO_REG|registrador~1062_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1076_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[13]~15_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1076_combout\,
	cin => \ULA1|Add0~50\,
	sumout => \ULA1|Add0~53_sumout\,
	cout => \ULA1|Add0~54\);

-- Location: MLABCELL_X23_Y14_N36
\ULA1|saida[13]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[13]~27_combout\ = ( \ULA1|saida[13]~26_combout\ & ( (\ULA1|Add0~53_sumout\) # (\Sel_ULA[1]~input_o\) ) ) # ( !\ULA1|saida[13]~26_combout\ & ( (!\Sel_ULA[1]~input_o\ & \ULA1|Add0~53_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \ULA1|ALT_INV_Add0~53_sumout\,
	dataf => \ULA1|ALT_INV_saida[13]~26_combout\,
	combout => \ULA1|saida[13]~27_combout\);

-- Location: LABCELL_X26_Y15_N57
\BANCO_REG|registrador~308feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~308feeder_combout\ = ( \ULA1|Add0~57_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~57_sumout\,
	combout => \BANCO_REG|registrador~308feeder_combout\);

-- Location: LABCELL_X24_Y15_N24
\BANCO_REG|registrador~52feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~52feeder_combout\ = ( \ULA1|Add0~57_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~57_sumout\,
	combout => \BANCO_REG|registrador~52feeder_combout\);

-- Location: FF_X24_Y15_N26
\BANCO_REG|registrador~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~52feeder_combout\,
	asdata => \ULA1|saida[14]~28_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~52_q\);

-- Location: LABCELL_X26_Y15_N27
\BANCO_REG|saidaB[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[14]~14_combout\ = ( \BANCO_REG|registrador~52_q\ & ( \BANCO_REG|registrador~308_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & !\ROM1|memROM~0_combout\) ) ) ) # ( !\BANCO_REG|registrador~52_q\ & ( \BANCO_REG|registrador~308_q\ & ( 
-- (!\BANCO_REG|registrador~1062_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~0_combout\ & \ROM1|memROM~4_combout\))) ) ) ) # ( \BANCO_REG|registrador~52_q\ & ( !\BANCO_REG|registrador~308_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & 
-- (!\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001000000000000000001000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~52_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~308_q\,
	combout => \BANCO_REG|saidaB[14]~14_combout\);

-- Location: LABCELL_X26_Y15_N45
\ULA1|saida[14]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[14]~28_combout\ = (\BANCO_REG|saidaB[14]~14_combout\ & ((!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[14]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010101010101000101010101010100010101010101010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaB[14]~14_combout\,
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \ALT_INV_Sel_ULA[0]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[14]~16_combout\,
	combout => \ULA1|saida[14]~28_combout\);

-- Location: FF_X26_Y15_N59
\BANCO_REG|registrador~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~308feeder_combout\,
	asdata => \ULA1|saida[14]~28_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~308_q\);

-- Location: LABCELL_X26_Y15_N3
\BANCO_REG|saidaA[14]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[14]~16_combout\ = ( \ROM1|memROM~4_combout\ & ( !\BANCO_REG|saidaA[0]~1_combout\ & ( (\BANCO_REG|registrador~308_q\ & \ROM1|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCO_REG|ALT_INV_registrador~308_q\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	combout => \BANCO_REG|saidaA[14]~16_combout\);

-- Location: LABCELL_X25_Y13_N15
\BANCO_REG|registrador~1077\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1077_combout\ = ( \BANCO_REG|registrador~308_q\ & ( (!\ROM1|memROM~0_combout\ & (((\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\)) # (\BANCO_REG|registrador~52_q\))) ) ) # ( !\BANCO_REG|registrador~308_q\ & ( 
-- (!\ROM1|memROM~0_combout\ & (\BANCO_REG|registrador~52_q\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100000000000001110000000010000111100000001000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~52_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~308_q\,
	combout => \BANCO_REG|registrador~1077_combout\);

-- Location: LABCELL_X25_Y13_N45
\ULA1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~57_sumout\ = SUM(( \BANCO_REG|saidaA[14]~16_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1077_combout\) # (\BANCO_REG|registrador~1062_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1077_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~54\ ))
-- \ULA1|Add0~58\ = CARRY(( \BANCO_REG|saidaA[14]~16_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1077_combout\) # (\BANCO_REG|registrador~1062_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1077_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[14]~16_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1077_combout\,
	cin => \ULA1|Add0~54\,
	sumout => \ULA1|Add0~57_sumout\,
	cout => \ULA1|Add0~58\);

-- Location: LABCELL_X24_Y15_N33
\ULA1|saida[14]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[14]~29_combout\ = ( \ULA1|saida[14]~28_combout\ & ( (\Sel_ULA[1]~input_o\) # (\ULA1|Add0~57_sumout\) ) ) # ( !\ULA1|saida[14]~28_combout\ & ( (\ULA1|Add0~57_sumout\ & !\Sel_ULA[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|ALT_INV_Add0~57_sumout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	dataf => \ULA1|ALT_INV_saida[14]~28_combout\,
	combout => \ULA1|saida[14]~29_combout\);

-- Location: LABCELL_X26_Y11_N21
\BANCO_REG|registrador~309feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~309feeder_combout\ = ( \ULA1|Add0~61_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~61_sumout\,
	combout => \BANCO_REG|registrador~309feeder_combout\);

-- Location: LABCELL_X25_Y13_N3
\ULA1|Add0~61_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~61_wirecell_combout\ = ( !\ULA1|Add0~61_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~61_sumout\,
	combout => \ULA1|Add0~61_wirecell_combout\);

-- Location: LABCELL_X25_Y11_N6
\ULA1|saida[15]~30_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[15]~30_wirecell_combout\ = ( !\ULA1|saida[15]~30_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_saida[15]~30_combout\,
	combout => \ULA1|saida[15]~30_wirecell_combout\);

-- Location: FF_X25_Y13_N5
\BANCO_REG|registrador~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~61_wirecell_combout\,
	asdata => \ULA1|saida[15]~30_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~53_q\);

-- Location: LABCELL_X26_Y11_N12
\BANCO_REG|saidaB[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[15]~15_combout\ = ( \BANCO_REG|registrador~53_q\ & ( \BANCO_REG|registrador~309_q\ & ( (!\ROM1|memROM~0_combout\ & (!\BANCO_REG|registrador~1062_combout\ & (\ROM1|memROM~4_combout\ & \ROM1|memROM~2_combout\))) ) ) ) # ( 
-- !\BANCO_REG|registrador~53_q\ & ( \BANCO_REG|registrador~309_q\ & ( (!\ROM1|memROM~0_combout\ & !\BANCO_REG|registrador~1062_combout\) ) ) ) # ( !\BANCO_REG|registrador~53_q\ & ( !\BANCO_REG|registrador~309_q\ & ( (!\ROM1|memROM~0_combout\ & 
-- (!\BANCO_REG|registrador~1062_combout\ & ((!\ROM1|memROM~4_combout\) # (!\ROM1|memROM~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000000000000000000010001000100010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~53_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~309_q\,
	combout => \BANCO_REG|saidaB[15]~15_combout\);

-- Location: LABCELL_X26_Y11_N18
\ULA1|saida[15]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[15]~30_combout\ = ( \BANCO_REG|saidaB[15]~15_combout\ & ( (!\Sel_ULA[0]~input_o\) # ((!\Sel_ULA[1]~input_o\) # (\BANCO_REG|saidaA[15]~17_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111101011111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaA[15]~17_combout\,
	datad => \ALT_INV_Sel_ULA[1]~input_o\,
	dataf => \BANCO_REG|ALT_INV_saidaB[15]~15_combout\,
	combout => \ULA1|saida[15]~30_combout\);

-- Location: FF_X26_Y11_N23
\BANCO_REG|registrador~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~309feeder_combout\,
	asdata => \ULA1|saida[15]~30_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~309_q\);

-- Location: LABCELL_X26_Y11_N51
\BANCO_REG|saidaA[15]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[15]~17_combout\ = ( !\BANCO_REG|saidaA[0]~1_combout\ & ( (\BANCO_REG|registrador~309_q\ & (\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~309_q\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	combout => \BANCO_REG|saidaA[15]~17_combout\);

-- Location: LABCELL_X26_Y11_N33
\BANCO_REG|registrador~1078\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1078_combout\ = ( !\ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~2_combout\ & (((!\BANCO_REG|registrador~53_q\)))) # (\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~4_combout\ & ((!\BANCO_REG|registrador~53_q\))) # (\ROM1|memROM~4_combout\ 
-- & (\BANCO_REG|registrador~309_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011010001111100001101000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~309_q\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~53_q\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1078_combout\);

-- Location: LABCELL_X25_Y13_N48
\ULA1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~61_sumout\ = SUM(( \BANCO_REG|saidaA[15]~17_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1078_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1078_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~58\ ))
-- \ULA1|Add0~62\ = CARRY(( \BANCO_REG|saidaA[15]~17_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1078_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1078_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[15]~17_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1078_combout\,
	cin => \ULA1|Add0~58\,
	sumout => \ULA1|Add0~61_sumout\,
	cout => \ULA1|Add0~62\);

-- Location: LABCELL_X26_Y11_N30
\ULA1|saida[15]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[15]~31_combout\ = ( \ULA1|saida[15]~30_combout\ & ( (\Sel_ULA[1]~input_o\) # (\ULA1|Add0~61_sumout\) ) ) # ( !\ULA1|saida[15]~30_combout\ & ( (\ULA1|Add0~61_sumout\ & !\Sel_ULA[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA1|ALT_INV_Add0~61_sumout\,
	datad => \ALT_INV_Sel_ULA[1]~input_o\,
	dataf => \ULA1|ALT_INV_saida[15]~30_combout\,
	combout => \ULA1|saida[15]~31_combout\);

-- Location: MLABCELL_X28_Y13_N0
\BANCO_REG|registrador~54feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~54feeder_combout\ = ( \ULA1|Add0~65_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~65_sumout\,
	combout => \BANCO_REG|registrador~54feeder_combout\);

-- Location: FF_X28_Y13_N2
\BANCO_REG|registrador~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~54feeder_combout\,
	asdata => \ULA1|saida[16]~32_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~54_q\);

-- Location: LABCELL_X25_Y13_N24
\BANCO_REG|registrador~1079\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1079_combout\ = ( !\ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~2_combout\ & (((\BANCO_REG|registrador~54_q\)))) # (\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~4_combout\ & (\BANCO_REG|registrador~54_q\)) # (\ROM1|memROM~4_combout\ & 
-- ((\BANCO_REG|registrador~310_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~54_q\,
	datad => \BANCO_REG|ALT_INV_registrador~310_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1079_combout\);

-- Location: LABCELL_X25_Y13_N51
\ULA1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~65_sumout\ = SUM(( \BANCO_REG|saidaA[16]~18_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1079_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1079_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~62\ ))
-- \ULA1|Add0~66\ = CARRY(( \BANCO_REG|saidaA[16]~18_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1079_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1079_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[16]~18_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1079_combout\,
	cin => \ULA1|Add0~62\,
	sumout => \ULA1|Add0~65_sumout\,
	cout => \ULA1|Add0~66\);

-- Location: MLABCELL_X28_Y13_N39
\BANCO_REG|registrador~310feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~310feeder_combout\ = ( \ULA1|Add0~65_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~65_sumout\,
	combout => \BANCO_REG|registrador~310feeder_combout\);

-- Location: FF_X28_Y13_N41
\BANCO_REG|registrador~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~310feeder_combout\,
	asdata => \ULA1|saida[16]~32_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~310_q\);

-- Location: MLABCELL_X28_Y13_N18
\BANCO_REG|saidaA[16]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[16]~18_combout\ = ( !\BANCO_REG|saidaA[0]~1_combout\ & ( (\BANCO_REG|registrador~310_q\ & (\ROM1|memROM~4_combout\ & \ROM1|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCO_REG|ALT_INV_registrador~310_q\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	combout => \BANCO_REG|saidaA[16]~18_combout\);

-- Location: MLABCELL_X28_Y13_N12
\BANCO_REG|saidaB[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[16]~16_combout\ = ( \BANCO_REG|registrador~54_q\ & ( \BANCO_REG|registrador~310_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & !\ROM1|memROM~0_combout\) ) ) ) # ( !\BANCO_REG|registrador~54_q\ & ( \BANCO_REG|registrador~310_q\ & ( 
-- (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & (!\BANCO_REG|registrador~1062_combout\ & !\ROM1|memROM~0_combout\))) ) ) ) # ( \BANCO_REG|registrador~54_q\ & ( !\BANCO_REG|registrador~310_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & 
-- (!\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000000000000000010000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~54_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~310_q\,
	combout => \BANCO_REG|saidaB[16]~16_combout\);

-- Location: MLABCELL_X28_Y13_N45
\ULA1|saida[16]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[16]~32_combout\ = ( \Sel_ULA[0]~input_o\ & ( \BANCO_REG|saidaB[16]~16_combout\ & ( (!\Sel_ULA[1]~input_o\) # (\BANCO_REG|saidaA[16]~18_combout\) ) ) ) # ( !\Sel_ULA[0]~input_o\ & ( \BANCO_REG|saidaB[16]~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[16]~18_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datae => \ALT_INV_Sel_ULA[0]~input_o\,
	dataf => \BANCO_REG|ALT_INV_saidaB[16]~16_combout\,
	combout => \ULA1|saida[16]~32_combout\);

-- Location: MLABCELL_X28_Y13_N21
\ULA1|saida[16]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[16]~33_combout\ = ( \ULA1|Add0~65_sumout\ & ( (!\Sel_ULA[1]~input_o\) # (\ULA1|saida[16]~32_combout\) ) ) # ( !\ULA1|Add0~65_sumout\ & ( (\Sel_ULA[1]~input_o\ & \ULA1|saida[16]~32_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \ULA1|ALT_INV_saida[16]~32_combout\,
	dataf => \ULA1|ALT_INV_Add0~65_sumout\,
	combout => \ULA1|saida[16]~33_combout\);

-- Location: LABCELL_X24_Y13_N24
\BANCO_REG|registrador~311feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~311feeder_combout\ = ( \ULA1|Add0~69_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~69_sumout\,
	combout => \BANCO_REG|registrador~311feeder_combout\);

-- Location: FF_X24_Y13_N26
\BANCO_REG|registrador~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~311feeder_combout\,
	asdata => \ULA1|saida[17]~34_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~311_q\);

-- Location: LABCELL_X24_Y13_N42
\BANCO_REG|saidaA[17]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[17]~19_combout\ = ( !\BANCO_REG|saidaA[0]~1_combout\ & ( (\ROM1|memROM~4_combout\ & (\BANCO_REG|registrador~311_q\ & \ROM1|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~311_q\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	combout => \BANCO_REG|saidaA[17]~19_combout\);

-- Location: LABCELL_X24_Y13_N3
\BANCO_REG|registrador~1080\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1080_combout\ = ( !\ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~2_combout\ & (((!\BANCO_REG|registrador~55_q\)))) # (\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~4_combout\ & ((!\BANCO_REG|registrador~55_q\))) # (\ROM1|memROM~4_combout\ 
-- & (\BANCO_REG|registrador~311_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000101110011001100010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~311_q\,
	datab => \BANCO_REG|ALT_INV_registrador~55_q\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1080_combout\);

-- Location: LABCELL_X25_Y13_N54
\ULA1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~69_sumout\ = SUM(( \BANCO_REG|saidaA[17]~19_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1080_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1080_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~66\ ))
-- \ULA1|Add0~70\ = CARRY(( \BANCO_REG|saidaA[17]~19_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1080_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1080_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[17]~19_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1080_combout\,
	cin => \ULA1|Add0~66\,
	sumout => \ULA1|Add0~69_sumout\,
	cout => \ULA1|Add0~70\);

-- Location: LABCELL_X24_Y13_N9
\ULA1|Add0~69_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~69_wirecell_combout\ = ( !\ULA1|Add0~69_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~69_sumout\,
	combout => \ULA1|Add0~69_wirecell_combout\);

-- Location: LABCELL_X24_Y13_N6
\ULA1|saida[17]~34_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[17]~34_wirecell_combout\ = !\ULA1|saida[17]~34_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ULA1|ALT_INV_saida[17]~34_combout\,
	combout => \ULA1|saida[17]~34_wirecell_combout\);

-- Location: FF_X24_Y13_N11
\BANCO_REG|registrador~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~69_wirecell_combout\,
	asdata => \ULA1|saida[17]~34_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~55_q\);

-- Location: LABCELL_X24_Y13_N36
\BANCO_REG|saidaB[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[17]~17_combout\ = ( \BANCO_REG|registrador~55_q\ & ( \BANCO_REG|registrador~311_q\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & !\BANCO_REG|registrador~1062_combout\))) ) ) ) # ( 
-- !\BANCO_REG|registrador~55_q\ & ( \BANCO_REG|registrador~311_q\ & ( (!\ROM1|memROM~0_combout\ & !\BANCO_REG|registrador~1062_combout\) ) ) ) # ( !\BANCO_REG|registrador~55_q\ & ( !\BANCO_REG|registrador~311_q\ & ( (!\ROM1|memROM~0_combout\ & 
-- (!\BANCO_REG|registrador~1062_combout\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000000000000000000000000010101010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~55_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~311_q\,
	combout => \BANCO_REG|saidaB[17]~17_combout\);

-- Location: LABCELL_X24_Y13_N45
\ULA1|saida[17]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[17]~34_combout\ = ( \Sel_ULA[1]~input_o\ & ( (\BANCO_REG|saidaB[17]~17_combout\ & ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[17]~19_combout\))) ) ) # ( !\Sel_ULA[1]~input_o\ & ( \BANCO_REG|saidaB[17]~17_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110000001100110011000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCO_REG|ALT_INV_saidaB[17]~17_combout\,
	datac => \ALT_INV_Sel_ULA[0]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[17]~19_combout\,
	dataf => \ALT_INV_Sel_ULA[1]~input_o\,
	combout => \ULA1|saida[17]~34_combout\);

-- Location: LABCELL_X26_Y11_N24
\ULA1|saida[17]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[17]~35_combout\ = ( \ULA1|Add0~69_sumout\ & ( (!\Sel_ULA[1]~input_o\) # (\ULA1|saida[17]~34_combout\) ) ) # ( !\ULA1|Add0~69_sumout\ & ( (\Sel_ULA[1]~input_o\ & \ULA1|saida[17]~34_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \ULA1|ALT_INV_saida[17]~34_combout\,
	dataf => \ULA1|ALT_INV_Add0~69_sumout\,
	combout => \ULA1|saida[17]~35_combout\);

-- Location: MLABCELL_X28_Y13_N27
\BANCO_REG|registrador~312feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~312feeder_combout\ = ( \ULA1|Add0~73_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~73_sumout\,
	combout => \BANCO_REG|registrador~312feeder_combout\);

-- Location: MLABCELL_X28_Y13_N6
\BANCO_REG|registrador~56feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~56feeder_combout\ = ( \ULA1|Add0~73_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~73_sumout\,
	combout => \BANCO_REG|registrador~56feeder_combout\);

-- Location: FF_X28_Y13_N8
\BANCO_REG|registrador~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~56feeder_combout\,
	asdata => \ULA1|saida[18]~36_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~56_q\);

-- Location: MLABCELL_X28_Y13_N15
\BANCO_REG|saidaB[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[18]~18_combout\ = ( \BANCO_REG|registrador~56_q\ & ( \BANCO_REG|registrador~312_q\ & ( (!\ROM1|memROM~0_combout\ & !\BANCO_REG|registrador~1062_combout\) ) ) ) # ( !\BANCO_REG|registrador~56_q\ & ( \BANCO_REG|registrador~312_q\ & ( 
-- (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~0_combout\ & !\BANCO_REG|registrador~1062_combout\))) ) ) ) # ( \BANCO_REG|registrador~56_q\ & ( !\BANCO_REG|registrador~312_q\ & ( (!\ROM1|memROM~0_combout\ & 
-- (!\BANCO_REG|registrador~1062_combout\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000000000000000010000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~56_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~312_q\,
	combout => \BANCO_REG|saidaB[18]~18_combout\);

-- Location: MLABCELL_X28_Y13_N57
\ULA1|saida[18]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[18]~36_combout\ = ( \BANCO_REG|saidaA[18]~20_combout\ & ( \BANCO_REG|saidaB[18]~18_combout\ ) ) # ( !\BANCO_REG|saidaA[18]~20_combout\ & ( \BANCO_REG|saidaB[18]~18_combout\ & ( (!\Sel_ULA[0]~input_o\) # (!\Sel_ULA[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111100111111001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datae => \BANCO_REG|ALT_INV_saidaA[18]~20_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaB[18]~18_combout\,
	combout => \ULA1|saida[18]~36_combout\);

-- Location: FF_X28_Y13_N29
\BANCO_REG|registrador~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~312feeder_combout\,
	asdata => \ULA1|saida[18]~36_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~312_q\);

-- Location: LABCELL_X24_Y13_N33
\BANCO_REG|saidaA[18]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[18]~20_combout\ = ( !\BANCO_REG|saidaA[0]~1_combout\ & ( (\ROM1|memROM~2_combout\ & (\BANCO_REG|registrador~312_q\ & \ROM1|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~312_q\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	combout => \BANCO_REG|saidaA[18]~20_combout\);

-- Location: LABCELL_X25_Y13_N18
\BANCO_REG|registrador~1081\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1081_combout\ = ( !\ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~4_combout\ & (((\BANCO_REG|registrador~56_q\)))) # (\ROM1|memROM~4_combout\ & ((!\ROM1|memROM~2_combout\ & ((\BANCO_REG|registrador~56_q\))) # (\ROM1|memROM~2_combout\ & 
-- (\BANCO_REG|registrador~312_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111101000000011111110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~312_q\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~56_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1081_combout\);

-- Location: LABCELL_X25_Y13_N57
\ULA1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~73_sumout\ = SUM(( \BANCO_REG|saidaA[18]~20_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1081_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1081_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~70\ ))
-- \ULA1|Add0~74\ = CARRY(( \BANCO_REG|saidaA[18]~20_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1081_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1081_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[18]~20_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1081_combout\,
	cin => \ULA1|Add0~70\,
	sumout => \ULA1|Add0~73_sumout\,
	cout => \ULA1|Add0~74\);

-- Location: MLABCELL_X28_Y13_N9
\ULA1|saida[18]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[18]~37_combout\ = (!\Sel_ULA[1]~input_o\ & (\ULA1|Add0~73_sumout\)) # (\Sel_ULA[1]~input_o\ & ((\ULA1|saida[18]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~73_sumout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \ULA1|ALT_INV_saida[18]~36_combout\,
	combout => \ULA1|saida[18]~37_combout\);

-- Location: LABCELL_X24_Y12_N48
\ULA1|Add0~77_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~77_wirecell_combout\ = !\ULA1|Add0~77_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA1|ALT_INV_Add0~77_sumout\,
	combout => \ULA1|Add0~77_wirecell_combout\);

-- Location: LABCELL_X26_Y12_N48
\BANCO_REG|registrador~313feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~313feeder_combout\ = ( \ULA1|Add0~77_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~77_sumout\,
	combout => \BANCO_REG|registrador~313feeder_combout\);

-- Location: FF_X26_Y12_N50
\BANCO_REG|registrador~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~313feeder_combout\,
	asdata => \ULA1|saida[19]~38_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~313_q\);

-- Location: LABCELL_X26_Y12_N51
\BANCO_REG|saidaA[19]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[19]~21_combout\ = ( !\BANCO_REG|saidaA[0]~1_combout\ & ( (\BANCO_REG|registrador~313_q\ & (\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~313_q\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	combout => \BANCO_REG|saidaA[19]~21_combout\);

-- Location: MLABCELL_X28_Y12_N6
\BANCO_REG|saidaB[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[19]~19_combout\ = ( \BANCO_REG|registrador~57_q\ & ( \BANCO_REG|registrador~313_q\ & ( (\ROM1|memROM~4_combout\ & (!\BANCO_REG|registrador~1062_combout\ & (!\ROM1|memROM~0_combout\ & \ROM1|memROM~2_combout\))) ) ) ) # ( 
-- !\BANCO_REG|registrador~57_q\ & ( \BANCO_REG|registrador~313_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & !\ROM1|memROM~0_combout\) ) ) ) # ( !\BANCO_REG|registrador~57_q\ & ( !\BANCO_REG|registrador~313_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & 
-- (!\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~4_combout\) # (!\ROM1|memROM~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010000000000000000000000011000000110000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~57_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~313_q\,
	combout => \BANCO_REG|saidaB[19]~19_combout\);

-- Location: MLABCELL_X28_Y12_N48
\ULA1|saida[19]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[19]~38_combout\ = ( \BANCO_REG|saidaB[19]~19_combout\ & ( (!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[19]~21_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010111111111111101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \ALT_INV_Sel_ULA[0]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[19]~21_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaB[19]~19_combout\,
	combout => \ULA1|saida[19]~38_combout\);

-- Location: MLABCELL_X28_Y12_N33
\ULA1|saida[19]~38_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[19]~38_wirecell_combout\ = ( !\ULA1|saida[19]~38_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_saida[19]~38_combout\,
	combout => \ULA1|saida[19]~38_wirecell_combout\);

-- Location: FF_X24_Y12_N50
\BANCO_REG|registrador~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~77_wirecell_combout\,
	asdata => \ULA1|saida[19]~38_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~57_q\);

-- Location: LABCELL_X24_Y12_N51
\BANCO_REG|registrador~1082\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1082_combout\ = ( !\ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~4_combout\ & (!\BANCO_REG|registrador~57_q\)) # (\ROM1|memROM~4_combout\ & ((!\ROM1|memROM~2_combout\ & (!\BANCO_REG|registrador~57_q\)) # (\ROM1|memROM~2_combout\ & 
-- ((\BANCO_REG|registrador~313_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010101011101010001010101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~57_q\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~313_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1082_combout\);

-- Location: LABCELL_X25_Y12_N0
\ULA1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~77_sumout\ = SUM(( (!\Sel_ULA[1]~input_o\ & (!\Sel_ULA[0]~input_o\ $ (((!\BANCO_REG|registrador~1062_combout\ & \BANCO_REG|registrador~1082_combout\))))) # (\Sel_ULA[1]~input_o\ & (((!\BANCO_REG|registrador~1082_combout\) # 
-- (\BANCO_REG|registrador~1062_combout\)))) ) + ( \BANCO_REG|saidaA[19]~21_combout\ ) + ( \ULA1|Add0~74\ ))
-- \ULA1|Add0~78\ = CARRY(( (!\Sel_ULA[1]~input_o\ & (!\Sel_ULA[0]~input_o\ $ (((!\BANCO_REG|registrador~1062_combout\ & \BANCO_REG|registrador~1082_combout\))))) # (\Sel_ULA[1]~input_o\ & (((!\BANCO_REG|registrador~1082_combout\) # 
-- (\BANCO_REG|registrador~1062_combout\)))) ) + ( \BANCO_REG|saidaA[19]~21_combout\ ) + ( \ULA1|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101110100101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1082_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaA[19]~21_combout\,
	cin => \ULA1|Add0~74\,
	sumout => \ULA1|Add0~77_sumout\,
	cout => \ULA1|Add0~78\);

-- Location: MLABCELL_X28_Y12_N51
\ULA1|saida[19]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[19]~39_combout\ = ( \ULA1|saida[19]~38_combout\ & ( (\ULA1|Add0~77_sumout\) # (\Sel_ULA[1]~input_o\) ) ) # ( !\ULA1|saida[19]~38_combout\ & ( (!\Sel_ULA[1]~input_o\ & \ULA1|Add0~77_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \ULA1|ALT_INV_Add0~77_sumout\,
	dataf => \ULA1|ALT_INV_saida[19]~38_combout\,
	combout => \ULA1|saida[19]~39_combout\);

-- Location: LABCELL_X24_Y12_N45
\BANCO_REG|registrador~58feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~58feeder_combout\ = ( \ULA1|Add0~81_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~81_sumout\,
	combout => \BANCO_REG|registrador~58feeder_combout\);

-- Location: FF_X24_Y12_N47
\BANCO_REG|registrador~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~58feeder_combout\,
	asdata => \ULA1|saida[20]~40_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~58_q\);

-- Location: LABCELL_X24_Y12_N27
\BANCO_REG|registrador~1083\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1083_combout\ = ( !\ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~2_combout\ & (((\BANCO_REG|registrador~58_q\)))) # (\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~4_combout\ & ((\BANCO_REG|registrador~58_q\))) # (\ROM1|memROM~4_combout\ & 
-- (\BANCO_REG|registrador~314_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110101001100110011010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~314_q\,
	datab => \BANCO_REG|ALT_INV_registrador~58_q\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1083_combout\);

-- Location: LABCELL_X25_Y12_N3
\ULA1|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~81_sumout\ = SUM(( \BANCO_REG|saidaA[20]~22_combout\ ) + ( (!\Sel_ULA[1]~input_o\ & (!\Sel_ULA[0]~input_o\ $ (((!\BANCO_REG|registrador~1062_combout\ & \BANCO_REG|registrador~1083_combout\))))) # (\Sel_ULA[1]~input_o\ & 
-- (((!\BANCO_REG|registrador~1083_combout\) # (\BANCO_REG|registrador~1062_combout\)))) ) + ( \ULA1|Add0~78\ ))
-- \ULA1|Add0~82\ = CARRY(( \BANCO_REG|saidaA[20]~22_combout\ ) + ( (!\Sel_ULA[1]~input_o\ & (!\Sel_ULA[0]~input_o\ $ (((!\BANCO_REG|registrador~1062_combout\ & \BANCO_REG|registrador~1083_combout\))))) # (\Sel_ULA[1]~input_o\ & 
-- (((!\BANCO_REG|registrador~1083_combout\) # (\BANCO_REG|registrador~1062_combout\)))) ) + ( \ULA1|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[20]~22_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1083_combout\,
	cin => \ULA1|Add0~78\,
	sumout => \ULA1|Add0~81_sumout\,
	cout => \ULA1|Add0~82\);

-- Location: LABCELL_X24_Y12_N24
\BANCO_REG|registrador~314feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~314feeder_combout\ = ( \ULA1|Add0~81_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~81_sumout\,
	combout => \BANCO_REG|registrador~314feeder_combout\);

-- Location: FF_X24_Y12_N26
\BANCO_REG|registrador~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~314feeder_combout\,
	asdata => \ULA1|saida[20]~40_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~314_q\);

-- Location: LABCELL_X24_Y12_N42
\BANCO_REG|saidaA[20]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[20]~22_combout\ = ( !\BANCO_REG|saidaA[0]~1_combout\ & ( (\BANCO_REG|registrador~314_q\ & (\ROM1|memROM~4_combout\ & \ROM1|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~314_q\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	combout => \BANCO_REG|saidaA[20]~22_combout\);

-- Location: LABCELL_X24_Y12_N15
\BANCO_REG|saidaB[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[20]~20_combout\ = ( \BANCO_REG|registrador~58_q\ & ( \BANCO_REG|registrador~314_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & !\ROM1|memROM~0_combout\) ) ) ) # ( !\BANCO_REG|registrador~58_q\ & ( \BANCO_REG|registrador~314_q\ & ( 
-- (!\BANCO_REG|registrador~1062_combout\ & (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & !\ROM1|memROM~0_combout\))) ) ) ) # ( \BANCO_REG|registrador~58_q\ & ( !\BANCO_REG|registrador~314_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & 
-- (!\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010000000000000000010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~58_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~314_q\,
	combout => \BANCO_REG|saidaB[20]~20_combout\);

-- Location: LABCELL_X24_Y12_N39
\ULA1|saida[20]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[20]~40_combout\ = ( \BANCO_REG|saidaB[20]~20_combout\ & ( (!\Sel_ULA[0]~input_o\) # ((!\Sel_ULA[1]~input_o\) # (\BANCO_REG|saidaA[20]~22_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111011111110111111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \BANCO_REG|ALT_INV_saidaA[20]~22_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	dataf => \BANCO_REG|ALT_INV_saidaB[20]~20_combout\,
	combout => \ULA1|saida[20]~40_combout\);

-- Location: LABCELL_X25_Y11_N57
\ULA1|saida[20]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[20]~41_combout\ = ( \ULA1|Add0~81_sumout\ & ( (!\Sel_ULA[1]~input_o\) # (\ULA1|saida[20]~40_combout\) ) ) # ( !\ULA1|Add0~81_sumout\ & ( (\Sel_ULA[1]~input_o\ & \ULA1|saida[20]~40_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \ULA1|ALT_INV_saida[20]~40_combout\,
	dataf => \ULA1|ALT_INV_Add0~81_sumout\,
	combout => \ULA1|saida[20]~41_combout\);

-- Location: LABCELL_X26_Y12_N39
\BANCO_REG|registrador~315feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~315feeder_combout\ = ( \ULA1|Add0~85_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~85_sumout\,
	combout => \BANCO_REG|registrador~315feeder_combout\);

-- Location: LABCELL_X26_Y12_N42
\ULA1|Add0~85_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~85_wirecell_combout\ = ( !\ULA1|Add0~85_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~85_sumout\,
	combout => \ULA1|Add0~85_wirecell_combout\);

-- Location: MLABCELL_X28_Y12_N15
\ULA1|saida[21]~42_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[21]~42_wirecell_combout\ = ( !\ULA1|saida[21]~42_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_saida[21]~42_combout\,
	combout => \ULA1|saida[21]~42_wirecell_combout\);

-- Location: FF_X26_Y12_N44
\BANCO_REG|registrador~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~85_wirecell_combout\,
	asdata => \ULA1|saida[21]~42_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~59_q\);

-- Location: MLABCELL_X28_Y12_N9
\BANCO_REG|saidaB[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[21]~21_combout\ = ( \BANCO_REG|registrador~59_q\ & ( \BANCO_REG|registrador~315_q\ & ( (\ROM1|memROM~4_combout\ & (!\BANCO_REG|registrador~1062_combout\ & (\ROM1|memROM~2_combout\ & !\ROM1|memROM~0_combout\))) ) ) ) # ( 
-- !\BANCO_REG|registrador~59_q\ & ( \BANCO_REG|registrador~315_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & !\ROM1|memROM~0_combout\) ) ) ) # ( !\BANCO_REG|registrador~59_q\ & ( !\BANCO_REG|registrador~315_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & 
-- (!\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~4_combout\) # (!\ROM1|memROM~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000000000000000000000000011001100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~59_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~315_q\,
	combout => \BANCO_REG|saidaB[21]~21_combout\);

-- Location: MLABCELL_X28_Y12_N42
\ULA1|saida[21]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[21]~42_combout\ = ( \BANCO_REG|saidaB[21]~21_combout\ & ( (!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[21]~23_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010111111111111101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \ALT_INV_Sel_ULA[0]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[21]~23_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaB[21]~21_combout\,
	combout => \ULA1|saida[21]~42_combout\);

-- Location: FF_X26_Y12_N41
\BANCO_REG|registrador~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~315feeder_combout\,
	asdata => \ULA1|saida[21]~42_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~315_q\);

-- Location: LABCELL_X26_Y14_N36
\BANCO_REG|saidaA[21]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[21]~23_combout\ = ( \ROM1|memROM~4_combout\ & ( (\BANCO_REG|registrador~315_q\ & (!\BANCO_REG|saidaA[0]~1_combout\ & \ROM1|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCO_REG|ALT_INV_registrador~315_q\,
	datac => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REG|saidaA[21]~23_combout\);

-- Location: LABCELL_X26_Y12_N45
\BANCO_REG|registrador~1084\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1084_combout\ = ( \ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~4_combout\ & (!\BANCO_REG|registrador~59_q\)) # (\ROM1|memROM~4_combout\ & ((\BANCO_REG|registrador~315_q\))))) ) ) # ( 
-- !\ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~0_combout\ & !\BANCO_REG|registrador~59_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000000010101000100000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~59_q\,
	datac => \BANCO_REG|ALT_INV_registrador~315_q\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \BANCO_REG|registrador~1084_combout\);

-- Location: LABCELL_X25_Y12_N6
\ULA1|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~85_sumout\ = SUM(( \BANCO_REG|saidaA[21]~23_combout\ ) + ( (!\Sel_ULA[1]~input_o\ & (!\Sel_ULA[0]~input_o\ $ (((!\BANCO_REG|registrador~1062_combout\ & \BANCO_REG|registrador~1084_combout\))))) # (\Sel_ULA[1]~input_o\ & 
-- (((!\BANCO_REG|registrador~1084_combout\) # (\BANCO_REG|registrador~1062_combout\)))) ) + ( \ULA1|Add0~82\ ))
-- \ULA1|Add0~86\ = CARRY(( \BANCO_REG|saidaA[21]~23_combout\ ) + ( (!\Sel_ULA[1]~input_o\ & (!\Sel_ULA[0]~input_o\ $ (((!\BANCO_REG|registrador~1062_combout\ & \BANCO_REG|registrador~1084_combout\))))) # (\Sel_ULA[1]~input_o\ & 
-- (((!\BANCO_REG|registrador~1084_combout\) # (\BANCO_REG|registrador~1062_combout\)))) ) + ( \ULA1|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[21]~23_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1084_combout\,
	cin => \ULA1|Add0~82\,
	sumout => \ULA1|Add0~85_sumout\,
	cout => \ULA1|Add0~86\);

-- Location: MLABCELL_X28_Y12_N45
\ULA1|saida[21]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[21]~43_combout\ = ( \ULA1|saida[21]~42_combout\ & ( (\ULA1|Add0~85_sumout\) # (\Sel_ULA[1]~input_o\) ) ) # ( !\ULA1|saida[21]~42_combout\ & ( (!\Sel_ULA[1]~input_o\ & \ULA1|Add0~85_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \ULA1|ALT_INV_Add0~85_sumout\,
	dataf => \ULA1|ALT_INV_saida[21]~42_combout\,
	combout => \ULA1|saida[21]~43_combout\);

-- Location: LABCELL_X24_Y12_N0
\BANCO_REG|registrador~316feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~316feeder_combout\ = ( \ULA1|Add0~89_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~89_sumout\,
	combout => \BANCO_REG|registrador~316feeder_combout\);

-- Location: LABCELL_X24_Y12_N6
\BANCO_REG|registrador~60feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~60feeder_combout\ = ( \ULA1|Add0~89_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~89_sumout\,
	combout => \BANCO_REG|registrador~60feeder_combout\);

-- Location: FF_X24_Y12_N8
\BANCO_REG|registrador~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~60feeder_combout\,
	asdata => \ULA1|saida[22]~44_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~60_q\);

-- Location: LABCELL_X24_Y12_N12
\BANCO_REG|saidaB[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[22]~22_combout\ = ( \BANCO_REG|registrador~60_q\ & ( \BANCO_REG|registrador~316_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & !\ROM1|memROM~0_combout\) ) ) ) # ( !\BANCO_REG|registrador~60_q\ & ( \BANCO_REG|registrador~316_q\ & ( 
-- (!\BANCO_REG|registrador~1062_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~0_combout\ & \ROM1|memROM~4_combout\))) ) ) ) # ( \BANCO_REG|registrador~60_q\ & ( !\BANCO_REG|registrador~316_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & 
-- (!\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001000000000000000001000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~60_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~316_q\,
	combout => \BANCO_REG|saidaB[22]~22_combout\);

-- Location: LABCELL_X24_Y12_N30
\ULA1|saida[22]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[22]~44_combout\ = ( \BANCO_REG|saidaB[22]~22_combout\ & ( (!\Sel_ULA[0]~input_o\) # ((!\Sel_ULA[1]~input_o\) # (\BANCO_REG|saidaA[22]~24_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111101011111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaA[22]~24_combout\,
	datad => \ALT_INV_Sel_ULA[1]~input_o\,
	dataf => \BANCO_REG|ALT_INV_saidaB[22]~22_combout\,
	combout => \ULA1|saida[22]~44_combout\);

-- Location: FF_X24_Y12_N2
\BANCO_REG|registrador~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~316feeder_combout\,
	asdata => \ULA1|saida[22]~44_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~316_q\);

-- Location: LABCELL_X24_Y12_N33
\BANCO_REG|saidaA[22]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[22]~24_combout\ = ( !\BANCO_REG|saidaA[0]~1_combout\ & ( (\ROM1|memROM~4_combout\ & (\ROM1|memROM~2_combout\ & \BANCO_REG|registrador~316_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~316_q\,
	dataf => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	combout => \BANCO_REG|saidaA[22]~24_combout\);

-- Location: LABCELL_X24_Y12_N18
\BANCO_REG|registrador~1085\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1085_combout\ = ( !\ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~2_combout\ & (\BANCO_REG|registrador~60_q\)) # (\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~4_combout\ & (\BANCO_REG|registrador~60_q\)) # (\ROM1|memROM~4_combout\ & 
-- ((\BANCO_REG|registrador~316_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000111010101010100011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~60_q\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~316_q\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1085_combout\);

-- Location: LABCELL_X25_Y12_N9
\ULA1|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~89_sumout\ = SUM(( \BANCO_REG|saidaA[22]~24_combout\ ) + ( (!\Sel_ULA[1]~input_o\ & (!\Sel_ULA[0]~input_o\ $ (((!\BANCO_REG|registrador~1062_combout\ & \BANCO_REG|registrador~1085_combout\))))) # (\Sel_ULA[1]~input_o\ & 
-- (((!\BANCO_REG|registrador~1085_combout\) # (\BANCO_REG|registrador~1062_combout\)))) ) + ( \ULA1|Add0~86\ ))
-- \ULA1|Add0~90\ = CARRY(( \BANCO_REG|saidaA[22]~24_combout\ ) + ( (!\Sel_ULA[1]~input_o\ & (!\Sel_ULA[0]~input_o\ $ (((!\BANCO_REG|registrador~1062_combout\ & \BANCO_REG|registrador~1085_combout\))))) # (\Sel_ULA[1]~input_o\ & 
-- (((!\BANCO_REG|registrador~1085_combout\) # (\BANCO_REG|registrador~1062_combout\)))) ) + ( \ULA1|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[22]~24_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1085_combout\,
	cin => \ULA1|Add0~86\,
	sumout => \ULA1|Add0~89_sumout\,
	cout => \ULA1|Add0~90\);

-- Location: LABCELL_X24_Y12_N3
\ULA1|saida[22]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[22]~45_combout\ = ( \ULA1|saida[22]~44_combout\ & ( (\Sel_ULA[1]~input_o\) # (\ULA1|Add0~89_sumout\) ) ) # ( !\ULA1|saida[22]~44_combout\ & ( (\ULA1|Add0~89_sumout\ & !\Sel_ULA[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|ALT_INV_Add0~89_sumout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	dataf => \ULA1|ALT_INV_saida[22]~44_combout\,
	combout => \ULA1|saida[22]~45_combout\);

-- Location: LABCELL_X25_Y12_N42
\ULA1|Add0~93_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~93_wirecell_combout\ = ( !\ULA1|Add0~93_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~93_sumout\,
	combout => \ULA1|Add0~93_wirecell_combout\);

-- Location: MLABCELL_X28_Y12_N0
\ULA1|saida[23]~46_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[23]~46_wirecell_combout\ = ( !\ULA1|saida[23]~46_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_saida[23]~46_combout\,
	combout => \ULA1|saida[23]~46_wirecell_combout\);

-- Location: FF_X25_Y12_N44
\BANCO_REG|registrador~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~93_wirecell_combout\,
	asdata => \ULA1|saida[23]~46_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~61_q\);

-- Location: LABCELL_X25_Y12_N57
\BANCO_REG|registrador~1086\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1086_combout\ = ( \BANCO_REG|registrador~61_q\ & ( (\ROM1|memROM~4_combout\ & (\BANCO_REG|registrador~317_q\ & (!\ROM1|memROM~0_combout\ & \ROM1|memROM~2_combout\))) ) ) # ( !\BANCO_REG|registrador~61_q\ & ( 
-- (!\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~4_combout\) # ((!\ROM1|memROM~2_combout\) # (\BANCO_REG|registrador~317_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010110000111100001011000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~317_q\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~61_q\,
	combout => \BANCO_REG|registrador~1086_combout\);

-- Location: LABCELL_X25_Y12_N12
\ULA1|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~93_sumout\ = SUM(( (!\Sel_ULA[1]~input_o\ & (!\Sel_ULA[0]~input_o\ $ (((!\BANCO_REG|registrador~1062_combout\ & \BANCO_REG|registrador~1086_combout\))))) # (\Sel_ULA[1]~input_o\ & (((!\BANCO_REG|registrador~1086_combout\) # 
-- (\BANCO_REG|registrador~1062_combout\)))) ) + ( \BANCO_REG|saidaA[23]~25_combout\ ) + ( \ULA1|Add0~90\ ))
-- \ULA1|Add0~94\ = CARRY(( (!\Sel_ULA[1]~input_o\ & (!\Sel_ULA[0]~input_o\ $ (((!\BANCO_REG|registrador~1062_combout\ & \BANCO_REG|registrador~1086_combout\))))) # (\Sel_ULA[1]~input_o\ & (((!\BANCO_REG|registrador~1086_combout\) # 
-- (\BANCO_REG|registrador~1062_combout\)))) ) + ( \BANCO_REG|saidaA[23]~25_combout\ ) + ( \ULA1|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101110100101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1086_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaA[23]~25_combout\,
	cin => \ULA1|Add0~90\,
	sumout => \ULA1|Add0~93_sumout\,
	cout => \ULA1|Add0~94\);

-- Location: LABCELL_X25_Y12_N48
\BANCO_REG|registrador~317feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~317feeder_combout\ = ( \ULA1|Add0~93_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~93_sumout\,
	combout => \BANCO_REG|registrador~317feeder_combout\);

-- Location: FF_X25_Y12_N50
\BANCO_REG|registrador~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~317feeder_combout\,
	asdata => \ULA1|saida[23]~46_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~317_q\);

-- Location: LABCELL_X25_Y11_N54
\BANCO_REG|saidaA[23]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[23]~25_combout\ = ( !\BANCO_REG|saidaA[0]~1_combout\ & ( (\BANCO_REG|registrador~317_q\ & (\ROM1|memROM~4_combout\ & \ROM1|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~317_q\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	combout => \BANCO_REG|saidaA[23]~25_combout\);

-- Location: MLABCELL_X28_Y13_N48
\BANCO_REG|saidaB[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[23]~23_combout\ = ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~0_combout\ & ( (!\BANCO_REG|registrador~1062_combout\ & ((!\ROM1|memROM~4_combout\ & (!\BANCO_REG|registrador~61_q\)) # (\ROM1|memROM~4_combout\ & 
-- ((\BANCO_REG|registrador~317_q\))))) ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~0_combout\ & ( (!\BANCO_REG|registrador~61_q\ & !\BANCO_REG|registrador~1062_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~61_q\,
	datab => \BANCO_REG|ALT_INV_registrador~317_q\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|saidaB[23]~23_combout\);

-- Location: MLABCELL_X28_Y12_N24
\ULA1|saida[23]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[23]~46_combout\ = ( \BANCO_REG|saidaB[23]~23_combout\ & ( (!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[23]~25_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010111111111111101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \ALT_INV_Sel_ULA[0]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[23]~25_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaB[23]~23_combout\,
	combout => \ULA1|saida[23]~46_combout\);

-- Location: MLABCELL_X28_Y13_N30
\ULA1|saida[23]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[23]~47_combout\ = ( \Sel_ULA[1]~input_o\ & ( \ULA1|Add0~93_sumout\ & ( \ULA1|saida[23]~46_combout\ ) ) ) # ( !\Sel_ULA[1]~input_o\ & ( \ULA1|Add0~93_sumout\ ) ) # ( \Sel_ULA[1]~input_o\ & ( !\ULA1|Add0~93_sumout\ & ( 
-- \ULA1|saida[23]~46_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA1|ALT_INV_saida[23]~46_combout\,
	datae => \ALT_INV_Sel_ULA[1]~input_o\,
	dataf => \ULA1|ALT_INV_Add0~93_sumout\,
	combout => \ULA1|saida[23]~47_combout\);

-- Location: LABCELL_X25_Y12_N54
\BANCO_REG|registrador~318feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~318feeder_combout\ = ( \ULA1|Add0~97_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~97_sumout\,
	combout => \BANCO_REG|registrador~318feeder_combout\);

-- Location: LABCELL_X24_Y14_N9
\BANCO_REG|saidaA[24]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[24]~26_combout\ = ( \ROM1|memROM~4_combout\ & ( (\BANCO_REG|registrador~318_q\ & (!\BANCO_REG|saidaA[0]~1_combout\ & \ROM1|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCO_REG|ALT_INV_registrador~318_q\,
	datac => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REG|saidaA[24]~26_combout\);

-- Location: LABCELL_X25_Y12_N45
\BANCO_REG|registrador~62feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~62feeder_combout\ = ( \ULA1|Add0~97_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~97_sumout\,
	combout => \BANCO_REG|registrador~62feeder_combout\);

-- Location: FF_X25_Y12_N47
\BANCO_REG|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~62feeder_combout\,
	asdata => \ULA1|saida[24]~48_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~62_q\);

-- Location: LABCELL_X24_Y13_N21
\BANCO_REG|saidaB[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[24]~24_combout\ = ( \BANCO_REG|registrador~62_q\ & ( \BANCO_REG|registrador~318_q\ & ( (!\ROM1|memROM~0_combout\ & !\BANCO_REG|registrador~1062_combout\) ) ) ) # ( !\BANCO_REG|registrador~62_q\ & ( \BANCO_REG|registrador~318_q\ & ( 
-- (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~2_combout\ & (!\BANCO_REG|registrador~1062_combout\ & \ROM1|memROM~4_combout\))) ) ) ) # ( \BANCO_REG|registrador~62_q\ & ( !\BANCO_REG|registrador~318_q\ & ( (!\ROM1|memROM~0_combout\ & 
-- (!\BANCO_REG|registrador~1062_combout\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001000000000000000001000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~62_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~318_q\,
	combout => \BANCO_REG|saidaB[24]~24_combout\);

-- Location: MLABCELL_X23_Y14_N21
\ULA1|saida[24]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[24]~48_combout\ = ( \BANCO_REG|saidaB[24]~24_combout\ & ( (!\Sel_ULA[0]~input_o\) # ((!\Sel_ULA[1]~input_o\) # (\BANCO_REG|saidaA[24]~26_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010111111111111101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[24]~26_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaB[24]~24_combout\,
	combout => \ULA1|saida[24]~48_combout\);

-- Location: FF_X25_Y12_N56
\BANCO_REG|registrador~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~318feeder_combout\,
	asdata => \ULA1|saida[24]~48_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~318_q\);

-- Location: LABCELL_X25_Y12_N51
\BANCO_REG|registrador~1087\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1087_combout\ = ( \BANCO_REG|registrador~62_q\ & ( (!\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~4_combout\) # ((!\ROM1|memROM~2_combout\) # (\BANCO_REG|registrador~318_q\)))) ) ) # ( !\BANCO_REG|registrador~62_q\ & ( 
-- (\ROM1|memROM~4_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~0_combout\ & \BANCO_REG|registrador~318_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000011100000111100001110000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~318_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~62_q\,
	combout => \BANCO_REG|registrador~1087_combout\);

-- Location: LABCELL_X25_Y12_N15
\ULA1|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~97_sumout\ = SUM(( (!\Sel_ULA[1]~input_o\ & (!\Sel_ULA[0]~input_o\ $ (((!\BANCO_REG|registrador~1062_combout\ & \BANCO_REG|registrador~1087_combout\))))) # (\Sel_ULA[1]~input_o\ & (((!\BANCO_REG|registrador~1087_combout\) # 
-- (\BANCO_REG|registrador~1062_combout\)))) ) + ( \BANCO_REG|saidaA[24]~26_combout\ ) + ( \ULA1|Add0~94\ ))
-- \ULA1|Add0~98\ = CARRY(( (!\Sel_ULA[1]~input_o\ & (!\Sel_ULA[0]~input_o\ $ (((!\BANCO_REG|registrador~1062_combout\ & \BANCO_REG|registrador~1087_combout\))))) # (\Sel_ULA[1]~input_o\ & (((!\BANCO_REG|registrador~1087_combout\) # 
-- (\BANCO_REG|registrador~1062_combout\)))) ) + ( \BANCO_REG|saidaA[24]~26_combout\ ) + ( \ULA1|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101110100101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1087_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaA[24]~26_combout\,
	cin => \ULA1|Add0~94\,
	sumout => \ULA1|Add0~97_sumout\,
	cout => \ULA1|Add0~98\);

-- Location: MLABCELL_X23_Y14_N39
\ULA1|saida[24]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[24]~49_combout\ = ( \ULA1|saida[24]~48_combout\ & ( (\ULA1|Add0~97_sumout\) # (\Sel_ULA[1]~input_o\) ) ) # ( !\ULA1|saida[24]~48_combout\ & ( (!\Sel_ULA[1]~input_o\ & \ULA1|Add0~97_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \ULA1|ALT_INV_Add0~97_sumout\,
	dataf => \ULA1|ALT_INV_saida[24]~48_combout\,
	combout => \ULA1|saida[24]~49_combout\);

-- Location: LABCELL_X24_Y11_N36
\BANCO_REG|registrador~319feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~319feeder_combout\ = ( \ULA1|Add0~101_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~101_sumout\,
	combout => \BANCO_REG|registrador~319feeder_combout\);

-- Location: LABCELL_X24_Y11_N18
\BANCO_REG|saidaB[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[25]~25_combout\ = (\BANCO_REG|saidaA[1]~0_combout\ & (!\ROM1|memROM~0_combout\ & \BANCO_REG|registrador~319_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~319_q\,
	combout => \BANCO_REG|saidaB[25]~25_combout\);

-- Location: LABCELL_X24_Y11_N21
\ULA1|saida[25]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[25]~50_combout\ = ( \BANCO_REG|saidaA[25]~27_combout\ & ( \BANCO_REG|saidaB[25]~25_combout\ ) ) # ( !\BANCO_REG|saidaA[25]~27_combout\ & ( (\BANCO_REG|saidaB[25]~25_combout\ & ((!\Sel_ULA[0]~input_o\) # (!\Sel_ULA[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111101000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaB[25]~25_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaA[25]~27_combout\,
	combout => \ULA1|saida[25]~50_combout\);

-- Location: FF_X24_Y11_N38
\BANCO_REG|registrador~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~319feeder_combout\,
	asdata => \ULA1|saida[25]~50_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~319_q\);

-- Location: LABCELL_X26_Y12_N54
\BANCO_REG|saidaA[25]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[25]~27_combout\ = ( !\BANCO_REG|saidaA[0]~1_combout\ & ( (\BANCO_REG|saidaA[1]~0_combout\ & \BANCO_REG|registrador~319_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~319_q\,
	dataf => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	combout => \BANCO_REG|saidaA[25]~27_combout\);

-- Location: LABCELL_X24_Y12_N21
\ULA1|Add0~101_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~101_wirecell_combout\ = ( !\ULA1|Add0~101_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~101_sumout\,
	combout => \ULA1|Add0~101_wirecell_combout\);

-- Location: LABCELL_X24_Y11_N6
\ULA1|saida[25]~50_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[25]~50_wirecell_combout\ = ( !\ULA1|saida[25]~50_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_saida[25]~50_combout\,
	combout => \ULA1|saida[25]~50_wirecell_combout\);

-- Location: FF_X24_Y12_N22
\BANCO_REG|registrador~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~101_wirecell_combout\,
	asdata => \ULA1|saida[25]~50_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~63_q\);

-- Location: LABCELL_X26_Y12_N36
\BANCO_REG|registrador~1090\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1090_combout\ = ( \BANCO_REG|saidaA[1]~0_combout\ & ( (!\ROM1|memROM~0_combout\ & \BANCO_REG|registrador~319_q\) ) ) # ( !\BANCO_REG|saidaA[1]~0_combout\ & ( (!\ROM1|memROM~0_combout\ & !\BANCO_REG|registrador~63_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~319_q\,
	datad => \BANCO_REG|ALT_INV_registrador~63_q\,
	dataf => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	combout => \BANCO_REG|registrador~1090_combout\);

-- Location: LABCELL_X25_Y12_N18
\ULA1|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~101_sumout\ = SUM(( \BANCO_REG|saidaA[25]~27_combout\ ) + ( (!\Sel_ULA[1]~input_o\ & (!\Sel_ULA[0]~input_o\ $ (((!\BANCO_REG|registrador~1062_combout\ & \BANCO_REG|registrador~1090_combout\))))) # (\Sel_ULA[1]~input_o\ & 
-- (((!\BANCO_REG|registrador~1090_combout\) # (\BANCO_REG|registrador~1062_combout\)))) ) + ( \ULA1|Add0~98\ ))
-- \ULA1|Add0~102\ = CARRY(( \BANCO_REG|saidaA[25]~27_combout\ ) + ( (!\Sel_ULA[1]~input_o\ & (!\Sel_ULA[0]~input_o\ $ (((!\BANCO_REG|registrador~1062_combout\ & \BANCO_REG|registrador~1090_combout\))))) # (\Sel_ULA[1]~input_o\ & 
-- (((!\BANCO_REG|registrador~1090_combout\) # (\BANCO_REG|registrador~1062_combout\)))) ) + ( \ULA1|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[25]~27_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1090_combout\,
	cin => \ULA1|Add0~98\,
	sumout => \ULA1|Add0~101_sumout\,
	cout => \ULA1|Add0~102\);

-- Location: LABCELL_X24_Y11_N39
\ULA1|saida[25]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[25]~51_combout\ = ( \ULA1|saida[25]~50_combout\ & ( (\Sel_ULA[1]~input_o\) # (\ULA1|Add0~101_sumout\) ) ) # ( !\ULA1|saida[25]~50_combout\ & ( (\ULA1|Add0~101_sumout\ & !\Sel_ULA[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~101_sumout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	dataf => \ULA1|ALT_INV_saida[25]~50_combout\,
	combout => \ULA1|saida[25]~51_combout\);

-- Location: LABCELL_X25_Y11_N39
\BANCO_REG|registrador~64feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~64feeder_combout\ = ( \ULA1|Add0~105_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~105_sumout\,
	combout => \BANCO_REG|registrador~64feeder_combout\);

-- Location: FF_X25_Y11_N41
\BANCO_REG|registrador~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~64feeder_combout\,
	asdata => \ULA1|saida[26]~52_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~64_q\);

-- Location: LABCELL_X25_Y11_N9
\BANCO_REG|registrador~1091\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1091_combout\ = ( !\ROM1|memROM~0_combout\ & ( (!\BANCO_REG|saidaA[1]~0_combout\ & (\BANCO_REG|registrador~64_q\)) # (\BANCO_REG|saidaA[1]~0_combout\ & ((\BANCO_REG|registrador~320_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~64_q\,
	datac => \BANCO_REG|ALT_INV_registrador~320_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1091_combout\);

-- Location: LABCELL_X25_Y12_N21
\ULA1|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~105_sumout\ = SUM(( \BANCO_REG|saidaA[26]~28_combout\ ) + ( (!\Sel_ULA[1]~input_o\ & (!\Sel_ULA[0]~input_o\ $ (((!\BANCO_REG|registrador~1062_combout\ & \BANCO_REG|registrador~1091_combout\))))) # (\Sel_ULA[1]~input_o\ & 
-- (((!\BANCO_REG|registrador~1091_combout\) # (\BANCO_REG|registrador~1062_combout\)))) ) + ( \ULA1|Add0~102\ ))
-- \ULA1|Add0~106\ = CARRY(( \BANCO_REG|saidaA[26]~28_combout\ ) + ( (!\Sel_ULA[1]~input_o\ & (!\Sel_ULA[0]~input_o\ $ (((!\BANCO_REG|registrador~1062_combout\ & \BANCO_REG|registrador~1091_combout\))))) # (\Sel_ULA[1]~input_o\ & 
-- (((!\BANCO_REG|registrador~1091_combout\) # (\BANCO_REG|registrador~1062_combout\)))) ) + ( \ULA1|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[26]~28_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1091_combout\,
	cin => \ULA1|Add0~102\,
	sumout => \ULA1|Add0~105_sumout\,
	cout => \ULA1|Add0~106\);

-- Location: LABCELL_X25_Y11_N42
\BANCO_REG|registrador~320feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~320feeder_combout\ = ( \ULA1|Add0~105_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~105_sumout\,
	combout => \BANCO_REG|registrador~320feeder_combout\);

-- Location: FF_X25_Y11_N44
\BANCO_REG|registrador~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~320feeder_combout\,
	asdata => \ULA1|saida[26]~52_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~320_q\);

-- Location: LABCELL_X25_Y11_N30
\BANCO_REG|saidaA[26]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[26]~28_combout\ = ( !\BANCO_REG|saidaA[0]~1_combout\ & ( (\BANCO_REG|registrador~320_q\ & \BANCO_REG|saidaA[1]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCO_REG|ALT_INV_registrador~320_q\,
	datac => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	combout => \BANCO_REG|saidaA[26]~28_combout\);

-- Location: LABCELL_X25_Y11_N51
\BANCO_REG|saidaB[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[26]~26_combout\ = ( \BANCO_REG|saidaA[1]~0_combout\ & ( (!\ROM1|memROM~0_combout\ & \BANCO_REG|registrador~320_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~320_q\,
	dataf => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	combout => \BANCO_REG|saidaB[26]~26_combout\);

-- Location: LABCELL_X25_Y11_N0
\ULA1|saida[26]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[26]~52_combout\ = ( \BANCO_REG|saidaB[26]~26_combout\ & ( ((!\Sel_ULA[0]~input_o\) # (!\Sel_ULA[1]~input_o\)) # (\BANCO_REG|saidaA[26]~28_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111100111111111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCO_REG|ALT_INV_saidaA[26]~28_combout\,
	datac => \ALT_INV_Sel_ULA[0]~input_o\,
	datad => \ALT_INV_Sel_ULA[1]~input_o\,
	dataf => \BANCO_REG|ALT_INV_saidaB[26]~26_combout\,
	combout => \ULA1|saida[26]~52_combout\);

-- Location: LABCELL_X25_Y11_N33
\ULA1|saida[26]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[26]~53_combout\ = ( \ULA1|Add0~105_sumout\ & ( (!\Sel_ULA[1]~input_o\) # (\ULA1|saida[26]~52_combout\) ) ) # ( !\ULA1|Add0~105_sumout\ & ( (\Sel_ULA[1]~input_o\ & \ULA1|saida[26]~52_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \ULA1|ALT_INV_saida[26]~52_combout\,
	dataf => \ULA1|ALT_INV_Add0~105_sumout\,
	combout => \ULA1|saida[26]~53_combout\);

-- Location: LABCELL_X24_Y12_N36
\ULA1|Add0~109_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~109_wirecell_combout\ = ( !\ULA1|Add0~109_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~109_sumout\,
	combout => \ULA1|Add0~109_wirecell_combout\);

-- Location: LABCELL_X25_Y11_N12
\ULA1|saida[27]~54_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[27]~54_wirecell_combout\ = ( !\ULA1|saida[27]~54_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_saida[27]~54_combout\,
	combout => \ULA1|saida[27]~54_wirecell_combout\);

-- Location: FF_X24_Y12_N37
\BANCO_REG|registrador~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~109_wirecell_combout\,
	asdata => \ULA1|saida[27]~54_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~65_q\);

-- Location: LABCELL_X25_Y11_N48
\BANCO_REG|registrador~1092\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1092_combout\ = ( \BANCO_REG|registrador~65_q\ & ( (!\ROM1|memROM~0_combout\ & (\BANCO_REG|saidaA[1]~0_combout\ & \BANCO_REG|registrador~321_q\)) ) ) # ( !\BANCO_REG|registrador~65_q\ & ( (!\ROM1|memROM~0_combout\ & 
-- ((!\BANCO_REG|saidaA[1]~0_combout\) # (\BANCO_REG|registrador~321_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011001100110000001100110000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~321_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~65_q\,
	combout => \BANCO_REG|registrador~1092_combout\);

-- Location: LABCELL_X25_Y11_N21
\BANCO_REG|saidaA[27]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[27]~29_combout\ = ( \BANCO_REG|registrador~321_q\ & ( !\BANCO_REG|saidaA[0]~1_combout\ & ( \BANCO_REG|saidaA[1]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~321_q\,
	dataf => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	combout => \BANCO_REG|saidaA[27]~29_combout\);

-- Location: LABCELL_X25_Y12_N24
\ULA1|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~109_sumout\ = SUM(( (!\Sel_ULA[1]~input_o\ & (!\Sel_ULA[0]~input_o\ $ (((!\BANCO_REG|registrador~1062_combout\ & \BANCO_REG|registrador~1092_combout\))))) # (\Sel_ULA[1]~input_o\ & (((!\BANCO_REG|registrador~1092_combout\) # 
-- (\BANCO_REG|registrador~1062_combout\)))) ) + ( \BANCO_REG|saidaA[27]~29_combout\ ) + ( \ULA1|Add0~106\ ))
-- \ULA1|Add0~110\ = CARRY(( (!\Sel_ULA[1]~input_o\ & (!\Sel_ULA[0]~input_o\ $ (((!\BANCO_REG|registrador~1062_combout\ & \BANCO_REG|registrador~1092_combout\))))) # (\Sel_ULA[1]~input_o\ & (((!\BANCO_REG|registrador~1092_combout\) # 
-- (\BANCO_REG|registrador~1062_combout\)))) ) + ( \BANCO_REG|saidaA[27]~29_combout\ ) + ( \ULA1|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101110100101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1092_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaA[27]~29_combout\,
	cin => \ULA1|Add0~106\,
	sumout => \ULA1|Add0~109_sumout\,
	cout => \ULA1|Add0~110\);

-- Location: LABCELL_X24_Y11_N57
\BANCO_REG|registrador~321feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~321feeder_combout\ = ( \ULA1|Add0~109_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~109_sumout\,
	combout => \BANCO_REG|registrador~321feeder_combout\);

-- Location: FF_X24_Y11_N59
\BANCO_REG|registrador~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~321feeder_combout\,
	asdata => \ULA1|saida[27]~54_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~321_q\);

-- Location: LABCELL_X24_Y11_N3
\BANCO_REG|saidaB[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[27]~27_combout\ = (\BANCO_REG|saidaA[1]~0_combout\ & (\BANCO_REG|registrador~321_q\ & !\ROM1|memROM~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~321_q\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|saidaB[27]~27_combout\);

-- Location: LABCELL_X24_Y11_N51
\ULA1|saida[27]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[27]~54_combout\ = ( \BANCO_REG|saidaA[27]~29_combout\ & ( \BANCO_REG|saidaB[27]~27_combout\ ) ) # ( !\BANCO_REG|saidaA[27]~29_combout\ & ( (\BANCO_REG|saidaB[27]~27_combout\ & ((!\Sel_ULA[0]~input_o\) # (!\Sel_ULA[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaB[27]~27_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaA[27]~29_combout\,
	combout => \ULA1|saida[27]~54_combout\);

-- Location: LABCELL_X24_Y11_N15
\ULA1|saida[27]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[27]~55_combout\ = ( \ULA1|Add0~109_sumout\ & ( (!\Sel_ULA[1]~input_o\) # (\ULA1|saida[27]~54_combout\) ) ) # ( !\ULA1|Add0~109_sumout\ & ( (\ULA1|saida[27]~54_combout\ & \Sel_ULA[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|ALT_INV_saida[27]~54_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	dataf => \ULA1|ALT_INV_Add0~109_sumout\,
	combout => \ULA1|saida[27]~55_combout\);

-- Location: LABCELL_X25_Y11_N36
\BANCO_REG|saidaA[28]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[28]~30_combout\ = ( !\BANCO_REG|saidaA[0]~1_combout\ & ( (\BANCO_REG|saidaA[1]~0_combout\ & \BANCO_REG|registrador~322_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~322_q\,
	dataf => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	combout => \BANCO_REG|saidaA[28]~30_combout\);

-- Location: LABCELL_X24_Y11_N12
\BANCO_REG|registrador~66feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~66feeder_combout\ = ( \ULA1|Add0~113_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~113_sumout\,
	combout => \BANCO_REG|registrador~66feeder_combout\);

-- Location: FF_X24_Y11_N13
\BANCO_REG|registrador~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~66feeder_combout\,
	asdata => \ULA1|saida[28]~56_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~66_q\);

-- Location: LABCELL_X25_Y11_N45
\BANCO_REG|registrador~1093\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1093_combout\ = ( \BANCO_REG|saidaA[1]~0_combout\ & ( (\BANCO_REG|registrador~322_q\ & !\ROM1|memROM~0_combout\) ) ) # ( !\BANCO_REG|saidaA[1]~0_combout\ & ( (!\ROM1|memROM~0_combout\ & \BANCO_REG|registrador~66_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~322_q\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~66_q\,
	dataf => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	combout => \BANCO_REG|registrador~1093_combout\);

-- Location: LABCELL_X25_Y12_N27
\ULA1|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~113_sumout\ = SUM(( \BANCO_REG|saidaA[28]~30_combout\ ) + ( (!\Sel_ULA[1]~input_o\ & (!\Sel_ULA[0]~input_o\ $ (((!\BANCO_REG|registrador~1062_combout\ & \BANCO_REG|registrador~1093_combout\))))) # (\Sel_ULA[1]~input_o\ & 
-- (((!\BANCO_REG|registrador~1093_combout\) # (\BANCO_REG|registrador~1062_combout\)))) ) + ( \ULA1|Add0~110\ ))
-- \ULA1|Add0~114\ = CARRY(( \BANCO_REG|saidaA[28]~30_combout\ ) + ( (!\Sel_ULA[1]~input_o\ & (!\Sel_ULA[0]~input_o\ $ (((!\BANCO_REG|registrador~1062_combout\ & \BANCO_REG|registrador~1093_combout\))))) # (\Sel_ULA[1]~input_o\ & 
-- (((!\BANCO_REG|registrador~1093_combout\) # (\BANCO_REG|registrador~1062_combout\)))) ) + ( \ULA1|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[28]~30_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1093_combout\,
	cin => \ULA1|Add0~110\,
	sumout => \ULA1|Add0~113_sumout\,
	cout => \ULA1|Add0~114\);

-- Location: LABCELL_X24_Y11_N54
\BANCO_REG|registrador~322feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~322feeder_combout\ = ( \ULA1|Add0~113_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~113_sumout\,
	combout => \BANCO_REG|registrador~322feeder_combout\);

-- Location: FF_X24_Y11_N56
\BANCO_REG|registrador~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~322feeder_combout\,
	asdata => \ULA1|saida[28]~56_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~322_q\);

-- Location: LABCELL_X24_Y11_N42
\BANCO_REG|saidaB[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[28]~28_combout\ = (\BANCO_REG|saidaA[1]~0_combout\ & (!\ROM1|memROM~0_combout\ & \BANCO_REG|registrador~322_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~322_q\,
	combout => \BANCO_REG|saidaB[28]~28_combout\);

-- Location: LABCELL_X24_Y11_N45
\ULA1|saida[28]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[28]~56_combout\ = ( \BANCO_REG|saidaA[28]~30_combout\ & ( \BANCO_REG|saidaB[28]~28_combout\ ) ) # ( !\BANCO_REG|saidaA[28]~30_combout\ & ( (\BANCO_REG|saidaB[28]~28_combout\ & ((!\Sel_ULA[0]~input_o\) # (!\Sel_ULA[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001010000011110000101000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaB[28]~28_combout\,
	datad => \ALT_INV_Sel_ULA[1]~input_o\,
	dataf => \BANCO_REG|ALT_INV_saidaA[28]~30_combout\,
	combout => \ULA1|saida[28]~56_combout\);

-- Location: LABCELL_X24_Y11_N27
\ULA1|saida[28]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[28]~57_combout\ = ( \ULA1|Add0~113_sumout\ & ( (!\Sel_ULA[1]~input_o\) # (\ULA1|saida[28]~56_combout\) ) ) # ( !\ULA1|Add0~113_sumout\ & ( (\Sel_ULA[1]~input_o\ & \ULA1|saida[28]~56_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \ULA1|ALT_INV_saida[28]~56_combout\,
	dataf => \ULA1|ALT_INV_Add0~113_sumout\,
	combout => \ULA1|saida[28]~57_combout\);

-- Location: LABCELL_X24_Y12_N54
\BANCO_REG|registrador~323feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~323feeder_combout\ = ( \ULA1|Add0~117_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~117_sumout\,
	combout => \BANCO_REG|registrador~323feeder_combout\);

-- Location: LABCELL_X26_Y11_N6
\BANCO_REG|saidaB[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[29]~29_combout\ = ( !\ROM1|memROM~0_combout\ & ( (\BANCO_REG|saidaA[1]~0_combout\ & \BANCO_REG|registrador~323_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~323_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|saidaB[29]~29_combout\);

-- Location: LABCELL_X26_Y11_N39
\ULA1|saida[29]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[29]~58_combout\ = ( \BANCO_REG|saidaB[29]~29_combout\ & ( (!\Sel_ULA[0]~input_o\) # ((!\Sel_ULA[1]~input_o\) # (\BANCO_REG|saidaA[29]~31_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaA[29]~31_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaB[29]~29_combout\,
	combout => \ULA1|saida[29]~58_combout\);

-- Location: FF_X24_Y12_N56
\BANCO_REG|registrador~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~323feeder_combout\,
	asdata => \ULA1|saida[29]~58_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~323_q\);

-- Location: LABCELL_X26_Y11_N9
\BANCO_REG|saidaA[29]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[29]~31_combout\ = ( !\BANCO_REG|saidaA[0]~1_combout\ & ( (\BANCO_REG|saidaA[1]~0_combout\ & \BANCO_REG|registrador~323_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~323_q\,
	dataf => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	combout => \BANCO_REG|saidaA[29]~31_combout\);

-- Location: LABCELL_X24_Y12_N9
\ULA1|Add0~117_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~117_wirecell_combout\ = ( !\ULA1|Add0~117_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~117_sumout\,
	combout => \ULA1|Add0~117_wirecell_combout\);

-- Location: LABCELL_X26_Y11_N42
\ULA1|saida[29]~58_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[29]~58_wirecell_combout\ = ( !\ULA1|saida[29]~58_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_saida[29]~58_combout\,
	combout => \ULA1|saida[29]~58_wirecell_combout\);

-- Location: FF_X24_Y12_N10
\BANCO_REG|registrador~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~117_wirecell_combout\,
	asdata => \ULA1|saida[29]~58_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~67_q\);

-- Location: LABCELL_X26_Y11_N27
\BANCO_REG|registrador~1094\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1094_combout\ = ( \BANCO_REG|saidaA[1]~0_combout\ & ( (!\ROM1|memROM~0_combout\ & \BANCO_REG|registrador~323_q\) ) ) # ( !\BANCO_REG|saidaA[1]~0_combout\ & ( (!\ROM1|memROM~0_combout\ & !\BANCO_REG|registrador~67_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~67_q\,
	datad => \BANCO_REG|ALT_INV_registrador~323_q\,
	dataf => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	combout => \BANCO_REG|registrador~1094_combout\);

-- Location: LABCELL_X25_Y12_N30
\ULA1|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~117_sumout\ = SUM(( \BANCO_REG|saidaA[29]~31_combout\ ) + ( (!\Sel_ULA[1]~input_o\ & (!\Sel_ULA[0]~input_o\ $ (((!\BANCO_REG|registrador~1062_combout\ & \BANCO_REG|registrador~1094_combout\))))) # (\Sel_ULA[1]~input_o\ & 
-- (((!\BANCO_REG|registrador~1094_combout\) # (\BANCO_REG|registrador~1062_combout\)))) ) + ( \ULA1|Add0~114\ ))
-- \ULA1|Add0~118\ = CARRY(( \BANCO_REG|saidaA[29]~31_combout\ ) + ( (!\Sel_ULA[1]~input_o\ & (!\Sel_ULA[0]~input_o\ $ (((!\BANCO_REG|registrador~1062_combout\ & \BANCO_REG|registrador~1094_combout\))))) # (\Sel_ULA[1]~input_o\ & 
-- (((!\BANCO_REG|registrador~1094_combout\) # (\BANCO_REG|registrador~1062_combout\)))) ) + ( \ULA1|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[29]~31_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1094_combout\,
	cin => \ULA1|Add0~114\,
	sumout => \ULA1|Add0~117_sumout\,
	cout => \ULA1|Add0~118\);

-- Location: LABCELL_X24_Y12_N57
\ULA1|saida[29]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[29]~59_combout\ = ( \ULA1|saida[29]~58_combout\ & ( (\Sel_ULA[1]~input_o\) # (\ULA1|Add0~117_sumout\) ) ) # ( !\ULA1|saida[29]~58_combout\ & ( (\ULA1|Add0~117_sumout\ & !\Sel_ULA[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~117_sumout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	dataf => \ULA1|ALT_INV_saida[29]~58_combout\,
	combout => \ULA1|saida[29]~59_combout\);

-- Location: LABCELL_X24_Y11_N33
\BANCO_REG|registrador~68feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~68feeder_combout\ = ( \ULA1|Add0~121_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~121_sumout\,
	combout => \BANCO_REG|registrador~68feeder_combout\);

-- Location: FF_X24_Y11_N34
\BANCO_REG|registrador~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~68feeder_combout\,
	asdata => \ULA1|saida[30]~60_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~68_q\);

-- Location: LABCELL_X25_Y11_N3
\BANCO_REG|registrador~1095\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1095_combout\ = ( \BANCO_REG|saidaA[1]~0_combout\ & ( (\BANCO_REG|registrador~324_q\ & !\ROM1|memROM~0_combout\) ) ) # ( !\BANCO_REG|saidaA[1]~0_combout\ & ( (!\ROM1|memROM~0_combout\ & \BANCO_REG|registrador~68_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~324_q\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~68_q\,
	dataf => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	combout => \BANCO_REG|registrador~1095_combout\);

-- Location: LABCELL_X25_Y12_N33
\ULA1|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~121_sumout\ = SUM(( \BANCO_REG|saidaA[30]~32_combout\ ) + ( (!\Sel_ULA[1]~input_o\ & (!\Sel_ULA[0]~input_o\ $ (((!\BANCO_REG|registrador~1062_combout\ & \BANCO_REG|registrador~1095_combout\))))) # (\Sel_ULA[1]~input_o\ & 
-- (((!\BANCO_REG|registrador~1095_combout\) # (\BANCO_REG|registrador~1062_combout\)))) ) + ( \ULA1|Add0~118\ ))
-- \ULA1|Add0~122\ = CARRY(( \BANCO_REG|saidaA[30]~32_combout\ ) + ( (!\Sel_ULA[1]~input_o\ & (!\Sel_ULA[0]~input_o\ $ (((!\BANCO_REG|registrador~1062_combout\ & \BANCO_REG|registrador~1095_combout\))))) # (\Sel_ULA[1]~input_o\ & 
-- (((!\BANCO_REG|registrador~1095_combout\) # (\BANCO_REG|registrador~1062_combout\)))) ) + ( \ULA1|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[30]~32_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1095_combout\,
	cin => \ULA1|Add0~118\,
	sumout => \ULA1|Add0~121_sumout\,
	cout => \ULA1|Add0~122\);

-- Location: LABCELL_X24_Y11_N0
\BANCO_REG|registrador~324feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~324feeder_combout\ = ( \ULA1|Add0~121_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~121_sumout\,
	combout => \BANCO_REG|registrador~324feeder_combout\);

-- Location: FF_X24_Y11_N2
\BANCO_REG|registrador~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~324feeder_combout\,
	asdata => \ULA1|saida[30]~60_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~324_q\);

-- Location: LABCELL_X25_Y11_N15
\BANCO_REG|saidaA[30]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[30]~32_combout\ = ( !\BANCO_REG|saidaA[0]~1_combout\ & ( (\BANCO_REG|saidaA[1]~0_combout\ & \BANCO_REG|registrador~324_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~324_q\,
	dataf => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	combout => \BANCO_REG|saidaA[30]~32_combout\);

-- Location: LABCELL_X24_Y11_N9
\BANCO_REG|saidaB[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[30]~30_combout\ = (\BANCO_REG|registrador~324_q\ & (\BANCO_REG|saidaA[1]~0_combout\ & !\ROM1|memROM~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~324_q\,
	datac => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|saidaB[30]~30_combout\);

-- Location: LABCELL_X24_Y11_N48
\ULA1|saida[30]~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[30]~60_combout\ = ( \BANCO_REG|saidaB[30]~30_combout\ & ( (!\Sel_ULA[0]~input_o\) # ((!\Sel_ULA[1]~input_o\) # (\BANCO_REG|saidaA[30]~32_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101110111111111110111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[30]~32_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaB[30]~30_combout\,
	combout => \ULA1|saida[30]~60_combout\);

-- Location: LABCELL_X24_Y11_N24
\ULA1|saida[30]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[30]~61_combout\ = ( \ULA1|Add0~121_sumout\ & ( (!\Sel_ULA[1]~input_o\) # (\ULA1|saida[30]~60_combout\) ) ) # ( !\ULA1|Add0~121_sumout\ & ( (\Sel_ULA[1]~input_o\ & \ULA1|saida[30]~60_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \ULA1|ALT_INV_saida[30]~60_combout\,
	dataf => \ULA1|ALT_INV_Add0~121_sumout\,
	combout => \ULA1|saida[30]~61_combout\);

-- Location: LABCELL_X26_Y12_N57
\ULA1|Add0~125_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~125_wirecell_combout\ = ( !\ULA1|Add0~125_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~125_sumout\,
	combout => \ULA1|Add0~125_wirecell_combout\);

-- Location: FF_X25_Y12_N38
\BANCO_REG|registrador~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~125_sumout\,
	asdata => \ULA1|saida[31]~62_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~325_q\);

-- Location: LABCELL_X26_Y14_N12
\BANCO_REG|saidaA[31]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[31]~33_combout\ = ( \BANCO_REG|saidaA[1]~0_combout\ & ( (!\BANCO_REG|saidaA[0]~1_combout\ & \BANCO_REG|registrador~325_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~325_q\,
	dataf => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	combout => \BANCO_REG|saidaA[31]~33_combout\);

-- Location: LABCELL_X26_Y14_N39
\BANCO_REG|saidaB[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[31]~31_combout\ = ( \BANCO_REG|saidaA[1]~0_combout\ & ( (\BANCO_REG|registrador~325_q\ & !\ROM1|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~325_q\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	combout => \BANCO_REG|saidaB[31]~31_combout\);

-- Location: LABCELL_X26_Y14_N45
\ULA1|saida[31]~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[31]~62_combout\ = ( \BANCO_REG|saidaB[31]~31_combout\ & ( (!\Sel_ULA[0]~input_o\) # ((!\Sel_ULA[1]~input_o\) # (\BANCO_REG|saidaA[31]~33_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111101011111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaA[31]~33_combout\,
	datad => \ALT_INV_Sel_ULA[1]~input_o\,
	dataf => \BANCO_REG|ALT_INV_saidaB[31]~31_combout\,
	combout => \ULA1|saida[31]~62_combout\);

-- Location: LABCELL_X26_Y14_N18
\ULA1|saida[31]~62_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[31]~62_wirecell_combout\ = !\ULA1|saida[31]~62_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ULA1|ALT_INV_saida[31]~62_combout\,
	combout => \ULA1|saida[31]~62_wirecell_combout\);

-- Location: FF_X26_Y12_N58
\BANCO_REG|registrador~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~125_wirecell_combout\,
	asdata => \ULA1|saida[31]~62_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~69_q\);

-- Location: LABCELL_X26_Y14_N54
\BANCO_REG|registrador~1096\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1096_combout\ = ( \BANCO_REG|registrador~325_q\ & ( (!\ROM1|memROM~0_combout\ & ((!\BANCO_REG|registrador~69_q\) # (\BANCO_REG|saidaA[1]~0_combout\))) ) ) # ( !\BANCO_REG|registrador~325_q\ & ( (!\BANCO_REG|saidaA[1]~0_combout\ & 
-- (!\BANCO_REG|registrador~69_q\ & !\ROM1|memROM~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011110011000000001111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~69_q\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~325_q\,
	combout => \BANCO_REG|registrador~1096_combout\);

-- Location: LABCELL_X25_Y12_N36
\ULA1|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~125_sumout\ = SUM(( (!\BANCO_REG|registrador~1062_combout\ & (!\BANCO_REG|registrador~1096_combout\ $ (((\Sel_ULA[0]~input_o\ & !\Sel_ULA[1]~input_o\))))) # (\BANCO_REG|registrador~1062_combout\ & ((!\Sel_ULA[0]~input_o\) # 
-- ((\Sel_ULA[1]~input_o\)))) ) + ( \BANCO_REG|saidaA[31]~33_combout\ ) + ( \ULA1|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100111101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_registrador~1096_combout\,
	dataf => \BANCO_REG|ALT_INV_saidaA[31]~33_combout\,
	cin => \ULA1|Add0~122\,
	sumout => \ULA1|Add0~125_sumout\);

-- Location: MLABCELL_X28_Y12_N27
\ULA1|saida[31]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[31]~63_combout\ = ( \ULA1|saida[31]~62_combout\ & ( (\ULA1|Add0~125_sumout\) # (\Sel_ULA[1]~input_o\) ) ) # ( !\ULA1|saida[31]~62_combout\ & ( (!\Sel_ULA[1]~input_o\ & \ULA1|Add0~125_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \ULA1|ALT_INV_Add0~125_sumout\,
	dataf => \ULA1|ALT_INV_saida[31]~62_combout\,
	combout => \ULA1|saida[31]~63_combout\);

-- Location: LABCELL_X25_Y15_N39
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( !\REG_PC|DOUT[4]~DUPLICATE_q\ & ( !\REG_PC|DOUT[2]~DUPLICATE_q\ & ( (!\REG_PC|DOUT[3]~DUPLICATE_q\ & (\ROM1|memROM~2_combout\ & !\REG_PC|DOUT\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \REG_PC|ALT_INV_DOUT\(5),
	datae => \REG_PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \REG_PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~5_combout\);

-- Location: FF_X26_Y13_N1
\REG_PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(1));

-- Location: FF_X26_Y13_N23
\REG_PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT[8]~DUPLICATE_q\);

-- Location: LABCELL_X26_Y13_N21
\somador|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~29_sumout\ = SUM(( \REG_PC|DOUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~18\ ))
-- \somador|Add0~30\ = CARRY(( \REG_PC|DOUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	cin => \somador|Add0~18\,
	sumout => \somador|Add0~29_sumout\,
	cout => \somador|Add0~30\);

-- Location: FF_X26_Y13_N22
\REG_PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(8));

-- Location: LABCELL_X26_Y13_N24
\somador|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~33_sumout\ = SUM(( \REG_PC|DOUT\(9) ) + ( GND ) + ( \somador|Add0~30\ ))
-- \somador|Add0~34\ = CARRY(( \REG_PC|DOUT\(9) ) + ( GND ) + ( \somador|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_PC|ALT_INV_DOUT\(9),
	cin => \somador|Add0~30\,
	sumout => \somador|Add0~33_sumout\,
	cout => \somador|Add0~34\);

-- Location: FF_X26_Y13_N26
\REG_PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(9));

-- Location: FF_X26_Y13_N29
\REG_PC|DOUT[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT[10]~DUPLICATE_q\);

-- Location: LABCELL_X26_Y13_N27
\somador|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~37_sumout\ = SUM(( \REG_PC|DOUT[10]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~34\ ))
-- \somador|Add0~38\ = CARRY(( \REG_PC|DOUT[10]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT[10]~DUPLICATE_q\,
	cin => \somador|Add0~34\,
	sumout => \somador|Add0~37_sumout\,
	cout => \somador|Add0~38\);

-- Location: FF_X26_Y13_N28
\REG_PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(10));

-- Location: LABCELL_X26_Y13_N30
\somador|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~41_sumout\ = SUM(( \REG_PC|DOUT\(11) ) + ( GND ) + ( \somador|Add0~38\ ))
-- \somador|Add0~42\ = CARRY(( \REG_PC|DOUT\(11) ) + ( GND ) + ( \somador|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_PC|ALT_INV_DOUT\(11),
	cin => \somador|Add0~38\,
	sumout => \somador|Add0~41_sumout\,
	cout => \somador|Add0~42\);

-- Location: FF_X26_Y13_N31
\REG_PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(11));

-- Location: FF_X26_Y13_N35
\REG_PC|DOUT[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT[12]~DUPLICATE_q\);

-- Location: LABCELL_X26_Y13_N33
\somador|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~45_sumout\ = SUM(( \REG_PC|DOUT[12]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~42\ ))
-- \somador|Add0~46\ = CARRY(( \REG_PC|DOUT[12]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT[12]~DUPLICATE_q\,
	cin => \somador|Add0~42\,
	sumout => \somador|Add0~45_sumout\,
	cout => \somador|Add0~46\);

-- Location: FF_X26_Y13_N34
\REG_PC|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(12));

-- Location: LABCELL_X26_Y13_N36
\somador|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~49_sumout\ = SUM(( \REG_PC|DOUT\(13) ) + ( GND ) + ( \somador|Add0~46\ ))
-- \somador|Add0~50\ = CARRY(( \REG_PC|DOUT\(13) ) + ( GND ) + ( \somador|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_PC|ALT_INV_DOUT\(13),
	cin => \somador|Add0~46\,
	sumout => \somador|Add0~49_sumout\,
	cout => \somador|Add0~50\);

-- Location: FF_X26_Y13_N38
\REG_PC|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(13));

-- Location: FF_X26_Y13_N41
\REG_PC|DOUT[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT[14]~DUPLICATE_q\);

-- Location: LABCELL_X26_Y13_N39
\somador|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~53_sumout\ = SUM(( \REG_PC|DOUT[14]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~50\ ))
-- \somador|Add0~54\ = CARRY(( \REG_PC|DOUT[14]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_PC|ALT_INV_DOUT[14]~DUPLICATE_q\,
	cin => \somador|Add0~50\,
	sumout => \somador|Add0~53_sumout\,
	cout => \somador|Add0~54\);

-- Location: FF_X26_Y13_N40
\REG_PC|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(14));

-- Location: LABCELL_X26_Y13_N42
\somador|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~57_sumout\ = SUM(( \REG_PC|DOUT\(15) ) + ( GND ) + ( \somador|Add0~54\ ))
-- \somador|Add0~58\ = CARRY(( \REG_PC|DOUT\(15) ) + ( GND ) + ( \somador|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(15),
	cin => \somador|Add0~54\,
	sumout => \somador|Add0~57_sumout\,
	cout => \somador|Add0~58\);

-- Location: FF_X26_Y13_N43
\REG_PC|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(15));

-- Location: FF_X26_Y13_N47
\REG_PC|DOUT[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT[16]~DUPLICATE_q\);

-- Location: LABCELL_X26_Y13_N45
\somador|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~61_sumout\ = SUM(( \REG_PC|DOUT[16]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~58\ ))
-- \somador|Add0~62\ = CARRY(( \REG_PC|DOUT[16]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_PC|ALT_INV_DOUT[16]~DUPLICATE_q\,
	cin => \somador|Add0~58\,
	sumout => \somador|Add0~61_sumout\,
	cout => \somador|Add0~62\);

-- Location: FF_X26_Y13_N46
\REG_PC|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(16));

-- Location: FF_X26_Y13_N50
\REG_PC|DOUT[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT[17]~DUPLICATE_q\);

-- Location: LABCELL_X26_Y13_N48
\somador|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~65_sumout\ = SUM(( \REG_PC|DOUT[17]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~62\ ))
-- \somador|Add0~66\ = CARRY(( \REG_PC|DOUT[17]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_PC|ALT_INV_DOUT[17]~DUPLICATE_q\,
	cin => \somador|Add0~62\,
	sumout => \somador|Add0~65_sumout\,
	cout => \somador|Add0~66\);

-- Location: FF_X26_Y13_N49
\REG_PC|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(17));

-- Location: LABCELL_X26_Y13_N51
\somador|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~69_sumout\ = SUM(( \REG_PC|DOUT\(18) ) + ( GND ) + ( \somador|Add0~66\ ))
-- \somador|Add0~70\ = CARRY(( \REG_PC|DOUT\(18) ) + ( GND ) + ( \somador|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_PC|ALT_INV_DOUT\(18),
	cin => \somador|Add0~66\,
	sumout => \somador|Add0~69_sumout\,
	cout => \somador|Add0~70\);

-- Location: FF_X26_Y13_N52
\REG_PC|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(18));

-- Location: LABCELL_X26_Y13_N54
\somador|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~73_sumout\ = SUM(( \REG_PC|DOUT\(19) ) + ( GND ) + ( \somador|Add0~70\ ))
-- \somador|Add0~74\ = CARRY(( \REG_PC|DOUT\(19) ) + ( GND ) + ( \somador|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_PC|ALT_INV_DOUT\(19),
	cin => \somador|Add0~70\,
	sumout => \somador|Add0~73_sumout\,
	cout => \somador|Add0~74\);

-- Location: FF_X26_Y13_N56
\REG_PC|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(19));

-- Location: FF_X26_Y13_N59
\REG_PC|DOUT[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT[20]~DUPLICATE_q\);

-- Location: LABCELL_X26_Y13_N57
\somador|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~77_sumout\ = SUM(( \REG_PC|DOUT[20]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~74\ ))
-- \somador|Add0~78\ = CARRY(( \REG_PC|DOUT[20]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_PC|ALT_INV_DOUT[20]~DUPLICATE_q\,
	cin => \somador|Add0~74\,
	sumout => \somador|Add0~77_sumout\,
	cout => \somador|Add0~78\);

-- Location: FF_X26_Y13_N58
\REG_PC|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(20));

-- Location: FF_X26_Y12_N2
\REG_PC|DOUT[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~81_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT[21]~DUPLICATE_q\);

-- Location: LABCELL_X26_Y12_N0
\somador|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~81_sumout\ = SUM(( \REG_PC|DOUT[21]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~78\ ))
-- \somador|Add0~82\ = CARRY(( \REG_PC|DOUT[21]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_PC|ALT_INV_DOUT[21]~DUPLICATE_q\,
	cin => \somador|Add0~78\,
	sumout => \somador|Add0~81_sumout\,
	cout => \somador|Add0~82\);

-- Location: FF_X26_Y12_N1
\REG_PC|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~81_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(21));

-- Location: FF_X26_Y12_N5
\REG_PC|DOUT[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT[22]~DUPLICATE_q\);

-- Location: LABCELL_X26_Y12_N3
\somador|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~85_sumout\ = SUM(( \REG_PC|DOUT[22]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~82\ ))
-- \somador|Add0~86\ = CARRY(( \REG_PC|DOUT[22]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT[22]~DUPLICATE_q\,
	cin => \somador|Add0~82\,
	sumout => \somador|Add0~85_sumout\,
	cout => \somador|Add0~86\);

-- Location: FF_X26_Y12_N4
\REG_PC|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(22));

-- Location: LABCELL_X26_Y12_N6
\somador|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~89_sumout\ = SUM(( \REG_PC|DOUT\(23) ) + ( GND ) + ( \somador|Add0~86\ ))
-- \somador|Add0~90\ = CARRY(( \REG_PC|DOUT\(23) ) + ( GND ) + ( \somador|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_PC|ALT_INV_DOUT\(23),
	cin => \somador|Add0~86\,
	sumout => \somador|Add0~89_sumout\,
	cout => \somador|Add0~90\);

-- Location: FF_X26_Y12_N8
\REG_PC|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~89_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(23));

-- Location: FF_X26_Y12_N11
\REG_PC|DOUT[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~93_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT[24]~DUPLICATE_q\);

-- Location: LABCELL_X26_Y12_N9
\somador|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~93_sumout\ = SUM(( \REG_PC|DOUT[24]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~90\ ))
-- \somador|Add0~94\ = CARRY(( \REG_PC|DOUT[24]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_PC|ALT_INV_DOUT[24]~DUPLICATE_q\,
	cin => \somador|Add0~90\,
	sumout => \somador|Add0~93_sumout\,
	cout => \somador|Add0~94\);

-- Location: FF_X26_Y12_N10
\REG_PC|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~93_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(24));

-- Location: FF_X26_Y12_N14
\REG_PC|DOUT[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~97_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT[25]~DUPLICATE_q\);

-- Location: LABCELL_X26_Y12_N12
\somador|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~97_sumout\ = SUM(( \REG_PC|DOUT[25]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~94\ ))
-- \somador|Add0~98\ = CARRY(( \REG_PC|DOUT[25]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_PC|ALT_INV_DOUT[25]~DUPLICATE_q\,
	cin => \somador|Add0~94\,
	sumout => \somador|Add0~97_sumout\,
	cout => \somador|Add0~98\);

-- Location: FF_X26_Y12_N13
\REG_PC|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~97_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(25));

-- Location: FF_X26_Y12_N17
\REG_PC|DOUT[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~101_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT[26]~DUPLICATE_q\);

-- Location: LABCELL_X26_Y12_N15
\somador|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~101_sumout\ = SUM(( \REG_PC|DOUT[26]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~98\ ))
-- \somador|Add0~102\ = CARRY(( \REG_PC|DOUT[26]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_PC|ALT_INV_DOUT[26]~DUPLICATE_q\,
	cin => \somador|Add0~98\,
	sumout => \somador|Add0~101_sumout\,
	cout => \somador|Add0~102\);

-- Location: FF_X26_Y12_N16
\REG_PC|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~101_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(26));

-- Location: FF_X26_Y12_N20
\REG_PC|DOUT[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~105_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT[27]~DUPLICATE_q\);

-- Location: LABCELL_X26_Y12_N18
\somador|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~105_sumout\ = SUM(( \REG_PC|DOUT[27]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~102\ ))
-- \somador|Add0~106\ = CARRY(( \REG_PC|DOUT[27]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_PC|ALT_INV_DOUT[27]~DUPLICATE_q\,
	cin => \somador|Add0~102\,
	sumout => \somador|Add0~105_sumout\,
	cout => \somador|Add0~106\);

-- Location: FF_X26_Y12_N19
\REG_PC|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~105_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(27));

-- Location: FF_X26_Y12_N23
\REG_PC|DOUT[28]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~109_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT[28]~DUPLICATE_q\);

-- Location: LABCELL_X26_Y12_N21
\somador|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~109_sumout\ = SUM(( \REG_PC|DOUT[28]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~106\ ))
-- \somador|Add0~110\ = CARRY(( \REG_PC|DOUT[28]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT[28]~DUPLICATE_q\,
	cin => \somador|Add0~106\,
	sumout => \somador|Add0~109_sumout\,
	cout => \somador|Add0~110\);

-- Location: FF_X26_Y12_N22
\REG_PC|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~109_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(28));

-- Location: LABCELL_X26_Y12_N24
\somador|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~113_sumout\ = SUM(( \REG_PC|DOUT\(29) ) + ( GND ) + ( \somador|Add0~110\ ))
-- \somador|Add0~114\ = CARRY(( \REG_PC|DOUT\(29) ) + ( GND ) + ( \somador|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_PC|ALT_INV_DOUT\(29),
	cin => \somador|Add0~110\,
	sumout => \somador|Add0~113_sumout\,
	cout => \somador|Add0~114\);

-- Location: FF_X26_Y12_N26
\REG_PC|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~113_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(29));

-- Location: LABCELL_X26_Y12_N27
\somador|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~117_sumout\ = SUM(( \REG_PC|DOUT\(30) ) + ( GND ) + ( \somador|Add0~114\ ))
-- \somador|Add0~118\ = CARRY(( \REG_PC|DOUT\(30) ) + ( GND ) + ( \somador|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(30),
	cin => \somador|Add0~114\,
	sumout => \somador|Add0~117_sumout\,
	cout => \somador|Add0~118\);

-- Location: FF_X26_Y12_N29
\REG_PC|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~117_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(30));

-- Location: FF_X26_Y12_N32
\REG_PC|DOUT[31]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~121_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT[31]~DUPLICATE_q\);

-- Location: LABCELL_X26_Y12_N30
\somador|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~121_sumout\ = SUM(( \REG_PC|DOUT[31]~DUPLICATE_q\ ) + ( GND ) + ( \somador|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_PC|ALT_INV_DOUT[31]~DUPLICATE_q\,
	cin => \somador|Add0~118\,
	sumout => \somador|Add0~121_sumout\);

-- Location: FF_X26_Y12_N31
\REG_PC|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somador|Add0~121_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(31));

-- Location: LABCELL_X19_Y16_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


