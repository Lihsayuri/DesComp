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

-- DATE "10/29/2022 09:38:31"

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
	Rd_End : OUT std_logic_vector(4 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(31 DOWNTO 0)
	);
END aula13;

-- Design Ports Information
-- Instru_opcode[0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instru_opcode[1]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instru_opcode[2]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instru_opcode[3]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instru_opcode[4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instru_opcode[5]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Funct[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Funct[1]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Funct[2]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Funct[3]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Funct[4]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Funct[5]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[2]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[3]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[4]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[5]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[6]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[7]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[8]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[9]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[10]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[11]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[12]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[13]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[14]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[15]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[16]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[17]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[18]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[19]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[20]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[21]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[22]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[23]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[24]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[25]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[26]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[27]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[28]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[29]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[30]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[31]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[1]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[2]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[4]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[6]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[7]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[8]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[9]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[10]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[11]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[12]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[13]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[14]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[15]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[16]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[17]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[18]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[19]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[20]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[21]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[22]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[23]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[24]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[25]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[26]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[27]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[28]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[29]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[30]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[31]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[1]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[2]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[4]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[6]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[7]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[8]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[9]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[10]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[11]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[12]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[13]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[14]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[15]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[16]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[17]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[18]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[19]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[20]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[21]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[22]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[23]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[24]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[25]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[26]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[27]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[28]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[29]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[30]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[31]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_End[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_End[1]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_End[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_End[3]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_End[4]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_End[0]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_End[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_End[2]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_End[3]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_End[4]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rd_End[0]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rd_End[1]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rd_End[2]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rd_End[3]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rd_End[4]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[9]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[10]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[11]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[12]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[13]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[14]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[15]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[16]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[17]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[18]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[19]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[20]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[21]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[22]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[23]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[24]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[25]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[26]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[27]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[28]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[29]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[30]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[31]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel_ULA[1]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel_ULA[0]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Ctrl_write	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_Rd_End : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \PC_REG|DOUT[2]~0_combout\ : std_logic;
SIGNAL \PC_REG|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador|Add0~17_sumout\ : std_logic;
SIGNAL \Somador|Add0~18\ : std_logic;
SIGNAL \Somador|Add0~13_sumout\ : std_logic;
SIGNAL \PC_REG|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador|Add0~14\ : std_logic;
SIGNAL \Somador|Add0~9_sumout\ : std_logic;
SIGNAL \Somador|Add0~10\ : std_logic;
SIGNAL \Somador|Add0~5_sumout\ : std_logic;
SIGNAL \PC_REG|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador|Add0~6\ : std_logic;
SIGNAL \Somador|Add0~1_sumout\ : std_logic;
SIGNAL \PC_REG|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \PC_REG|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \Sel_ULA[0]~input_o\ : std_logic;
SIGNAL \Sel_ULA[1]~input_o\ : std_logic;
SIGNAL \ULA1|Equal1~0_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~38feeder_combout\ : std_logic;
SIGNAL \Ctrl_write~input_o\ : std_logic;
SIGNAL \BANCO_REG|registrador~1095_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~294_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[0]~0_combout\ : std_logic;
SIGNAL \ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1094_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~38_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1062_combout\ : std_logic;
SIGNAL \ULA1|Add0~130_cout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \ULA1|saida[0]~1_combout\ : std_logic;
SIGNAL \ULA1|Add0~5_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~295_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[1]~1_combout\ : std_logic;
SIGNAL \ULA1|saida[1]~2_combout\ : std_logic;
SIGNAL \ULA1|saida[1]~2_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~39_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1063_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|saida[1]~3_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~40feeder_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~40_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~296_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1065_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|saida[2]~4_combout\ : std_logic;
SIGNAL \ULA1|Add0~13_wirecell_combout\ : std_logic;
SIGNAL \ULA1|saida[3]~5_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~41_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1064_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~297_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[3]~2_combout\ : std_logic;
SIGNAL \ULA1|saida[3]~5_combout\ : std_logic;
SIGNAL \ULA1|saida[3]~6_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~298_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~42feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~42_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1066_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|saida[4]~7_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~299feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~299_q\ : std_logic;
SIGNAL \ULA1|Add0~21_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~43_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1067_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|saida[5]~8_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~44feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~44_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~300_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1068_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|saida[6]~9_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~301_q\ : std_logic;
SIGNAL \ULA1|Add0~29_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~45_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1069_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|saida[7]~10_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~46feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~46_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~302_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1070_combout\ : std_logic;
SIGNAL \ULA1|Add0~30\ : std_logic;
SIGNAL \ULA1|Add0~33_sumout\ : std_logic;
SIGNAL \ULA1|saida[8]~11_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~303_q\ : std_logic;
SIGNAL \ULA1|Add0~37_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~47_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1071_combout\ : std_logic;
SIGNAL \ULA1|Add0~34\ : std_logic;
SIGNAL \ULA1|Add0~37_sumout\ : std_logic;
SIGNAL \ULA1|saida[9]~12_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~48feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~48_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~304_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1072_combout\ : std_logic;
SIGNAL \ULA1|Add0~38\ : std_logic;
SIGNAL \ULA1|Add0~41_sumout\ : std_logic;
SIGNAL \ULA1|saida[10]~13_combout\ : std_logic;
SIGNAL \ULA1|Add0~45_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~49_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~305_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1073_combout\ : std_logic;
SIGNAL \ULA1|Add0~42\ : std_logic;
SIGNAL \ULA1|Add0~45_sumout\ : std_logic;
SIGNAL \ULA1|saida[11]~14_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~50feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~50_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~306_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1074_combout\ : std_logic;
SIGNAL \ULA1|Add0~46\ : std_logic;
SIGNAL \ULA1|Add0~49_sumout\ : std_logic;
SIGNAL \ULA1|saida[12]~15_combout\ : std_logic;
SIGNAL \ULA1|Add0~53_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~51_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~307_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1075_combout\ : std_logic;
SIGNAL \ULA1|Add0~50\ : std_logic;
SIGNAL \ULA1|Add0~53_sumout\ : std_logic;
SIGNAL \ULA1|saida[13]~16_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~52feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~52_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~308_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1076_combout\ : std_logic;
SIGNAL \ULA1|Add0~54\ : std_logic;
SIGNAL \ULA1|Add0~57_sumout\ : std_logic;
SIGNAL \ULA1|saida[14]~17_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~309_q\ : std_logic;
SIGNAL \ULA1|Add0~61_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~53_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1077_combout\ : std_logic;
SIGNAL \ULA1|Add0~58\ : std_logic;
SIGNAL \ULA1|Add0~61_sumout\ : std_logic;
SIGNAL \ULA1|saida[15]~18_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~310_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~54feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~54_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1078_combout\ : std_logic;
SIGNAL \ULA1|Add0~62\ : std_logic;
SIGNAL \ULA1|Add0~65_sumout\ : std_logic;
SIGNAL \ULA1|saida[16]~19_combout\ : std_logic;
SIGNAL \ULA1|Add0~69_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~55_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~311_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1079_combout\ : std_logic;
SIGNAL \ULA1|Add0~66\ : std_logic;
SIGNAL \ULA1|Add0~69_sumout\ : std_logic;
SIGNAL \ULA1|saida[17]~20_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~312_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~56feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~56_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1080_combout\ : std_logic;
SIGNAL \ULA1|Add0~70\ : std_logic;
SIGNAL \ULA1|Add0~73_sumout\ : std_logic;
SIGNAL \ULA1|saida[18]~21_combout\ : std_logic;
SIGNAL \ULA1|Add0~77_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~57_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~313_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1081_combout\ : std_logic;
SIGNAL \ULA1|Add0~74\ : std_logic;
SIGNAL \ULA1|Add0~77_sumout\ : std_logic;
SIGNAL \ULA1|saida[19]~22_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~58feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~58_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~314_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1082_combout\ : std_logic;
SIGNAL \ULA1|Add0~78\ : std_logic;
SIGNAL \ULA1|Add0~81_sumout\ : std_logic;
SIGNAL \ULA1|saida[20]~23_combout\ : std_logic;
SIGNAL \ULA1|Add0~85_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~59_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~315_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1083_combout\ : std_logic;
SIGNAL \ULA1|Add0~82\ : std_logic;
SIGNAL \ULA1|Add0~85_sumout\ : std_logic;
SIGNAL \ULA1|saida[21]~24_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~60feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~60_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~316_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1084_combout\ : std_logic;
SIGNAL \ULA1|Add0~86\ : std_logic;
SIGNAL \ULA1|Add0~89_sumout\ : std_logic;
SIGNAL \ULA1|saida[22]~25_combout\ : std_logic;
SIGNAL \ULA1|Add0~93_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~61_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~317_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1085_combout\ : std_logic;
SIGNAL \ULA1|Add0~90\ : std_logic;
SIGNAL \ULA1|Add0~93_sumout\ : std_logic;
SIGNAL \ULA1|saida[23]~26_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~62feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~62_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~318_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1086_combout\ : std_logic;
SIGNAL \ULA1|Add0~94\ : std_logic;
SIGNAL \ULA1|Add0~97_sumout\ : std_logic;
SIGNAL \ULA1|saida[24]~27_combout\ : std_logic;
SIGNAL \ULA1|Add0~101_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~63_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~319_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1087_combout\ : std_logic;
SIGNAL \ULA1|Add0~98\ : std_logic;
SIGNAL \ULA1|Add0~101_sumout\ : std_logic;
SIGNAL \ULA1|saida[25]~28_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~320_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~64feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~64_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1088_combout\ : std_logic;
SIGNAL \ULA1|Add0~102\ : std_logic;
SIGNAL \ULA1|Add0~105_sumout\ : std_logic;
SIGNAL \ULA1|saida[26]~29_combout\ : std_logic;
SIGNAL \ULA1|Add0~109_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~65_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~321_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1089_combout\ : std_logic;
SIGNAL \ULA1|Add0~106\ : std_logic;
SIGNAL \ULA1|Add0~109_sumout\ : std_logic;
SIGNAL \ULA1|saida[27]~30_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~66feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~66_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~322_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1090_combout\ : std_logic;
SIGNAL \ULA1|Add0~110\ : std_logic;
SIGNAL \ULA1|Add0~113_sumout\ : std_logic;
SIGNAL \ULA1|saida[28]~31_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~323_q\ : std_logic;
SIGNAL \ULA1|Add0~117_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~67_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1091_combout\ : std_logic;
SIGNAL \ULA1|Add0~114\ : std_logic;
SIGNAL \ULA1|Add0~117_sumout\ : std_logic;
SIGNAL \ULA1|saida[29]~32_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~68feeder_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~68_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~324_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1092_combout\ : std_logic;
SIGNAL \ULA1|Add0~118\ : std_logic;
SIGNAL \ULA1|Add0~121_sumout\ : std_logic;
SIGNAL \ULA1|saida[30]~33_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~325_q\ : std_logic;
SIGNAL \ULA1|Add0~125_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~69_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1093_combout\ : std_logic;
SIGNAL \ULA1|Add0~122\ : std_logic;
SIGNAL \ULA1|Add0~125_sumout\ : std_logic;
SIGNAL \ULA1|saida[31]~34_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[2]~3_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[4]~4_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[5]~5_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[6]~6_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[7]~7_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[8]~8_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[9]~9_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[10]~10_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[11]~11_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[12]~12_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[13]~13_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[14]~14_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[15]~15_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[16]~16_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[17]~17_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[18]~18_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[19]~19_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[20]~20_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[21]~21_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[22]~22_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[23]~23_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[24]~24_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[25]~25_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[26]~26_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[27]~27_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[28]~28_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[29]~29_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[30]~30_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[31]~31_combout\ : std_logic;
SIGNAL \PC_REG|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador|Add0~2\ : std_logic;
SIGNAL \Somador|Add0~21_sumout\ : std_logic;
SIGNAL \PC_REG|DOUT[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador|Add0~22\ : std_logic;
SIGNAL \Somador|Add0~25_sumout\ : std_logic;
SIGNAL \Somador|Add0~26\ : std_logic;
SIGNAL \Somador|Add0~29_sumout\ : std_logic;
SIGNAL \Somador|Add0~30\ : std_logic;
SIGNAL \Somador|Add0~33_sumout\ : std_logic;
SIGNAL \PC_REG|DOUT[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador|Add0~34\ : std_logic;
SIGNAL \Somador|Add0~37_sumout\ : std_logic;
SIGNAL \PC_REG|DOUT[13]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador|Add0~38\ : std_logic;
SIGNAL \Somador|Add0~41_sumout\ : std_logic;
SIGNAL \PC_REG|DOUT[14]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador|Add0~42\ : std_logic;
SIGNAL \Somador|Add0~45_sumout\ : std_logic;
SIGNAL \PC_REG|DOUT[15]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador|Add0~46\ : std_logic;
SIGNAL \Somador|Add0~49_sumout\ : std_logic;
SIGNAL \PC_REG|DOUT[16]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador|Add0~50\ : std_logic;
SIGNAL \Somador|Add0~53_sumout\ : std_logic;
SIGNAL \Somador|Add0~54\ : std_logic;
SIGNAL \Somador|Add0~57_sumout\ : std_logic;
SIGNAL \PC_REG|DOUT[18]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador|Add0~58\ : std_logic;
SIGNAL \Somador|Add0~61_sumout\ : std_logic;
SIGNAL \Somador|Add0~62\ : std_logic;
SIGNAL \Somador|Add0~65_sumout\ : std_logic;
SIGNAL \PC_REG|DOUT[20]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador|Add0~66\ : std_logic;
SIGNAL \Somador|Add0~69_sumout\ : std_logic;
SIGNAL \Somador|Add0~70\ : std_logic;
SIGNAL \Somador|Add0~73_sumout\ : std_logic;
SIGNAL \Somador|Add0~74\ : std_logic;
SIGNAL \Somador|Add0~77_sumout\ : std_logic;
SIGNAL \Somador|Add0~78\ : std_logic;
SIGNAL \Somador|Add0~81_sumout\ : std_logic;
SIGNAL \Somador|Add0~82\ : std_logic;
SIGNAL \Somador|Add0~85_sumout\ : std_logic;
SIGNAL \Somador|Add0~86\ : std_logic;
SIGNAL \Somador|Add0~89_sumout\ : std_logic;
SIGNAL \Somador|Add0~90\ : std_logic;
SIGNAL \Somador|Add0~93_sumout\ : std_logic;
SIGNAL \PC_REG|DOUT[27]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador|Add0~94\ : std_logic;
SIGNAL \Somador|Add0~97_sumout\ : std_logic;
SIGNAL \PC_REG|DOUT[28]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador|Add0~98\ : std_logic;
SIGNAL \Somador|Add0~101_sumout\ : std_logic;
SIGNAL \Somador|Add0~102\ : std_logic;
SIGNAL \Somador|Add0~105_sumout\ : std_logic;
SIGNAL \Somador|Add0~106\ : std_logic;
SIGNAL \Somador|Add0~109_sumout\ : std_logic;
SIGNAL \PC_REG|DOUT[31]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador|Add0~110\ : std_logic;
SIGNAL \Somador|Add0~113_sumout\ : std_logic;
SIGNAL \PC_REG|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \BANCO_REG|ALT_INV_registrador~302_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~46_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~301_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~45_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~300_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~44_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~299_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~43_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~298_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~296_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~297_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~295_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~294_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~38_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[3]~5_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[3]~2_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1064_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[1]~2_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[1]~1_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1063_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[0]~0_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1062_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \PC_REG|ALT_INV_DOUT\ : std_logic_vector(30 DOWNTO 2);
SIGNAL \BANCO_REG|ALT_INV_registrador~325_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~69_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~324_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~68_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~323_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~67_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~322_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~66_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~321_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~65_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~320_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~64_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~319_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~63_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~318_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~62_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~317_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~61_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~316_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~60_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~315_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~59_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~314_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~58_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~313_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~57_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~312_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~56_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~311_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~55_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~310_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~54_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~309_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~53_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~308_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~52_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~307_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~51_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~306_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~50_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~305_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~49_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~304_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~48_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~303_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~47_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1093_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1092_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1091_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1090_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1089_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1088_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1087_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1086_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1085_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1084_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1083_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1082_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1081_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1080_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1079_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1078_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1077_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1076_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1075_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1074_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1073_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1072_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1071_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1070_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1069_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1068_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1067_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1066_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1065_combout\ : std_logic;
SIGNAL \PC_REG|ALT_INV_DOUT[31]~DUPLICATE_q\ : std_logic;
SIGNAL \PC_REG|ALT_INV_DOUT[28]~DUPLICATE_q\ : std_logic;
SIGNAL \PC_REG|ALT_INV_DOUT[27]~DUPLICATE_q\ : std_logic;
SIGNAL \PC_REG|ALT_INV_DOUT[20]~DUPLICATE_q\ : std_logic;
SIGNAL \PC_REG|ALT_INV_DOUT[18]~DUPLICATE_q\ : std_logic;
SIGNAL \PC_REG|ALT_INV_DOUT[16]~DUPLICATE_q\ : std_logic;
SIGNAL \PC_REG|ALT_INV_DOUT[15]~DUPLICATE_q\ : std_logic;
SIGNAL \PC_REG|ALT_INV_DOUT[14]~DUPLICATE_q\ : std_logic;
SIGNAL \PC_REG|ALT_INV_DOUT[13]~DUPLICATE_q\ : std_logic;
SIGNAL \PC_REG|ALT_INV_DOUT[12]~DUPLICATE_q\ : std_logic;
SIGNAL \PC_REG|ALT_INV_DOUT[9]~DUPLICATE_q\ : std_logic;
SIGNAL \PC_REG|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \PC_REG|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \PC_REG|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \PC_REG|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \PC_REG|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Ctrl_write~input_o\ : std_logic;
SIGNAL \ALT_INV_Sel_ULA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sel_ULA[1]~input_o\ : std_logic;

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
Rd_End <= ww_Rd_End;
PC_OUT <= ww_PC_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\BANCO_REG|ALT_INV_registrador~302_q\ <= NOT \BANCO_REG|registrador~302_q\;
\BANCO_REG|ALT_INV_registrador~46_q\ <= NOT \BANCO_REG|registrador~46_q\;
\BANCO_REG|ALT_INV_registrador~301_q\ <= NOT \BANCO_REG|registrador~301_q\;
\BANCO_REG|ALT_INV_registrador~45_q\ <= NOT \BANCO_REG|registrador~45_q\;
\BANCO_REG|ALT_INV_registrador~300_q\ <= NOT \BANCO_REG|registrador~300_q\;
\BANCO_REG|ALT_INV_registrador~44_q\ <= NOT \BANCO_REG|registrador~44_q\;
\BANCO_REG|ALT_INV_registrador~299_q\ <= NOT \BANCO_REG|registrador~299_q\;
\BANCO_REG|ALT_INV_registrador~43_q\ <= NOT \BANCO_REG|registrador~43_q\;
\BANCO_REG|ALT_INV_registrador~298_q\ <= NOT \BANCO_REG|registrador~298_q\;
\BANCO_REG|ALT_INV_registrador~42_q\ <= NOT \BANCO_REG|registrador~42_q\;
\BANCO_REG|ALT_INV_registrador~296_q\ <= NOT \BANCO_REG|registrador~296_q\;
\BANCO_REG|ALT_INV_registrador~40_q\ <= NOT \BANCO_REG|registrador~40_q\;
\ULA1|ALT_INV_Add0~125_sumout\ <= NOT \ULA1|Add0~125_sumout\;
\ULA1|ALT_INV_Add0~121_sumout\ <= NOT \ULA1|Add0~121_sumout\;
\ULA1|ALT_INV_Add0~117_sumout\ <= NOT \ULA1|Add0~117_sumout\;
\ULA1|ALT_INV_Add0~113_sumout\ <= NOT \ULA1|Add0~113_sumout\;
\ULA1|ALT_INV_Add0~109_sumout\ <= NOT \ULA1|Add0~109_sumout\;
\ULA1|ALT_INV_Add0~105_sumout\ <= NOT \ULA1|Add0~105_sumout\;
\ULA1|ALT_INV_Add0~101_sumout\ <= NOT \ULA1|Add0~101_sumout\;
\ULA1|ALT_INV_Add0~97_sumout\ <= NOT \ULA1|Add0~97_sumout\;
\ULA1|ALT_INV_Add0~93_sumout\ <= NOT \ULA1|Add0~93_sumout\;
\ULA1|ALT_INV_Add0~89_sumout\ <= NOT \ULA1|Add0~89_sumout\;
\ULA1|ALT_INV_Add0~85_sumout\ <= NOT \ULA1|Add0~85_sumout\;
\ULA1|ALT_INV_Add0~81_sumout\ <= NOT \ULA1|Add0~81_sumout\;
\ULA1|ALT_INV_Add0~77_sumout\ <= NOT \ULA1|Add0~77_sumout\;
\ULA1|ALT_INV_Add0~73_sumout\ <= NOT \ULA1|Add0~73_sumout\;
\ULA1|ALT_INV_Add0~69_sumout\ <= NOT \ULA1|Add0~69_sumout\;
\ULA1|ALT_INV_Add0~65_sumout\ <= NOT \ULA1|Add0~65_sumout\;
\ULA1|ALT_INV_Add0~61_sumout\ <= NOT \ULA1|Add0~61_sumout\;
\ULA1|ALT_INV_Add0~57_sumout\ <= NOT \ULA1|Add0~57_sumout\;
\ULA1|ALT_INV_Add0~53_sumout\ <= NOT \ULA1|Add0~53_sumout\;
\ULA1|ALT_INV_Add0~49_sumout\ <= NOT \ULA1|Add0~49_sumout\;
\ULA1|ALT_INV_Add0~45_sumout\ <= NOT \ULA1|Add0~45_sumout\;
\ULA1|ALT_INV_Add0~41_sumout\ <= NOT \ULA1|Add0~41_sumout\;
\ULA1|ALT_INV_Add0~37_sumout\ <= NOT \ULA1|Add0~37_sumout\;
\ULA1|ALT_INV_Add0~33_sumout\ <= NOT \ULA1|Add0~33_sumout\;
\ULA1|ALT_INV_Add0~29_sumout\ <= NOT \ULA1|Add0~29_sumout\;
\ULA1|ALT_INV_Add0~25_sumout\ <= NOT \ULA1|Add0~25_sumout\;
\ULA1|ALT_INV_Add0~21_sumout\ <= NOT \ULA1|Add0~21_sumout\;
\ULA1|ALT_INV_Add0~17_sumout\ <= NOT \ULA1|Add0~17_sumout\;
\ULA1|ALT_INV_Add0~13_sumout\ <= NOT \ULA1|Add0~13_sumout\;
\BANCO_REG|ALT_INV_registrador~297_q\ <= NOT \BANCO_REG|registrador~297_q\;
\BANCO_REG|ALT_INV_registrador~41_q\ <= NOT \BANCO_REG|registrador~41_q\;
\ULA1|ALT_INV_Add0~9_sumout\ <= NOT \ULA1|Add0~9_sumout\;
\ULA1|ALT_INV_Add0~5_sumout\ <= NOT \ULA1|Add0~5_sumout\;
\BANCO_REG|ALT_INV_registrador~295_q\ <= NOT \BANCO_REG|registrador~295_q\;
\BANCO_REG|ALT_INV_registrador~39_q\ <= NOT \BANCO_REG|registrador~39_q\;
\ULA1|ALT_INV_Add0~1_sumout\ <= NOT \ULA1|Add0~1_sumout\;
\BANCO_REG|ALT_INV_registrador~294_q\ <= NOT \BANCO_REG|registrador~294_q\;
\BANCO_REG|ALT_INV_registrador~38_q\ <= NOT \BANCO_REG|registrador~38_q\;
\ULA1|ALT_INV_saida[3]~5_combout\ <= NOT \ULA1|saida[3]~5_combout\;
\BANCO_REG|ALT_INV_saidaA[3]~2_combout\ <= NOT \BANCO_REG|saidaA[3]~2_combout\;
\BANCO_REG|ALT_INV_registrador~1064_combout\ <= NOT \BANCO_REG|registrador~1064_combout\;
\ULA1|ALT_INV_saida[1]~2_combout\ <= NOT \ULA1|saida[1]~2_combout\;
\BANCO_REG|ALT_INV_saidaA[1]~1_combout\ <= NOT \BANCO_REG|saidaA[1]~1_combout\;
\BANCO_REG|ALT_INV_registrador~1063_combout\ <= NOT \BANCO_REG|registrador~1063_combout\;
\ULA1|ALT_INV_saida[0]~0_combout\ <= NOT \ULA1|saida[0]~0_combout\;
\BANCO_REG|ALT_INV_saidaA[0]~0_combout\ <= NOT \BANCO_REG|saidaA[0]~0_combout\;
\BANCO_REG|ALT_INV_registrador~1062_combout\ <= NOT \BANCO_REG|registrador~1062_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\PC_REG|ALT_INV_DOUT\(3) <= NOT \PC_REG|DOUT\(3);
\PC_REG|ALT_INV_DOUT\(5) <= NOT \PC_REG|DOUT\(5);
\PC_REG|ALT_INV_DOUT\(6) <= NOT \PC_REG|DOUT\(6);
\PC_REG|ALT_INV_DOUT\(7) <= NOT \PC_REG|DOUT\(7);
\PC_REG|ALT_INV_DOUT\(2) <= NOT \PC_REG|DOUT\(2);
\BANCO_REG|ALT_INV_registrador~325_q\ <= NOT \BANCO_REG|registrador~325_q\;
\BANCO_REG|ALT_INV_registrador~69_q\ <= NOT \BANCO_REG|registrador~69_q\;
\BANCO_REG|ALT_INV_registrador~324_q\ <= NOT \BANCO_REG|registrador~324_q\;
\BANCO_REG|ALT_INV_registrador~68_q\ <= NOT \BANCO_REG|registrador~68_q\;
\BANCO_REG|ALT_INV_registrador~323_q\ <= NOT \BANCO_REG|registrador~323_q\;
\BANCO_REG|ALT_INV_registrador~67_q\ <= NOT \BANCO_REG|registrador~67_q\;
\BANCO_REG|ALT_INV_registrador~322_q\ <= NOT \BANCO_REG|registrador~322_q\;
\BANCO_REG|ALT_INV_registrador~66_q\ <= NOT \BANCO_REG|registrador~66_q\;
\BANCO_REG|ALT_INV_registrador~321_q\ <= NOT \BANCO_REG|registrador~321_q\;
\BANCO_REG|ALT_INV_registrador~65_q\ <= NOT \BANCO_REG|registrador~65_q\;
\BANCO_REG|ALT_INV_registrador~320_q\ <= NOT \BANCO_REG|registrador~320_q\;
\BANCO_REG|ALT_INV_registrador~64_q\ <= NOT \BANCO_REG|registrador~64_q\;
\BANCO_REG|ALT_INV_registrador~319_q\ <= NOT \BANCO_REG|registrador~319_q\;
\BANCO_REG|ALT_INV_registrador~63_q\ <= NOT \BANCO_REG|registrador~63_q\;
\BANCO_REG|ALT_INV_registrador~318_q\ <= NOT \BANCO_REG|registrador~318_q\;
\BANCO_REG|ALT_INV_registrador~62_q\ <= NOT \BANCO_REG|registrador~62_q\;
\BANCO_REG|ALT_INV_registrador~317_q\ <= NOT \BANCO_REG|registrador~317_q\;
\BANCO_REG|ALT_INV_registrador~61_q\ <= NOT \BANCO_REG|registrador~61_q\;
\BANCO_REG|ALT_INV_registrador~316_q\ <= NOT \BANCO_REG|registrador~316_q\;
\BANCO_REG|ALT_INV_registrador~60_q\ <= NOT \BANCO_REG|registrador~60_q\;
\BANCO_REG|ALT_INV_registrador~315_q\ <= NOT \BANCO_REG|registrador~315_q\;
\BANCO_REG|ALT_INV_registrador~59_q\ <= NOT \BANCO_REG|registrador~59_q\;
\BANCO_REG|ALT_INV_registrador~314_q\ <= NOT \BANCO_REG|registrador~314_q\;
\BANCO_REG|ALT_INV_registrador~58_q\ <= NOT \BANCO_REG|registrador~58_q\;
\BANCO_REG|ALT_INV_registrador~313_q\ <= NOT \BANCO_REG|registrador~313_q\;
\BANCO_REG|ALT_INV_registrador~57_q\ <= NOT \BANCO_REG|registrador~57_q\;
\BANCO_REG|ALT_INV_registrador~312_q\ <= NOT \BANCO_REG|registrador~312_q\;
\BANCO_REG|ALT_INV_registrador~56_q\ <= NOT \BANCO_REG|registrador~56_q\;
\BANCO_REG|ALT_INV_registrador~311_q\ <= NOT \BANCO_REG|registrador~311_q\;
\BANCO_REG|ALT_INV_registrador~55_q\ <= NOT \BANCO_REG|registrador~55_q\;
\BANCO_REG|ALT_INV_registrador~310_q\ <= NOT \BANCO_REG|registrador~310_q\;
\BANCO_REG|ALT_INV_registrador~54_q\ <= NOT \BANCO_REG|registrador~54_q\;
\BANCO_REG|ALT_INV_registrador~309_q\ <= NOT \BANCO_REG|registrador~309_q\;
\BANCO_REG|ALT_INV_registrador~53_q\ <= NOT \BANCO_REG|registrador~53_q\;
\BANCO_REG|ALT_INV_registrador~308_q\ <= NOT \BANCO_REG|registrador~308_q\;
\BANCO_REG|ALT_INV_registrador~52_q\ <= NOT \BANCO_REG|registrador~52_q\;
\BANCO_REG|ALT_INV_registrador~307_q\ <= NOT \BANCO_REG|registrador~307_q\;
\BANCO_REG|ALT_INV_registrador~51_q\ <= NOT \BANCO_REG|registrador~51_q\;
\BANCO_REG|ALT_INV_registrador~306_q\ <= NOT \BANCO_REG|registrador~306_q\;
\BANCO_REG|ALT_INV_registrador~50_q\ <= NOT \BANCO_REG|registrador~50_q\;
\BANCO_REG|ALT_INV_registrador~305_q\ <= NOT \BANCO_REG|registrador~305_q\;
\BANCO_REG|ALT_INV_registrador~49_q\ <= NOT \BANCO_REG|registrador~49_q\;
\BANCO_REG|ALT_INV_registrador~304_q\ <= NOT \BANCO_REG|registrador~304_q\;
\BANCO_REG|ALT_INV_registrador~48_q\ <= NOT \BANCO_REG|registrador~48_q\;
\BANCO_REG|ALT_INV_registrador~303_q\ <= NOT \BANCO_REG|registrador~303_q\;
\BANCO_REG|ALT_INV_registrador~47_q\ <= NOT \BANCO_REG|registrador~47_q\;
\ULA1|ALT_INV_Equal1~0_combout\ <= NOT \ULA1|Equal1~0_combout\;
\PC_REG|ALT_INV_DOUT\(30) <= NOT \PC_REG|DOUT\(30);
\PC_REG|ALT_INV_DOUT\(29) <= NOT \PC_REG|DOUT\(29);
\PC_REG|ALT_INV_DOUT\(26) <= NOT \PC_REG|DOUT\(26);
\PC_REG|ALT_INV_DOUT\(25) <= NOT \PC_REG|DOUT\(25);
\PC_REG|ALT_INV_DOUT\(24) <= NOT \PC_REG|DOUT\(24);
\PC_REG|ALT_INV_DOUT\(23) <= NOT \PC_REG|DOUT\(23);
\PC_REG|ALT_INV_DOUT\(22) <= NOT \PC_REG|DOUT\(22);
\PC_REG|ALT_INV_DOUT\(21) <= NOT \PC_REG|DOUT\(21);
\PC_REG|ALT_INV_DOUT\(19) <= NOT \PC_REG|DOUT\(19);
\PC_REG|ALT_INV_DOUT\(17) <= NOT \PC_REG|DOUT\(17);
\PC_REG|ALT_INV_DOUT\(11) <= NOT \PC_REG|DOUT\(11);
\PC_REG|ALT_INV_DOUT\(10) <= NOT \PC_REG|DOUT\(10);
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\BANCO_REG|ALT_INV_registrador~1093_combout\ <= NOT \BANCO_REG|registrador~1093_combout\;
\BANCO_REG|ALT_INV_registrador~1092_combout\ <= NOT \BANCO_REG|registrador~1092_combout\;
\BANCO_REG|ALT_INV_registrador~1091_combout\ <= NOT \BANCO_REG|registrador~1091_combout\;
\BANCO_REG|ALT_INV_registrador~1090_combout\ <= NOT \BANCO_REG|registrador~1090_combout\;
\BANCO_REG|ALT_INV_registrador~1089_combout\ <= NOT \BANCO_REG|registrador~1089_combout\;
\BANCO_REG|ALT_INV_registrador~1088_combout\ <= NOT \BANCO_REG|registrador~1088_combout\;
\BANCO_REG|ALT_INV_registrador~1087_combout\ <= NOT \BANCO_REG|registrador~1087_combout\;
\BANCO_REG|ALT_INV_registrador~1086_combout\ <= NOT \BANCO_REG|registrador~1086_combout\;
\BANCO_REG|ALT_INV_registrador~1085_combout\ <= NOT \BANCO_REG|registrador~1085_combout\;
\BANCO_REG|ALT_INV_registrador~1084_combout\ <= NOT \BANCO_REG|registrador~1084_combout\;
\BANCO_REG|ALT_INV_registrador~1083_combout\ <= NOT \BANCO_REG|registrador~1083_combout\;
\BANCO_REG|ALT_INV_registrador~1082_combout\ <= NOT \BANCO_REG|registrador~1082_combout\;
\BANCO_REG|ALT_INV_registrador~1081_combout\ <= NOT \BANCO_REG|registrador~1081_combout\;
\BANCO_REG|ALT_INV_registrador~1080_combout\ <= NOT \BANCO_REG|registrador~1080_combout\;
\BANCO_REG|ALT_INV_registrador~1079_combout\ <= NOT \BANCO_REG|registrador~1079_combout\;
\BANCO_REG|ALT_INV_registrador~1078_combout\ <= NOT \BANCO_REG|registrador~1078_combout\;
\BANCO_REG|ALT_INV_registrador~1077_combout\ <= NOT \BANCO_REG|registrador~1077_combout\;
\BANCO_REG|ALT_INV_registrador~1076_combout\ <= NOT \BANCO_REG|registrador~1076_combout\;
\BANCO_REG|ALT_INV_registrador~1075_combout\ <= NOT \BANCO_REG|registrador~1075_combout\;
\BANCO_REG|ALT_INV_registrador~1074_combout\ <= NOT \BANCO_REG|registrador~1074_combout\;
\BANCO_REG|ALT_INV_registrador~1073_combout\ <= NOT \BANCO_REG|registrador~1073_combout\;
\BANCO_REG|ALT_INV_registrador~1072_combout\ <= NOT \BANCO_REG|registrador~1072_combout\;
\BANCO_REG|ALT_INV_registrador~1071_combout\ <= NOT \BANCO_REG|registrador~1071_combout\;
\BANCO_REG|ALT_INV_registrador~1070_combout\ <= NOT \BANCO_REG|registrador~1070_combout\;
\BANCO_REG|ALT_INV_registrador~1069_combout\ <= NOT \BANCO_REG|registrador~1069_combout\;
\BANCO_REG|ALT_INV_registrador~1068_combout\ <= NOT \BANCO_REG|registrador~1068_combout\;
\BANCO_REG|ALT_INV_registrador~1067_combout\ <= NOT \BANCO_REG|registrador~1067_combout\;
\BANCO_REG|ALT_INV_registrador~1066_combout\ <= NOT \BANCO_REG|registrador~1066_combout\;
\BANCO_REG|ALT_INV_registrador~1065_combout\ <= NOT \BANCO_REG|registrador~1065_combout\;
\PC_REG|ALT_INV_DOUT[31]~DUPLICATE_q\ <= NOT \PC_REG|DOUT[31]~DUPLICATE_q\;
\PC_REG|ALT_INV_DOUT[28]~DUPLICATE_q\ <= NOT \PC_REG|DOUT[28]~DUPLICATE_q\;
\PC_REG|ALT_INV_DOUT[27]~DUPLICATE_q\ <= NOT \PC_REG|DOUT[27]~DUPLICATE_q\;
\PC_REG|ALT_INV_DOUT[20]~DUPLICATE_q\ <= NOT \PC_REG|DOUT[20]~DUPLICATE_q\;
\PC_REG|ALT_INV_DOUT[18]~DUPLICATE_q\ <= NOT \PC_REG|DOUT[18]~DUPLICATE_q\;
\PC_REG|ALT_INV_DOUT[16]~DUPLICATE_q\ <= NOT \PC_REG|DOUT[16]~DUPLICATE_q\;
\PC_REG|ALT_INV_DOUT[15]~DUPLICATE_q\ <= NOT \PC_REG|DOUT[15]~DUPLICATE_q\;
\PC_REG|ALT_INV_DOUT[14]~DUPLICATE_q\ <= NOT \PC_REG|DOUT[14]~DUPLICATE_q\;
\PC_REG|ALT_INV_DOUT[13]~DUPLICATE_q\ <= NOT \PC_REG|DOUT[13]~DUPLICATE_q\;
\PC_REG|ALT_INV_DOUT[12]~DUPLICATE_q\ <= NOT \PC_REG|DOUT[12]~DUPLICATE_q\;
\PC_REG|ALT_INV_DOUT[9]~DUPLICATE_q\ <= NOT \PC_REG|DOUT[9]~DUPLICATE_q\;
\PC_REG|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \PC_REG|DOUT[8]~DUPLICATE_q\;
\PC_REG|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \PC_REG|DOUT[3]~DUPLICATE_q\;
\PC_REG|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \PC_REG|DOUT[4]~DUPLICATE_q\;
\PC_REG|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \PC_REG|DOUT[6]~DUPLICATE_q\;
\PC_REG|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \PC_REG|DOUT[7]~DUPLICATE_q\;
\PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \PC_REG|DOUT[2]~DUPLICATE_q\;
\ALT_INV_Ctrl_write~input_o\ <= NOT \Ctrl_write~input_o\;
\ALT_INV_Sel_ULA[0]~input_o\ <= NOT \Sel_ULA[0]~input_o\;
\ALT_INV_Sel_ULA[1]~input_o\ <= NOT \Sel_ULA[1]~input_o\;

-- Location: IOOBUF_X54_Y21_N22
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

-- Location: IOOBUF_X0_Y21_N5
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

-- Location: IOOBUF_X46_Y45_N93
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

-- Location: IOOBUF_X48_Y0_N59
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

-- Location: IOOBUF_X18_Y45_N36
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

-- Location: IOOBUF_X46_Y0_N36
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

-- Location: IOOBUF_X54_Y19_N56
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

-- Location: IOOBUF_X46_Y0_N19
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

-- Location: IOOBUF_X34_Y45_N2
\Funct[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Funct(2));

-- Location: IOOBUF_X52_Y0_N36
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

-- Location: IOOBUF_X54_Y16_N22
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

-- Location: IOOBUF_X34_Y45_N53
\Funct[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_Funct(5));

-- Location: IOOBUF_X14_Y45_N2
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

-- Location: IOOBUF_X11_Y0_N2
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

-- Location: IOOBUF_X19_Y0_N36
\ULAA_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[2]~4_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(2));

-- Location: IOOBUF_X8_Y45_N76
\ULAA_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[3]~6_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(3));

-- Location: IOOBUF_X19_Y0_N53
\ULAA_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[4]~7_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(4));

-- Location: IOOBUF_X54_Y15_N56
\ULAA_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[5]~8_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(5));

-- Location: IOOBUF_X38_Y0_N36
\ULAA_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[6]~9_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(6));

-- Location: IOOBUF_X0_Y19_N39
\ULAA_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[7]~10_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(7));

-- Location: IOOBUF_X14_Y0_N19
\ULAA_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[8]~11_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(8));

-- Location: IOOBUF_X29_Y0_N19
\ULAA_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[9]~12_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(9));

