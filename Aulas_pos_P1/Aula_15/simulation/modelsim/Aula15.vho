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

-- DATE "11/05/2022 12:06:23"

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

ENTITY 	Aula15 IS
    PORT (
	CLOCK_50 : IN std_logic;
	Instru_opcode : OUT std_logic_vector(5 DOWNTO 0);
	ULAA_OUT : OUT std_logic_vector(31 DOWNTO 0);
	RS_OUT : OUT std_logic_vector(31 DOWNTO 0);
	RT_OUT : OUT std_logic_vector(31 DOWNTO 0);
	Rs_End : OUT std_logic_vector(4 DOWNTO 0);
	Rt_End : OUT std_logic_vector(4 DOWNTO 0);
	PC_OUTT : OUT std_logic_vector(31 DOWNTO 0)
	);
END Aula15;

-- Design Ports Information
-- Instru_opcode[0]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instru_opcode[1]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instru_opcode[2]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instru_opcode[3]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instru_opcode[4]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instru_opcode[5]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[1]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[2]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[3]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[4]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[5]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[6]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[7]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[9]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[10]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[11]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[12]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[13]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[14]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[15]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[16]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[17]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[18]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[19]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[20]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[21]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[22]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[23]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[24]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[25]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[26]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[27]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[28]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[29]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[30]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAA_OUT[31]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[0]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[1]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[2]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[4]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[5]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[6]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[7]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[8]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[9]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[10]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[11]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[12]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[13]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[14]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[15]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[16]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[17]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[18]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[19]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[20]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[21]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[22]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[23]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[24]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[25]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[26]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[27]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[28]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[29]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[30]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[31]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[0]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[1]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[2]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[3]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[4]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[5]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[6]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[7]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[8]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[9]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[10]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[11]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[12]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[13]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[14]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[15]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[16]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[17]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[18]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[19]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[20]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[21]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[22]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[23]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[24]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[25]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[26]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[27]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[28]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[29]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[30]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[31]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_End[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_End[1]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_End[2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_End[3]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_End[4]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_End[0]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_End[1]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_End[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_End[3]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_End[4]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTT[0]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTT[1]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTT[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTT[3]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTT[4]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTT[5]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTT[6]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTT[7]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTT[8]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTT[9]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTT[10]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTT[11]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTT[12]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTT[13]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTT[14]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTT[15]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTT[16]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTT[17]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTT[18]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTT[19]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTT[20]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTT[21]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTT[22]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTT[23]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTT[24]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTT[25]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTT[26]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTT[27]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTT[28]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTT[29]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTT[30]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTT[31]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Aula15 IS
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
SIGNAL ww_Instru_opcode : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_ULAA_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RS_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RT_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Rs_End : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Rt_End : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_PC_OUTT : std_logic_vector(31 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Somador1|Add0~17_sumout\ : std_logic;
SIGNAL \PC_REG|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador1|Add0~18\ : std_logic;
SIGNAL \Somador1|Add0~21_sumout\ : std_logic;
SIGNAL \Somador1|Add0~22\ : std_logic;
SIGNAL \Somador1|Add0~13_sumout\ : std_logic;
SIGNAL \Somador1|Add0~14\ : std_logic;
SIGNAL \Somador1|Add0~9_sumout\ : std_logic;
SIGNAL \PC_REG|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \PC_REG|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador1|Add0~10\ : std_logic;
SIGNAL \Somador1|Add0~5_sumout\ : std_logic;
SIGNAL \PC_REG|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador1|Add0~6\ : std_logic;
SIGNAL \Somador1|Add0~1_sumout\ : std_logic;
SIGNAL \PC_REG|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ULA1|Add1~2\ : std_logic;
SIGNAL \ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \ULA1|Add1~6\ : std_logic;
SIGNAL \ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \ULA1|Add1~10\ : std_logic;
SIGNAL \ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \ULA1|Add1~14\ : std_logic;
SIGNAL \ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \ULA1|Add1~18\ : std_logic;
SIGNAL \ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \ULA1|Add1~22\ : std_logic;
SIGNAL \ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \ULA1|Add1~26\ : std_logic;
SIGNAL \ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \ULA1|Add1~30\ : std_logic;
SIGNAL \ULA1|Add1~33_sumout\ : std_logic;
SIGNAL \ULA1|Add1~34\ : std_logic;
SIGNAL \ULA1|Add1~37_sumout\ : std_logic;
SIGNAL \ULA1|Add1~38\ : std_logic;
SIGNAL \ULA1|Add1~41_sumout\ : std_logic;
SIGNAL \ULA1|Add1~42\ : std_logic;
SIGNAL \ULA1|Add1~45_sumout\ : std_logic;
SIGNAL \ULA1|Add1~46\ : std_logic;
SIGNAL \ULA1|Add1~49_sumout\ : std_logic;
SIGNAL \ULA1|Add1~50\ : std_logic;
SIGNAL \ULA1|Add1~53_sumout\ : std_logic;
SIGNAL \ULA1|Add1~54\ : std_logic;
SIGNAL \ULA1|Add1~57_sumout\ : std_logic;
SIGNAL \ULA1|Add1~58\ : std_logic;
SIGNAL \ULA1|Add1~61_sumout\ : std_logic;
SIGNAL \ULA1|Add1~62\ : std_logic;
SIGNAL \ULA1|Add1~65_sumout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[3]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[0]~0_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[1]~1_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[2]~3_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[3]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \Somador1|Add0~2\ : std_logic;
SIGNAL \Somador1|Add0~25_sumout\ : std_logic;
SIGNAL \PC_REG|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador1|Add0~26\ : std_logic;
SIGNAL \Somador1|Add0~29_sumout\ : std_logic;
SIGNAL \Somador1|Add0~30\ : std_logic;
SIGNAL \Somador1|Add0~33_sumout\ : std_logic;
SIGNAL \PC_REG|DOUT[10]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador1|Add0~34\ : std_logic;
SIGNAL \Somador1|Add0~37_sumout\ : std_logic;
SIGNAL \Somador1|Add0~38\ : std_logic;
SIGNAL \Somador1|Add0~41_sumout\ : std_logic;
SIGNAL \Somador1|Add0~42\ : std_logic;
SIGNAL \Somador1|Add0~45_sumout\ : std_logic;
SIGNAL \PC_REG|DOUT[13]~DUPLICATE_q\ : std_logic;
SIGNAL \PC_REG|DOUT[14]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador1|Add0~46\ : std_logic;
SIGNAL \Somador1|Add0~49_sumout\ : std_logic;
SIGNAL \PC_REG|DOUT[15]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador1|Add0~50\ : std_logic;
SIGNAL \Somador1|Add0~53_sumout\ : std_logic;
SIGNAL \Somador1|Add0~54\ : std_logic;
SIGNAL \Somador1|Add0~57_sumout\ : std_logic;
SIGNAL \PC_REG|DOUT[17]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador1|Add0~58\ : std_logic;
SIGNAL \Somador1|Add0~61_sumout\ : std_logic;
SIGNAL \PC_REG|DOUT[18]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador1|Add0~62\ : std_logic;
SIGNAL \Somador1|Add0~65_sumout\ : std_logic;
SIGNAL \Somador1|Add0~66\ : std_logic;
SIGNAL \Somador1|Add0~69_sumout\ : std_logic;
SIGNAL \Somador1|Add0~70\ : std_logic;
SIGNAL \Somador1|Add0~73_sumout\ : std_logic;
SIGNAL \PC_REG|DOUT[21]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador1|Add0~74\ : std_logic;
SIGNAL \Somador1|Add0~77_sumout\ : std_logic;
SIGNAL \Somador1|Add0~78\ : std_logic;
SIGNAL \Somador1|Add0~81_sumout\ : std_logic;
SIGNAL \Somador1|Add0~82\ : std_logic;
SIGNAL \Somador1|Add0~85_sumout\ : std_logic;
SIGNAL \PC_REG|DOUT[24]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador1|Add0~86\ : std_logic;
SIGNAL \Somador1|Add0~89_sumout\ : std_logic;
SIGNAL \Somador1|Add0~90\ : std_logic;
SIGNAL \Somador1|Add0~93_sumout\ : std_logic;
SIGNAL \Somador1|Add0~94\ : std_logic;
SIGNAL \Somador1|Add0~97_sumout\ : std_logic;
SIGNAL \Somador1|Add0~98\ : std_logic;
SIGNAL \Somador1|Add0~101_sumout\ : std_logic;
SIGNAL \PC_REG|DOUT[28]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador1|Add0~102\ : std_logic;
SIGNAL \Somador1|Add0~105_sumout\ : std_logic;
SIGNAL \Somador1|Add0~106\ : std_logic;
SIGNAL \Somador1|Add0~109_sumout\ : std_logic;
SIGNAL \Somador1|Add0~110\ : std_logic;
SIGNAL \Somador1|Add0~113_sumout\ : std_logic;
SIGNAL \Somador1|Add0~114\ : std_logic;
SIGNAL \Somador1|Add0~117_sumout\ : std_logic;
SIGNAL \PC_REG|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \PC_REG|ALT_INV_DOUT[28]~DUPLICATE_q\ : std_logic;
SIGNAL \PC_REG|ALT_INV_DOUT[24]~DUPLICATE_q\ : std_logic;
SIGNAL \PC_REG|ALT_INV_DOUT[21]~DUPLICATE_q\ : std_logic;
SIGNAL \PC_REG|ALT_INV_DOUT[18]~DUPLICATE_q\ : std_logic;
SIGNAL \PC_REG|ALT_INV_DOUT[17]~DUPLICATE_q\ : std_logic;
SIGNAL \PC_REG|ALT_INV_DOUT[15]~DUPLICATE_q\ : std_logic;
SIGNAL \PC_REG|ALT_INV_DOUT[14]~DUPLICATE_q\ : std_logic;
SIGNAL \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \PC_REG|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \PC_REG|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \PC_REG|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \PC_REG|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \PC_REG|ALT_INV_DOUT\ : std_logic_vector(31 DOWNTO 3);
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[3]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
Instru_opcode <= ww_Instru_opcode;
ULAA_OUT <= ww_ULAA_OUT;
RS_OUT <= ww_RS_OUT;
RT_OUT <= ww_RT_OUT;
Rs_End <= ww_Rs_End;
Rt_End <= ww_Rt_End;
PC_OUTT <= ww_PC_OUTT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\PC_REG|ALT_INV_DOUT[28]~DUPLICATE_q\ <= NOT \PC_REG|DOUT[28]~DUPLICATE_q\;
\PC_REG|ALT_INV_DOUT[24]~DUPLICATE_q\ <= NOT \PC_REG|DOUT[24]~DUPLICATE_q\;
\PC_REG|ALT_INV_DOUT[21]~DUPLICATE_q\ <= NOT \PC_REG|DOUT[21]~DUPLICATE_q\;
\PC_REG|ALT_INV_DOUT[18]~DUPLICATE_q\ <= NOT \PC_REG|DOUT[18]~DUPLICATE_q\;
\PC_REG|ALT_INV_DOUT[17]~DUPLICATE_q\ <= NOT \PC_REG|DOUT[17]~DUPLICATE_q\;
\PC_REG|ALT_INV_DOUT[15]~DUPLICATE_q\ <= NOT \PC_REG|DOUT[15]~DUPLICATE_q\;
\PC_REG|ALT_INV_DOUT[14]~DUPLICATE_q\ <= NOT \PC_REG|DOUT[14]~DUPLICATE_q\;
\PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \PC_REG|DOUT[2]~DUPLICATE_q\;
\PC_REG|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \PC_REG|DOUT[4]~DUPLICATE_q\;
\PC_REG|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \PC_REG|DOUT[5]~DUPLICATE_q\;
\PC_REG|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \PC_REG|DOUT[6]~DUPLICATE_q\;
\PC_REG|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \PC_REG|DOUT[7]~DUPLICATE_q\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\PC_REG|ALT_INV_DOUT\(31) <= NOT \PC_REG|DOUT\(31);
\PC_REG|ALT_INV_DOUT\(30) <= NOT \PC_REG|DOUT\(30);
\PC_REG|ALT_INV_DOUT\(29) <= NOT \PC_REG|DOUT\(29);
\PC_REG|ALT_INV_DOUT\(27) <= NOT \PC_REG|DOUT\(27);
\PC_REG|ALT_INV_DOUT\(26) <= NOT \PC_REG|DOUT\(26);
\PC_REG|ALT_INV_DOUT\(25) <= NOT \PC_REG|DOUT\(25);
\PC_REG|ALT_INV_DOUT\(23) <= NOT \PC_REG|DOUT\(23);
\PC_REG|ALT_INV_DOUT\(22) <= NOT \PC_REG|DOUT\(22);
\PC_REG|ALT_INV_DOUT\(20) <= NOT \PC_REG|DOUT\(20);
\PC_REG|ALT_INV_DOUT\(19) <= NOT \PC_REG|DOUT\(19);
\PC_REG|ALT_INV_DOUT\(16) <= NOT \PC_REG|DOUT\(16);
\PC_REG|ALT_INV_DOUT\(13) <= NOT \PC_REG|DOUT\(13);
\PC_REG|ALT_INV_DOUT\(12) <= NOT \PC_REG|DOUT\(12);
\PC_REG|ALT_INV_DOUT\(11) <= NOT \PC_REG|DOUT\(11);
\PC_REG|ALT_INV_DOUT\(10) <= NOT \PC_REG|DOUT\(10);
\PC_REG|ALT_INV_DOUT\(9) <= NOT \PC_REG|DOUT\(9);
\PC_REG|ALT_INV_DOUT\(8) <= NOT \PC_REG|DOUT\(8);
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\BANCO_REG|ALT_INV_saidaA[3]~0_combout\ <= NOT \BANCO_REG|saidaA[3]~0_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\PC_REG|ALT_INV_DOUT\(3) <= NOT \PC_REG|DOUT\(3);
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\PC_REG|ALT_INV_DOUT\(4) <= NOT \PC_REG|DOUT\(4);
\PC_REG|ALT_INV_DOUT\(6) <= NOT \PC_REG|DOUT\(6);
\PC_REG|ALT_INV_DOUT\(7) <= NOT \PC_REG|DOUT\(7);

-- Location: IOOBUF_X18_Y0_N53
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

-- Location: IOOBUF_X19_Y0_N36
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

-- Location: IOOBUF_X0_Y20_N22
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

-- Location: IOOBUF_X8_Y45_N93
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

-- Location: IOOBUF_X16_Y45_N93
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

-- Location: IOOBUF_X23_Y0_N93
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

-- Location: IOOBUF_X46_Y45_N76
\ULAA_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add1~1_sumout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(0));

-- Location: IOOBUF_X43_Y45_N19
\ULAA_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add1~5_sumout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(1));

-- Location: IOOBUF_X44_Y45_N2
\ULAA_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add1~9_sumout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(2));

-- Location: IOOBUF_X42_Y45_N36
\ULAA_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add1~13_sumout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(3));

-- Location: IOOBUF_X42_Y45_N2
\ULAA_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add1~17_sumout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(4));

-- Location: IOOBUF_X42_Y45_N53
\ULAA_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add1~21_sumout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(5));

-- Location: IOOBUF_X42_Y45_N19
\ULAA_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add1~25_sumout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(6));

-- Location: IOOBUF_X43_Y45_N36
\ULAA_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add1~29_sumout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(7));

-- Location: IOOBUF_X44_Y45_N36
\ULAA_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add1~33_sumout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(8));

-- Location: IOOBUF_X46_Y45_N42
\ULAA_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add1~37_sumout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(9));

-- Location: IOOBUF_X44_Y45_N19
\ULAA_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add1~41_sumout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(10));

-- Location: IOOBUF_X40_Y45_N93
\ULAA_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add1~45_sumout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(11));

-- Location: IOOBUF_X40_Y45_N42
\ULAA_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add1~49_sumout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(12));

-- Location: IOOBUF_X44_Y45_N53
\ULAA_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add1~53_sumout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(13));

-- Location: IOOBUF_X43_Y45_N2
\ULAA_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add1~57_sumout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(14));

-- Location: IOOBUF_X43_Y45_N53
\ULAA_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add1~61_sumout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(15));

-- Location: IOOBUF_X48_Y45_N36
\ULAA_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add1~65_sumout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(16));

-- Location: IOOBUF_X34_Y45_N53
\ULAA_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add1~65_sumout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(17));