-- Location: IOOBUF_X40_Y0_N42
\ULAA_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[10]~13_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(10));

-- Location: IOOBUF_X24_Y0_N53
\ULAA_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[11]~14_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(11));

-- Location: IOOBUF_X14_Y0_N36
\ULAA_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[12]~15_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(12));

-- Location: IOOBUF_X34_Y0_N53
\ULAA_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[13]~16_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(13));

-- Location: IOOBUF_X36_Y0_N53
\ULAA_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[14]~17_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(14));

-- Location: IOOBUF_X38_Y0_N19
\ULAA_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[15]~18_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(15));

-- Location: IOOBUF_X19_Y0_N19
\ULAA_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[16]~19_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(16));

-- Location: IOOBUF_X33_Y0_N59
\ULAA_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[17]~20_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(17));

-- Location: IOOBUF_X34_Y0_N2
\ULAA_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[18]~21_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(18));

-- Location: IOOBUF_X40_Y0_N76
\ULAA_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[19]~22_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(19));

-- Location: IOOBUF_X40_Y0_N59
\ULAA_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[20]~23_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(20));

-- Location: IOOBUF_X50_Y0_N19
\ULAA_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[21]~24_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(21));

-- Location: IOOBUF_X14_Y0_N53
\ULAA_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[22]~25_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(22));