-- Location: IOOBUF_X46_Y45_N93
\ULAA_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add1~65_sumout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(18));

-- Location: IOOBUF_X48_Y45_N53
\ULAA_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add1~65_sumout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(19));

-- Location: IOOBUF_X36_Y45_N19
\ULAA_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add1~65_sumout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(20));

-- Location: IOOBUF_X38_Y45_N19
\ULAA_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add1~65_sumout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(21));

-- Location: IOOBUF_X38_Y45_N53
\ULAA_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add1~65_sumout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(22));

-- Location: IOOBUF_X36_Y45_N36
\ULAA_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add1~65_sumout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(23));

-- Location: IOOBUF_X34_Y45_N2
\ULAA_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add1~65_sumout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(24));

-- Location: IOOBUF_X38_Y45_N36
\ULAA_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add1~65_sumout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(25));

-- Location: IOOBUF_X46_Y45_N59
\ULAA_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add1~65_sumout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(26));

-- Location: IOOBUF_X34_Y45_N19
\ULAA_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add1~65_sumout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(27));

-- Location: IOOBUF_X38_Y45_N2
\ULAA_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add1~65_sumout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(28));

-- Location: IOOBUF_X48_Y45_N19
\ULAA_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add1~65_sumout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(29));

-- Location: IOOBUF_X40_Y45_N76
\ULAA_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add1~65_sumout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(30));

-- Location: IOOBUF_X48_Y45_N2
\ULAA_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add1~65_sumout\,
	devoe => ww_devoe,
	o => ww_ULAA_OUT(31));

-- Location: IOOBUF_X18_Y45_N53
\RS_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(0));

-- Location: IOOBUF_X36_Y0_N2
\RS_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|ALT_INV_saidaA[3]~0_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(1));

-- Location: IOOBUF_X16_Y0_N42
\RS_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(2));

-- Location: IOOBUF_X36_Y0_N19
\RS_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|ALT_INV_saidaA[3]~0_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(3));

-- Location: IOOBUF_X50_Y45_N53
\RS_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(4));

-- Location: IOOBUF_X11_Y0_N19
\RS_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(5));

-- Location: IOOBUF_X0_Y18_N79
\RS_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(6));

-- Location: IOOBUF_X0_Y21_N56
\RS_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(7));

-- Location: IOOBUF_X50_Y45_N19
\RS_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(8));

-- Location: IOOBUF_X11_Y0_N2
\RS_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(10));

-- Location: IOOBUF_X29_Y0_N19
\RS_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(11));

-- Location: IOOBUF_X0_Y19_N56
\RS_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(12));

-- Location: IOOBUF_X10_Y0_N59
\RS_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(13));

-- Location: IOOBUF_X54_Y20_N5
\RS_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(14));

-- Location: IOOBUF_X10_Y0_N42
\RS_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(15));

-- Location: IOOBUF_X0_Y21_N22
\RS_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(16));

-- Location: IOOBUF_X18_Y0_N19
\RS_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(17));

-- Location: IOOBUF_X16_Y45_N42
\RS_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(18));

-- Location: IOOBUF_X16_Y45_N59
\RS_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(19));

-- Location: IOOBUF_X54_Y15_N56
\RS_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(20));

-- Location: IOOBUF_X54_Y21_N22
\RS_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(21));

-- Location: IOOBUF_X54_Y21_N5
\RS_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(22));

-- Location: IOOBUF_X14_Y45_N36
\RS_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(23));

-- Location: IOOBUF_X12_Y45_N19
\RS_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(24));

-- Location: IOOBUF_X52_Y0_N36
\RS_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(25));

-- Location: IOOBUF_X0_Y18_N96
\RS_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(26));

-- Location: IOOBUF_X12_Y0_N53
\RS_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(27));

-- Location: IOOBUF_X0_Y21_N5
\RS_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(28));

-- Location: IOOBUF_X50_Y45_N2
\RS_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(29));

-- Location: IOOBUF_X18_Y45_N19
\RS_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(30));

-- Location: IOOBUF_X25_Y0_N53
\RS_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(31));

-- Location: IOOBUF_X38_Y0_N53
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

-- Location: IOOBUF_X38_Y0_N2
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

-- Location: IOOBUF_X38_Y0_N19
\RT_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[2]~3_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(2));

-- Location: IOOBUF_X34_Y0_N36
\RT_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[3]~2_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(3));

-- Location: IOOBUF_X14_Y0_N2
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

-- Location: IOOBUF_X20_Y45_N36
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

-- Location: IOOBUF_X54_Y15_N39
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

-- Location: IOOBUF_X32_Y45_N76
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

-- Location: IOOBUF_X54_Y19_N22
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

-- Location: IOOBUF_X12_Y45_N2
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

-- Location: IOOBUF_X12_Y45_N53
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

-- Location: IOOBUF_X54_Y17_N39
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

-- Location: IOOBUF_X54_Y14_N79
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

-- Location: IOOBUF_X10_Y45_N19
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

-- Location: IOOBUF_X18_Y45_N2
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

-- Location: IOOBUF_X18_Y0_N36
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

-- Location: IOOBUF_X52_Y45_N36
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

-- Location: IOOBUF_X34_Y0_N2
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

-- Location: IOOBUF_X14_Y0_N36
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

-- Location: IOOBUF_X20_Y45_N19
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

-- Location: IOOBUF_X54_Y21_N56
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

-- Location: IOOBUF_X52_Y45_N53
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

-- Location: IOOBUF_X14_Y0_N19
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

-- Location: IOOBUF_X33_Y0_N93
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

-- Location: IOOBUF_X36_Y45_N2
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

-- Location: IOOBUF_X11_Y0_N53
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

-- Location: IOOBUF_X54_Y17_N56
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

-- Location: IOOBUF_X50_Y45_N36
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

-- Location: IOOBUF_X54_Y20_N39
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

-- Location: IOOBUF_X34_Y0_N53
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

-- Location: IOOBUF_X18_Y0_N2
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

-- Location: IOOBUF_X34_Y45_N36
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

-- Location: IOOBUF_X40_Y45_N59
\Rs_End[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_Rs_End(0));

-- Location: IOOBUF_X24_Y0_N2
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

-- Location: IOOBUF_X14_Y45_N53
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