-- Location: IOOBUF_X24_Y0_N19
\ULAA_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[23]~26_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(23));

-- Location: IOOBUF_X40_Y0_N93
\ULAA_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[24]~27_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(24));

-- Location: IOOBUF_X29_Y0_N53
\ULAA_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[25]~28_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(25));

-- Location: IOOBUF_X29_Y0_N36
\ULAA_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[26]~29_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(26));

-- Location: IOOBUF_X29_Y0_N2
\ULAA_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[27]~30_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(27));

-- Location: IOOBUF_X51_Y0_N19
\ULAA_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[28]~31_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(28));

-- Location: IOOBUF_X33_Y0_N42
\ULAA_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[29]~32_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(29));

-- Location: IOOBUF_X16_Y0_N76
\ULAA_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[30]~33_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(30));

-- Location: IOOBUF_X0_Y19_N5
\ULAA_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[31]~34_combout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(31));

-- Location: IOOBUF_X0_Y18_N79
\RS_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(0));

-- Location: IOOBUF_X11_Y0_N19
\RS_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(1));

-- Location: IOOBUF_X25_Y0_N19
\RS_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[2]~3_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(2));

-- Location: IOOBUF_X10_Y45_N2
\RS_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[3]~2_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(3));

-- Location: IOOBUF_X18_Y0_N2
\RS_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(4));

-- Location: IOOBUF_X16_Y45_N42
\RS_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(5));

-- Location: IOOBUF_X43_Y0_N36
\RS_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(6));

-- Location: IOOBUF_X16_Y0_N42
\RS_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(7));

-- Location: IOOBUF_X43_Y0_N53
\RS_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[8]~8_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(8));

-- Location: IOOBUF_X25_Y0_N53
\RS_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[9]~9_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(9));

-- Location: IOOBUF_X12_Y0_N19
\RS_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[10]~10_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(10));

-- Location: IOOBUF_X24_Y0_N2
\RS_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[11]~11_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(11));

-- Location: IOOBUF_X16_Y0_N93
\RS_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[12]~12_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(12));

-- Location: IOOBUF_X54_Y14_N62
\RS_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[13]~13_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(13));

-- Location: IOOBUF_X24_Y0_N36
\RS_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[14]~14_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(14));

-- Location: IOOBUF_X18_Y0_N53
\RS_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[15]~15_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(15));

-- Location: IOOBUF_X34_Y0_N19
\RS_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[16]~16_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(16));

-- Location: IOOBUF_X54_Y14_N45
\RS_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[17]~17_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(17));

-- Location: IOOBUF_X44_Y0_N2
\RS_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[18]~18_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(18));

-- Location: IOOBUF_X23_Y0_N93
\RS_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[19]~19_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(19));

-- Location: IOOBUF_X36_Y0_N2
\RS_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[20]~20_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(20));

-- Location: IOOBUF_X50_Y0_N53
\RS_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[21]~21_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(21));

-- Location: IOOBUF_X51_Y0_N2
\RS_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[22]~22_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(22));

-- Location: IOOBUF_X46_Y0_N53
\RS_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[23]~23_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(23));

-- Location: IOOBUF_X22_Y0_N19
\RS_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[24]~24_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(24));

-- Location: IOOBUF_X23_Y0_N42
\RS_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[25]~25_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(25));

-- Location: IOOBUF_X12_Y0_N36
\RS_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[26]~26_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(26));

-- Location: IOOBUF_X22_Y0_N36
\RS_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[27]~27_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(27));

-- Location: IOOBUF_X36_Y0_N36
\RS_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[28]~28_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(28));

-- Location: IOOBUF_X23_Y0_N59
\RS_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[29]~29_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(29));

-- Location: IOOBUF_X22_Y0_N53
\RS_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[30]~30_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(30));

-- Location: IOOBUF_X38_Y0_N53
\RS_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[31]~31_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(31));

-- Location: IOOBUF_X32_Y45_N93
\RT_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(0));

-- Location: IOOBUF_X40_Y45_N76
\RT_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(1));

-- Location: IOOBUF_X43_Y0_N2
\RT_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(2));

-- Location: IOOBUF_X32_Y45_N76
\RT_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(3));

-- Location: IOOBUF_X32_Y45_N42
\RT_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(4));

-- Location: IOOBUF_X20_Y45_N2
\RT_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(5));

-- Location: IOOBUF_X10_Y45_N53
\RT_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(6));

-- Location: IOOBUF_X44_Y45_N2
\RT_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(7));

-- Location: IOOBUF_X50_Y45_N36
\RT_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(8));

-- Location: IOOBUF_X18_Y45_N19
\RT_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(9));

-- Location: IOOBUF_X51_Y0_N53
\RT_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(10));

-- Location: IOOBUF_X44_Y45_N19
\RT_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(11));

-- Location: IOOBUF_X12_Y45_N36
\RT_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(12));

-- Location: IOOBUF_X42_Y45_N19
\RT_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(13));

-- Location: IOOBUF_X22_Y45_N53
\RT_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(14));

-- Location: IOOBUF_X54_Y16_N5
\RT_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(15));

-- Location: IOOBUF_X40_Y45_N93
\RT_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(16));

-- Location: IOOBUF_X46_Y0_N2
\RT_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(17));

-- Location: IOOBUF_X10_Y45_N19
\RT_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(18));

-- Location: IOOBUF_X38_Y45_N19
\RT_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(19));

-- Location: IOOBUF_X0_Y21_N22
\RT_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(20));

-- Location: IOOBUF_X52_Y0_N2
\RT_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(21));

-- Location: IOOBUF_X38_Y45_N36
\RT_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(22));

-- Location: IOOBUF_X46_Y45_N42
\RT_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(23));

-- Location: IOOBUF_X43_Y0_N19
\RT_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(24));

-- Location: IOOBUF_X54_Y20_N39
\RT_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(25));

-- Location: IOOBUF_X54_Y14_N79
\RT_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(26));

-- Location: IOOBUF_X52_Y45_N53
\RT_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(27));

-- Location: IOOBUF_X20_Y45_N19
\RT_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(28));

-- Location: IOOBUF_X52_Y0_N19
\RT_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(29));

-- Location: IOOBUF_X44_Y45_N36
\RT_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(30));

-- Location: IOOBUF_X38_Y45_N2
\RT_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(31));

-- Location: IOOBUF_X18_Y0_N19
\Rs_End[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Rs_End(0));

-- Location: IOOBUF_X0_Y21_N56
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

-- Location: IOOBUF_X36_Y45_N53
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

-- Location: IOOBUF_X32_Y45_N59
\Rs_End[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_Rs_End(3));

-- Location: IOOBUF_X43_Y45_N19
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

-- Location: IOOBUF_X54_Y16_N56
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

-- Location: IOOBUF_X42_Y45_N36
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

-- Location: IOOBUF_X54_Y19_N22
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

-- Location: IOOBUF_X42_Y45_N2
\Rt_End[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_Rt_End(3));

-- Location: IOOBUF_X44_Y0_N19
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

-- Location: IOOBUF_X54_Y20_N5
\Rd_End[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rd_End(0));

-- Location: IOOBUF_X50_Y45_N19
\Rd_End[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rd_End(1));

-- Location: IOOBUF_X48_Y45_N2
\Rd_End[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rd_End(2));

-- Location: IOOBUF_X34_Y45_N36
\Rd_End[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_Rd_End(3));

-- Location: IOOBUF_X54_Y19_N39
\Rd_End[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rd_End(4));

-- Location: IOOBUF_X36_Y0_N19
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X50_Y45_N53
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X14_Y0_N2
\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X16_Y45_N93
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X0_Y18_N96
\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(4),
	devoe => ww_devoe,
	o => ww_PC_OUT(4));

-- Location: IOOBUF_X14_Y45_N53
\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(5),
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X22_Y45_N36
\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X44_Y0_N53
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X18_Y45_N2
\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(8),
	devoe => ww_devoe,
	o => ww_PC_OUT(8));

-- Location: IOOBUF_X33_Y0_N93
\PC_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(9),
	devoe => ww_devoe,
	o => ww_PC_OUT(9));

-- Location: IOOBUF_X0_Y18_N45
\PC_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(10),
	devoe => ww_devoe,
	o => ww_PC_OUT(10));

-- Location: IOOBUF_X10_Y0_N93
\PC_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(11),
	devoe => ww_devoe,
	o => ww_PC_OUT(11));

-- Location: IOOBUF_X34_Y0_N36
\PC_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(12),
	devoe => ww_devoe,
	o => ww_PC_OUT(12));

-- Location: IOOBUF_X25_Y0_N2
\PC_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(13),
	devoe => ww_devoe,
	o => ww_PC_OUT(13));

-- Location: IOOBUF_X10_Y0_N76
\PC_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(14),
	devoe => ww_devoe,
	o => ww_PC_OUT(14));

-- Location: IOOBUF_X11_Y0_N53
\PC_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(15),
	devoe => ww_devoe,
	o => ww_PC_OUT(15));

-- Location: IOOBUF_X25_Y0_N36
\PC_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(16),
	devoe => ww_devoe,
	o => ww_PC_OUT(16));

-- Location: IOOBUF_X10_Y0_N42
\PC_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(17),
	devoe => ww_devoe,
	o => ww_PC_OUT(17));

-- Location: IOOBUF_X16_Y45_N76
\PC_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(18),
	devoe => ww_devoe,
	o => ww_PC_OUT(18));

-- Location: IOOBUF_X11_Y0_N36
\PC_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(19),
	devoe => ww_devoe,
	o => ww_PC_OUT(19));

-- Location: IOOBUF_X12_Y0_N2
\PC_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(20),
	devoe => ww_devoe,
	o => ww_PC_OUT(20));

-- Location: IOOBUF_X0_Y19_N56
\PC_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(21),
	devoe => ww_devoe,
	o => ww_PC_OUT(21));

-- Location: IOOBUF_X10_Y0_N59
\PC_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(22),
	devoe => ww_devoe,
	o => ww_PC_OUT(22));

-- Location: IOOBUF_X19_Y0_N2
\PC_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(23),
	devoe => ww_devoe,
	o => ww_PC_OUT(23));

-- Location: IOOBUF_X48_Y0_N93
\PC_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(24),
	devoe => ww_devoe,
	o => ww_PC_OUT(24));

-- Location: IOOBUF_X44_Y0_N36
\PC_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(25),
	devoe => ww_devoe,
	o => ww_PC_OUT(25));