-- Location: IOOBUF_X36_Y0_N36
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

-- Location: IOOBUF_X54_Y17_N5
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

-- Location: IOOBUF_X34_Y0_N19
\Rt_End[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~3_combout\,
	devoe => ww_devoe,
	o => ww_Rt_End(0));

-- Location: IOOBUF_X40_Y0_N59
\Rt_End[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|ALT_INV_memROM~4_combout\,
	devoe => ww_devoe,
	o => ww_Rt_End(1));

-- Location: IOOBUF_X38_Y0_N36
\Rt_End[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~5_combout\,
	devoe => ww_devoe,
	o => ww_Rt_End(2));

-- Location: IOOBUF_X36_Y0_N53
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

-- Location: IOOBUF_X19_Y0_N53
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

-- Location: IOOBUF_X29_Y0_N53
\PC_OUTT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_OUTT(0));

-- Location: IOOBUF_X8_Y45_N59
\PC_OUTT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_OUTT(1));

-- Location: IOOBUF_X43_Y0_N19
\PC_OUTT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(2),
	devoe => ww_devoe,
	o => ww_PC_OUTT(2));

-- Location: IOOBUF_X43_Y0_N53
\PC_OUTT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(3),
	devoe => ww_devoe,
	o => ww_PC_OUTT(3));

-- Location: IOOBUF_X40_Y0_N76
\PC_OUTT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUTT(4));

-- Location: IOOBUF_X43_Y0_N36
\PC_OUTT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(5),
	devoe => ww_devoe,
	o => ww_PC_OUTT(5));

-- Location: IOOBUF_X40_Y0_N42
\PC_OUTT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUTT(6));

-- Location: IOOBUF_X40_Y0_N93
\PC_OUTT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUTT(7));

-- Location: IOOBUF_X52_Y0_N53
\PC_OUTT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT[8]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUTT(8));

-- Location: IOOBUF_X51_Y0_N19
\PC_OUTT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(9),
	devoe => ww_devoe,
	o => ww_PC_OUTT(9));

-- Location: IOOBUF_X51_Y0_N53
\PC_OUTT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT[10]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUTT(10));

-- Location: IOOBUF_X44_Y0_N2
\PC_OUTT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(11),
	devoe => ww_devoe,
	o => ww_PC_OUTT(11));

-- Location: IOOBUF_X43_Y0_N2
\PC_OUTT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(12),
	devoe => ww_devoe,
	o => ww_PC_OUTT(12));

-- Location: IOOBUF_X44_Y0_N36
\PC_OUTT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT[13]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUTT(13));

-- Location: IOOBUF_X50_Y0_N53
\PC_OUTT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(14),
	devoe => ww_devoe,
	o => ww_PC_OUTT(14));

-- Location: IOOBUF_X50_Y0_N19
\PC_OUTT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(15),
	devoe => ww_devoe,
	o => ww_PC_OUTT(15));

-- Location: IOOBUF_X51_Y0_N2
\PC_OUTT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(16),
	devoe => ww_devoe,
	o => ww_PC_OUTT(16));

-- Location: IOOBUF_X52_Y0_N2
\PC_OUTT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(17),
	devoe => ww_devoe,
	o => ww_PC_OUTT(17));

-- Location: IOOBUF_X50_Y0_N36
\PC_OUTT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(18),
	devoe => ww_devoe,
	o => ww_PC_OUTT(18));

-- Location: IOOBUF_X52_Y0_N19
\PC_OUTT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(19),
	devoe => ww_devoe,
	o => ww_PC_OUTT(19));

-- Location: IOOBUF_X51_Y0_N36
\PC_OUTT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(20),
	devoe => ww_devoe,
	o => ww_PC_OUTT(20));

-- Location: IOOBUF_X50_Y0_N2
\PC_OUTT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(21),
	devoe => ww_devoe,
	o => ww_PC_OUTT(21));

-- Location: IOOBUF_X48_Y0_N93
\PC_OUTT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(22),
	devoe => ww_devoe,
	o => ww_PC_OUTT(22));

-- Location: IOOBUF_X44_Y0_N53
\PC_OUTT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(23),
	devoe => ww_devoe,
	o => ww_PC_OUTT(23));

-- Location: IOOBUF_X48_Y0_N42
\PC_OUTT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(24),
	devoe => ww_devoe,
	o => ww_PC_OUTT(24));

-- Location: IOOBUF_X46_Y0_N2
\PC_OUTT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(25),
	devoe => ww_devoe,
	o => ww_PC_OUTT(25));

-- Location: IOOBUF_X46_Y0_N53
\PC_OUTT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(26),
	devoe => ww_devoe,
	o => ww_PC_OUTT(26));

-- Location: IOOBUF_X46_Y0_N36
\PC_OUTT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(27),
	devoe => ww_devoe,
	o => ww_PC_OUTT(27));

-- Location: IOOBUF_X48_Y0_N59
\PC_OUTT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(28),
	devoe => ww_devoe,
	o => ww_PC_OUTT(28));

-- Location: IOOBUF_X48_Y0_N76
\PC_OUTT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(29),
	devoe => ww_devoe,
	o => ww_PC_OUTT(29));

-- Location: IOOBUF_X44_Y0_N19
\PC_OUTT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(30),
	devoe => ww_devoe,
	o => ww_PC_OUTT(30));

-- Location: IOOBUF_X46_Y0_N19
\PC_OUTT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_REG|DOUT\(31),
	devoe => ww_devoe,
	o => ww_PC_OUTT(31));

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

-- Location: LABCELL_X47_Y2_N0
\Somador1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador1|Add0~17_sumout\ = SUM(( \PC_REG|DOUT[2]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \Somador1|Add0~18\ = CARRY(( \PC_REG|DOUT[2]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => GND,
	sumout => \Somador1|Add0~17_sumout\,
	cout => \Somador1|Add0~18\);

-- Location: FF_X47_Y2_N2
\PC_REG|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y2_N3
\Somador1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador1|Add0~21_sumout\ = SUM(( \PC_REG|DOUT\(3) ) + ( GND ) + ( \Somador1|Add0~18\ ))
-- \Somador1|Add0~22\ = CARRY(( \PC_REG|DOUT\(3) ) + ( GND ) + ( \Somador1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_REG|ALT_INV_DOUT\(3),
	cin => \Somador1|Add0~18\,
	sumout => \Somador1|Add0~21_sumout\,
	cout => \Somador1|Add0~22\);

-- Location: FF_X47_Y2_N5
\PC_REG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(3));

-- Location: LABCELL_X47_Y2_N6
\Somador1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador1|Add0~13_sumout\ = SUM(( \PC_REG|DOUT\(4) ) + ( GND ) + ( \Somador1|Add0~22\ ))
-- \Somador1|Add0~14\ = CARRY(( \PC_REG|DOUT\(4) ) + ( GND ) + ( \Somador1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_REG|ALT_INV_DOUT\(4),
	cin => \Somador1|Add0~22\,
	sumout => \Somador1|Add0~13_sumout\,
	cout => \Somador1|Add0~14\);

-- Location: FF_X47_Y2_N7
\PC_REG|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(4));

-- Location: LABCELL_X47_Y2_N9
\Somador1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador1|Add0~9_sumout\ = SUM(( \PC_REG|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \Somador1|Add0~14\ ))
-- \Somador1|Add0~10\ = CARRY(( \PC_REG|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \Somador1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \Somador1|Add0~14\,
	sumout => \Somador1|Add0~9_sumout\,
	cout => \Somador1|Add0~10\);

-- Location: FF_X47_Y2_N11
\PC_REG|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT[5]~DUPLICATE_q\);

-- Location: FF_X47_Y2_N8
\PC_REG|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT[4]~DUPLICATE_q\);

-- Location: FF_X47_Y2_N14
\PC_REG|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(6));

-- Location: LABCELL_X47_Y2_N12
\Somador1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador1|Add0~5_sumout\ = SUM(( \PC_REG|DOUT\(6) ) + ( GND ) + ( \Somador1|Add0~10\ ))
-- \Somador1|Add0~6\ = CARRY(( \PC_REG|DOUT\(6) ) + ( GND ) + ( \Somador1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC_REG|ALT_INV_DOUT\(6),
	cin => \Somador1|Add0~10\,
	sumout => \Somador1|Add0~5_sumout\,
	cout => \Somador1|Add0~6\);

-- Location: FF_X47_Y2_N13
\PC_REG|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT[6]~DUPLICATE_q\);

-- Location: FF_X47_Y2_N17
\PC_REG|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(7));

-- Location: LABCELL_X47_Y2_N15
\Somador1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador1|Add0~1_sumout\ = SUM(( \PC_REG|DOUT\(7) ) + ( GND ) + ( \Somador1|Add0~6\ ))
-- \Somador1|Add0~2\ = CARRY(( \PC_REG|DOUT\(7) ) + ( GND ) + ( \Somador1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT\(7),
	cin => \Somador1|Add0~6\,
	sumout => \Somador1|Add0~1_sumout\,
	cout => \Somador1|Add0~2\);

-- Location: FF_X47_Y2_N16
\PC_REG|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y2_N39
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( !\PC_REG|DOUT[6]~DUPLICATE_q\ & ( !\PC_REG|DOUT[7]~DUPLICATE_q\ & ( (!\PC_REG|DOUT[5]~DUPLICATE_q\ & (!\PC_REG|DOUT[4]~DUPLICATE_q\ & \PC_REG|DOUT[2]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_REG|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \PC_REG|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \PC_REG|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \PC_REG|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \ROM1|memROM~6_combout\);

-- Location: LABCELL_X43_Y44_N0
\ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~1_sumout\ = SUM(( !\ROM1|memROM~6_combout\ ) + ( VCC ) + ( !VCC ))
-- \ULA1|Add1~2\ = CARRY(( !\ROM1|memROM~6_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	cin => GND,
	sumout => \ULA1|Add1~1_sumout\,
	cout => \ULA1|Add1~2\);

-- Location: LABCELL_X40_Y2_N24
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( !\PC_REG|DOUT[6]~DUPLICATE_q\ & ( !\PC_REG|DOUT[4]~DUPLICATE_q\ & ( (!\PC_REG|DOUT[5]~DUPLICATE_q\ & !\PC_REG|DOUT[7]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC_REG|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \PC_REG|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \PC_REG|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \PC_REG|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM1|memROM~0_combout\);

-- Location: LABCELL_X40_Y2_N30
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\PC_REG|DOUT[7]~DUPLICATE_q\ & ( !\PC_REG|DOUT[5]~DUPLICATE_q\ & ( (!\PC_REG|DOUT[6]~DUPLICATE_q\ & (!\PC_REG|DOUT\(3) & (!\PC_REG|DOUT[2]~DUPLICATE_q\ & !\PC_REG|DOUT[4]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_REG|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \PC_REG|ALT_INV_DOUT\(3),
	datac => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \PC_REG|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \PC_REG|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \PC_REG|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X43_Y44_N3
\ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~5_sumout\ = SUM(( !\ROM1|memROM~6_combout\ ) + ( (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\) ) + ( \ULA1|Add1~2\ ))
-- \ULA1|Add1~6\ = CARRY(( !\ROM1|memROM~6_combout\ ) + ( (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\) ) + ( \ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	cin => \ULA1|Add1~2\,
	sumout => \ULA1|Add1~5_sumout\,
	cout => \ULA1|Add1~6\);

-- Location: LABCELL_X43_Y44_N6
\ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~9_sumout\ = SUM(( !\ROM1|memROM~6_combout\ ) + ( GND ) + ( \ULA1|Add1~6\ ))
-- \ULA1|Add1~10\ = CARRY(( !\ROM1|memROM~6_combout\ ) + ( GND ) + ( \ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	cin => \ULA1|Add1~6\,
	sumout => \ULA1|Add1~9_sumout\,
	cout => \ULA1|Add1~10\);

-- Location: LABCELL_X43_Y44_N9
\ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~13_sumout\ = SUM(( (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\) ) + ( VCC ) + ( \ULA1|Add1~10\ ))
-- \ULA1|Add1~14\ = CARRY(( (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\) ) + ( VCC ) + ( \ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	cin => \ULA1|Add1~10\,
	sumout => \ULA1|Add1~13_sumout\,
	cout => \ULA1|Add1~14\);

-- Location: LABCELL_X43_Y44_N12
\ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~17_sumout\ = SUM(( VCC ) + ( GND ) + ( \ULA1|Add1~14\ ))
-- \ULA1|Add1~18\ = CARRY(( VCC ) + ( GND ) + ( \ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA1|Add1~14\,
	sumout => \ULA1|Add1~17_sumout\,
	cout => \ULA1|Add1~18\);

-- Location: LABCELL_X43_Y44_N15
\ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~21_sumout\ = SUM(( !\ROM1|memROM~0_combout\ ) + ( GND ) + ( \ULA1|Add1~18\ ))
-- \ULA1|Add1~22\ = CARRY(( !\ROM1|memROM~0_combout\ ) + ( GND ) + ( \ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	cin => \ULA1|Add1~18\,
	sumout => \ULA1|Add1~21_sumout\,
	cout => \ULA1|Add1~22\);

-- Location: LABCELL_X43_Y44_N18
\ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~25_sumout\ = SUM(( VCC ) + ( GND ) + ( \ULA1|Add1~22\ ))
-- \ULA1|Add1~26\ = CARRY(( VCC ) + ( GND ) + ( \ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA1|Add1~22\,
	sumout => \ULA1|Add1~25_sumout\,
	cout => \ULA1|Add1~26\);

-- Location: LABCELL_X43_Y44_N21
\ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~29_sumout\ = SUM(( VCC ) + ( GND ) + ( \ULA1|Add1~26\ ))
-- \ULA1|Add1~30\ = CARRY(( VCC ) + ( GND ) + ( \ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA1|Add1~26\,
	sumout => \ULA1|Add1~29_sumout\,
	cout => \ULA1|Add1~30\);

-- Location: LABCELL_X43_Y44_N24
\ULA1|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~33_sumout\ = SUM(( VCC ) + ( GND ) + ( \ULA1|Add1~30\ ))
-- \ULA1|Add1~34\ = CARRY(( VCC ) + ( GND ) + ( \ULA1|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA1|Add1~30\,
	sumout => \ULA1|Add1~33_sumout\,
	cout => \ULA1|Add1~34\);

-- Location: LABCELL_X43_Y44_N27
\ULA1|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~37_sumout\ = SUM(( VCC ) + ( GND ) + ( \ULA1|Add1~34\ ))
-- \ULA1|Add1~38\ = CARRY(( VCC ) + ( GND ) + ( \ULA1|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA1|Add1~34\,
	sumout => \ULA1|Add1~37_sumout\,
	cout => \ULA1|Add1~38\);

-- Location: LABCELL_X43_Y44_N30
\ULA1|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~41_sumout\ = SUM(( VCC ) + ( GND ) + ( \ULA1|Add1~38\ ))
-- \ULA1|Add1~42\ = CARRY(( VCC ) + ( GND ) + ( \ULA1|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA1|Add1~38\,
	sumout => \ULA1|Add1~41_sumout\,
	cout => \ULA1|Add1~42\);

-- Location: LABCELL_X43_Y44_N33
\ULA1|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~45_sumout\ = SUM(( VCC ) + ( GND ) + ( \ULA1|Add1~42\ ))
-- \ULA1|Add1~46\ = CARRY(( VCC ) + ( GND ) + ( \ULA1|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA1|Add1~42\,
	sumout => \ULA1|Add1~45_sumout\,
	cout => \ULA1|Add1~46\);

-- Location: LABCELL_X43_Y44_N36
\ULA1|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~49_sumout\ = SUM(( VCC ) + ( GND ) + ( \ULA1|Add1~46\ ))
-- \ULA1|Add1~50\ = CARRY(( VCC ) + ( GND ) + ( \ULA1|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA1|Add1~46\,
	sumout => \ULA1|Add1~49_sumout\,
	cout => \ULA1|Add1~50\);

-- Location: LABCELL_X43_Y44_N39
\ULA1|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~53_sumout\ = SUM(( VCC ) + ( GND ) + ( \ULA1|Add1~50\ ))
-- \ULA1|Add1~54\ = CARRY(( VCC ) + ( GND ) + ( \ULA1|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA1|Add1~50\,
	sumout => \ULA1|Add1~53_sumout\,
	cout => \ULA1|Add1~54\);

-- Location: LABCELL_X43_Y44_N42
\ULA1|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~57_sumout\ = SUM(( !\ROM1|memROM~0_combout\ ) + ( GND ) + ( \ULA1|Add1~54\ ))
-- \ULA1|Add1~58\ = CARRY(( !\ROM1|memROM~0_combout\ ) + ( GND ) + ( \ULA1|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	cin => \ULA1|Add1~54\,
	sumout => \ULA1|Add1~57_sumout\,
	cout => \ULA1|Add1~58\);

-- Location: LABCELL_X43_Y44_N45
\ULA1|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~61_sumout\ = SUM(( VCC ) + ( GND ) + ( \ULA1|Add1~58\ ))
-- \ULA1|Add1~62\ = CARRY(( VCC ) + ( GND ) + ( \ULA1|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA1|Add1~58\,
	sumout => \ULA1|Add1~61_sumout\,
	cout => \ULA1|Add1~62\);

-- Location: LABCELL_X43_Y44_N48
\ULA1|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~65_sumout\ = SUM(( VCC ) + ( GND ) + ( \ULA1|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA1|Add1~62\,
	sumout => \ULA1|Add1~65_sumout\);

-- Location: LABCELL_X40_Y2_N0
\BANCO_REG|saidaA[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[3]~0_combout\ = ( \ROM1|memROM~0_combout\ & ( !\ROM1|memROM~1_combout\ ) ) # ( !\ROM1|memROM~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|saidaA[3]~0_combout\);

-- Location: LABCELL_X40_Y2_N9
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( !\PC_REG|DOUT[5]~DUPLICATE_q\ & ( !\PC_REG|DOUT[4]~DUPLICATE_q\ & ( (!\PC_REG|DOUT\(3)) # (!\PC_REG|DOUT[2]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT\(3),
	datad => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \PC_REG|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \PC_REG|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM1|memROM~2_combout\);

-- Location: LABCELL_X40_Y2_N48
\BANCO_REG|saidaB[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[0]~0_combout\ = ( \PC_REG|DOUT\(3) & ( \ROM1|memROM~0_combout\ & ( (\PC_REG|DOUT[2]~DUPLICATE_q\ & (((!\ROM1|memROM~2_combout\) # (\PC_REG|DOUT[6]~DUPLICATE_q\)) # (\PC_REG|DOUT[7]~DUPLICATE_q\))) ) ) ) # ( !\PC_REG|DOUT\(3) & ( 
-- \ROM1|memROM~0_combout\ & ( (!\PC_REG|DOUT[7]~DUPLICATE_q\ & (\ROM1|memROM~2_combout\ & !\PC_REG|DOUT[6]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010000000000000110100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_REG|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \PC_REG|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datae => \PC_REG|ALT_INV_DOUT\(3),
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|saidaB[0]~0_combout\);

-- Location: LABCELL_X40_Y2_N57
\BANCO_REG|saidaB[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[1]~1_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~2_combout\ & (\PC_REG|DOUT\(3) & !\PC_REG|DOUT[2]~DUPLICATE_q\)) # (\ROM1|memROM~2_combout\ & (!\PC_REG|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111100001100000011110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \PC_REG|ALT_INV_DOUT\(3),
	datad => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \BANCO_REG|saidaB[1]~1_combout\);

-- Location: LABCELL_X40_Y2_N18
\BANCO_REG|saidaB[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[2]~3_combout\ = ( !\PC_REG|DOUT[6]~DUPLICATE_q\ & ( !\PC_REG|DOUT[4]~DUPLICATE_q\ & ( (!\PC_REG|DOUT[5]~DUPLICATE_q\ & (\PC_REG|DOUT\(3) & !\PC_REG|DOUT[7]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_REG|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \PC_REG|ALT_INV_DOUT\(3),
	datac => \PC_REG|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \PC_REG|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \PC_REG|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \BANCO_REG|saidaB[2]~3_combout\);

-- Location: LABCELL_X40_Y2_N12
\BANCO_REG|saidaB[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[3]~2_combout\ = ( \ROM1|memROM~2_combout\ & ( (\ROM1|memROM~0_combout\ & ((!\PC_REG|DOUT\(3)) # (!\PC_REG|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\ROM1|memROM~2_combout\ & ( (\ROM1|memROM~0_combout\ & \PC_REG|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000101010100010101000101010001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \PC_REG|ALT_INV_DOUT\(3),
	datac => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \BANCO_REG|saidaB[3]~2_combout\);

-- Location: LABCELL_X40_Y2_N15
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \ROM1|memROM~0_combout\ & ( (\PC_REG|DOUT\(3) & !\PC_REG|DOUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC_REG|ALT_INV_DOUT\(3),
	datad => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~3_combout\);

-- Location: LABCELL_X40_Y2_N54
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \PC_REG|DOUT[7]~DUPLICATE_q\ ) # ( !\PC_REG|DOUT[7]~DUPLICATE_q\ & ( (!\ROM1|memROM~2_combout\) # (\PC_REG|DOUT[6]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \PC_REG|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \PC_REG|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \ROM1|memROM~4_combout\);

-- Location: LABCELL_X40_Y2_N45
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \PC_REG|DOUT[2]~DUPLICATE_q\ & ( \ROM1|memROM~0_combout\ & ( \PC_REG|DOUT\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT\(3),
	datae => \PC_REG|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~5_combout\);

-- Location: FF_X47_Y2_N1
\PC_REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(2));

-- Location: FF_X47_Y2_N10
\PC_REG|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(5));

-- Location: FF_X47_Y2_N20
\PC_REG|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(8));

-- Location: LABCELL_X47_Y2_N18
\Somador1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador1|Add0~25_sumout\ = SUM(( \PC_REG|DOUT\(8) ) + ( GND ) + ( \Somador1|Add0~2\ ))
-- \Somador1|Add0~26\ = CARRY(( \PC_REG|DOUT\(8) ) + ( GND ) + ( \Somador1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT\(8),
	cin => \Somador1|Add0~2\,
	sumout => \Somador1|Add0~25_sumout\,
	cout => \Somador1|Add0~26\);

-- Location: FF_X47_Y2_N19
\PC_REG|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT[8]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y2_N21
\Somador1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador1|Add0~29_sumout\ = SUM(( \PC_REG|DOUT\(9) ) + ( GND ) + ( \Somador1|Add0~26\ ))
-- \Somador1|Add0~30\ = CARRY(( \PC_REG|DOUT\(9) ) + ( GND ) + ( \Somador1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_REG|ALT_INV_DOUT\(9),
	cin => \Somador1|Add0~26\,
	sumout => \Somador1|Add0~29_sumout\,
	cout => \Somador1|Add0~30\);

-- Location: FF_X47_Y2_N23
\PC_REG|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(9));

-- Location: FF_X47_Y2_N26
\PC_REG|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(10));

-- Location: LABCELL_X47_Y2_N24
\Somador1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador1|Add0~33_sumout\ = SUM(( \PC_REG|DOUT\(10) ) + ( GND ) + ( \Somador1|Add0~30\ ))
-- \Somador1|Add0~34\ = CARRY(( \PC_REG|DOUT\(10) ) + ( GND ) + ( \Somador1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT\(10),
	cin => \Somador1|Add0~30\,
	sumout => \Somador1|Add0~33_sumout\,
	cout => \Somador1|Add0~34\);

-- Location: FF_X47_Y2_N25
\PC_REG|DOUT[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT[10]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y2_N27
\Somador1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador1|Add0~37_sumout\ = SUM(( \PC_REG|DOUT\(11) ) + ( GND ) + ( \Somador1|Add0~34\ ))
-- \Somador1|Add0~38\ = CARRY(( \PC_REG|DOUT\(11) ) + ( GND ) + ( \Somador1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_REG|ALT_INV_DOUT\(11),
	cin => \Somador1|Add0~34\,
	sumout => \Somador1|Add0~37_sumout\,
	cout => \Somador1|Add0~38\);

-- Location: FF_X47_Y2_N29
\PC_REG|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(11));

-- Location: LABCELL_X47_Y2_N30
\Somador1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador1|Add0~41_sumout\ = SUM(( \PC_REG|DOUT\(12) ) + ( GND ) + ( \Somador1|Add0~38\ ))
-- \Somador1|Add0~42\ = CARRY(( \PC_REG|DOUT\(12) ) + ( GND ) + ( \Somador1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT\(12),
	cin => \Somador1|Add0~38\,
	sumout => \Somador1|Add0~41_sumout\,
	cout => \Somador1|Add0~42\);

-- Location: FF_X47_Y2_N31
\PC_REG|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(12));

-- Location: FF_X47_Y2_N35
\PC_REG|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(13));

-- Location: LABCELL_X47_Y2_N33
\Somador1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador1|Add0~45_sumout\ = SUM(( \PC_REG|DOUT\(13) ) + ( GND ) + ( \Somador1|Add0~42\ ))
-- \Somador1|Add0~46\ = CARRY(( \PC_REG|DOUT\(13) ) + ( GND ) + ( \Somador1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_REG|ALT_INV_DOUT\(13),
	cin => \Somador1|Add0~42\,
	sumout => \Somador1|Add0~45_sumout\,
	cout => \Somador1|Add0~46\);

-- Location: FF_X47_Y2_N34
\PC_REG|DOUT[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT[13]~DUPLICATE_q\);

-- Location: FF_X47_Y2_N38
\PC_REG|DOUT[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT[14]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y2_N36
\Somador1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador1|Add0~49_sumout\ = SUM(( \PC_REG|DOUT[14]~DUPLICATE_q\ ) + ( GND ) + ( \Somador1|Add0~46\ ))
-- \Somador1|Add0~50\ = CARRY(( \PC_REG|DOUT[14]~DUPLICATE_q\ ) + ( GND ) + ( \Somador1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_REG|ALT_INV_DOUT[14]~DUPLICATE_q\,
	cin => \Somador1|Add0~46\,
	sumout => \Somador1|Add0~49_sumout\,
	cout => \Somador1|Add0~50\);

-- Location: FF_X47_Y2_N37
\PC_REG|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(14));

-- Location: FF_X47_Y2_N41
\PC_REG|DOUT[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT[15]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y2_N39
\Somador1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador1|Add0~53_sumout\ = SUM(( \PC_REG|DOUT[15]~DUPLICATE_q\ ) + ( GND ) + ( \Somador1|Add0~50\ ))
-- \Somador1|Add0~54\ = CARRY(( \PC_REG|DOUT[15]~DUPLICATE_q\ ) + ( GND ) + ( \Somador1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT[15]~DUPLICATE_q\,
	cin => \Somador1|Add0~50\,
	sumout => \Somador1|Add0~53_sumout\,
	cout => \Somador1|Add0~54\);

-- Location: FF_X47_Y2_N40
\PC_REG|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(15));

-- Location: LABCELL_X47_Y2_N42
\Somador1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador1|Add0~57_sumout\ = SUM(( \PC_REG|DOUT\(16) ) + ( GND ) + ( \Somador1|Add0~54\ ))
-- \Somador1|Add0~58\ = CARRY(( \PC_REG|DOUT\(16) ) + ( GND ) + ( \Somador1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_REG|ALT_INV_DOUT\(16),
	cin => \Somador1|Add0~54\,
	sumout => \Somador1|Add0~57_sumout\,
	cout => \Somador1|Add0~58\);

-- Location: FF_X47_Y2_N43
\PC_REG|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(16));

-- Location: FF_X47_Y2_N47
\PC_REG|DOUT[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT[17]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y2_N45
\Somador1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador1|Add0~61_sumout\ = SUM(( \PC_REG|DOUT[17]~DUPLICATE_q\ ) + ( GND ) + ( \Somador1|Add0~58\ ))
-- \Somador1|Add0~62\ = CARRY(( \PC_REG|DOUT[17]~DUPLICATE_q\ ) + ( GND ) + ( \Somador1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_REG|ALT_INV_DOUT[17]~DUPLICATE_q\,
	cin => \Somador1|Add0~58\,
	sumout => \Somador1|Add0~61_sumout\,
	cout => \Somador1|Add0~62\);

-- Location: FF_X47_Y2_N46
\PC_REG|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(17));

-- Location: FF_X47_Y2_N50
\PC_REG|DOUT[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT[18]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y2_N48
\Somador1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador1|Add0~65_sumout\ = SUM(( \PC_REG|DOUT[18]~DUPLICATE_q\ ) + ( GND ) + ( \Somador1|Add0~62\ ))
-- \Somador1|Add0~66\ = CARRY(( \PC_REG|DOUT[18]~DUPLICATE_q\ ) + ( GND ) + ( \Somador1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT[18]~DUPLICATE_q\,
	cin => \Somador1|Add0~62\,
	sumout => \Somador1|Add0~65_sumout\,
	cout => \Somador1|Add0~66\);

-- Location: FF_X47_Y2_N49
\PC_REG|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(18));

-- Location: LABCELL_X47_Y2_N51
\Somador1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador1|Add0~69_sumout\ = SUM(( \PC_REG|DOUT\(19) ) + ( GND ) + ( \Somador1|Add0~66\ ))
-- \Somador1|Add0~70\ = CARRY(( \PC_REG|DOUT\(19) ) + ( GND ) + ( \Somador1|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_REG|ALT_INV_DOUT\(19),
	cin => \Somador1|Add0~66\,
	sumout => \Somador1|Add0~69_sumout\,
	cout => \Somador1|Add0~70\);

-- Location: FF_X47_Y2_N52
\PC_REG|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(19));

-- Location: LABCELL_X47_Y2_N54
\Somador1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador1|Add0~73_sumout\ = SUM(( \PC_REG|DOUT\(20) ) + ( GND ) + ( \Somador1|Add0~70\ ))
-- \Somador1|Add0~74\ = CARRY(( \PC_REG|DOUT\(20) ) + ( GND ) + ( \Somador1|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT\(20),
	cin => \Somador1|Add0~70\,
	sumout => \Somador1|Add0~73_sumout\,
	cout => \Somador1|Add0~74\);

-- Location: FF_X47_Y2_N56
\PC_REG|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(20));

-- Location: FF_X47_Y2_N59
\PC_REG|DOUT[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT[21]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y2_N57
\Somador1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador1|Add0~77_sumout\ = SUM(( \PC_REG|DOUT[21]~DUPLICATE_q\ ) + ( GND ) + ( \Somador1|Add0~74\ ))
-- \Somador1|Add0~78\ = CARRY(( \PC_REG|DOUT[21]~DUPLICATE_q\ ) + ( GND ) + ( \Somador1|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT[21]~DUPLICATE_q\,
	cin => \Somador1|Add0~74\,
	sumout => \Somador1|Add0~77_sumout\,
	cout => \Somador1|Add0~78\);

-- Location: FF_X47_Y2_N58
\PC_REG|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(21));

-- Location: LABCELL_X47_Y1_N30
\Somador1|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador1|Add0~81_sumout\ = SUM(( \PC_REG|DOUT\(22) ) + ( GND ) + ( \Somador1|Add0~78\ ))
-- \Somador1|Add0~82\ = CARRY(( \PC_REG|DOUT\(22) ) + ( GND ) + ( \Somador1|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT\(22),
	cin => \Somador1|Add0~78\,
	sumout => \Somador1|Add0~81_sumout\,
	cout => \Somador1|Add0~82\);

-- Location: FF_X47_Y1_N31
\PC_REG|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~81_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(22));

-- Location: LABCELL_X47_Y1_N33
\Somador1|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador1|Add0~85_sumout\ = SUM(( \PC_REG|DOUT\(23) ) + ( GND ) + ( \Somador1|Add0~82\ ))
-- \Somador1|Add0~86\ = CARRY(( \PC_REG|DOUT\(23) ) + ( GND ) + ( \Somador1|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_REG|ALT_INV_DOUT\(23),
	cin => \Somador1|Add0~82\,
	sumout => \Somador1|Add0~85_sumout\,
	cout => \Somador1|Add0~86\);

-- Location: FF_X47_Y1_N35
\PC_REG|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(23));

-- Location: FF_X47_Y1_N38
\PC_REG|DOUT[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~89_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT[24]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y1_N36
\Somador1|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador1|Add0~89_sumout\ = SUM(( \PC_REG|DOUT[24]~DUPLICATE_q\ ) + ( GND ) + ( \Somador1|Add0~86\ ))
-- \Somador1|Add0~90\ = CARRY(( \PC_REG|DOUT[24]~DUPLICATE_q\ ) + ( GND ) + ( \Somador1|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT[24]~DUPLICATE_q\,
	cin => \Somador1|Add0~86\,
	sumout => \Somador1|Add0~89_sumout\,
	cout => \Somador1|Add0~90\);

-- Location: FF_X47_Y1_N37
\PC_REG|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~89_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(24));

-- Location: LABCELL_X47_Y1_N39
\Somador1|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador1|Add0~93_sumout\ = SUM(( \PC_REG|DOUT\(25) ) + ( GND ) + ( \Somador1|Add0~90\ ))
-- \Somador1|Add0~94\ = CARRY(( \PC_REG|DOUT\(25) ) + ( GND ) + ( \Somador1|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT\(25),
	cin => \Somador1|Add0~90\,
	sumout => \Somador1|Add0~93_sumout\,
	cout => \Somador1|Add0~94\);

-- Location: FF_X47_Y1_N41
\PC_REG|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~93_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(25));

-- Location: LABCELL_X47_Y1_N42
\Somador1|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador1|Add0~97_sumout\ = SUM(( \PC_REG|DOUT\(26) ) + ( GND ) + ( \Somador1|Add0~94\ ))
-- \Somador1|Add0~98\ = CARRY(( \PC_REG|DOUT\(26) ) + ( GND ) + ( \Somador1|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_REG|ALT_INV_DOUT\(26),
	cin => \Somador1|Add0~94\,
	sumout => \Somador1|Add0~97_sumout\,
	cout => \Somador1|Add0~98\);

-- Location: FF_X47_Y1_N43
\PC_REG|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~97_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(26));

-- Location: LABCELL_X47_Y1_N45
\Somador1|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador1|Add0~101_sumout\ = SUM(( \PC_REG|DOUT\(27) ) + ( GND ) + ( \Somador1|Add0~98\ ))
-- \Somador1|Add0~102\ = CARRY(( \PC_REG|DOUT\(27) ) + ( GND ) + ( \Somador1|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT\(27),
	cin => \Somador1|Add0~98\,
	sumout => \Somador1|Add0~101_sumout\,
	cout => \Somador1|Add0~102\);

-- Location: FF_X47_Y1_N47
\PC_REG|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~101_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(27));

-- Location: FF_X47_Y1_N50
\PC_REG|DOUT[28]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~105_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT[28]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y1_N48
\Somador1|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador1|Add0~105_sumout\ = SUM(( \PC_REG|DOUT[28]~DUPLICATE_q\ ) + ( GND ) + ( \Somador1|Add0~102\ ))
-- \Somador1|Add0~106\ = CARRY(( \PC_REG|DOUT[28]~DUPLICATE_q\ ) + ( GND ) + ( \Somador1|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT[28]~DUPLICATE_q\,
	cin => \Somador1|Add0~102\,
	sumout => \Somador1|Add0~105_sumout\,
	cout => \Somador1|Add0~106\);

-- Location: FF_X47_Y1_N49
\PC_REG|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~105_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(28));

-- Location: LABCELL_X47_Y1_N51
\Somador1|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador1|Add0~109_sumout\ = SUM(( \PC_REG|DOUT\(29) ) + ( GND ) + ( \Somador1|Add0~106\ ))
-- \Somador1|Add0~110\ = CARRY(( \PC_REG|DOUT\(29) ) + ( GND ) + ( \Somador1|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT\(29),
	cin => \Somador1|Add0~106\,
	sumout => \Somador1|Add0~109_sumout\,
	cout => \Somador1|Add0~110\);

-- Location: FF_X47_Y1_N52
\PC_REG|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~109_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(29));

-- Location: LABCELL_X47_Y1_N54
\Somador1|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador1|Add0~113_sumout\ = SUM(( \PC_REG|DOUT\(30) ) + ( GND ) + ( \Somador1|Add0~110\ ))
-- \Somador1|Add0~114\ = CARRY(( \PC_REG|DOUT\(30) ) + ( GND ) + ( \Somador1|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT\(30),
	cin => \Somador1|Add0~110\,
	sumout => \Somador1|Add0~113_sumout\,
	cout => \Somador1|Add0~114\);

-- Location: FF_X47_Y1_N56
\PC_REG|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~113_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(30));

-- Location: LABCELL_X47_Y1_N57
\Somador1|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador1|Add0~117_sumout\ = SUM(( \PC_REG|DOUT\(31) ) + ( GND ) + ( \Somador1|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|ALT_INV_DOUT\(31),
	cin => \Somador1|Add0~114\,
	sumout => \Somador1|Add0~117_sumout\);

-- Location: FF_X47_Y1_N59
\PC_REG|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador1|Add0~117_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|DOUT\(31));

-- Location: LABCELL_X6_Y37_N3
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