-- Location: IOOBUF_X12_Y0_N53
\PC_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(26),
	devoe => ww_devoe,
	o => ww_PC_OUT(26));

-- Location: IOOBUF_X38_Y0_N2
\PC_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(27),
	devoe => ww_devoe,
	o => ww_PC_OUT(27));

-- Location: IOOBUF_X16_Y0_N59
\PC_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(28),
	devoe => ww_devoe,
	o => ww_PC_OUT(28));

-- Location: IOOBUF_X14_Y45_N19
\PC_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(29),
	devoe => ww_devoe,
	o => ww_PC_OUT(29));

-- Location: IOOBUF_X33_Y0_N76
\PC_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(30),
	devoe => ww_devoe,
	o => ww_PC_OUT(30));

-- Location: IOOBUF_X18_Y45_N53
\PC_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(31),
	devoe => ww_devoe,
	o => ww_PC_OUT(31));

-- Location: IOIBUF_X22_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
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

-- Location: FF_X16_Y6_N16
\PC_REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \PC_REG|DOUT[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(2));

-- Location: LABCELL_X16_Y6_N15
\PC_REG|DOUT[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_REG|DOUT[2]~0_combout\ = !\PC_REG|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_REG|ALT_INV_DOUT\(2),
	combout => \PC_REG|DOUT[2]~0_combout\);

-- Location: FF_X16_Y6_N17
\PC_REG|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \PC_REG|DOUT[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y6_N30
\Somador|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~17_sumout\ = SUM(( \PC_REG|DOUT[2]~DUPLICATE_q\ ) + ( \PC_REG|DOUT\(3) ) + ( !VCC ))
-- \Somador|Add0~18\ = CARRY(( \PC_REG|DOUT[2]~DUPLICATE_q\ ) + ( \PC_REG|DOUT\(3) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \PC_REG|ALT_INV_DOUT\(3),
	cin => GND,
	sumout => \Somador|Add0~17_sumout\,
	cout => \Somador|Add0~18\);

-- Location: FF_X16_Y6_N31
\PC_REG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(3));

-- Location: LABCELL_X16_Y6_N33
\Somador|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~13_sumout\ = SUM(( \PC_REG|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~18\ ))
-- \Somador|Add0~14\ = CARRY(( \PC_REG|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_REG|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \Somador|Add0~18\,
	sumout => \Somador|Add0~13_sumout\,
	cout => \Somador|Add0~14\);

-- Location: FF_X16_Y6_N35
\PC_REG|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y6_N36
\Somador|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~9_sumout\ = SUM(( \PC_REG|DOUT\(5) ) + ( GND ) + ( \Somador|Add0~14\ ))
-- \Somador|Add0~10\ = CARRY(( \PC_REG|DOUT\(5) ) + ( GND ) + ( \Somador|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT\(5),
	cin => \Somador|Add0~14\,
	sumout => \Somador|Add0~9_sumout\,
	cout => \Somador|Add0~10\);

-- Location: FF_X16_Y6_N38
\PC_REG|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(5));

-- Location: FF_X16_Y6_N43
\PC_REG|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(7));

-- Location: LABCELL_X16_Y6_N39
\Somador|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~5_sumout\ = SUM(( \PC_REG|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~10\ ))
-- \Somador|Add0~6\ = CARRY(( \PC_REG|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \Somador|Add0~10\,
	sumout => \Somador|Add0~5_sumout\,
	cout => \Somador|Add0~6\);

-- Location: FF_X16_Y6_N41
\PC_REG|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y6_N42
\Somador|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~1_sumout\ = SUM(( \PC_REG|DOUT\(7) ) + ( GND ) + ( \Somador|Add0~6\ ))
-- \Somador|Add0~2\ = CARRY(( \PC_REG|DOUT\(7) ) + ( GND ) + ( \Somador|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_REG|ALT_INV_DOUT\(7),
	cin => \Somador|Add0~6\,
	sumout => \Somador|Add0~1_sumout\,
	cout => \Somador|Add0~2\);

-- Location: FF_X16_Y6_N44
\PC_REG|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT[7]~DUPLICATE_q\);

-- Location: FF_X16_Y6_N40
\PC_REG|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(6));

-- Location: FF_X16_Y6_N32
\PC_REG|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y6_N12
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( !\PC_REG|DOUT[3]~DUPLICATE_q\ & ( (!\PC_REG|DOUT\(5) & (!\PC_REG|DOUT[7]~DUPLICATE_q\ & (!\PC_REG|DOUT[4]~DUPLICATE_q\ & !\PC_REG|DOUT\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_REG|ALT_INV_DOUT\(5),
	datab => \PC_REG|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \PC_REG|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \PC_REG|ALT_INV_DOUT\(6),
	dataf => \PC_REG|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM1|memROM~0_combout\);

-- Location: LABCELL_X17_Y4_N27
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( \PC_REG|DOUT[2]~DUPLICATE_q\ & ( \ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X16_Y6_N6
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( !\PC_REG|DOUT\(6) & ( !\PC_REG|DOUT\(3) & ( (!\PC_REG|DOUT\(5) & (!\PC_REG|DOUT[2]~DUPLICATE_q\ & (!\PC_REG|DOUT[4]~DUPLICATE_q\ & !\PC_REG|DOUT[7]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_REG|ALT_INV_DOUT\(5),
	datab => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \PC_REG|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \PC_REG|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \PC_REG|ALT_INV_DOUT\(6),
	dataf => \PC_REG|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~2_combout\);

-- Location: IOIBUF_X18_Y0_N35
\Sel_ULA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel_ULA(0),
	o => \Sel_ULA[0]~input_o\);

-- Location: IOIBUF_X23_Y0_N75
\Sel_ULA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel_ULA(1),
	o => \Sel_ULA[1]~input_o\);

-- Location: LABCELL_X14_Y6_N42
\ULA1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Equal1~0_combout\ = ( \Sel_ULA[0]~input_o\ & ( !\Sel_ULA[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Sel_ULA[0]~input_o\,
	dataf => \ALT_INV_Sel_ULA[1]~input_o\,
	combout => \ULA1|Equal1~0_combout\);

-- Location: LABCELL_X14_Y6_N36
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

-- Location: IOIBUF_X16_Y45_N58
\Ctrl_write~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ctrl_write,
	o => \Ctrl_write~input_o\);

-- Location: LABCELL_X16_Y7_N18
\BANCO_REG|registrador~1095\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1095_combout\ = ( \ROM1|memROM~0_combout\ & ( \Ctrl_write~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Ctrl_write~input_o\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1095_combout\);

-- Location: FF_X17_Y6_N5
\BANCO_REG|registrador~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~1_sumout\,
	asdata => \ULA1|saida[0]~0_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~294_q\);

-- Location: LABCELL_X14_Y6_N30
\BANCO_REG|saidaA[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[0]~0_combout\ = ( \BANCO_REG|registrador~294_q\ & ( (\ROM1|memROM~0_combout\ & \PC_REG|DOUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~294_q\,
	combout => \BANCO_REG|saidaA[0]~0_combout\);

-- Location: LABCELL_X14_Y6_N33
\ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~0_combout\ = ( \BANCO_REG|saidaA[0]~0_combout\ & ( \ROM1|memROM~0_combout\ ) ) # ( !\BANCO_REG|saidaA[0]~0_combout\ & ( (\ROM1|memROM~0_combout\ & ((!\Sel_ULA[1]~input_o\) # (!\Sel_ULA[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \ALT_INV_Sel_ULA[0]~input_o\,
	dataf => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	combout => \ULA1|saida[0]~0_combout\);

-- Location: LABCELL_X16_Y7_N39
\BANCO_REG|registrador~1094\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1094_combout\ = ( !\ROM1|memROM~0_combout\ & ( \Ctrl_write~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Ctrl_write~input_o\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1094_combout\);

-- Location: FF_X14_Y6_N37
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
	ena => \BANCO_REG|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~38_q\);

-- Location: LABCELL_X16_Y6_N0
\BANCO_REG|registrador~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1062_combout\ = ( \ROM1|memROM~0_combout\ & ( (\PC_REG|DOUT[2]~DUPLICATE_q\ & \BANCO_REG|registrador~294_q\) ) ) # ( !\ROM1|memROM~0_combout\ & ( \BANCO_REG|registrador~38_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \BANCO_REG|ALT_INV_registrador~38_q\,
	datad => \BANCO_REG|ALT_INV_registrador~294_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1062_combout\);

-- Location: LABCELL_X17_Y6_N0
\ULA1|Add0~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~130_cout\ = CARRY(( (!\Sel_ULA[0]~input_o\) # (\Sel_ULA[1]~input_o\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \ALT_INV_Sel_ULA[0]~input_o\,
	cin => GND,
	cout => \ULA1|Add0~130_cout\);

-- Location: LABCELL_X17_Y6_N3
\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( (\BANCO_REG|registrador~1062_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ $ (\ROM1|memROM~0_combout\) ) + ( \ULA1|Add0~130_cout\ ))
-- \ULA1|Add0~2\ = CARRY(( (\BANCO_REG|registrador~1062_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ $ (\ROM1|memROM~0_combout\) ) + ( \ULA1|Add0~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111000011110000000000000000000000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ULA1|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	cin => \ULA1|Add0~130_cout\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

-- Location: LABCELL_X14_Y6_N39
\ULA1|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~1_combout\ = ( \ULA1|saida[0]~0_combout\ & ( (\Sel_ULA[1]~input_o\) # (\ULA1|Add0~1_sumout\) ) ) # ( !\ULA1|saida[0]~0_combout\ & ( (\ULA1|Add0~1_sumout\ & !\Sel_ULA[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|ALT_INV_Add0~1_sumout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	dataf => \ULA1|ALT_INV_saida[0]~0_combout\,
	combout => \ULA1|saida[0]~1_combout\);

-- Location: LABCELL_X14_Y6_N6
\ULA1|Add0~5_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_wirecell_combout\ = ( !\ULA1|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~5_sumout\,
	combout => \ULA1|Add0~5_wirecell_combout\);

-- Location: FF_X17_Y6_N8
\BANCO_REG|registrador~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~5_sumout\,
	asdata => \ULA1|saida[1]~2_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~295_q\);

-- Location: LABCELL_X14_Y6_N51
\BANCO_REG|saidaA[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[1]~1_combout\ = ( \BANCO_REG|registrador~295_q\ & ( \ROM1|memROM~0_combout\ ) ) # ( !\BANCO_REG|registrador~295_q\ & ( (\ROM1|memROM~0_combout\ & !\PC_REG|DOUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~295_q\,
	combout => \BANCO_REG|saidaA[1]~1_combout\);

-- Location: LABCELL_X14_Y6_N48
\ULA1|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~2_combout\ = ( \BANCO_REG|saidaA[1]~1_combout\ & ( \ROM1|memROM~0_combout\ ) ) # ( !\BANCO_REG|saidaA[1]~1_combout\ & ( (\ROM1|memROM~0_combout\ & ((!\Sel_ULA[0]~input_o\) # (!\Sel_ULA[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ALT_INV_Sel_ULA[0]~input_o\,
	datad => \ALT_INV_Sel_ULA[1]~input_o\,
	dataf => \BANCO_REG|ALT_INV_saidaA[1]~1_combout\,
	combout => \ULA1|saida[1]~2_combout\);

-- Location: LABCELL_X14_Y6_N9
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

-- Location: FF_X14_Y6_N7
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
	ena => \BANCO_REG|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~39_q\);

-- Location: LABCELL_X16_Y6_N27
\BANCO_REG|registrador~1063\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1063_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\PC_REG|DOUT[2]~DUPLICATE_q\) # (\BANCO_REG|registrador~295_q\) ) ) # ( !\ROM1|memROM~0_combout\ & ( !\BANCO_REG|registrador~39_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \BANCO_REG|ALT_INV_registrador~39_q\,
	datad => \BANCO_REG|ALT_INV_registrador~295_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1063_combout\);

-- Location: LABCELL_X17_Y6_N6
\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( (\BANCO_REG|registrador~1063_combout\ & ((\ROM1|memROM~2_combout\) # (\ROM1|memROM~0_combout\))) ) + ( !\ROM1|memROM~0_combout\ $ (\ULA1|Equal1~0_combout\) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( (\BANCO_REG|registrador~1063_combout\ & ((\ROM1|memROM~2_combout\) # (\ROM1|memROM~0_combout\))) ) + ( !\ROM1|memROM~0_combout\ $ (\ULA1|Equal1~0_combout\) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011001100110011000000000000000000000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ULA1|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1063_combout\,
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

-- Location: LABCELL_X14_Y6_N24
\ULA1|saida[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~3_combout\ = (!\Sel_ULA[1]~input_o\ & (\ULA1|Add0~5_sumout\)) # (\Sel_ULA[1]~input_o\ & ((\ULA1|saida[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~5_sumout\,
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \ULA1|ALT_INV_saida[1]~2_combout\,
	combout => \ULA1|saida[1]~3_combout\);

-- Location: LABCELL_X16_Y6_N3
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

-- Location: LABCELL_X16_Y4_N36
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X16_Y6_N5
\BANCO_REG|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~40feeder_combout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~40_q\);

-- Location: FF_X17_Y6_N11
\BANCO_REG|registrador~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~9_sumout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~296_q\);

-- Location: LABCELL_X16_Y6_N18
\BANCO_REG|registrador~1065\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1065_combout\ = ( \ROM1|memROM~0_combout\ & ( (\PC_REG|DOUT[2]~DUPLICATE_q\ & \BANCO_REG|registrador~296_q\) ) ) # ( !\ROM1|memROM~0_combout\ & ( \BANCO_REG|registrador~40_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \BANCO_REG|ALT_INV_registrador~40_q\,
	datad => \BANCO_REG|ALT_INV_registrador~296_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1065_combout\);

-- Location: LABCELL_X17_Y6_N9
\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( (\BANCO_REG|registrador~1065_combout\ & ((\ROM1|memROM~2_combout\) # (\ROM1|memROM~0_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( (\BANCO_REG|registrador~1065_combout\ & ((\ROM1|memROM~2_combout\) # (\ROM1|memROM~0_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ULA1|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1065_combout\,
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

-- Location: LABCELL_X16_Y4_N51
\ULA1|saida[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~4_combout\ = ( \ULA1|Add0~9_sumout\ & ( !\Sel_ULA[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	dataf => \ULA1|ALT_INV_Add0~9_sumout\,
	combout => \ULA1|saida[2]~4_combout\);

-- Location: LABCELL_X14_Y6_N27
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

-- Location: LABCELL_X14_Y6_N12
\ULA1|saida[3]~5_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~5_wirecell_combout\ = !\ULA1|saida[3]~5_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[3]~5_combout\,
	combout => \ULA1|saida[3]~5_wirecell_combout\);

-- Location: FF_X14_Y6_N28
\BANCO_REG|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~13_wirecell_combout\,
	asdata => \ULA1|saida[3]~5_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~41_q\);

-- Location: LABCELL_X16_Y6_N21
\BANCO_REG|registrador~1064\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1064_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\PC_REG|DOUT[2]~DUPLICATE_q\) # (\BANCO_REG|registrador~297_q\) ) ) # ( !\ROM1|memROM~0_combout\ & ( !\BANCO_REG|registrador~41_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \BANCO_REG|ALT_INV_registrador~297_q\,
	datad => \BANCO_REG|ALT_INV_registrador~41_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1064_combout\);

-- Location: LABCELL_X17_Y6_N12
\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( (\BANCO_REG|registrador~1064_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ $ (\ROM1|memROM~0_combout\) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( (\BANCO_REG|registrador~1064_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ $ (\ROM1|memROM~0_combout\) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1064_combout\,
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

-- Location: FF_X17_Y6_N14
\BANCO_REG|registrador~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~13_sumout\,
	asdata => \ULA1|saida[3]~5_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~297_q\);

-- Location: LABCELL_X14_Y6_N57
\BANCO_REG|saidaA[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[3]~2_combout\ = ( \BANCO_REG|registrador~297_q\ & ( \ROM1|memROM~0_combout\ ) ) # ( !\BANCO_REG|registrador~297_q\ & ( (\ROM1|memROM~0_combout\ & !\PC_REG|DOUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~297_q\,
	combout => \BANCO_REG|saidaA[3]~2_combout\);

-- Location: LABCELL_X14_Y6_N54
\ULA1|saida[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~5_combout\ = ( \Sel_ULA[1]~input_o\ & ( (\ROM1|memROM~0_combout\ & ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[3]~2_combout\))) ) ) # ( !\Sel_ULA[1]~input_o\ & ( \ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010000010101010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ALT_INV_Sel_ULA[0]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[3]~2_combout\,
	dataf => \ALT_INV_Sel_ULA[1]~input_o\,
	combout => \ULA1|saida[3]~5_combout\);

-- Location: LABCELL_X14_Y6_N15
\ULA1|saida[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~6_combout\ = ( \Sel_ULA[1]~input_o\ & ( \ULA1|saida[3]~5_combout\ ) ) # ( !\Sel_ULA[1]~input_o\ & ( \ULA1|Add0~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[3]~5_combout\,
	datac => \ULA1|ALT_INV_Add0~13_sumout\,
	dataf => \ALT_INV_Sel_ULA[1]~input_o\,
	combout => \ULA1|saida[3]~6_combout\);

-- Location: FF_X17_Y6_N16
\BANCO_REG|registrador~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~298_q\);

-- Location: LABCELL_X16_Y4_N3
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

-- Location: FF_X16_Y4_N5
\BANCO_REG|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~42feeder_combout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~42_q\);

-- Location: LABCELL_X16_Y4_N48
\BANCO_REG|registrador~1066\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1066_combout\ = ( \ROM1|memROM~0_combout\ & ( (\BANCO_REG|registrador~298_q\ & \PC_REG|DOUT[2]~DUPLICATE_q\) ) ) # ( !\ROM1|memROM~0_combout\ & ( \BANCO_REG|registrador~42_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCO_REG|ALT_INV_registrador~298_q\,
	datac => \BANCO_REG|ALT_INV_registrador~42_q\,
	datad => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1066_combout\);

-- Location: LABCELL_X17_Y6_N15
\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( (\BANCO_REG|registrador~1066_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( (\BANCO_REG|registrador~1066_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1066_combout\,
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

-- Location: LABCELL_X16_Y4_N57
\ULA1|saida[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~7_combout\ = ( \ULA1|Add0~17_sumout\ & ( !\Sel_ULA[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	dataf => \ULA1|ALT_INV_Add0~17_sumout\,
	combout => \ULA1|saida[4]~7_combout\);

-- Location: LABCELL_X16_Y7_N45
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

-- Location: FF_X16_Y7_N47
\BANCO_REG|registrador~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~299feeder_combout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~299_q\);

-- Location: LABCELL_X16_Y7_N51
\ULA1|Add0~21_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_wirecell_combout\ = ( !\ULA1|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~21_sumout\,
	combout => \ULA1|Add0~21_wirecell_combout\);

-- Location: FF_X16_Y7_N53
\BANCO_REG|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~21_wirecell_combout\,
	asdata => VCC,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~43_q\);

-- Location: LABCELL_X16_Y7_N12
\BANCO_REG|registrador~1067\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1067_combout\ = ( \ROM1|memROM~0_combout\ & ( (\BANCO_REG|registrador~299_q\ & \PC_REG|DOUT\(2)) ) ) # ( !\ROM1|memROM~0_combout\ & ( !\BANCO_REG|registrador~43_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCO_REG|ALT_INV_registrador~299_q\,
	datac => \BANCO_REG|ALT_INV_registrador~43_q\,
	datad => \PC_REG|ALT_INV_DOUT\(2),
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1067_combout\);

-- Location: LABCELL_X17_Y6_N18
\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( (\BANCO_REG|registrador~1067_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( (\BANCO_REG|registrador~1067_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ULA1|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1067_combout\,
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

-- Location: LABCELL_X16_Y7_N3
\ULA1|saida[5]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~8_combout\ = ( !\Sel_ULA[1]~input_o\ & ( \ULA1|Add0~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA1|ALT_INV_Add0~21_sumout\,
	dataf => \ALT_INV_Sel_ULA[1]~input_o\,
	combout => \ULA1|saida[5]~8_combout\);

-- Location: MLABCELL_X18_Y6_N48
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

-- Location: FF_X18_Y6_N50
\BANCO_REG|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~44feeder_combout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~44_q\);

-- Location: FF_X17_Y6_N22
\BANCO_REG|registrador~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~300_q\);

-- Location: MLABCELL_X18_Y6_N27
\BANCO_REG|registrador~1068\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1068_combout\ = ( \ROM1|memROM~0_combout\ & ( (\PC_REG|DOUT[2]~DUPLICATE_q\ & \BANCO_REG|registrador~300_q\) ) ) # ( !\ROM1|memROM~0_combout\ & ( \BANCO_REG|registrador~44_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~44_q\,
	datac => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \BANCO_REG|ALT_INV_registrador~300_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1068_combout\);

-- Location: LABCELL_X17_Y6_N21
\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( (\BANCO_REG|registrador~1068_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( (\BANCO_REG|registrador~1068_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ULA1|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1068_combout\,
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

-- Location: MLABCELL_X18_Y6_N51
\ULA1|saida[6]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~9_combout\ = ( !\Sel_ULA[1]~input_o\ & ( \ULA1|Add0~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|ALT_INV_Add0~25_sumout\,
	dataf => \ALT_INV_Sel_ULA[1]~input_o\,
	combout => \ULA1|saida[6]~9_combout\);

-- Location: FF_X17_Y6_N26
\BANCO_REG|registrador~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~301_q\);

-- Location: LABCELL_X16_Y7_N54
\ULA1|Add0~29_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_wirecell_combout\ = ( !\ULA1|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~29_sumout\,
	combout => \ULA1|Add0~29_wirecell_combout\);

-- Location: FF_X16_Y7_N56
\BANCO_REG|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~29_wirecell_combout\,
	asdata => VCC,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~45_q\);

-- Location: LABCELL_X16_Y6_N24
\BANCO_REG|registrador~1069\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1069_combout\ = ( \ROM1|memROM~0_combout\ & ( (\PC_REG|DOUT[2]~DUPLICATE_q\ & \BANCO_REG|registrador~301_q\) ) ) # ( !\ROM1|memROM~0_combout\ & ( !\BANCO_REG|registrador~45_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \BANCO_REG|ALT_INV_registrador~301_q\,
	datad => \BANCO_REG|ALT_INV_registrador~45_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1069_combout\);

-- Location: LABCELL_X17_Y6_N24
\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( (\BANCO_REG|registrador~1069_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~26\ ))
-- \ULA1|Add0~30\ = CARRY(( (\BANCO_REG|registrador~1069_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1069_combout\,
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\,
	cout => \ULA1|Add0~30\);

-- Location: LABCELL_X16_Y7_N15
\ULA1|saida[7]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~10_combout\ = ( !\Sel_ULA[1]~input_o\ & ( \ULA1|Add0~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA1|ALT_INV_Add0~29_sumout\,
	dataf => \ALT_INV_Sel_ULA[1]~input_o\,
	combout => \ULA1|saida[7]~10_combout\);

-- Location: LABCELL_X19_Y6_N51
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

-- Location: FF_X19_Y6_N53
\BANCO_REG|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~46feeder_combout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~46_q\);

-- Location: FF_X17_Y6_N28
\BANCO_REG|registrador~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~33_sumout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~302_q\);

-- Location: MLABCELL_X18_Y6_N42
\BANCO_REG|registrador~1070\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1070_combout\ = ( \ROM1|memROM~0_combout\ & ( (\PC_REG|DOUT[2]~DUPLICATE_q\ & \BANCO_REG|registrador~302_q\) ) ) # ( !\ROM1|memROM~0_combout\ & ( \BANCO_REG|registrador~46_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \BANCO_REG|ALT_INV_registrador~46_q\,
	datad => \BANCO_REG|ALT_INV_registrador~302_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1070_combout\);

-- Location: LABCELL_X17_Y6_N27
\ULA1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~33_sumout\ = SUM(( (\BANCO_REG|registrador~1070_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~30\ ))
-- \ULA1|Add0~34\ = CARRY(( (\BANCO_REG|registrador~1070_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1070_combout\,
	cin => \ULA1|Add0~30\,
	sumout => \ULA1|Add0~33_sumout\,
	cout => \ULA1|Add0~34\);

-- Location: LABCELL_X17_Y4_N9
\ULA1|saida[8]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[8]~11_combout\ = ( !\Sel_ULA[1]~input_o\ & ( \ULA1|Add0~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~33_sumout\,
	dataf => \ALT_INV_Sel_ULA[1]~input_o\,
	combout => \ULA1|saida[8]~11_combout\);

-- Location: FF_X17_Y6_N31
\BANCO_REG|registrador~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~37_sumout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~303_q\);

-- Location: MLABCELL_X18_Y6_N45
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

-- Location: FF_X18_Y6_N47
\BANCO_REG|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~37_wirecell_combout\,
	asdata => VCC,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~47_q\);

-- Location: MLABCELL_X18_Y6_N0
\BANCO_REG|registrador~1071\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1071_combout\ = ( \ROM1|memROM~0_combout\ & ( (\PC_REG|DOUT[2]~DUPLICATE_q\ & \BANCO_REG|registrador~303_q\) ) ) # ( !\ROM1|memROM~0_combout\ & ( !\BANCO_REG|registrador~47_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \BANCO_REG|ALT_INV_registrador~303_q\,
	datad => \BANCO_REG|ALT_INV_registrador~47_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1071_combout\);

-- Location: LABCELL_X17_Y6_N30
\ULA1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~37_sumout\ = SUM(( (\BANCO_REG|registrador~1071_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~34\ ))
-- \ULA1|Add0~38\ = CARRY(( (\BANCO_REG|registrador~1071_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1071_combout\,
	cin => \ULA1|Add0~34\,
	sumout => \ULA1|Add0~37_sumout\,
	cout => \ULA1|Add0~38\);

-- Location: MLABCELL_X23_Y4_N0
\ULA1|saida[9]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[9]~12_combout\ = ( !\Sel_ULA[1]~input_o\ & ( \ULA1|Add0~37_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA1|ALT_INV_Add0~37_sumout\,
	dataf => \ALT_INV_Sel_ULA[1]~input_o\,
	combout => \ULA1|saida[9]~12_combout\);

-- Location: MLABCELL_X18_Y6_N3
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

-- Location: FF_X18_Y6_N5
\BANCO_REG|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~48feeder_combout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~48_q\);

-- Location: FF_X17_Y6_N34
\BANCO_REG|registrador~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~41_sumout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~304_q\);

-- Location: MLABCELL_X18_Y6_N12
\BANCO_REG|registrador~1072\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1072_combout\ = ( \ROM1|memROM~0_combout\ & ( (\PC_REG|DOUT[2]~DUPLICATE_q\ & \BANCO_REG|registrador~304_q\) ) ) # ( !\ROM1|memROM~0_combout\ & ( \BANCO_REG|registrador~48_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \BANCO_REG|ALT_INV_registrador~48_q\,
	datad => \BANCO_REG|ALT_INV_registrador~304_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1072_combout\);

-- Location: LABCELL_X17_Y6_N33
\ULA1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~41_sumout\ = SUM(( (\BANCO_REG|registrador~1072_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~38\ ))
-- \ULA1|Add0~42\ = CARRY(( (\BANCO_REG|registrador~1072_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1072_combout\,
	cin => \ULA1|Add0~38\,
	sumout => \ULA1|Add0~41_sumout\,
	cout => \ULA1|Add0~42\);

-- Location: MLABCELL_X18_Y4_N27
\ULA1|saida[10]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[10]~13_combout\ = ( \ULA1|Add0~41_sumout\ & ( !\Sel_ULA[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datae => \ULA1|ALT_INV_Add0~41_sumout\,
	combout => \ULA1|saida[10]~13_combout\);

-- Location: LABCELL_X16_Y4_N54
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

-- Location: FF_X16_Y4_N56
\BANCO_REG|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~45_wirecell_combout\,
	asdata => VCC,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~49_q\);

-- Location: FF_X17_Y6_N38
\BANCO_REG|registrador~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~45_sumout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~305_q\);

-- Location: LABCELL_X16_Y4_N33
\BANCO_REG|registrador~1073\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1073_combout\ = ( \PC_REG|DOUT[2]~DUPLICATE_q\ & ( \ROM1|memROM~0_combout\ & ( \BANCO_REG|registrador~305_q\ ) ) ) # ( \PC_REG|DOUT[2]~DUPLICATE_q\ & ( !\ROM1|memROM~0_combout\ & ( !\BANCO_REG|registrador~49_q\ ) ) ) # ( 
-- !\PC_REG|DOUT[2]~DUPLICATE_q\ & ( !\ROM1|memROM~0_combout\ & ( !\BANCO_REG|registrador~49_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~49_q\,
	datad => \BANCO_REG|ALT_INV_registrador~305_q\,
	datae => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1073_combout\);

-- Location: LABCELL_X17_Y6_N36
\ULA1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~45_sumout\ = SUM(( (\BANCO_REG|registrador~1073_combout\ & ((\ROM1|memROM~2_combout\) # (\ROM1|memROM~0_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~42\ ))
-- \ULA1|Add0~46\ = CARRY(( (\BANCO_REG|registrador~1073_combout\ & ((\ROM1|memROM~2_combout\) # (\ROM1|memROM~0_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ULA1|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1073_combout\,
	cin => \ULA1|Add0~42\,
	sumout => \ULA1|Add0~45_sumout\,
	cout => \ULA1|Add0~46\);

-- Location: LABCELL_X17_Y4_N51
\ULA1|saida[11]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[11]~14_combout\ = ( !\Sel_ULA[1]~input_o\ & ( \ULA1|Add0~45_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA1|ALT_INV_Add0~45_sumout\,
	dataf => \ALT_INV_Sel_ULA[1]~input_o\,
	combout => \ULA1|saida[11]~14_combout\);

-- Location: MLABCELL_X18_Y6_N15
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

-- Location: FF_X18_Y6_N17
\BANCO_REG|registrador~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~50feeder_combout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~50_q\);

-- Location: FF_X17_Y6_N41
\BANCO_REG|registrador~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~49_sumout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~306_q\);

-- Location: MLABCELL_X18_Y6_N18
\BANCO_REG|registrador~1074\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1074_combout\ = ( \ROM1|memROM~0_combout\ & ( (\PC_REG|DOUT[2]~DUPLICATE_q\ & \BANCO_REG|registrador~306_q\) ) ) # ( !\ROM1|memROM~0_combout\ & ( \BANCO_REG|registrador~50_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCO_REG|ALT_INV_registrador~50_q\,
	datac => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \BANCO_REG|ALT_INV_registrador~306_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1074_combout\);

-- Location: LABCELL_X17_Y6_N39
\ULA1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~49_sumout\ = SUM(( (\BANCO_REG|registrador~1074_combout\ & ((\ROM1|memROM~2_combout\) # (\ROM1|memROM~0_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~46\ ))
-- \ULA1|Add0~50\ = CARRY(( (\BANCO_REG|registrador~1074_combout\ & ((\ROM1|memROM~2_combout\) # (\ROM1|memROM~0_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ULA1|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1074_combout\,
	cin => \ULA1|Add0~46\,
	sumout => \ULA1|Add0~49_sumout\,
	cout => \ULA1|Add0~50\);

-- Location: LABCELL_X16_Y4_N42
\ULA1|saida[12]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[12]~15_combout\ = ( \ULA1|Add0~49_sumout\ & ( !\Sel_ULA[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	dataf => \ULA1|ALT_INV_Add0~49_sumout\,
	combout => \ULA1|saida[12]~15_combout\);

-- Location: LABCELL_X16_Y7_N21
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

-- Location: FF_X16_Y7_N23
\BANCO_REG|registrador~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~53_wirecell_combout\,
	asdata => VCC,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~51_q\);

-- Location: FF_X17_Y6_N43
\BANCO_REG|registrador~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~53_sumout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~307_q\);

-- Location: LABCELL_X16_Y7_N0
\BANCO_REG|registrador~1075\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1075_combout\ = ( \ROM1|memROM~0_combout\ & ( (\PC_REG|DOUT\(2) & \BANCO_REG|registrador~307_q\) ) ) # ( !\ROM1|memROM~0_combout\ & ( !\BANCO_REG|registrador~51_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~51_q\,
	datac => \PC_REG|ALT_INV_DOUT\(2),
	datad => \BANCO_REG|ALT_INV_registrador~307_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1075_combout\);

-- Location: LABCELL_X17_Y6_N42
\ULA1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~53_sumout\ = SUM(( (\BANCO_REG|registrador~1075_combout\ & ((\ROM1|memROM~2_combout\) # (\ROM1|memROM~0_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~50\ ))
-- \ULA1|Add0~54\ = CARRY(( (\BANCO_REG|registrador~1075_combout\ & ((\ROM1|memROM~2_combout\) # (\ROM1|memROM~0_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ULA1|ALT_INV_Equal1~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1075_combout\,
	cin => \ULA1|Add0~50\,
	sumout => \ULA1|Add0~53_sumout\,
	cout => \ULA1|Add0~54\);

-- Location: MLABCELL_X23_Y4_N57
\ULA1|saida[13]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[13]~16_combout\ = ( !\Sel_ULA[1]~input_o\ & ( \ULA1|Add0~53_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~53_sumout\,
	dataf => \ALT_INV_Sel_ULA[1]~input_o\,
	combout => \ULA1|saida[13]~16_combout\);

-- Location: MLABCELL_X18_Y6_N54
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

-- Location: FF_X18_Y6_N56
\BANCO_REG|registrador~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~52feeder_combout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~52_q\);

-- Location: FF_X17_Y6_N47
\BANCO_REG|registrador~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~57_sumout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~308_q\);

-- Location: MLABCELL_X18_Y6_N57
\BANCO_REG|registrador~1076\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1076_combout\ = ( \ROM1|memROM~0_combout\ & ( (\BANCO_REG|registrador~308_q\ & \PC_REG|DOUT[2]~DUPLICATE_q\) ) ) # ( !\ROM1|memROM~0_combout\ & ( \BANCO_REG|registrador~52_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~52_q\,
	datac => \BANCO_REG|ALT_INV_registrador~308_q\,
	datad => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1076_combout\);

-- Location: LABCELL_X17_Y6_N45
\ULA1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~57_sumout\ = SUM(( (\BANCO_REG|registrador~1076_combout\ & ((\ROM1|memROM~2_combout\) # (\ROM1|memROM~0_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~54\ ))
-- \ULA1|Add0~58\ = CARRY(( (\BANCO_REG|registrador~1076_combout\ & ((\ROM1|memROM~2_combout\) # (\ROM1|memROM~0_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ULA1|ALT_INV_Equal1~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1076_combout\,
	cin => \ULA1|Add0~54\,
	sumout => \ULA1|Add0~57_sumout\,
	cout => \ULA1|Add0~58\);

-- Location: LABCELL_X14_Y6_N21
\ULA1|saida[14]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[14]~17_combout\ = ( !\Sel_ULA[1]~input_o\ & ( \ULA1|Add0~57_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~57_sumout\,
	dataf => \ALT_INV_Sel_ULA[1]~input_o\,
	combout => \ULA1|saida[14]~17_combout\);

-- Location: FF_X17_Y6_N50
\BANCO_REG|registrador~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~61_sumout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~309_q\);

-- Location: MLABCELL_X18_Y6_N39
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

-- Location: FF_X18_Y6_N40
\BANCO_REG|registrador~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~61_wirecell_combout\,
	asdata => VCC,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~53_q\);

-- Location: LABCELL_X17_Y4_N6
\BANCO_REG|registrador~1077\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1077_combout\ = ( \ROM1|memROM~0_combout\ & ( (\BANCO_REG|registrador~309_q\ & \PC_REG|DOUT[2]~DUPLICATE_q\) ) ) # ( !\ROM1|memROM~0_combout\ & ( !\BANCO_REG|registrador~53_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCO_REG|ALT_INV_registrador~309_q\,
	datac => \BANCO_REG|ALT_INV_registrador~53_q\,
	datad => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1077_combout\);

-- Location: LABCELL_X17_Y6_N48
\ULA1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~61_sumout\ = SUM(( (\BANCO_REG|registrador~1077_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~58\ ))
-- \ULA1|Add0~62\ = CARRY(( (\BANCO_REG|registrador~1077_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ULA1|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1077_combout\,
	cin => \ULA1|Add0~58\,
	sumout => \ULA1|Add0~61_sumout\,
	cout => \ULA1|Add0~62\);

-- Location: LABCELL_X17_Y4_N57
\ULA1|saida[15]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[15]~18_combout\ = ( !\Sel_ULA[1]~input_o\ & ( \ULA1|Add0~61_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA1|ALT_INV_Add0~61_sumout\,
	dataf => \ALT_INV_Sel_ULA[1]~input_o\,
	combout => \ULA1|saida[15]~18_combout\);

-- Location: FF_X17_Y6_N53
\BANCO_REG|registrador~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~65_sumout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~310_q\);

-- Location: MLABCELL_X18_Y6_N6
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

-- Location: FF_X18_Y6_N8
\BANCO_REG|registrador~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~54feeder_combout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~54_q\);

-- Location: MLABCELL_X18_Y6_N9
\BANCO_REG|registrador~1078\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1078_combout\ = ( \ROM1|memROM~0_combout\ & ( (\BANCO_REG|registrador~310_q\ & \PC_REG|DOUT[2]~DUPLICATE_q\) ) ) # ( !\ROM1|memROM~0_combout\ & ( \BANCO_REG|registrador~54_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~310_q\,
	datac => \BANCO_REG|ALT_INV_registrador~54_q\,
	datad => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1078_combout\);

-- Location: LABCELL_X17_Y6_N51
\ULA1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~65_sumout\ = SUM(( (\BANCO_REG|registrador~1078_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~62\ ))
-- \ULA1|Add0~66\ = CARRY(( (\BANCO_REG|registrador~1078_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ULA1|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1078_combout\,
	cin => \ULA1|Add0~62\,
	sumout => \ULA1|Add0~65_sumout\,
	cout => \ULA1|Add0~66\);

-- Location: LABCELL_X17_Y4_N0
\ULA1|saida[16]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[16]~19_combout\ = ( !\Sel_ULA[1]~input_o\ & ( \ULA1|Add0~65_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|ALT_INV_Add0~65_sumout\,
	dataf => \ALT_INV_Sel_ULA[1]~input_o\,
	combout => \ULA1|saida[16]~19_combout\);

-- Location: MLABCELL_X18_Y6_N33
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

-- Location: FF_X18_Y6_N35
\BANCO_REG|registrador~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~69_wirecell_combout\,
	asdata => VCC,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~55_q\);

-- Location: FF_X17_Y6_N56
\BANCO_REG|registrador~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~69_sumout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~311_q\);

-- Location: MLABCELL_X18_Y6_N30
\BANCO_REG|registrador~1079\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1079_combout\ = ( \ROM1|memROM~0_combout\ & ( (\BANCO_REG|registrador~311_q\ & \PC_REG|DOUT[2]~DUPLICATE_q\) ) ) # ( !\ROM1|memROM~0_combout\ & ( !\BANCO_REG|registrador~55_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~55_q\,
	datab => \BANCO_REG|ALT_INV_registrador~311_q\,
	datac => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1079_combout\);

-- Location: LABCELL_X17_Y6_N54
\ULA1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~69_sumout\ = SUM(( (\BANCO_REG|registrador~1079_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~66\ ))
-- \ULA1|Add0~70\ = CARRY(( (\BANCO_REG|registrador~1079_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ULA1|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1079_combout\,
	cin => \ULA1|Add0~66\,
	sumout => \ULA1|Add0~69_sumout\,
	cout => \ULA1|Add0~70\);

-- Location: LABCELL_X14_Y6_N3
\ULA1|saida[17]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[17]~20_combout\ = ( !\Sel_ULA[1]~input_o\ & ( \ULA1|Add0~69_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~69_sumout\,
	dataf => \ALT_INV_Sel_ULA[1]~input_o\,
	combout => \ULA1|saida[17]~20_combout\);

-- Location: FF_X17_Y6_N59
\BANCO_REG|registrador~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~73_sumout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~312_q\);

-- Location: MLABCELL_X18_Y6_N21
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

-- Location: FF_X18_Y6_N22
\BANCO_REG|registrador~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~56feeder_combout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~56_q\);

-- Location: LABCELL_X17_Y7_N24
\BANCO_REG|registrador~1080\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1080_combout\ = ( \BANCO_REG|registrador~56_q\ & ( \ROM1|memROM~0_combout\ & ( (\PC_REG|DOUT\(2) & \BANCO_REG|registrador~312_q\) ) ) ) # ( !\BANCO_REG|registrador~56_q\ & ( \ROM1|memROM~0_combout\ & ( (\PC_REG|DOUT\(2) & 
-- \BANCO_REG|registrador~312_q\) ) ) ) # ( \BANCO_REG|registrador~56_q\ & ( !\ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT\(2),
	datad => \BANCO_REG|ALT_INV_registrador~312_q\,
	datae => \BANCO_REG|ALT_INV_registrador~56_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1080_combout\);

-- Location: LABCELL_X17_Y6_N57
\ULA1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~73_sumout\ = SUM(( (\BANCO_REG|registrador~1080_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~70\ ))
-- \ULA1|Add0~74\ = CARRY(( (\BANCO_REG|registrador~1080_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ULA1|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1080_combout\,
	cin => \ULA1|Add0~70\,
	sumout => \ULA1|Add0~73_sumout\,
	cout => \ULA1|Add0~74\);

-- Location: MLABCELL_X23_Y4_N12
\ULA1|saida[18]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[18]~21_combout\ = ( !\Sel_ULA[1]~input_o\ & ( \ULA1|Add0~73_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA1|ALT_INV_Add0~73_sumout\,
	dataf => \ALT_INV_Sel_ULA[1]~input_o\,
	combout => \ULA1|saida[18]~21_combout\);

-- Location: MLABCELL_X18_Y5_N24
\ULA1|Add0~77_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~77_wirecell_combout\ = ( !\ULA1|Add0~77_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~77_sumout\,
	combout => \ULA1|Add0~77_wirecell_combout\);

-- Location: FF_X18_Y5_N26
\BANCO_REG|registrador~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~77_wirecell_combout\,
	asdata => VCC,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~57_q\);

-- Location: FF_X17_Y5_N2
\BANCO_REG|registrador~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~77_sumout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~313_q\);

-- Location: MLABCELL_X18_Y5_N27
\BANCO_REG|registrador~1081\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1081_combout\ = ( \ROM1|memROM~0_combout\ & ( (\BANCO_REG|registrador~313_q\ & \PC_REG|DOUT[2]~DUPLICATE_q\) ) ) # ( !\ROM1|memROM~0_combout\ & ( !\BANCO_REG|registrador~57_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~57_q\,
	datac => \BANCO_REG|ALT_INV_registrador~313_q\,
	datad => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1081_combout\);

-- Location: LABCELL_X17_Y5_N0
\ULA1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~77_sumout\ = SUM(( (\BANCO_REG|registrador~1081_combout\ & ((\ROM1|memROM~2_combout\) # (\ROM1|memROM~0_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~74\ ))
-- \ULA1|Add0~78\ = CARRY(( (\BANCO_REG|registrador~1081_combout\ & ((\ROM1|memROM~2_combout\) # (\ROM1|memROM~0_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1081_combout\,
	cin => \ULA1|Add0~74\,
	sumout => \ULA1|Add0~77_sumout\,
	cout => \ULA1|Add0~78\);

-- Location: MLABCELL_X23_Y4_N18
\ULA1|saida[19]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[19]~22_combout\ = ( !\Sel_ULA[1]~input_o\ & ( \ULA1|Add0~77_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|ALT_INV_Add0~77_sumout\,
	dataf => \ALT_INV_Sel_ULA[1]~input_o\,
	combout => \ULA1|saida[19]~22_combout\);

-- Location: MLABCELL_X18_Y5_N9
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

-- Location: FF_X18_Y5_N10
\BANCO_REG|registrador~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~58feeder_combout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~58_q\);

-- Location: FF_X17_Y5_N5
\BANCO_REG|registrador~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~81_sumout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~314_q\);

-- Location: MLABCELL_X18_Y5_N6
\BANCO_REG|registrador~1082\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1082_combout\ = ( \ROM1|memROM~0_combout\ & ( (\PC_REG|DOUT[2]~DUPLICATE_q\ & \BANCO_REG|registrador~314_q\) ) ) # ( !\ROM1|memROM~0_combout\ & ( \BANCO_REG|registrador~58_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \BANCO_REG|ALT_INV_registrador~58_q\,
	datad => \BANCO_REG|ALT_INV_registrador~314_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1082_combout\);

-- Location: LABCELL_X17_Y5_N3
\ULA1|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~81_sumout\ = SUM(( (\BANCO_REG|registrador~1082_combout\ & ((\ROM1|memROM~2_combout\) # (\ROM1|memROM~0_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~78\ ))
-- \ULA1|Add0~82\ = CARRY(( (\BANCO_REG|registrador~1082_combout\ & ((\ROM1|memROM~2_combout\) # (\ROM1|memROM~0_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1082_combout\,
	cin => \ULA1|Add0~78\,
	sumout => \ULA1|Add0~81_sumout\,
	cout => \ULA1|Add0~82\);

-- Location: MLABCELL_X23_Y4_N27
\ULA1|saida[20]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[20]~23_combout\ = ( !\Sel_ULA[1]~input_o\ & ( \ULA1|Add0~81_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA1|ALT_INV_Add0~81_sumout\,
	dataf => \ALT_INV_Sel_ULA[1]~input_o\,
	combout => \ULA1|saida[20]~23_combout\);

-- Location: MLABCELL_X18_Y5_N12
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

-- Location: FF_X18_Y5_N14
\BANCO_REG|registrador~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~85_wirecell_combout\,
	asdata => VCC,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~59_q\);

-- Location: FF_X17_Y5_N8
\BANCO_REG|registrador~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~85_sumout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~315_q\);

-- Location: MLABCELL_X18_Y5_N15
\BANCO_REG|registrador~1083\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1083_combout\ = ( \ROM1|memROM~0_combout\ & ( (\PC_REG|DOUT[2]~DUPLICATE_q\ & \BANCO_REG|registrador~315_q\) ) ) # ( !\ROM1|memROM~0_combout\ & ( !\BANCO_REG|registrador~59_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCO_REG|ALT_INV_registrador~59_q\,
	datac => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \BANCO_REG|ALT_INV_registrador~315_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1083_combout\);

-- Location: LABCELL_X17_Y5_N6
\ULA1|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~85_sumout\ = SUM(( (\BANCO_REG|registrador~1083_combout\ & ((\ROM1|memROM~2_combout\) # (\ROM1|memROM~0_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~82\ ))
-- \ULA1|Add0~86\ = CARRY(( (\BANCO_REG|registrador~1083_combout\ & ((\ROM1|memROM~2_combout\) # (\ROM1|memROM~0_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1083_combout\,
	cin => \ULA1|Add0~82\,
	sumout => \ULA1|Add0~85_sumout\,
	cout => \ULA1|Add0~86\);

-- Location: LABCELL_X16_Y7_N6
\ULA1|saida[21]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[21]~24_combout\ = (!\Sel_ULA[1]~input_o\ & \ULA1|Add0~85_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \ULA1|ALT_INV_Add0~85_sumout\,
	combout => \ULA1|saida[21]~24_combout\);

-- Location: MLABCELL_X18_Y5_N45
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

-- Location: FF_X18_Y5_N47
\BANCO_REG|registrador~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~60feeder_combout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~60_q\);

-- Location: FF_X17_Y5_N11
\BANCO_REG|registrador~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~89_sumout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~316_q\);

-- Location: MLABCELL_X18_Y5_N54
\BANCO_REG|registrador~1084\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1084_combout\ = ( \ROM1|memROM~0_combout\ & ( (\BANCO_REG|registrador~316_q\ & \PC_REG|DOUT[2]~DUPLICATE_q\) ) ) # ( !\ROM1|memROM~0_combout\ & ( \BANCO_REG|registrador~60_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCO_REG|ALT_INV_registrador~60_q\,
	datac => \BANCO_REG|ALT_INV_registrador~316_q\,
	datad => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1084_combout\);

-- Location: LABCELL_X17_Y5_N9
\ULA1|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~89_sumout\ = SUM(( (\BANCO_REG|registrador~1084_combout\ & ((\ROM1|memROM~2_combout\) # (\ROM1|memROM~0_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~86\ ))
-- \ULA1|Add0~90\ = CARRY(( (\BANCO_REG|registrador~1084_combout\ & ((\ROM1|memROM~2_combout\) # (\ROM1|memROM~0_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1084_combout\,
	cin => \ULA1|Add0~86\,
	sumout => \ULA1|Add0~89_sumout\,
	cout => \ULA1|Add0~90\);

-- Location: LABCELL_X17_Y4_N30
\ULA1|saida[22]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[22]~25_combout\ = ( !\Sel_ULA[1]~input_o\ & ( \ULA1|Add0~89_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|ALT_INV_Add0~89_sumout\,
	dataf => \ALT_INV_Sel_ULA[1]~input_o\,
	combout => \ULA1|saida[22]~25_combout\);

-- Location: MLABCELL_X18_Y5_N51
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

-- Location: FF_X18_Y5_N53
\BANCO_REG|registrador~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~93_wirecell_combout\,
	asdata => VCC,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~61_q\);

-- Location: FF_X17_Y5_N14
\BANCO_REG|registrador~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~93_sumout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~317_q\);

-- Location: MLABCELL_X18_Y5_N3
\BANCO_REG|registrador~1085\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1085_combout\ = ( \ROM1|memROM~0_combout\ & ( (\PC_REG|DOUT[2]~DUPLICATE_q\ & \BANCO_REG|registrador~317_q\) ) ) # ( !\ROM1|memROM~0_combout\ & ( !\BANCO_REG|registrador~61_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~61_q\,
	datac => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \BANCO_REG|ALT_INV_registrador~317_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1085_combout\);

-- Location: LABCELL_X17_Y5_N12
\ULA1|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~93_sumout\ = SUM(( (\BANCO_REG|registrador~1085_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~90\ ))
-- \ULA1|Add0~94\ = CARRY(( (\BANCO_REG|registrador~1085_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1085_combout\,
	cin => \ULA1|Add0~90\,
	sumout => \ULA1|Add0~93_sumout\,
	cout => \ULA1|Add0~94\);

-- Location: MLABCELL_X18_Y4_N18
\ULA1|saida[23]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[23]~26_combout\ = ( \ULA1|Add0~93_sumout\ & ( !\Sel_ULA[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	dataf => \ULA1|ALT_INV_Add0~93_sumout\,
	combout => \ULA1|saida[23]~26_combout\);

-- Location: LABCELL_X17_Y5_N42
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

-- Location: FF_X17_Y5_N44
\BANCO_REG|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~62feeder_combout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~62_q\);

-- Location: FF_X17_Y5_N16
\BANCO_REG|registrador~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~97_sumout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~318_q\);

-- Location: LABCELL_X17_Y4_N33
\BANCO_REG|registrador~1086\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1086_combout\ = ( \BANCO_REG|registrador~318_q\ & ( (!\ROM1|memROM~0_combout\ & ((\BANCO_REG|registrador~62_q\))) # (\ROM1|memROM~0_combout\ & (\PC_REG|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\BANCO_REG|registrador~318_q\ & ( 
-- (\BANCO_REG|registrador~62_q\ & !\ROM1|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \BANCO_REG|ALT_INV_registrador~62_q\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~318_q\,
	combout => \BANCO_REG|registrador~1086_combout\);

-- Location: LABCELL_X17_Y5_N15
\ULA1|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~97_sumout\ = SUM(( (\BANCO_REG|registrador~1086_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~94\ ))
-- \ULA1|Add0~98\ = CARRY(( (\BANCO_REG|registrador~1086_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1086_combout\,
	cin => \ULA1|Add0~94\,
	sumout => \ULA1|Add0~97_sumout\,
	cout => \ULA1|Add0~98\);

-- Location: MLABCELL_X18_Y4_N51
\ULA1|saida[24]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[24]~27_combout\ = ( !\Sel_ULA[1]~input_o\ & ( \ULA1|Add0~97_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Sel_ULA[1]~input_o\,
	dataf => \ULA1|ALT_INV_Add0~97_sumout\,
	combout => \ULA1|saida[24]~27_combout\);

-- Location: LABCELL_X17_Y5_N48
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

-- Location: FF_X17_Y5_N49
\BANCO_REG|registrador~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~101_wirecell_combout\,
	asdata => VCC,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~63_q\);

-- Location: FF_X17_Y5_N20
\BANCO_REG|registrador~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~101_sumout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~319_q\);

-- Location: LABCELL_X14_Y5_N24
\BANCO_REG|registrador~1087\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1087_combout\ = ( \PC_REG|DOUT[2]~DUPLICATE_q\ & ( \ROM1|memROM~0_combout\ & ( \BANCO_REG|registrador~319_q\ ) ) ) # ( \PC_REG|DOUT[2]~DUPLICATE_q\ & ( !\ROM1|memROM~0_combout\ & ( !\BANCO_REG|registrador~63_q\ ) ) ) # ( 
-- !\PC_REG|DOUT[2]~DUPLICATE_q\ & ( !\ROM1|memROM~0_combout\ & ( !\BANCO_REG|registrador~63_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCO_REG|ALT_INV_registrador~63_q\,
	datac => \BANCO_REG|ALT_INV_registrador~319_q\,
	datae => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1087_combout\);

-- Location: LABCELL_X17_Y5_N18
\ULA1|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~101_sumout\ = SUM(( (\BANCO_REG|registrador~1087_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~98\ ))
-- \ULA1|Add0~102\ = CARRY(( (\BANCO_REG|registrador~1087_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1087_combout\,
	cin => \ULA1|Add0~98\,
	sumout => \ULA1|Add0~101_sumout\,
	cout => \ULA1|Add0~102\);

-- Location: MLABCELL_X18_Y4_N57
\ULA1|saida[25]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[25]~28_combout\ = ( !\Sel_ULA[1]~input_o\ & ( \ULA1|Add0~101_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Sel_ULA[1]~input_o\,
	dataf => \ULA1|ALT_INV_Add0~101_sumout\,
	combout => \ULA1|saida[25]~28_combout\);

-- Location: FF_X17_Y5_N23
\BANCO_REG|registrador~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~105_sumout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~320_q\);

-- Location: LABCELL_X17_Y5_N54
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

-- Location: FF_X17_Y5_N55
\BANCO_REG|registrador~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~64feeder_combout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~64_q\);

-- Location: MLABCELL_X18_Y5_N36
\BANCO_REG|registrador~1088\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1088_combout\ = ( \ROM1|memROM~0_combout\ & ( (\BANCO_REG|registrador~320_q\ & \PC_REG|DOUT[2]~DUPLICATE_q\) ) ) # ( !\ROM1|memROM~0_combout\ & ( \BANCO_REG|registrador~64_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCO_REG|ALT_INV_registrador~320_q\,
	datac => \BANCO_REG|ALT_INV_registrador~64_q\,
	datad => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1088_combout\);

-- Location: LABCELL_X17_Y5_N21
\ULA1|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~105_sumout\ = SUM(( (\BANCO_REG|registrador~1088_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~102\ ))
-- \ULA1|Add0~106\ = CARRY(( (\BANCO_REG|registrador~1088_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1088_combout\,
	cin => \ULA1|Add0~102\,
	sumout => \ULA1|Add0~105_sumout\,
	cout => \ULA1|Add0~106\);

-- Location: MLABCELL_X23_Y3_N24
\ULA1|saida[26]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[26]~29_combout\ = ( !\Sel_ULA[1]~input_o\ & ( \ULA1|Add0~105_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA1|ALT_INV_Add0~105_sumout\,
	dataf => \ALT_INV_Sel_ULA[1]~input_o\,
	combout => \ULA1|saida[26]~29_combout\);

-- Location: LABCELL_X17_Y5_N57
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

-- Location: FF_X17_Y5_N58
\BANCO_REG|registrador~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~109_wirecell_combout\,
	asdata => VCC,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~65_q\);

-- Location: FF_X17_Y5_N25
\BANCO_REG|registrador~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~109_sumout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~321_q\);

-- Location: MLABCELL_X18_Y5_N21
\BANCO_REG|registrador~1089\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1089_combout\ = ( \ROM1|memROM~0_combout\ & ( (\PC_REG|DOUT[2]~DUPLICATE_q\ & \BANCO_REG|registrador~321_q\) ) ) # ( !\ROM1|memROM~0_combout\ & ( !\BANCO_REG|registrador~65_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCO_REG|ALT_INV_registrador~65_q\,
	datac => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \BANCO_REG|ALT_INV_registrador~321_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1089_combout\);

-- Location: LABCELL_X17_Y5_N24
\ULA1|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~109_sumout\ = SUM(( (\BANCO_REG|registrador~1089_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~106\ ))
-- \ULA1|Add0~110\ = CARRY(( (\BANCO_REG|registrador~1089_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1089_combout\,
	cin => \ULA1|Add0~106\,
	sumout => \ULA1|Add0~109_sumout\,
	cout => \ULA1|Add0~110\);

-- Location: MLABCELL_X23_Y4_N9
\ULA1|saida[27]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[27]~30_combout\ = ( !\Sel_ULA[1]~input_o\ & ( \ULA1|Add0~109_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~109_sumout\,
	dataf => \ALT_INV_Sel_ULA[1]~input_o\,
	combout => \ULA1|saida[27]~30_combout\);

-- Location: MLABCELL_X18_Y5_N18
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

-- Location: FF_X18_Y5_N20
\BANCO_REG|registrador~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~66feeder_combout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~66_q\);

-- Location: FF_X17_Y5_N28
\BANCO_REG|registrador~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~113_sumout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~322_q\);

-- Location: MLABCELL_X18_Y5_N42
\BANCO_REG|registrador~1090\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1090_combout\ = ( \ROM1|memROM~0_combout\ & ( (\PC_REG|DOUT[2]~DUPLICATE_q\ & \BANCO_REG|registrador~322_q\) ) ) # ( !\ROM1|memROM~0_combout\ & ( \BANCO_REG|registrador~66_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~66_q\,
	datab => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \BANCO_REG|ALT_INV_registrador~322_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1090_combout\);

-- Location: LABCELL_X17_Y5_N27
\ULA1|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~113_sumout\ = SUM(( (\BANCO_REG|registrador~1090_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~110\ ))
-- \ULA1|Add0~114\ = CARRY(( (\BANCO_REG|registrador~1090_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1090_combout\,
	cin => \ULA1|Add0~110\,
	sumout => \ULA1|Add0~113_sumout\,
	cout => \ULA1|Add0~114\);

-- Location: MLABCELL_X18_Y4_N12
\ULA1|saida[28]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[28]~31_combout\ = ( !\Sel_ULA[1]~input_o\ & ( \ULA1|Add0~113_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA1|ALT_INV_Add0~113_sumout\,
	datae => \ALT_INV_Sel_ULA[1]~input_o\,
	combout => \ULA1|saida[28]~31_combout\);

-- Location: FF_X17_Y5_N31
\BANCO_REG|registrador~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~117_sumout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~323_q\);

-- Location: LABCELL_X17_Y5_N51
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

-- Location: FF_X17_Y5_N52
\BANCO_REG|registrador~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~117_wirecell_combout\,
	asdata => VCC,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~67_q\);

-- Location: MLABCELL_X18_Y5_N33
\BANCO_REG|registrador~1091\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1091_combout\ = ( \PC_REG|DOUT[2]~DUPLICATE_q\ & ( \ROM1|memROM~0_combout\ & ( \BANCO_REG|registrador~323_q\ ) ) ) # ( \PC_REG|DOUT[2]~DUPLICATE_q\ & ( !\ROM1|memROM~0_combout\ & ( !\BANCO_REG|registrador~67_q\ ) ) ) # ( 
-- !\PC_REG|DOUT[2]~DUPLICATE_q\ & ( !\ROM1|memROM~0_combout\ & ( !\BANCO_REG|registrador~67_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~323_q\,
	datad => \BANCO_REG|ALT_INV_registrador~67_q\,
	datae => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|registrador~1091_combout\);

-- Location: LABCELL_X17_Y5_N30
\ULA1|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~117_sumout\ = SUM(( (\BANCO_REG|registrador~1091_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~114\ ))
-- \ULA1|Add0~118\ = CARRY(( (\BANCO_REG|registrador~1091_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1091_combout\,
	cin => \ULA1|Add0~114\,
	sumout => \ULA1|Add0~117_sumout\,
	cout => \ULA1|Add0~118\);

-- Location: MLABCELL_X23_Y3_N57
\ULA1|saida[29]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[29]~32_combout\ = ( \ULA1|Add0~117_sumout\ & ( !\Sel_ULA[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ULA1|ALT_INV_Add0~117_sumout\,
	dataf => \ALT_INV_Sel_ULA[1]~input_o\,
	combout => \ULA1|saida[29]~32_combout\);

-- Location: LABCELL_X17_Y5_N45
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

-- Location: FF_X17_Y5_N47
\BANCO_REG|registrador~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCO_REG|registrador~68feeder_combout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~68_q\);

-- Location: FF_X17_Y5_N35
\BANCO_REG|registrador~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~121_sumout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~324_q\);

-- Location: LABCELL_X17_Y4_N45
\BANCO_REG|registrador~1092\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1092_combout\ = ( \BANCO_REG|registrador~324_q\ & ( (!\ROM1|memROM~0_combout\ & (\BANCO_REG|registrador~68_q\)) # (\ROM1|memROM~0_combout\ & ((\PC_REG|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\BANCO_REG|registrador~324_q\ & ( 
-- (\BANCO_REG|registrador~68_q\ & !\ROM1|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~68_q\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~324_q\,
	combout => \BANCO_REG|registrador~1092_combout\);

-- Location: LABCELL_X17_Y5_N33
\ULA1|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~121_sumout\ = SUM(( (\BANCO_REG|registrador~1092_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~118\ ))
-- \ULA1|Add0~122\ = CARRY(( (\BANCO_REG|registrador~1092_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1092_combout\,
	cin => \ULA1|Add0~118\,
	sumout => \ULA1|Add0~121_sumout\,
	cout => \ULA1|Add0~122\);

-- Location: LABCELL_X16_Y4_N15
\ULA1|saida[30]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[30]~33_combout\ = ( !\Sel_ULA[1]~input_o\ & ( \ULA1|Add0~121_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA1|ALT_INV_Add0~121_sumout\,
	datae => \ALT_INV_Sel_ULA[1]~input_o\,
	combout => \ULA1|saida[30]~33_combout\);

-- Location: FF_X17_Y5_N38
\BANCO_REG|registrador~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~125_sumout\,
	asdata => \~GND~combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~325_q\);

-- Location: MLABCELL_X18_Y5_N0
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

-- Location: FF_X18_Y5_N1
\BANCO_REG|registrador~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA1|Add0~125_wirecell_combout\,
	asdata => VCC,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~69_q\);

-- Location: MLABCELL_X18_Y4_N36
\BANCO_REG|registrador~1093\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1093_combout\ = ( \ROM1|memROM~0_combout\ & ( \PC_REG|DOUT[2]~DUPLICATE_q\ & ( \BANCO_REG|registrador~325_q\ ) ) ) # ( !\ROM1|memROM~0_combout\ & ( \PC_REG|DOUT[2]~DUPLICATE_q\ & ( !\BANCO_REG|registrador~69_q\ ) ) ) # ( 
-- !\ROM1|memROM~0_combout\ & ( !\PC_REG|DOUT[2]~DUPLICATE_q\ & ( !\BANCO_REG|registrador~69_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011110000111100000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~325_q\,
	datac => \BANCO_REG|ALT_INV_registrador~69_q\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \BANCO_REG|registrador~1093_combout\);

-- Location: LABCELL_X17_Y5_N36
\ULA1|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~125_sumout\ = SUM(( (\BANCO_REG|registrador~1093_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) + ( !\ULA1|Equal1~0_combout\ ) + ( \ULA1|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1093_combout\,
	cin => \ULA1|Add0~122\,
	sumout => \ULA1|Add0~125_sumout\);

-- Location: LABCELL_X16_Y7_N9
\ULA1|saida[31]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[31]~34_combout\ = (!\Sel_ULA[1]~input_o\ & \ULA1|Add0~125_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \ULA1|ALT_INV_Add0~125_sumout\,
	combout => \ULA1|saida[31]~34_combout\);

-- Location: LABCELL_X17_Y4_N3
\BANCO_REG|saidaA[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[2]~3_combout\ = ( \ROM1|memROM~0_combout\ & ( \BANCO_REG|registrador~1065_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~1065_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|saidaA[2]~3_combout\);

-- Location: LABCELL_X16_Y4_N45
\BANCO_REG|saidaA[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[4]~4_combout\ = ( \ROM1|memROM~0_combout\ & ( \BANCO_REG|registrador~1066_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~1066_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|saidaA[4]~4_combout\);

-- Location: LABCELL_X16_Y7_N36
\BANCO_REG|saidaA[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[5]~5_combout\ = ( \BANCO_REG|registrador~1067_combout\ & ( \ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1067_combout\,
	combout => \BANCO_REG|saidaA[5]~5_combout\);

-- Location: MLABCELL_X18_Y6_N24
\BANCO_REG|saidaA[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[6]~6_combout\ = (\ROM1|memROM~0_combout\ & \BANCO_REG|registrador~1068_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~1068_combout\,
	combout => \BANCO_REG|saidaA[6]~6_combout\);

-- Location: LABCELL_X16_Y4_N24
\BANCO_REG|saidaA[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[7]~7_combout\ = ( \ROM1|memROM~0_combout\ & ( \BANCO_REG|registrador~1069_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REG|ALT_INV_registrador~1069_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|saidaA[7]~7_combout\);

-- Location: MLABCELL_X18_Y6_N36
\BANCO_REG|saidaA[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[8]~8_combout\ = ( \BANCO_REG|registrador~1070_combout\ & ( \ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1070_combout\,
	combout => \BANCO_REG|saidaA[8]~8_combout\);

-- Location: MLABCELL_X18_Y4_N6
\BANCO_REG|saidaA[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[9]~9_combout\ = ( \ROM1|memROM~0_combout\ & ( \BANCO_REG|registrador~1071_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1071_combout\,
	combout => \BANCO_REG|saidaA[9]~9_combout\);

-- Location: LABCELL_X17_Y7_N39
\BANCO_REG|saidaA[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[10]~10_combout\ = ( \BANCO_REG|registrador~1072_combout\ & ( \ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \BANCO_REG|ALT_INV_registrador~1072_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|saidaA[10]~10_combout\);

-- Location: LABCELL_X17_Y4_N48
\BANCO_REG|saidaA[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[11]~11_combout\ = ( \ROM1|memROM~0_combout\ & ( \BANCO_REG|registrador~1073_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCO_REG|ALT_INV_registrador~1073_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|saidaA[11]~11_combout\);

-- Location: LABCELL_X16_Y4_N6
\BANCO_REG|saidaA[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[12]~12_combout\ = ( \BANCO_REG|registrador~1074_combout\ & ( \ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \BANCO_REG|ALT_INV_registrador~1074_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|saidaA[12]~12_combout\);

-- Location: LABCELL_X16_Y7_N30
\BANCO_REG|saidaA[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[13]~13_combout\ = (\ROM1|memROM~0_combout\ & \BANCO_REG|registrador~1075_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~1075_combout\,
	combout => \BANCO_REG|saidaA[13]~13_combout\);

-- Location: MLABCELL_X18_Y5_N57
\BANCO_REG|saidaA[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[14]~14_combout\ = (\ROM1|memROM~0_combout\ & \BANCO_REG|registrador~1076_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1076_combout\,
	combout => \BANCO_REG|saidaA[14]~14_combout\);

-- Location: LABCELL_X17_Y4_N54
\BANCO_REG|saidaA[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[15]~15_combout\ = ( \BANCO_REG|registrador~1077_combout\ & ( \ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1077_combout\,
	combout => \BANCO_REG|saidaA[15]~15_combout\);

-- Location: LABCELL_X16_Y7_N24
\BANCO_REG|saidaA[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[16]~16_combout\ = ( \BANCO_REG|registrador~1078_combout\ & ( \ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1078_combout\,
	combout => \BANCO_REG|saidaA[16]~16_combout\);

-- Location: LABCELL_X17_Y7_N30
\BANCO_REG|saidaA[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[17]~17_combout\ = ( \BANCO_REG|registrador~1079_combout\ & ( \ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1079_combout\,
	combout => \BANCO_REG|saidaA[17]~17_combout\);

-- Location: LABCELL_X16_Y7_N27
\BANCO_REG|saidaA[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[18]~18_combout\ = ( \BANCO_REG|registrador~1080_combout\ & ( \ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1080_combout\,
	combout => \BANCO_REG|saidaA[18]~18_combout\);

-- Location: MLABCELL_X18_Y4_N3
\BANCO_REG|saidaA[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[19]~19_combout\ = ( \BANCO_REG|registrador~1081_combout\ & ( \ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~1081_combout\,
	combout => \BANCO_REG|saidaA[19]~19_combout\);

-- Location: MLABCELL_X18_Y5_N39
\BANCO_REG|saidaA[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[20]~20_combout\ = ( \BANCO_REG|registrador~1082_combout\ & ( \ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1082_combout\,
	combout => \BANCO_REG|saidaA[20]~20_combout\);

-- Location: LABCELL_X16_Y7_N33
\BANCO_REG|saidaA[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[21]~21_combout\ = ( \BANCO_REG|registrador~1083_combout\ & ( \ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1083_combout\,
	combout => \BANCO_REG|saidaA[21]~21_combout\);

-- Location: MLABCELL_X18_Y4_N33
\BANCO_REG|saidaA[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[22]~22_combout\ = ( \ROM1|memROM~0_combout\ & ( \BANCO_REG|registrador~1084_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1084_combout\,
	combout => \BANCO_REG|saidaA[22]~22_combout\);

-- Location: MLABCELL_X18_Y5_N48
\BANCO_REG|saidaA[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[23]~23_combout\ = ( \ROM1|memROM~0_combout\ & ( \BANCO_REG|registrador~1085_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REG|ALT_INV_registrador~1085_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|saidaA[23]~23_combout\);

-- Location: LABCELL_X17_Y4_N24
\BANCO_REG|saidaA[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[24]~24_combout\ = ( \BANCO_REG|registrador~1086_combout\ & ( \ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1086_combout\,
	combout => \BANCO_REG|saidaA[24]~24_combout\);

-- Location: LABCELL_X17_Y4_N36
\BANCO_REG|saidaA[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[25]~25_combout\ = ( \BANCO_REG|registrador~1087_combout\ & ( \ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1087_combout\,
	combout => \BANCO_REG|saidaA[25]~25_combout\);

-- Location: LABCELL_X16_Y4_N21
\BANCO_REG|saidaA[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[26]~26_combout\ = ( \BANCO_REG|registrador~1088_combout\ & ( \ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \BANCO_REG|ALT_INV_registrador~1088_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|saidaA[26]~26_combout\);

-- Location: LABCELL_X17_Y4_N21
\BANCO_REG|saidaA[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[27]~27_combout\ = ( \ROM1|memROM~0_combout\ & ( \BANCO_REG|registrador~1089_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~1089_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|saidaA[27]~27_combout\);

-- Location: LABCELL_X24_Y3_N51
\BANCO_REG|saidaA[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[28]~28_combout\ = ( \ROM1|memROM~0_combout\ & ( \BANCO_REG|registrador~1090_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1090_combout\,
	combout => \BANCO_REG|saidaA[28]~28_combout\);

-- Location: LABCELL_X17_Y4_N12
\BANCO_REG|saidaA[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[29]~29_combout\ = ( \BANCO_REG|registrador~1091_combout\ & ( \ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \BANCO_REG|ALT_INV_registrador~1091_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|saidaA[29]~29_combout\);

-- Location: LABCELL_X17_Y4_N42
\BANCO_REG|saidaA[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[30]~30_combout\ = (\ROM1|memROM~0_combout\ & \BANCO_REG|registrador~1092_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~1092_combout\,
	combout => \BANCO_REG|saidaA[30]~30_combout\);

-- Location: MLABCELL_X18_Y4_N42
\BANCO_REG|saidaA[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[31]~31_combout\ = ( \ROM1|memROM~0_combout\ & ( \BANCO_REG|registrador~1093_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REG|ALT_INV_registrador~1093_combout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|saidaA[31]~31_combout\);

-- Location: FF_X16_Y6_N34
\PC_REG|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(4));

-- Location: FF_X16_Y6_N47
\PC_REG|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT[8]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y6_N45
\Somador|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~21_sumout\ = SUM(( \PC_REG|DOUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~2\ ))
-- \Somador|Add0~22\ = CARRY(( \PC_REG|DOUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT[8]~DUPLICATE_q\,
	cin => \Somador|Add0~2\,
	sumout => \Somador|Add0~21_sumout\,
	cout => \Somador|Add0~22\);

-- Location: FF_X16_Y6_N46
\PC_REG|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(8));

-- Location: FF_X16_Y6_N50
\PC_REG|DOUT[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT[9]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y6_N48
\Somador|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~25_sumout\ = SUM(( \PC_REG|DOUT[9]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~22\ ))
-- \Somador|Add0~26\ = CARRY(( \PC_REG|DOUT[9]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT[9]~DUPLICATE_q\,
	cin => \Somador|Add0~22\,
	sumout => \Somador|Add0~25_sumout\,
	cout => \Somador|Add0~26\);

-- Location: FF_X16_Y6_N49
\PC_REG|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(9));

-- Location: LABCELL_X16_Y6_N51
\Somador|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~29_sumout\ = SUM(( \PC_REG|DOUT\(10) ) + ( GND ) + ( \Somador|Add0~26\ ))
-- \Somador|Add0~30\ = CARRY(( \PC_REG|DOUT\(10) ) + ( GND ) + ( \Somador|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT\(10),
	cin => \Somador|Add0~26\,
	sumout => \Somador|Add0~29_sumout\,
	cout => \Somador|Add0~30\);

-- Location: FF_X16_Y6_N52
\PC_REG|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(10));

-- Location: LABCELL_X16_Y6_N54
\Somador|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~33_sumout\ = SUM(( \PC_REG|DOUT\(11) ) + ( GND ) + ( \Somador|Add0~30\ ))
-- \Somador|Add0~34\ = CARRY(( \PC_REG|DOUT\(11) ) + ( GND ) + ( \Somador|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT\(11),
	cin => \Somador|Add0~30\,
	sumout => \Somador|Add0~33_sumout\,
	cout => \Somador|Add0~34\);

-- Location: FF_X16_Y6_N56
\PC_REG|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(11));

-- Location: FF_X16_Y6_N59
\PC_REG|DOUT[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT[12]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y6_N57
\Somador|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~37_sumout\ = SUM(( \PC_REG|DOUT[12]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~34\ ))
-- \Somador|Add0~38\ = CARRY(( \PC_REG|DOUT[12]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT[12]~DUPLICATE_q\,
	cin => \Somador|Add0~34\,
	sumout => \Somador|Add0~37_sumout\,
	cout => \Somador|Add0~38\);

-- Location: FF_X16_Y6_N58
\PC_REG|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(12));

-- Location: FF_X16_Y5_N2
\PC_REG|DOUT[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT[13]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y5_N0
\Somador|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~41_sumout\ = SUM(( \PC_REG|DOUT[13]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~38\ ))
-- \Somador|Add0~42\ = CARRY(( \PC_REG|DOUT[13]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT[13]~DUPLICATE_q\,
	cin => \Somador|Add0~38\,
	sumout => \Somador|Add0~41_sumout\,
	cout => \Somador|Add0~42\);

-- Location: FF_X16_Y5_N1
\PC_REG|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(13));

-- Location: FF_X16_Y5_N5
\PC_REG|DOUT[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT[14]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y5_N3
\Somador|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~45_sumout\ = SUM(( \PC_REG|DOUT[14]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~42\ ))
-- \Somador|Add0~46\ = CARRY(( \PC_REG|DOUT[14]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_REG|ALT_INV_DOUT[14]~DUPLICATE_q\,
	cin => \Somador|Add0~42\,
	sumout => \Somador|Add0~45_sumout\,
	cout => \Somador|Add0~46\);

-- Location: FF_X16_Y5_N4
\PC_REG|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(14));

-- Location: FF_X16_Y5_N7
\PC_REG|DOUT[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT[15]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y5_N6
\Somador|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~49_sumout\ = SUM(( \PC_REG|DOUT[15]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~46\ ))
-- \Somador|Add0~50\ = CARRY(( \PC_REG|DOUT[15]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT[15]~DUPLICATE_q\,
	cin => \Somador|Add0~46\,
	sumout => \Somador|Add0~49_sumout\,
	cout => \Somador|Add0~50\);

-- Location: FF_X16_Y5_N8
\PC_REG|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(15));

-- Location: FF_X16_Y5_N11
\PC_REG|DOUT[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT[16]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y5_N9
\Somador|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~53_sumout\ = SUM(( \PC_REG|DOUT[16]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~50\ ))
-- \Somador|Add0~54\ = CARRY(( \PC_REG|DOUT[16]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT[16]~DUPLICATE_q\,
	cin => \Somador|Add0~50\,
	sumout => \Somador|Add0~53_sumout\,
	cout => \Somador|Add0~54\);

-- Location: FF_X16_Y5_N10
\PC_REG|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(16));

-- Location: LABCELL_X16_Y5_N12
\Somador|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~57_sumout\ = SUM(( \PC_REG|DOUT\(17) ) + ( GND ) + ( \Somador|Add0~54\ ))
-- \Somador|Add0~58\ = CARRY(( \PC_REG|DOUT\(17) ) + ( GND ) + ( \Somador|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC_REG|ALT_INV_DOUT\(17),
	cin => \Somador|Add0~54\,
	sumout => \Somador|Add0~57_sumout\,
	cout => \Somador|Add0~58\);

-- Location: FF_X16_Y5_N14
\PC_REG|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(17));

-- Location: FF_X16_Y5_N17
\PC_REG|DOUT[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT[18]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y5_N15
\Somador|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~61_sumout\ = SUM(( \PC_REG|DOUT[18]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~58\ ))
-- \Somador|Add0~62\ = CARRY(( \PC_REG|DOUT[18]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT[18]~DUPLICATE_q\,
	cin => \Somador|Add0~58\,
	sumout => \Somador|Add0~61_sumout\,
	cout => \Somador|Add0~62\);

-- Location: FF_X16_Y5_N16
\PC_REG|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(18));

-- Location: LABCELL_X16_Y5_N18
\Somador|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~65_sumout\ = SUM(( \PC_REG|DOUT\(19) ) + ( GND ) + ( \Somador|Add0~62\ ))
-- \Somador|Add0~66\ = CARRY(( \PC_REG|DOUT\(19) ) + ( GND ) + ( \Somador|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT\(19),
	cin => \Somador|Add0~62\,
	sumout => \Somador|Add0~65_sumout\,
	cout => \Somador|Add0~66\);

-- Location: FF_X16_Y5_N20
\PC_REG|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(19));

-- Location: FF_X16_Y5_N23
\PC_REG|DOUT[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT[20]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y5_N21
\Somador|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~69_sumout\ = SUM(( \PC_REG|DOUT[20]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~66\ ))
-- \Somador|Add0~70\ = CARRY(( \PC_REG|DOUT[20]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_REG|ALT_INV_DOUT[20]~DUPLICATE_q\,
	cin => \Somador|Add0~66\,
	sumout => \Somador|Add0~69_sumout\,
	cout => \Somador|Add0~70\);

-- Location: FF_X16_Y5_N22
\PC_REG|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(20));

-- Location: LABCELL_X16_Y5_N24
\Somador|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~73_sumout\ = SUM(( \PC_REG|DOUT\(21) ) + ( GND ) + ( \Somador|Add0~70\ ))
-- \Somador|Add0~74\ = CARRY(( \PC_REG|DOUT\(21) ) + ( GND ) + ( \Somador|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT\(21),
	cin => \Somador|Add0~70\,
	sumout => \Somador|Add0~73_sumout\,
	cout => \Somador|Add0~74\);

-- Location: FF_X16_Y5_N26
\PC_REG|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(21));

-- Location: LABCELL_X16_Y5_N27
\Somador|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~77_sumout\ = SUM(( \PC_REG|DOUT\(22) ) + ( GND ) + ( \Somador|Add0~74\ ))
-- \Somador|Add0~78\ = CARRY(( \PC_REG|DOUT\(22) ) + ( GND ) + ( \Somador|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_REG|ALT_INV_DOUT\(22),
	cin => \Somador|Add0~74\,
	sumout => \Somador|Add0~77_sumout\,
	cout => \Somador|Add0~78\);

-- Location: FF_X16_Y5_N29
\PC_REG|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(22));

-- Location: LABCELL_X16_Y5_N30
\Somador|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~81_sumout\ = SUM(( \PC_REG|DOUT\(23) ) + ( GND ) + ( \Somador|Add0~78\ ))
-- \Somador|Add0~82\ = CARRY(( \PC_REG|DOUT\(23) ) + ( GND ) + ( \Somador|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT\(23),
	cin => \Somador|Add0~78\,
	sumout => \Somador|Add0~81_sumout\,
	cout => \Somador|Add0~82\);

-- Location: FF_X16_Y5_N31
\PC_REG|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~81_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(23));

-- Location: LABCELL_X16_Y5_N33
\Somador|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~85_sumout\ = SUM(( \PC_REG|DOUT\(24) ) + ( GND ) + ( \Somador|Add0~82\ ))
-- \Somador|Add0~86\ = CARRY(( \PC_REG|DOUT\(24) ) + ( GND ) + ( \Somador|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_REG|ALT_INV_DOUT\(24),
	cin => \Somador|Add0~82\,
	sumout => \Somador|Add0~85_sumout\,
	cout => \Somador|Add0~86\);

-- Location: FF_X16_Y5_N35
\PC_REG|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(24));

-- Location: LABCELL_X16_Y5_N36
\Somador|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~89_sumout\ = SUM(( \PC_REG|DOUT\(25) ) + ( GND ) + ( \Somador|Add0~86\ ))
-- \Somador|Add0~90\ = CARRY(( \PC_REG|DOUT\(25) ) + ( GND ) + ( \Somador|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT\(25),
	cin => \Somador|Add0~86\,
	sumout => \Somador|Add0~89_sumout\,
	cout => \Somador|Add0~90\);

-- Location: FF_X16_Y5_N38
\PC_REG|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~89_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(25));

-- Location: LABCELL_X16_Y5_N39
\Somador|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~93_sumout\ = SUM(( \PC_REG|DOUT\(26) ) + ( GND ) + ( \Somador|Add0~90\ ))
-- \Somador|Add0~94\ = CARRY(( \PC_REG|DOUT\(26) ) + ( GND ) + ( \Somador|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT\(26),
	cin => \Somador|Add0~90\,
	sumout => \Somador|Add0~93_sumout\,
	cout => \Somador|Add0~94\);

-- Location: FF_X16_Y5_N41
\PC_REG|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~93_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(26));

-- Location: FF_X16_Y5_N44
\PC_REG|DOUT[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~97_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT[27]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y5_N42
\Somador|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~97_sumout\ = SUM(( \PC_REG|DOUT[27]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~94\ ))
-- \Somador|Add0~98\ = CARRY(( \PC_REG|DOUT[27]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC_REG|ALT_INV_DOUT[27]~DUPLICATE_q\,
	cin => \Somador|Add0~94\,
	sumout => \Somador|Add0~97_sumout\,
	cout => \Somador|Add0~98\);

-- Location: FF_X16_Y5_N43
\PC_REG|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~97_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(27));

-- Location: FF_X16_Y5_N47
\PC_REG|DOUT[28]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~101_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT[28]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y5_N45
\Somador|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~101_sumout\ = SUM(( \PC_REG|DOUT[28]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~98\ ))
-- \Somador|Add0~102\ = CARRY(( \PC_REG|DOUT[28]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT[28]~DUPLICATE_q\,
	cin => \Somador|Add0~98\,
	sumout => \Somador|Add0~101_sumout\,
	cout => \Somador|Add0~102\);

-- Location: FF_X16_Y5_N46
\PC_REG|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~101_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(28));

-- Location: LABCELL_X16_Y5_N48
\Somador|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~105_sumout\ = SUM(( \PC_REG|DOUT\(29) ) + ( GND ) + ( \Somador|Add0~102\ ))
-- \Somador|Add0~106\ = CARRY(( \PC_REG|DOUT\(29) ) + ( GND ) + ( \Somador|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT\(29),
	cin => \Somador|Add0~102\,
	sumout => \Somador|Add0~105_sumout\,
	cout => \Somador|Add0~106\);

-- Location: FF_X16_Y5_N50
\PC_REG|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~105_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(29));

-- Location: LABCELL_X16_Y5_N51
\Somador|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~109_sumout\ = SUM(( \PC_REG|DOUT\(30) ) + ( GND ) + ( \Somador|Add0~106\ ))
-- \Somador|Add0~110\ = CARRY(( \PC_REG|DOUT\(30) ) + ( GND ) + ( \Somador|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT\(30),
	cin => \Somador|Add0~106\,
	sumout => \Somador|Add0~109_sumout\,
	cout => \Somador|Add0~110\);

-- Location: FF_X16_Y5_N52
\PC_REG|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~109_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(30));

-- Location: FF_X16_Y5_N56
\PC_REG|DOUT[31]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~113_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT[31]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y5_N54
\Somador|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~113_sumout\ = SUM(( \PC_REG|DOUT[31]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT[31]~DUPLICATE_q\,
	cin => \Somador|Add0~110\,
	sumout => \Somador|Add0~113_sumout\);

-- Location: FF_X16_Y5_N55
\PC_REG|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~113_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(31));
END structure;


