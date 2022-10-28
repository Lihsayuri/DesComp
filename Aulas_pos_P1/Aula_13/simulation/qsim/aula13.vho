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

-- DATE "10/27/2022 17:23:28"

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
SIGNAL \Instru_opcode[0]~output_o\ : std_logic;
SIGNAL \Instru_opcode[1]~output_o\ : std_logic;
SIGNAL \Instru_opcode[2]~output_o\ : std_logic;
SIGNAL \Instru_opcode[3]~output_o\ : std_logic;
SIGNAL \Instru_opcode[4]~output_o\ : std_logic;
SIGNAL \Instru_opcode[5]~output_o\ : std_logic;
SIGNAL \Funct[0]~output_o\ : std_logic;
SIGNAL \Funct[1]~output_o\ : std_logic;
SIGNAL \Funct[2]~output_o\ : std_logic;
SIGNAL \Funct[3]~output_o\ : std_logic;
SIGNAL \Funct[4]~output_o\ : std_logic;
SIGNAL \Funct[5]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[0]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[1]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[2]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[3]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[4]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[5]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[6]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[7]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[8]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[9]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[10]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[11]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[12]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[13]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[14]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[15]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[16]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[17]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[18]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[19]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[20]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[21]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[22]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[23]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[24]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[25]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[26]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[27]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[28]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[29]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[30]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[31]~output_o\ : std_logic;
SIGNAL \RS_OUT[0]~output_o\ : std_logic;
SIGNAL \RS_OUT[1]~output_o\ : std_logic;
SIGNAL \RS_OUT[2]~output_o\ : std_logic;
SIGNAL \RS_OUT[3]~output_o\ : std_logic;
SIGNAL \RS_OUT[4]~output_o\ : std_logic;
SIGNAL \RS_OUT[5]~output_o\ : std_logic;
SIGNAL \RS_OUT[6]~output_o\ : std_logic;
SIGNAL \RS_OUT[7]~output_o\ : std_logic;
SIGNAL \RS_OUT[8]~output_o\ : std_logic;
SIGNAL \RS_OUT[9]~output_o\ : std_logic;
SIGNAL \RS_OUT[10]~output_o\ : std_logic;
SIGNAL \RS_OUT[11]~output_o\ : std_logic;
SIGNAL \RS_OUT[12]~output_o\ : std_logic;
SIGNAL \RS_OUT[13]~output_o\ : std_logic;
SIGNAL \RS_OUT[14]~output_o\ : std_logic;
SIGNAL \RS_OUT[15]~output_o\ : std_logic;
SIGNAL \RS_OUT[16]~output_o\ : std_logic;
SIGNAL \RS_OUT[17]~output_o\ : std_logic;
SIGNAL \RS_OUT[18]~output_o\ : std_logic;
SIGNAL \RS_OUT[19]~output_o\ : std_logic;
SIGNAL \RS_OUT[20]~output_o\ : std_logic;
SIGNAL \RS_OUT[21]~output_o\ : std_logic;
SIGNAL \RS_OUT[22]~output_o\ : std_logic;
SIGNAL \RS_OUT[23]~output_o\ : std_logic;
SIGNAL \RS_OUT[24]~output_o\ : std_logic;
SIGNAL \RS_OUT[25]~output_o\ : std_logic;
SIGNAL \RS_OUT[26]~output_o\ : std_logic;
SIGNAL \RS_OUT[27]~output_o\ : std_logic;
SIGNAL \RS_OUT[28]~output_o\ : std_logic;
SIGNAL \RS_OUT[29]~output_o\ : std_logic;
SIGNAL \RS_OUT[30]~output_o\ : std_logic;
SIGNAL \RS_OUT[31]~output_o\ : std_logic;
SIGNAL \RT_OUT[0]~output_o\ : std_logic;
SIGNAL \RT_OUT[1]~output_o\ : std_logic;
SIGNAL \RT_OUT[2]~output_o\ : std_logic;
SIGNAL \RT_OUT[3]~output_o\ : std_logic;
SIGNAL \RT_OUT[4]~output_o\ : std_logic;
SIGNAL \RT_OUT[5]~output_o\ : std_logic;
SIGNAL \RT_OUT[6]~output_o\ : std_logic;
SIGNAL \RT_OUT[7]~output_o\ : std_logic;
SIGNAL \RT_OUT[8]~output_o\ : std_logic;
SIGNAL \RT_OUT[9]~output_o\ : std_logic;
SIGNAL \RT_OUT[10]~output_o\ : std_logic;
SIGNAL \RT_OUT[11]~output_o\ : std_logic;
SIGNAL \RT_OUT[12]~output_o\ : std_logic;
SIGNAL \RT_OUT[13]~output_o\ : std_logic;
SIGNAL \RT_OUT[14]~output_o\ : std_logic;
SIGNAL \RT_OUT[15]~output_o\ : std_logic;
SIGNAL \RT_OUT[16]~output_o\ : std_logic;
SIGNAL \RT_OUT[17]~output_o\ : std_logic;
SIGNAL \RT_OUT[18]~output_o\ : std_logic;
SIGNAL \RT_OUT[19]~output_o\ : std_logic;
SIGNAL \RT_OUT[20]~output_o\ : std_logic;
SIGNAL \RT_OUT[21]~output_o\ : std_logic;
SIGNAL \RT_OUT[22]~output_o\ : std_logic;
SIGNAL \RT_OUT[23]~output_o\ : std_logic;
SIGNAL \RT_OUT[24]~output_o\ : std_logic;
SIGNAL \RT_OUT[25]~output_o\ : std_logic;
SIGNAL \RT_OUT[26]~output_o\ : std_logic;
SIGNAL \RT_OUT[27]~output_o\ : std_logic;
SIGNAL \RT_OUT[28]~output_o\ : std_logic;
SIGNAL \RT_OUT[29]~output_o\ : std_logic;
SIGNAL \RT_OUT[30]~output_o\ : std_logic;
SIGNAL \RT_OUT[31]~output_o\ : std_logic;
SIGNAL \Rs_End[0]~output_o\ : std_logic;
SIGNAL \Rs_End[1]~output_o\ : std_logic;
SIGNAL \Rs_End[2]~output_o\ : std_logic;
SIGNAL \Rs_End[3]~output_o\ : std_logic;
SIGNAL \Rs_End[4]~output_o\ : std_logic;
SIGNAL \Rt_End[0]~output_o\ : std_logic;
SIGNAL \Rt_End[1]~output_o\ : std_logic;
SIGNAL \Rt_End[2]~output_o\ : std_logic;
SIGNAL \Rt_End[3]~output_o\ : std_logic;
SIGNAL \Rt_End[4]~output_o\ : std_logic;
SIGNAL \Rd_End[0]~output_o\ : std_logic;
SIGNAL \Rd_End[1]~output_o\ : std_logic;
SIGNAL \Rd_End[2]~output_o\ : std_logic;
SIGNAL \Rd_End[3]~output_o\ : std_logic;
SIGNAL \Rd_End[4]~output_o\ : std_logic;
SIGNAL \PC_OUT[0]~output_o\ : std_logic;
SIGNAL \PC_OUT[1]~output_o\ : std_logic;
SIGNAL \PC_OUT[2]~output_o\ : std_logic;
SIGNAL \PC_OUT[3]~output_o\ : std_logic;
SIGNAL \PC_OUT[4]~output_o\ : std_logic;
SIGNAL \PC_OUT[5]~output_o\ : std_logic;
SIGNAL \PC_OUT[6]~output_o\ : std_logic;
SIGNAL \PC_OUT[7]~output_o\ : std_logic;
SIGNAL \PC_OUT[8]~output_o\ : std_logic;
SIGNAL \PC_OUT[9]~output_o\ : std_logic;
SIGNAL \PC_OUT[10]~output_o\ : std_logic;
SIGNAL \PC_OUT[11]~output_o\ : std_logic;
SIGNAL \PC_OUT[12]~output_o\ : std_logic;
SIGNAL \PC_OUT[13]~output_o\ : std_logic;
SIGNAL \PC_OUT[14]~output_o\ : std_logic;
SIGNAL \PC_OUT[15]~output_o\ : std_logic;
SIGNAL \PC_OUT[16]~output_o\ : std_logic;
SIGNAL \PC_OUT[17]~output_o\ : std_logic;
SIGNAL \PC_OUT[18]~output_o\ : std_logic;
SIGNAL \PC_OUT[19]~output_o\ : std_logic;
SIGNAL \PC_OUT[20]~output_o\ : std_logic;
SIGNAL \PC_OUT[21]~output_o\ : std_logic;
SIGNAL \PC_OUT[22]~output_o\ : std_logic;
SIGNAL \PC_OUT[23]~output_o\ : std_logic;
SIGNAL \PC_OUT[24]~output_o\ : std_logic;
SIGNAL \PC_OUT[25]~output_o\ : std_logic;
SIGNAL \PC_OUT[26]~output_o\ : std_logic;
SIGNAL \PC_OUT[27]~output_o\ : std_logic;
SIGNAL \PC_OUT[28]~output_o\ : std_logic;
SIGNAL \PC_OUT[29]~output_o\ : std_logic;
SIGNAL \PC_OUT[30]~output_o\ : std_logic;
SIGNAL \PC_OUT[31]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \REG_PC|DOUT[2]~0_combout\ : std_logic;
SIGNAL \somador|Add0~1_sumout\ : std_logic;
SIGNAL \somador|Add0~2\ : std_logic;
SIGNAL \somador|Add0~9_sumout\ : std_logic;
SIGNAL \somador|Add0~10\ : std_logic;
SIGNAL \somador|Add0~5_sumout\ : std_logic;
SIGNAL \somador|Add0~6\ : std_logic;
SIGNAL \somador|Add0~17_sumout\ : std_logic;
SIGNAL \somador|Add0~18\ : std_logic;
SIGNAL \somador|Add0~13_sumout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[1]~0_combout\ : std_logic;
SIGNAL \Sel_ULA[1]~input_o\ : std_logic;
SIGNAL \BANCO_REG|registrador~1062_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \Sel_ULA[0]~input_o\ : std_logic;
SIGNAL \Ctrl_write~input_o\ : std_logic;
SIGNAL \BANCO_REG|registrador~1089_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~294_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[0]~1_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[0]~2_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1063_combout\ : std_logic;
SIGNAL \ULA1|Add0~130_cout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1088_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~38_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[0]~0_combout\ : std_logic;
SIGNAL \ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \ULA1|saida[0]~1_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~295_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[1]~3_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1064_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|Add0~5_wirecell_combout\ : std_logic;
SIGNAL \ULA1|saida[1]~2_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~39_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[1]~1_combout\ : std_logic;
SIGNAL \ULA1|saida[1]~2_combout\ : std_logic;
SIGNAL \ULA1|saida[1]~3_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~296_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[2]~4_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1065_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~40_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[2]~2_combout\ : std_logic;
SIGNAL \ULA1|saida[2]~4_combout\ : std_logic;
SIGNAL \ULA1|saida[2]~5_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~297_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[3]~5_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1066_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|Add0~13_wirecell_combout\ : std_logic;
SIGNAL \ULA1|saida[3]~6_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~41_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[3]~3_combout\ : std_logic;
SIGNAL \ULA1|saida[3]~6_combout\ : std_logic;
SIGNAL \ULA1|saida[3]~7_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~298_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[4]~6_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1067_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~42_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[4]~4_combout\ : std_logic;
SIGNAL \ULA1|saida[4]~8_combout\ : std_logic;
SIGNAL \ULA1|saida[4]~9_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~299_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[5]~7_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1068_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|Add0~21_wirecell_combout\ : std_logic;
SIGNAL \ULA1|saida[5]~10_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~43_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[5]~5_combout\ : std_logic;
SIGNAL \ULA1|saida[5]~10_combout\ : std_logic;
SIGNAL \ULA1|saida[5]~11_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~300_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[6]~8_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1069_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~44_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[6]~6_combout\ : std_logic;
SIGNAL \ULA1|saida[6]~12_combout\ : std_logic;
SIGNAL \ULA1|saida[6]~13_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~301_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[7]~9_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1070_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|Add0~29_wirecell_combout\ : std_logic;
SIGNAL \ULA1|saida[7]~14_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~45_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[7]~7_combout\ : std_logic;
SIGNAL \ULA1|saida[7]~14_combout\ : std_logic;
SIGNAL \ULA1|saida[7]~15_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~302_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[8]~10_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1071_combout\ : std_logic;
SIGNAL \ULA1|Add0~30\ : std_logic;
SIGNAL \ULA1|Add0~33_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~46_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[8]~8_combout\ : std_logic;
SIGNAL \ULA1|saida[8]~16_combout\ : std_logic;
SIGNAL \ULA1|saida[8]~17_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~303_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[9]~11_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1072_combout\ : std_logic;
SIGNAL \ULA1|Add0~34\ : std_logic;
SIGNAL \ULA1|Add0~37_sumout\ : std_logic;
SIGNAL \ULA1|Add0~37_wirecell_combout\ : std_logic;
SIGNAL \ULA1|saida[9]~18_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~47_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[9]~9_combout\ : std_logic;
SIGNAL \ULA1|saida[9]~18_combout\ : std_logic;
SIGNAL \ULA1|saida[9]~19_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~304_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[10]~12_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1073_combout\ : std_logic;
SIGNAL \ULA1|Add0~38\ : std_logic;
SIGNAL \ULA1|Add0~41_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~48_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[10]~10_combout\ : std_logic;
SIGNAL \ULA1|saida[10]~20_combout\ : std_logic;
SIGNAL \ULA1|saida[10]~21_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~305_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[11]~13_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1074_combout\ : std_logic;
SIGNAL \ULA1|Add0~42\ : std_logic;
SIGNAL \ULA1|Add0~45_sumout\ : std_logic;
SIGNAL \ULA1|Add0~45_wirecell_combout\ : std_logic;
SIGNAL \ULA1|saida[11]~22_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~49_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[11]~11_combout\ : std_logic;
SIGNAL \ULA1|saida[11]~22_combout\ : std_logic;
SIGNAL \ULA1|saida[11]~23_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~306_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[12]~14_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1075_combout\ : std_logic;
SIGNAL \ULA1|Add0~46\ : std_logic;
SIGNAL \ULA1|Add0~49_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~50_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[12]~12_combout\ : std_logic;
SIGNAL \ULA1|saida[12]~24_combout\ : std_logic;
SIGNAL \ULA1|saida[12]~25_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~307_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[13]~15_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1076_combout\ : std_logic;
SIGNAL \ULA1|Add0~50\ : std_logic;
SIGNAL \ULA1|Add0~53_sumout\ : std_logic;
SIGNAL \ULA1|Add0~53_wirecell_combout\ : std_logic;
SIGNAL \ULA1|saida[13]~26_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~51_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[13]~13_combout\ : std_logic;
SIGNAL \ULA1|saida[13]~26_combout\ : std_logic;
SIGNAL \ULA1|saida[13]~27_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~308_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[14]~16_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1077_combout\ : std_logic;
SIGNAL \ULA1|Add0~54\ : std_logic;
SIGNAL \ULA1|Add0~57_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~52_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[14]~14_combout\ : std_logic;
SIGNAL \ULA1|saida[14]~28_combout\ : std_logic;
SIGNAL \ULA1|saida[14]~29_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~309_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[15]~17_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1078_combout\ : std_logic;
SIGNAL \ULA1|Add0~58\ : std_logic;
SIGNAL \ULA1|Add0~61_sumout\ : std_logic;
SIGNAL \ULA1|Add0~61_wirecell_combout\ : std_logic;
SIGNAL \ULA1|saida[15]~30_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~53_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[15]~15_combout\ : std_logic;
SIGNAL \ULA1|saida[15]~30_combout\ : std_logic;
SIGNAL \ULA1|saida[15]~31_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~310_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[16]~18_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1079_combout\ : std_logic;
SIGNAL \ULA1|Add0~62\ : std_logic;
SIGNAL \ULA1|Add0~65_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~54_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[16]~16_combout\ : std_logic;
SIGNAL \ULA1|saida[16]~32_combout\ : std_logic;
SIGNAL \ULA1|saida[16]~33_combout\ : std_logic;
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
SIGNAL \BANCO_REG|registrador~312_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[18]~20_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1081_combout\ : std_logic;
SIGNAL \ULA1|Add0~70\ : std_logic;
SIGNAL \ULA1|Add0~73_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~56_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[18]~18_combout\ : std_logic;
SIGNAL \ULA1|saida[18]~36_combout\ : std_logic;
SIGNAL \ULA1|saida[18]~37_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~313_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[19]~21_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1082_combout\ : std_logic;
SIGNAL \ULA1|Add0~74\ : std_logic;
SIGNAL \ULA1|Add0~77_sumout\ : std_logic;
SIGNAL \ULA1|Add0~77_wirecell_combout\ : std_logic;
SIGNAL \ULA1|saida[19]~38_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~57_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[19]~19_combout\ : std_logic;
SIGNAL \ULA1|saida[19]~38_combout\ : std_logic;
SIGNAL \ULA1|saida[19]~39_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~314_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[20]~22_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1083_combout\ : std_logic;
SIGNAL \ULA1|Add0~78\ : std_logic;
SIGNAL \ULA1|Add0~81_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~58_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[20]~20_combout\ : std_logic;
SIGNAL \ULA1|saida[20]~40_combout\ : std_logic;
SIGNAL \ULA1|saida[20]~41_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~315_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[21]~23_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1084_combout\ : std_logic;
SIGNAL \ULA1|Add0~82\ : std_logic;
SIGNAL \ULA1|Add0~85_sumout\ : std_logic;
SIGNAL \ULA1|Add0~85_wirecell_combout\ : std_logic;
SIGNAL \ULA1|saida[21]~42_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~59_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[21]~21_combout\ : std_logic;
SIGNAL \ULA1|saida[21]~42_combout\ : std_logic;
SIGNAL \ULA1|saida[21]~43_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~316_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[22]~24_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1085_combout\ : std_logic;
SIGNAL \ULA1|Add0~86\ : std_logic;
SIGNAL \ULA1|Add0~89_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~60_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[22]~22_combout\ : std_logic;
SIGNAL \ULA1|saida[22]~44_combout\ : std_logic;
SIGNAL \ULA1|saida[22]~45_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~317_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[23]~25_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1086_combout\ : std_logic;
SIGNAL \ULA1|Add0~90\ : std_logic;
SIGNAL \ULA1|Add0~93_sumout\ : std_logic;
SIGNAL \ULA1|Add0~93_wirecell_combout\ : std_logic;
SIGNAL \ULA1|saida[23]~46_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~61_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[23]~23_combout\ : std_logic;
SIGNAL \ULA1|saida[23]~46_combout\ : std_logic;
SIGNAL \ULA1|saida[23]~47_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~318_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[24]~26_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1087_combout\ : std_logic;
SIGNAL \ULA1|Add0~94\ : std_logic;
SIGNAL \ULA1|Add0~97_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~62_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[24]~24_combout\ : std_logic;
SIGNAL \ULA1|saida[24]~48_combout\ : std_logic;
SIGNAL \ULA1|saida[24]~49_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[25]~27_combout\ : std_logic;
SIGNAL \ULA1|Add0~101_wirecell_combout\ : std_logic;
SIGNAL \ULA1|saida[25]~50_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~63_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1090_combout\ : std_logic;
SIGNAL \ULA1|Add0~98\ : std_logic;
SIGNAL \ULA1|Add0~101_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~319_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[25]~25_combout\ : std_logic;
SIGNAL \ULA1|saida[25]~50_combout\ : std_logic;
SIGNAL \ULA1|saida[25]~51_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[26]~28_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~64_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1091_combout\ : std_logic;
SIGNAL \ULA1|Add0~102\ : std_logic;
SIGNAL \ULA1|Add0~105_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~320_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[26]~26_combout\ : std_logic;
SIGNAL \ULA1|saida[26]~52_combout\ : std_logic;
SIGNAL \ULA1|saida[26]~53_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[27]~29_combout\ : std_logic;
SIGNAL \ULA1|Add0~109_wirecell_combout\ : std_logic;
SIGNAL \ULA1|saida[27]~54_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~65_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1092_combout\ : std_logic;
SIGNAL \ULA1|Add0~106\ : std_logic;
SIGNAL \ULA1|Add0~109_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~321_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[27]~27_combout\ : std_logic;
SIGNAL \ULA1|saida[27]~54_combout\ : std_logic;
SIGNAL \ULA1|saida[27]~55_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[28]~30_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~66_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1093_combout\ : std_logic;
SIGNAL \ULA1|Add0~110\ : std_logic;
SIGNAL \ULA1|Add0~113_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~322_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[28]~28_combout\ : std_logic;
SIGNAL \ULA1|saida[28]~56_combout\ : std_logic;
SIGNAL \ULA1|saida[28]~57_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[29]~31_combout\ : std_logic;
SIGNAL \ULA1|Add0~117_wirecell_combout\ : std_logic;
SIGNAL \ULA1|saida[29]~58_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~67_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1094_combout\ : std_logic;
SIGNAL \ULA1|Add0~114\ : std_logic;
SIGNAL \ULA1|Add0~117_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~323_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[29]~29_combout\ : std_logic;
SIGNAL \ULA1|saida[29]~58_combout\ : std_logic;
SIGNAL \ULA1|saida[29]~59_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[30]~32_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~68_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1095_combout\ : std_logic;
SIGNAL \ULA1|Add0~118\ : std_logic;
SIGNAL \ULA1|Add0~121_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~324_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[30]~30_combout\ : std_logic;
SIGNAL \ULA1|saida[30]~60_combout\ : std_logic;
SIGNAL \ULA1|saida[30]~61_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[31]~33_combout\ : std_logic;
SIGNAL \ULA1|Add0~125_wirecell_combout\ : std_logic;
SIGNAL \ULA1|saida[31]~62_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~69_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1096_combout\ : std_logic;
SIGNAL \ULA1|Add0~122\ : std_logic;
SIGNAL \ULA1|Add0~125_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~325_q\ : std_logic;
SIGNAL \BANCO_REG|saidaB[31]~31_combout\ : std_logic;
SIGNAL \ULA1|saida[31]~62_combout\ : std_logic;
SIGNAL \ULA1|saida[31]~63_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \somador|Add0~14\ : std_logic;
SIGNAL \somador|Add0~21_sumout\ : std_logic;
SIGNAL \somador|Add0~22\ : std_logic;
SIGNAL \somador|Add0~25_sumout\ : std_logic;
SIGNAL \somador|Add0~26\ : std_logic;
SIGNAL \somador|Add0~29_sumout\ : std_logic;
SIGNAL \somador|Add0~30\ : std_logic;
SIGNAL \somador|Add0~33_sumout\ : std_logic;
SIGNAL \somador|Add0~34\ : std_logic;
SIGNAL \somador|Add0~37_sumout\ : std_logic;
SIGNAL \somador|Add0~38\ : std_logic;
SIGNAL \somador|Add0~41_sumout\ : std_logic;
SIGNAL \somador|Add0~42\ : std_logic;
SIGNAL \somador|Add0~45_sumout\ : std_logic;
SIGNAL \somador|Add0~46\ : std_logic;
SIGNAL \somador|Add0~49_sumout\ : std_logic;
SIGNAL \somador|Add0~50\ : std_logic;
SIGNAL \somador|Add0~53_sumout\ : std_logic;
SIGNAL \somador|Add0~54\ : std_logic;
SIGNAL \somador|Add0~57_sumout\ : std_logic;
SIGNAL \somador|Add0~58\ : std_logic;
SIGNAL \somador|Add0~61_sumout\ : std_logic;
SIGNAL \somador|Add0~62\ : std_logic;
SIGNAL \somador|Add0~65_sumout\ : std_logic;
SIGNAL \somador|Add0~66\ : std_logic;
SIGNAL \somador|Add0~69_sumout\ : std_logic;
SIGNAL \somador|Add0~70\ : std_logic;
SIGNAL \somador|Add0~73_sumout\ : std_logic;
SIGNAL \somador|Add0~74\ : std_logic;
SIGNAL \somador|Add0~77_sumout\ : std_logic;
SIGNAL \somador|Add0~78\ : std_logic;
SIGNAL \somador|Add0~81_sumout\ : std_logic;
SIGNAL \somador|Add0~82\ : std_logic;
SIGNAL \somador|Add0~85_sumout\ : std_logic;
SIGNAL \somador|Add0~86\ : std_logic;
SIGNAL \somador|Add0~89_sumout\ : std_logic;
SIGNAL \somador|Add0~90\ : std_logic;
SIGNAL \somador|Add0~93_sumout\ : std_logic;
SIGNAL \somador|Add0~94\ : std_logic;
SIGNAL \somador|Add0~97_sumout\ : std_logic;
SIGNAL \somador|Add0~98\ : std_logic;
SIGNAL \somador|Add0~101_sumout\ : std_logic;
SIGNAL \somador|Add0~102\ : std_logic;
SIGNAL \somador|Add0~105_sumout\ : std_logic;
SIGNAL \somador|Add0~106\ : std_logic;
SIGNAL \somador|Add0~109_sumout\ : std_logic;
SIGNAL \somador|Add0~110\ : std_logic;
SIGNAL \somador|Add0~113_sumout\ : std_logic;
SIGNAL \REG_PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Ctrl_write~input_o\ : std_logic;
SIGNAL \ALT_INV_CLOCK_50~input_o\ : std_logic;
SIGNAL \ALT_INV_Sel_ULA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sel_ULA[1]~input_o\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1096_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1095_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1094_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1093_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1092_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1091_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1090_combout\ : std_logic;
SIGNAL \REG_PC|ALT_INV_DOUT\ : std_logic_vector(31 DOWNTO 2);
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
\ALT_INV_Ctrl_write~input_o\ <= NOT \Ctrl_write~input_o\;
\ALT_INV_CLOCK_50~input_o\ <= NOT \CLOCK_50~input_o\;
\ALT_INV_Sel_ULA[0]~input_o\ <= NOT \Sel_ULA[0]~input_o\;
\ALT_INV_Sel_ULA[1]~input_o\ <= NOT \Sel_ULA[1]~input_o\;
\BANCO_REG|ALT_INV_registrador~1096_combout\ <= NOT \BANCO_REG|registrador~1096_combout\;
\BANCO_REG|ALT_INV_registrador~1095_combout\ <= NOT \BANCO_REG|registrador~1095_combout\;
\BANCO_REG|ALT_INV_registrador~1094_combout\ <= NOT \BANCO_REG|registrador~1094_combout\;
\BANCO_REG|ALT_INV_registrador~1093_combout\ <= NOT \BANCO_REG|registrador~1093_combout\;
\BANCO_REG|ALT_INV_registrador~1092_combout\ <= NOT \BANCO_REG|registrador~1092_combout\;
\BANCO_REG|ALT_INV_registrador~1091_combout\ <= NOT \BANCO_REG|registrador~1091_combout\;
\BANCO_REG|ALT_INV_registrador~1090_combout\ <= NOT \BANCO_REG|registrador~1090_combout\;
\REG_PC|ALT_INV_DOUT\(31) <= NOT \REG_PC|DOUT\(31);
\REG_PC|ALT_INV_DOUT\(30) <= NOT \REG_PC|DOUT\(30);
\REG_PC|ALT_INV_DOUT\(29) <= NOT \REG_PC|DOUT\(29);
\REG_PC|ALT_INV_DOUT\(28) <= NOT \REG_PC|DOUT\(28);
\REG_PC|ALT_INV_DOUT\(27) <= NOT \REG_PC|DOUT\(27);
\REG_PC|ALT_INV_DOUT\(26) <= NOT \REG_PC|DOUT\(26);
\REG_PC|ALT_INV_DOUT\(25) <= NOT \REG_PC|DOUT\(25);
\REG_PC|ALT_INV_DOUT\(24) <= NOT \REG_PC|DOUT\(24);
\REG_PC|ALT_INV_DOUT\(23) <= NOT \REG_PC|DOUT\(23);
\REG_PC|ALT_INV_DOUT\(22) <= NOT \REG_PC|DOUT\(22);
\REG_PC|ALT_INV_DOUT\(21) <= NOT \REG_PC|DOUT\(21);
\REG_PC|ALT_INV_DOUT\(20) <= NOT \REG_PC|DOUT\(20);
\REG_PC|ALT_INV_DOUT\(19) <= NOT \REG_PC|DOUT\(19);
\REG_PC|ALT_INV_DOUT\(18) <= NOT \REG_PC|DOUT\(18);
\REG_PC|ALT_INV_DOUT\(17) <= NOT \REG_PC|DOUT\(17);
\REG_PC|ALT_INV_DOUT\(16) <= NOT \REG_PC|DOUT\(16);
\REG_PC|ALT_INV_DOUT\(15) <= NOT \REG_PC|DOUT\(15);
\REG_PC|ALT_INV_DOUT\(14) <= NOT \REG_PC|DOUT\(14);
\REG_PC|ALT_INV_DOUT\(13) <= NOT \REG_PC|DOUT\(13);
\REG_PC|ALT_INV_DOUT\(12) <= NOT \REG_PC|DOUT\(12);
\REG_PC|ALT_INV_DOUT\(11) <= NOT \REG_PC|DOUT\(11);
\REG_PC|ALT_INV_DOUT\(10) <= NOT \REG_PC|DOUT\(10);
\REG_PC|ALT_INV_DOUT\(9) <= NOT \REG_PC|DOUT\(9);
\REG_PC|ALT_INV_DOUT\(8) <= NOT \REG_PC|DOUT\(8);
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
	o => \Instru_opcode[0]~output_o\);

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
	o => \Instru_opcode[1]~output_o\);

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
	o => \Instru_opcode[2]~output_o\);

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
	o => \Instru_opcode[3]~output_o\);

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
	o => \Instru_opcode[4]~output_o\);

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
	o => \Instru_opcode[5]~output_o\);

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
	o => \Funct[0]~output_o\);

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
	o => \Funct[1]~output_o\);

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
	o => \Funct[2]~output_o\);

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
	o => \Funct[3]~output_o\);

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
	o => \Funct[4]~output_o\);

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
	o => \Funct[5]~output_o\);

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
	o => \ULAA_OUT[0]~output_o\);

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
	o => \ULAA_OUT[1]~output_o\);

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
	o => \ULAA_OUT[2]~output_o\);

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
	o => \ULAA_OUT[3]~output_o\);

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
	o => \ULAA_OUT[4]~output_o\);

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
	o => \ULAA_OUT[5]~output_o\);

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
	o => \ULAA_OUT[6]~output_o\);

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
	o => \ULAA_OUT[7]~output_o\);

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
	o => \ULAA_OUT[8]~output_o\);

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
	o => \ULAA_OUT[9]~output_o\);

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
	o => \ULAA_OUT[10]~output_o\);

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
	o => \ULAA_OUT[11]~output_o\);

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
	o => \ULAA_OUT[12]~output_o\);

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
	o => \ULAA_OUT[13]~output_o\);

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
	o => \ULAA_OUT[14]~output_o\);

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
	o => \ULAA_OUT[15]~output_o\);

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
	o => \ULAA_OUT[16]~output_o\);

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
	o => \ULAA_OUT[17]~output_o\);

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
	o => \ULAA_OUT[18]~output_o\);

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
	o => \ULAA_OUT[19]~output_o\);

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
	o => \ULAA_OUT[20]~output_o\);

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
	o => \ULAA_OUT[21]~output_o\);

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
	o => \ULAA_OUT[22]~output_o\);

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
	o => \ULAA_OUT[23]~output_o\);

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
	o => \ULAA_OUT[24]~output_o\);

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
	o => \ULAA_OUT[25]~output_o\);

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
	o => \ULAA_OUT[26]~output_o\);

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
	o => \ULAA_OUT[27]~output_o\);

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
	o => \ULAA_OUT[28]~output_o\);

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
	o => \ULAA_OUT[29]~output_o\);

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
	o => \ULAA_OUT[30]~output_o\);

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
	o => \ULAA_OUT[31]~output_o\);

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
	o => \RS_OUT[0]~output_o\);

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
	o => \RS_OUT[1]~output_o\);

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
	o => \RS_OUT[2]~output_o\);

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
	o => \RS_OUT[3]~output_o\);

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
	o => \RS_OUT[4]~output_o\);

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
	o => \RS_OUT[5]~output_o\);

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
	o => \RS_OUT[6]~output_o\);

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
	o => \RS_OUT[7]~output_o\);

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
	o => \RS_OUT[8]~output_o\);

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
	o => \RS_OUT[9]~output_o\);

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
	o => \RS_OUT[10]~output_o\);

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
	o => \RS_OUT[11]~output_o\);

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
	o => \RS_OUT[12]~output_o\);

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
	o => \RS_OUT[13]~output_o\);

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
	o => \RS_OUT[14]~output_o\);

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
	o => \RS_OUT[15]~output_o\);

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
	o => \RS_OUT[16]~output_o\);

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
	o => \RS_OUT[17]~output_o\);

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
	o => \RS_OUT[18]~output_o\);

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
	o => \RS_OUT[19]~output_o\);

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
	o => \RS_OUT[20]~output_o\);

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
	o => \RS_OUT[21]~output_o\);

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
	o => \RS_OUT[22]~output_o\);

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
	o => \RS_OUT[23]~output_o\);

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
	o => \RS_OUT[24]~output_o\);

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
	o => \RS_OUT[25]~output_o\);

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
	o => \RS_OUT[26]~output_o\);

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
	o => \RS_OUT[27]~output_o\);

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
	o => \RS_OUT[28]~output_o\);

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
	o => \RS_OUT[29]~output_o\);

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
	o => \RS_OUT[30]~output_o\);

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
	o => \RS_OUT[31]~output_o\);

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
	o => \RT_OUT[0]~output_o\);

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
	o => \RT_OUT[1]~output_o\);

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
	o => \RT_OUT[2]~output_o\);

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
	o => \RT_OUT[3]~output_o\);

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
	o => \RT_OUT[4]~output_o\);

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
	o => \RT_OUT[5]~output_o\);

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
	o => \RT_OUT[6]~output_o\);

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
	o => \RT_OUT[7]~output_o\);

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
	o => \RT_OUT[8]~output_o\);

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
	o => \RT_OUT[9]~output_o\);

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
	o => \RT_OUT[10]~output_o\);

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
	o => \RT_OUT[11]~output_o\);

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
	o => \RT_OUT[12]~output_o\);

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
	o => \RT_OUT[13]~output_o\);

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
	o => \RT_OUT[14]~output_o\);

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
	o => \RT_OUT[15]~output_o\);

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
	o => \RT_OUT[16]~output_o\);

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
	o => \RT_OUT[17]~output_o\);

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
	o => \RT_OUT[18]~output_o\);

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
	o => \RT_OUT[19]~output_o\);

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
	o => \RT_OUT[20]~output_o\);

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
	o => \RT_OUT[21]~output_o\);

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
	o => \RT_OUT[22]~output_o\);

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
	o => \RT_OUT[23]~output_o\);

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
	o => \RT_OUT[24]~output_o\);

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
	o => \RT_OUT[25]~output_o\);

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
	o => \RT_OUT[26]~output_o\);

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
	o => \RT_OUT[27]~output_o\);

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
	o => \RT_OUT[28]~output_o\);

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
	o => \RT_OUT[29]~output_o\);

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
	o => \RT_OUT[30]~output_o\);

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
	o => \RT_OUT[31]~output_o\);

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
	o => \Rs_End[0]~output_o\);

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
	o => \Rs_End[1]~output_o\);

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
	o => \Rs_End[2]~output_o\);

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
	o => \Rs_End[3]~output_o\);

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
	o => \Rs_End[4]~output_o\);

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
	o => \Rt_End[0]~output_o\);

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
	o => \Rt_End[1]~output_o\);

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
	o => \Rt_End[2]~output_o\);

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
	o => \Rt_End[3]~output_o\);

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
	o => \Rt_End[4]~output_o\);

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
	o => \Rd_End[0]~output_o\);

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
	o => \Rd_End[1]~output_o\);

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
	o => \Rd_End[2]~output_o\);

\Rd_End[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[1]~0_combout\,
	devoe => ww_devoe,
	o => \Rd_End[3]~output_o\);

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
	o => \Rd_End[4]~output_o\);

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
	o => \PC_OUT[0]~output_o\);

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
	o => \PC_OUT[1]~output_o\);

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
	o => \PC_OUT[2]~output_o\);

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
	o => \PC_OUT[3]~output_o\);

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
	o => \PC_OUT[4]~output_o\);

\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(5),
	devoe => ww_devoe,
	o => \PC_OUT[5]~output_o\);

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
	o => \PC_OUT[6]~output_o\);

\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(7),
	devoe => ww_devoe,
	o => \PC_OUT[7]~output_o\);

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
	o => \PC_OUT[8]~output_o\);

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
	o => \PC_OUT[9]~output_o\);

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
	o => \PC_OUT[10]~output_o\);

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
	o => \PC_OUT[11]~output_o\);

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
	o => \PC_OUT[12]~output_o\);

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
	o => \PC_OUT[13]~output_o\);

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
	o => \PC_OUT[14]~output_o\);

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
	o => \PC_OUT[15]~output_o\);

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
	o => \PC_OUT[16]~output_o\);

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
	o => \PC_OUT[17]~output_o\);

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
	o => \PC_OUT[18]~output_o\);

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
	o => \PC_OUT[19]~output_o\);

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
	o => \PC_OUT[20]~output_o\);

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
	o => \PC_OUT[21]~output_o\);

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
	o => \PC_OUT[22]~output_o\);

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
	o => \PC_OUT[23]~output_o\);

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
	o => \PC_OUT[24]~output_o\);

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
	o => \PC_OUT[25]~output_o\);

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
	o => \PC_OUT[26]~output_o\);

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
	o => \PC_OUT[27]~output_o\);

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
	o => \PC_OUT[28]~output_o\);

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
	o => \PC_OUT[29]~output_o\);

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
	o => \PC_OUT[30]~output_o\);

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
	o => \PC_OUT[31]~output_o\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\REG_PC|DOUT[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_PC|DOUT[2]~0_combout\ = !\REG_PC|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(2),
	combout => \REG_PC|DOUT[2]~0_combout\);

\REG_PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \REG_PC|DOUT[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(2));

\somador|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~1_sumout\ = SUM(( \REG_PC|DOUT\(2) ) + ( \REG_PC|DOUT\(3) ) + ( !VCC ))
-- \somador|Add0~2\ = CARRY(( \REG_PC|DOUT\(2) ) + ( \REG_PC|DOUT\(3) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(2),
	dataf => \REG_PC|ALT_INV_DOUT\(3),
	cin => GND,
	sumout => \somador|Add0~1_sumout\,
	cout => \somador|Add0~2\);

\REG_PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(3));

\somador|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~9_sumout\ = SUM(( \REG_PC|DOUT\(4) ) + ( GND ) + ( \somador|Add0~2\ ))
-- \somador|Add0~10\ = CARRY(( \REG_PC|DOUT\(4) ) + ( GND ) + ( \somador|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(4),
	cin => \somador|Add0~2\,
	sumout => \somador|Add0~9_sumout\,
	cout => \somador|Add0~10\);

\REG_PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(4));

\somador|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~5_sumout\ = SUM(( \REG_PC|DOUT\(5) ) + ( GND ) + ( \somador|Add0~10\ ))
-- \somador|Add0~6\ = CARRY(( \REG_PC|DOUT\(5) ) + ( GND ) + ( \somador|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(5),
	cin => \somador|Add0~10\,
	sumout => \somador|Add0~5_sumout\,
	cout => \somador|Add0~6\);

\REG_PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(5));

\somador|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~17_sumout\ = SUM(( \REG_PC|DOUT\(6) ) + ( GND ) + ( \somador|Add0~6\ ))
-- \somador|Add0~18\ = CARRY(( \REG_PC|DOUT\(6) ) + ( GND ) + ( \somador|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(6),
	cin => \somador|Add0~6\,
	sumout => \somador|Add0~17_sumout\,
	cout => \somador|Add0~18\);

\REG_PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(6));

\somador|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~13_sumout\ = SUM(( \REG_PC|DOUT\(7) ) + ( GND ) + ( \somador|Add0~18\ ))
-- \somador|Add0~14\ = CARRY(( \REG_PC|DOUT\(7) ) + ( GND ) + ( \somador|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(7),
	cin => \somador|Add0~18\,
	sumout => \somador|Add0~13_sumout\,
	cout => \somador|Add0~14\);

\REG_PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(7));

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( !\REG_PC|DOUT\(6) & ( (!\REG_PC|DOUT\(2) & (!\REG_PC|DOUT\(5) & (!\REG_PC|DOUT\(4) & !\REG_PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(2),
	datab => \REG_PC|ALT_INV_DOUT\(5),
	datac => \REG_PC|ALT_INV_DOUT\(4),
	datad => \REG_PC|ALT_INV_DOUT\(7),
	datae => \REG_PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~0_combout\);

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = (\REG_PC|DOUT\(3) & \ROM1|memROM~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(3),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~1_combout\);

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = (!\REG_PC|DOUT\(7) & !\REG_PC|DOUT\(6))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(7),
	datab => \REG_PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~2_combout\);

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \ROM1|memROM~2_combout\ & ( (!\REG_PC|DOUT\(3) & (\REG_PC|DOUT\(2) & (!\REG_PC|DOUT\(5) & !\REG_PC|DOUT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(3),
	datab => \REG_PC|ALT_INV_DOUT\(2),
	datac => \REG_PC|ALT_INV_DOUT\(5),
	datad => \REG_PC|ALT_INV_DOUT\(4),
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \ROM1|memROM~3_combout\);

\BANCO_REG|saidaA[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[1]~0_combout\ = ( !\REG_PC|DOUT\(4) & ( !\REG_PC|DOUT\(5) & ( (!\REG_PC|DOUT\(7) & (!\REG_PC|DOUT\(6) & ((!\REG_PC|DOUT\(2)) # (!\REG_PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(7),
	datab => \REG_PC|ALT_INV_DOUT\(6),
	datac => \REG_PC|ALT_INV_DOUT\(2),
	datad => \REG_PC|ALT_INV_DOUT\(3),
	datae => \REG_PC|ALT_INV_DOUT\(4),
	dataf => \REG_PC|ALT_INV_DOUT\(5),
	combout => \BANCO_REG|saidaA[1]~0_combout\);

\Sel_ULA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel_ULA(1),
	o => \Sel_ULA[1]~input_o\);

\BANCO_REG|registrador~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1062_combout\ = ( \REG_PC|DOUT\(4) & ( \REG_PC|DOUT\(3) ) ) # ( !\REG_PC|DOUT\(4) & ( \REG_PC|DOUT\(3) & ( (((\REG_PC|DOUT\(5)) # (\REG_PC|DOUT\(2))) # (\REG_PC|DOUT\(6))) # (\REG_PC|DOUT\(7)) ) ) ) # ( \REG_PC|DOUT\(4) & ( 
-- !\REG_PC|DOUT\(3) ) ) # ( !\REG_PC|DOUT\(4) & ( !\REG_PC|DOUT\(3) & ( ((\REG_PC|DOUT\(5)) # (\REG_PC|DOUT\(6))) # (\REG_PC|DOUT\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111111111111111111111111101111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(7),
	datab => \REG_PC|ALT_INV_DOUT\(6),
	datac => \REG_PC|ALT_INV_DOUT\(2),
	datad => \REG_PC|ALT_INV_DOUT\(5),
	datae => \REG_PC|ALT_INV_DOUT\(4),
	dataf => \REG_PC|ALT_INV_DOUT\(3),
	combout => \BANCO_REG|registrador~1062_combout\);

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = (!\REG_PC|DOUT\(4) & (!\REG_PC|DOUT\(5) & ((!\REG_PC|DOUT\(2)) # (!\REG_PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000000000000111000000000000011100000000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(2),
	datab => \REG_PC|ALT_INV_DOUT\(3),
	datac => \REG_PC|ALT_INV_DOUT\(4),
	datad => \REG_PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~4_combout\);

\Sel_ULA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel_ULA(0),
	o => \Sel_ULA[0]~input_o\);

\Ctrl_write~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ctrl_write,
	o => \Ctrl_write~input_o\);

\BANCO_REG|registrador~1089\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1089_combout\ = (\BANCO_REG|saidaA[1]~0_combout\ & \Ctrl_write~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datab => \ALT_INV_Ctrl_write~input_o\,
	combout => \BANCO_REG|registrador~1089_combout\);

\BANCO_REG|registrador~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~1_sumout\,
	asdata => \ULA1|saida[0]~0_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~294_q\);

\BANCO_REG|saidaA[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[0]~1_combout\ = (!\REG_PC|DOUT\(3) & (!\REG_PC|DOUT\(2) & (!\REG_PC|DOUT\(5) & !\REG_PC|DOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(3),
	datab => \REG_PC|ALT_INV_DOUT\(2),
	datac => \REG_PC|ALT_INV_DOUT\(5),
	datad => \REG_PC|ALT_INV_DOUT\(4),
	combout => \BANCO_REG|saidaA[0]~1_combout\);

\BANCO_REG|saidaA[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[0]~2_combout\ = (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & (\BANCO_REG|registrador~294_q\ & !\BANCO_REG|saidaA[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~294_q\,
	datad => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	combout => \BANCO_REG|saidaA[0]~2_combout\);

\BANCO_REG|registrador~1063\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1063_combout\ = ( \BANCO_REG|registrador~294_q\ & ( (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~0_combout\ & ((\BANCO_REG|registrador~38_q\)))) # (\ROM1|memROM~2_combout\ & (((!\ROM1|memROM~0_combout\ & \BANCO_REG|registrador~38_q\)) 
-- # (\ROM1|memROM~4_combout\))) ) ) # ( !\BANCO_REG|registrador~294_q\ & ( (!\ROM1|memROM~0_combout\ & (\BANCO_REG|registrador~38_q\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) # (\ROM1|memROM~0_combout\ & (\ROM1|memROM~2_combout\ & 
-- (\ROM1|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001001000001011100110100000001110010010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~38_q\,
	datae => \BANCO_REG|ALT_INV_registrador~294_q\,
	combout => \BANCO_REG|registrador~1063_combout\);

\ULA1|Add0~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~130_cout\ = CARRY(( (!\Sel_ULA[0]~input_o\) # (\Sel_ULA[1]~input_o\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	cin => GND,
	cout => \ULA1|Add0~130_cout\);

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

\BANCO_REG|registrador~1088\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1088_combout\ = (!\BANCO_REG|saidaA[1]~0_combout\ & \Ctrl_write~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datab => \ALT_INV_Ctrl_write~input_o\,
	combout => \BANCO_REG|registrador~1088_combout\);

\BANCO_REG|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~1_sumout\,
	asdata => \ULA1|saida[0]~0_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~38_q\);

\BANCO_REG|saidaB[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[0]~0_combout\ = ( \BANCO_REG|registrador~38_q\ & ( \BANCO_REG|registrador~294_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & ((!\ROM1|memROM~0_combout\) # ((\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\)))) ) ) ) # ( 
-- !\BANCO_REG|registrador~38_q\ & ( \BANCO_REG|registrador~294_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & (\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\)) ) ) ) # ( \BANCO_REG|registrador~38_q\ & ( !\BANCO_REG|registrador~294_q\ & ( 
-- (!\BANCO_REG|registrador~1062_combout\ & (!\ROM1|memROM~0_combout\ $ (((\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\))))) ) ) ) # ( !\BANCO_REG|registrador~38_q\ & ( !\BANCO_REG|registrador~294_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & 
-- (\ROM1|memROM~2_combout\ & (\ROM1|memROM~0_combout\ & \ROM1|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010101000001000001000000000001000101010000010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~38_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~294_q\,
	combout => \BANCO_REG|saidaB[0]~0_combout\);

\ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~0_combout\ = (\BANCO_REG|saidaB[0]~0_combout\ & ((!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110011001100100011001100110010001100110011001000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \BANCO_REG|ALT_INV_saidaB[0]~0_combout\,
	datac => \ALT_INV_Sel_ULA[0]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[0]~2_combout\,
	combout => \ULA1|saida[0]~0_combout\);

\ULA1|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~1_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~1_sumout\))) # (\Sel_ULA[1]~input_o\ & (\ULA1|saida[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ULA1|ALT_INV_saida[0]~0_combout\,
	datac => \ULA1|ALT_INV_Add0~1_sumout\,
	combout => \ULA1|saida[0]~1_combout\);

\BANCO_REG|registrador~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~5_sumout\,
	asdata => \ULA1|saida[1]~2_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~295_q\);

\BANCO_REG|saidaA[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[1]~3_combout\ = (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & ((\BANCO_REG|registrador~295_q\) # (\BANCO_REG|saidaA[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001000000010001000100000001000100010000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~295_q\,
	combout => \BANCO_REG|saidaA[1]~3_combout\);

\BANCO_REG|registrador~1064\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1064_combout\ = ( \BANCO_REG|registrador~295_q\ & ( (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~0_combout\ & ((!\BANCO_REG|registrador~39_q\)))) # (\ROM1|memROM~2_combout\ & (((!\ROM1|memROM~0_combout\ & 
-- !\BANCO_REG|registrador~39_q\)) # (\ROM1|memROM~4_combout\))) ) ) # ( !\BANCO_REG|registrador~295_q\ & ( (!\ROM1|memROM~0_combout\ & (!\BANCO_REG|registrador~39_q\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) # (\ROM1|memROM~0_combout\ & 
-- (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100100000001110011010000010111001001000000011100110100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~39_q\,
	datae => \BANCO_REG|ALT_INV_registrador~295_q\,
	combout => \BANCO_REG|registrador~1064_combout\);

\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( \BANCO_REG|saidaA[1]~3_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1064_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1064_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( \BANCO_REG|saidaA[1]~3_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1064_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1064_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~2\ ))

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
	datad => \BANCO_REG|ALT_INV_saidaA[1]~3_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1064_combout\,
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

\ULA1|Add0~5_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_wirecell_combout\ = !\ULA1|Add0~5_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~5_sumout\,
	combout => \ULA1|Add0~5_wirecell_combout\);

\ULA1|saida[1]~2_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~2_wirecell_combout\ = !\ULA1|saida[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[1]~2_combout\,
	combout => \ULA1|saida[1]~2_wirecell_combout\);

\BANCO_REG|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~5_wirecell_combout\,
	asdata => \ULA1|saida[1]~2_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~39_q\);

\BANCO_REG|saidaB[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[1]~1_combout\ = ( \BANCO_REG|registrador~39_q\ & ( \BANCO_REG|registrador~295_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & (\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\)) ) ) ) # ( !\BANCO_REG|registrador~39_q\ & ( 
-- \BANCO_REG|registrador~295_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & ((!\ROM1|memROM~0_combout\) # ((\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\)))) ) ) ) # ( \BANCO_REG|registrador~39_q\ & ( !\BANCO_REG|registrador~295_q\ & ( 
-- (!\BANCO_REG|registrador~1062_combout\ & (\ROM1|memROM~2_combout\ & (\ROM1|memROM~0_combout\ & \ROM1|memROM~4_combout\))) ) ) ) # ( !\BANCO_REG|registrador~39_q\ & ( !\BANCO_REG|registrador~295_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & 
-- (!\ROM1|memROM~0_combout\ $ (((\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000010000000000000001010100000101000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~39_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~295_q\,
	combout => \BANCO_REG|saidaB[1]~1_combout\);

\ULA1|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~2_combout\ = (\BANCO_REG|saidaB[1]~1_combout\ & ((!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaB[1]~1_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[1]~3_combout\,
	combout => \ULA1|saida[1]~2_combout\);

\ULA1|saida[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~3_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~5_sumout\))) # (\Sel_ULA[1]~input_o\ & (\ULA1|saida[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ULA1|ALT_INV_saida[1]~2_combout\,
	datac => \ULA1|ALT_INV_Add0~5_sumout\,
	combout => \ULA1|saida[1]~3_combout\);

\BANCO_REG|registrador~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~9_sumout\,
	asdata => \ULA1|saida[2]~4_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~296_q\);

\BANCO_REG|saidaA[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[2]~4_combout\ = (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & (!\BANCO_REG|saidaA[0]~1_combout\ & \BANCO_REG|registrador~296_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~296_q\,
	combout => \BANCO_REG|saidaA[2]~4_combout\);

\BANCO_REG|registrador~1065\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1065_combout\ = ( \BANCO_REG|registrador~296_q\ & ( (!\ROM1|memROM~0_combout\ & (((\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\)) # (\BANCO_REG|registrador~40_q\))) ) ) # ( !\BANCO_REG|registrador~296_q\ & ( 
-- (!\ROM1|memROM~0_combout\ & (\BANCO_REG|registrador~40_q\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000001001100110000000000110010000000010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~40_q\,
	datae => \BANCO_REG|ALT_INV_registrador~296_q\,
	combout => \BANCO_REG|registrador~1065_combout\);

\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( \BANCO_REG|saidaA[2]~4_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1065_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1065_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( \BANCO_REG|saidaA[2]~4_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1065_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1065_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~6\ ))

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
	datad => \BANCO_REG|ALT_INV_saidaA[2]~4_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1065_combout\,
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

\BANCO_REG|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~9_sumout\,
	asdata => \ULA1|saida[2]~4_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~40_q\);

\BANCO_REG|saidaB[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[2]~2_combout\ = ( \BANCO_REG|registrador~40_q\ & ( \BANCO_REG|registrador~296_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & !\ROM1|memROM~0_combout\) ) ) ) # ( !\BANCO_REG|registrador~40_q\ & ( \BANCO_REG|registrador~296_q\ & ( 
-- (!\BANCO_REG|registrador~1062_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~0_combout\ & \ROM1|memROM~4_combout\))) ) ) ) # ( \BANCO_REG|registrador~40_q\ & ( !\BANCO_REG|registrador~296_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & 
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
	datae => \BANCO_REG|ALT_INV_registrador~40_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~296_q\,
	combout => \BANCO_REG|saidaB[2]~2_combout\);

\ULA1|saida[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~4_combout\ = (\BANCO_REG|saidaB[2]~2_combout\ & ((!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaB[2]~2_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[2]~4_combout\,
	combout => \ULA1|saida[2]~4_combout\);

\ULA1|saida[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~5_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~9_sumout\))) # (\Sel_ULA[1]~input_o\ & (\ULA1|saida[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ULA1|ALT_INV_saida[2]~4_combout\,
	datac => \ULA1|ALT_INV_Add0~9_sumout\,
	combout => \ULA1|saida[2]~5_combout\);

\BANCO_REG|registrador~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~13_sumout\,
	asdata => \ULA1|saida[3]~6_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~297_q\);

\BANCO_REG|saidaA[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[3]~5_combout\ = (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & ((\BANCO_REG|registrador~297_q\) # (\BANCO_REG|saidaA[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001000000010001000100000001000100010000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~297_q\,
	combout => \BANCO_REG|saidaA[3]~5_combout\);

\BANCO_REG|registrador~1066\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1066_combout\ = ( \BANCO_REG|registrador~297_q\ & ( (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~0_combout\ & ((!\BANCO_REG|registrador~41_q\)))) # (\ROM1|memROM~2_combout\ & (((!\ROM1|memROM~0_combout\ & 
-- !\BANCO_REG|registrador~41_q\)) # (\ROM1|memROM~4_combout\))) ) ) # ( !\BANCO_REG|registrador~297_q\ & ( (!\ROM1|memROM~0_combout\ & (!\BANCO_REG|registrador~41_q\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) # (\ROM1|memROM~0_combout\ & 
-- (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100100000001110011010000010111001001000000011100110100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~41_q\,
	datae => \BANCO_REG|ALT_INV_registrador~297_q\,
	combout => \BANCO_REG|registrador~1066_combout\);

\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( \BANCO_REG|saidaA[3]~5_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1066_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1066_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( \BANCO_REG|saidaA[3]~5_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1066_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1066_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~10\ ))

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
	datad => \BANCO_REG|ALT_INV_saidaA[3]~5_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1066_combout\,
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

\ULA1|Add0~13_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_wirecell_combout\ = !\ULA1|Add0~13_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~13_sumout\,
	combout => \ULA1|Add0~13_wirecell_combout\);

\ULA1|saida[3]~6_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~6_wirecell_combout\ = !\ULA1|saida[3]~6_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[3]~6_combout\,
	combout => \ULA1|saida[3]~6_wirecell_combout\);

\BANCO_REG|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~13_wirecell_combout\,
	asdata => \ULA1|saida[3]~6_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~41_q\);

\BANCO_REG|saidaB[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[3]~3_combout\ = ( \BANCO_REG|registrador~41_q\ & ( \BANCO_REG|registrador~297_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & (\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\)) ) ) ) # ( !\BANCO_REG|registrador~41_q\ & ( 
-- \BANCO_REG|registrador~297_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & ((!\ROM1|memROM~0_combout\) # ((\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\)))) ) ) ) # ( \BANCO_REG|registrador~41_q\ & ( !\BANCO_REG|registrador~297_q\ & ( 
-- (!\BANCO_REG|registrador~1062_combout\ & (\ROM1|memROM~2_combout\ & (\ROM1|memROM~0_combout\ & \ROM1|memROM~4_combout\))) ) ) ) # ( !\BANCO_REG|registrador~41_q\ & ( !\BANCO_REG|registrador~297_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & 
-- (!\ROM1|memROM~0_combout\ $ (((\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000010000000000000001010100000101000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~41_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~297_q\,
	combout => \BANCO_REG|saidaB[3]~3_combout\);

\ULA1|saida[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~6_combout\ = (\BANCO_REG|saidaB[3]~3_combout\ & ((!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaB[3]~3_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[3]~5_combout\,
	combout => \ULA1|saida[3]~6_combout\);

\ULA1|saida[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~7_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~13_sumout\))) # (\Sel_ULA[1]~input_o\ & (\ULA1|saida[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ULA1|ALT_INV_saida[3]~6_combout\,
	datac => \ULA1|ALT_INV_Add0~13_sumout\,
	combout => \ULA1|saida[3]~7_combout\);

\BANCO_REG|registrador~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~17_sumout\,
	asdata => \ULA1|saida[4]~8_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~298_q\);

\BANCO_REG|saidaA[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[4]~6_combout\ = (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & (!\BANCO_REG|saidaA[0]~1_combout\ & \BANCO_REG|registrador~298_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~298_q\,
	combout => \BANCO_REG|saidaA[4]~6_combout\);

\BANCO_REG|registrador~1067\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1067_combout\ = ( \BANCO_REG|registrador~298_q\ & ( (!\ROM1|memROM~0_combout\ & (((\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\)) # (\BANCO_REG|registrador~42_q\))) ) ) # ( !\BANCO_REG|registrador~298_q\ & ( 
-- (!\ROM1|memROM~0_combout\ & (\BANCO_REG|registrador~42_q\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000001001100110000000000110010000000010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~42_q\,
	datae => \BANCO_REG|ALT_INV_registrador~298_q\,
	combout => \BANCO_REG|registrador~1067_combout\);

\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( \BANCO_REG|saidaA[4]~6_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1067_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1067_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( \BANCO_REG|saidaA[4]~6_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1067_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1067_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~14\ ))

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
	datad => \BANCO_REG|ALT_INV_saidaA[4]~6_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1067_combout\,
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

\BANCO_REG|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~17_sumout\,
	asdata => \ULA1|saida[4]~8_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~42_q\);

\BANCO_REG|saidaB[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[4]~4_combout\ = ( \BANCO_REG|registrador~42_q\ & ( \BANCO_REG|registrador~298_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & !\ROM1|memROM~0_combout\) ) ) ) # ( !\BANCO_REG|registrador~42_q\ & ( \BANCO_REG|registrador~298_q\ & ( 
-- (!\BANCO_REG|registrador~1062_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~0_combout\ & \ROM1|memROM~4_combout\))) ) ) ) # ( \BANCO_REG|registrador~42_q\ & ( !\BANCO_REG|registrador~298_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & 
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
	datae => \BANCO_REG|ALT_INV_registrador~42_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~298_q\,
	combout => \BANCO_REG|saidaB[4]~4_combout\);

\ULA1|saida[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~8_combout\ = (\BANCO_REG|saidaB[4]~4_combout\ & ((!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaB[4]~4_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[4]~6_combout\,
	combout => \ULA1|saida[4]~8_combout\);

\ULA1|saida[4]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~9_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~17_sumout\))) # (\Sel_ULA[1]~input_o\ & (\ULA1|saida[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ULA1|ALT_INV_saida[4]~8_combout\,
	datac => \ULA1|ALT_INV_Add0~17_sumout\,
	combout => \ULA1|saida[4]~9_combout\);

\BANCO_REG|registrador~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~21_sumout\,
	asdata => \ULA1|saida[5]~10_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~299_q\);

\BANCO_REG|saidaA[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[5]~7_combout\ = (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & (!\BANCO_REG|saidaA[0]~1_combout\ & \BANCO_REG|registrador~299_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~299_q\,
	combout => \BANCO_REG|saidaA[5]~7_combout\);

\BANCO_REG|registrador~1068\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1068_combout\ = ( \BANCO_REG|registrador~299_q\ & ( (!\ROM1|memROM~0_combout\ & ((!\BANCO_REG|registrador~43_q\) # ((\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\)))) ) ) # ( !\BANCO_REG|registrador~299_q\ & ( 
-- (!\ROM1|memROM~0_combout\ & (!\BANCO_REG|registrador~43_q\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000000000110011000000010011001000000000001100110000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~43_q\,
	datae => \BANCO_REG|ALT_INV_registrador~299_q\,
	combout => \BANCO_REG|registrador~1068_combout\);

\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( \BANCO_REG|saidaA[5]~7_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1068_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1068_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( \BANCO_REG|saidaA[5]~7_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1068_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1068_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~18\ ))

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
	datad => \BANCO_REG|ALT_INV_saidaA[5]~7_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1068_combout\,
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

\ULA1|Add0~21_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_wirecell_combout\ = !\ULA1|Add0~21_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~21_sumout\,
	combout => \ULA1|Add0~21_wirecell_combout\);

\ULA1|saida[5]~10_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~10_wirecell_combout\ = !\ULA1|saida[5]~10_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[5]~10_combout\,
	combout => \ULA1|saida[5]~10_wirecell_combout\);

\BANCO_REG|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~21_wirecell_combout\,
	asdata => \ULA1|saida[5]~10_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~43_q\);

\BANCO_REG|saidaB[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[5]~5_combout\ = ( \BANCO_REG|registrador~43_q\ & ( \BANCO_REG|registrador~299_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~0_combout\ & \ROM1|memROM~4_combout\))) ) ) ) # ( 
-- !\BANCO_REG|registrador~43_q\ & ( \BANCO_REG|registrador~299_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & !\ROM1|memROM~0_combout\) ) ) ) # ( !\BANCO_REG|registrador~43_q\ & ( !\BANCO_REG|registrador~299_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & 
-- (!\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000000000000000000010100000101000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~43_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~299_q\,
	combout => \BANCO_REG|saidaB[5]~5_combout\);

\ULA1|saida[5]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~10_combout\ = (\BANCO_REG|saidaB[5]~5_combout\ & ((!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaB[5]~5_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[5]~7_combout\,
	combout => \ULA1|saida[5]~10_combout\);

\ULA1|saida[5]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~11_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~21_sumout\))) # (\Sel_ULA[1]~input_o\ & (\ULA1|saida[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ULA1|ALT_INV_saida[5]~10_combout\,
	datac => \ULA1|ALT_INV_Add0~21_sumout\,
	combout => \ULA1|saida[5]~11_combout\);

\BANCO_REG|registrador~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~25_sumout\,
	asdata => \ULA1|saida[6]~12_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~300_q\);

\BANCO_REG|saidaA[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[6]~8_combout\ = (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & (!\BANCO_REG|saidaA[0]~1_combout\ & \BANCO_REG|registrador~300_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~300_q\,
	combout => \BANCO_REG|saidaA[6]~8_combout\);

\BANCO_REG|registrador~1069\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1069_combout\ = ( \BANCO_REG|registrador~300_q\ & ( (!\ROM1|memROM~0_combout\ & (((\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\)) # (\BANCO_REG|registrador~44_q\))) ) ) # ( !\BANCO_REG|registrador~300_q\ & ( 
-- (!\ROM1|memROM~0_combout\ & (\BANCO_REG|registrador~44_q\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000001001100110000000000110010000000010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~44_q\,
	datae => \BANCO_REG|ALT_INV_registrador~300_q\,
	combout => \BANCO_REG|registrador~1069_combout\);

\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( \BANCO_REG|saidaA[6]~8_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1069_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1069_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( \BANCO_REG|saidaA[6]~8_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1069_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1069_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~22\ ))

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
	datad => \BANCO_REG|ALT_INV_saidaA[6]~8_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1069_combout\,
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

\BANCO_REG|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~25_sumout\,
	asdata => \ULA1|saida[6]~12_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~44_q\);

\BANCO_REG|saidaB[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[6]~6_combout\ = ( \BANCO_REG|registrador~44_q\ & ( \BANCO_REG|registrador~300_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & !\ROM1|memROM~0_combout\) ) ) ) # ( !\BANCO_REG|registrador~44_q\ & ( \BANCO_REG|registrador~300_q\ & ( 
-- (!\BANCO_REG|registrador~1062_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~0_combout\ & \ROM1|memROM~4_combout\))) ) ) ) # ( \BANCO_REG|registrador~44_q\ & ( !\BANCO_REG|registrador~300_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & 
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
	datae => \BANCO_REG|ALT_INV_registrador~44_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~300_q\,
	combout => \BANCO_REG|saidaB[6]~6_combout\);

\ULA1|saida[6]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~12_combout\ = (\BANCO_REG|saidaB[6]~6_combout\ & ((!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaB[6]~6_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[6]~8_combout\,
	combout => \ULA1|saida[6]~12_combout\);

\ULA1|saida[6]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~13_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~25_sumout\))) # (\Sel_ULA[1]~input_o\ & (\ULA1|saida[6]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ULA1|ALT_INV_saida[6]~12_combout\,
	datac => \ULA1|ALT_INV_Add0~25_sumout\,
	combout => \ULA1|saida[6]~13_combout\);

\BANCO_REG|registrador~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~29_sumout\,
	asdata => \ULA1|saida[7]~14_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~301_q\);

\BANCO_REG|saidaA[7]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[7]~9_combout\ = (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & (!\BANCO_REG|saidaA[0]~1_combout\ & \BANCO_REG|registrador~301_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~301_q\,
	combout => \BANCO_REG|saidaA[7]~9_combout\);

\BANCO_REG|registrador~1070\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1070_combout\ = ( \BANCO_REG|registrador~301_q\ & ( (!\ROM1|memROM~0_combout\ & ((!\BANCO_REG|registrador~45_q\) # ((\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\)))) ) ) # ( !\BANCO_REG|registrador~301_q\ & ( 
-- (!\ROM1|memROM~0_combout\ & (!\BANCO_REG|registrador~45_q\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000000000110011000000010011001000000000001100110000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~45_q\,
	datae => \BANCO_REG|ALT_INV_registrador~301_q\,
	combout => \BANCO_REG|registrador~1070_combout\);

\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( \BANCO_REG|saidaA[7]~9_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1070_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1070_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~26\ ))
-- \ULA1|Add0~30\ = CARRY(( \BANCO_REG|saidaA[7]~9_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1070_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1070_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~26\ ))

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
	datad => \BANCO_REG|ALT_INV_saidaA[7]~9_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1070_combout\,
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\,
	cout => \ULA1|Add0~30\);

\ULA1|Add0~29_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_wirecell_combout\ = !\ULA1|Add0~29_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~29_sumout\,
	combout => \ULA1|Add0~29_wirecell_combout\);

\ULA1|saida[7]~14_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~14_wirecell_combout\ = !\ULA1|saida[7]~14_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[7]~14_combout\,
	combout => \ULA1|saida[7]~14_wirecell_combout\);

\BANCO_REG|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~29_wirecell_combout\,
	asdata => \ULA1|saida[7]~14_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~45_q\);

\BANCO_REG|saidaB[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[7]~7_combout\ = ( \BANCO_REG|registrador~45_q\ & ( \BANCO_REG|registrador~301_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~0_combout\ & \ROM1|memROM~4_combout\))) ) ) ) # ( 
-- !\BANCO_REG|registrador~45_q\ & ( \BANCO_REG|registrador~301_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & !\ROM1|memROM~0_combout\) ) ) ) # ( !\BANCO_REG|registrador~45_q\ & ( !\BANCO_REG|registrador~301_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & 
-- (!\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000000000000000000010100000101000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~45_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~301_q\,
	combout => \BANCO_REG|saidaB[7]~7_combout\);

\ULA1|saida[7]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~14_combout\ = (\BANCO_REG|saidaB[7]~7_combout\ & ((!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[7]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaB[7]~7_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[7]~9_combout\,
	combout => \ULA1|saida[7]~14_combout\);

\ULA1|saida[7]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~15_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~29_sumout\))) # (\Sel_ULA[1]~input_o\ & (\ULA1|saida[7]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ULA1|ALT_INV_saida[7]~14_combout\,
	datac => \ULA1|ALT_INV_Add0~29_sumout\,
	combout => \ULA1|saida[7]~15_combout\);

\BANCO_REG|registrador~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~33_sumout\,
	asdata => \ULA1|saida[8]~16_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~302_q\);

\BANCO_REG|saidaA[8]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[8]~10_combout\ = (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & (!\BANCO_REG|saidaA[0]~1_combout\ & \BANCO_REG|registrador~302_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~302_q\,
	combout => \BANCO_REG|saidaA[8]~10_combout\);

\BANCO_REG|registrador~1071\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1071_combout\ = ( \BANCO_REG|registrador~302_q\ & ( (!\ROM1|memROM~0_combout\ & (((\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\)) # (\BANCO_REG|registrador~46_q\))) ) ) # ( !\BANCO_REG|registrador~302_q\ & ( 
-- (!\ROM1|memROM~0_combout\ & (\BANCO_REG|registrador~46_q\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000001001100110000000000110010000000010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~46_q\,
	datae => \BANCO_REG|ALT_INV_registrador~302_q\,
	combout => \BANCO_REG|registrador~1071_combout\);

\ULA1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~33_sumout\ = SUM(( \BANCO_REG|saidaA[8]~10_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1071_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1071_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~30\ ))
-- \ULA1|Add0~34\ = CARRY(( \BANCO_REG|saidaA[8]~10_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1071_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1071_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~30\ ))

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
	datad => \BANCO_REG|ALT_INV_saidaA[8]~10_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1071_combout\,
	cin => \ULA1|Add0~30\,
	sumout => \ULA1|Add0~33_sumout\,
	cout => \ULA1|Add0~34\);

\BANCO_REG|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~33_sumout\,
	asdata => \ULA1|saida[8]~16_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~46_q\);

\BANCO_REG|saidaB[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[8]~8_combout\ = ( \BANCO_REG|registrador~46_q\ & ( \BANCO_REG|registrador~302_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & !\ROM1|memROM~0_combout\) ) ) ) # ( !\BANCO_REG|registrador~46_q\ & ( \BANCO_REG|registrador~302_q\ & ( 
-- (!\BANCO_REG|registrador~1062_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~0_combout\ & \ROM1|memROM~4_combout\))) ) ) ) # ( \BANCO_REG|registrador~46_q\ & ( !\BANCO_REG|registrador~302_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & 
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
	datae => \BANCO_REG|ALT_INV_registrador~46_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~302_q\,
	combout => \BANCO_REG|saidaB[8]~8_combout\);

\ULA1|saida[8]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[8]~16_combout\ = (\BANCO_REG|saidaB[8]~8_combout\ & ((!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[8]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaB[8]~8_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[8]~10_combout\,
	combout => \ULA1|saida[8]~16_combout\);

\ULA1|saida[8]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[8]~17_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~33_sumout\))) # (\Sel_ULA[1]~input_o\ & (\ULA1|saida[8]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ULA1|ALT_INV_saida[8]~16_combout\,
	datac => \ULA1|ALT_INV_Add0~33_sumout\,
	combout => \ULA1|saida[8]~17_combout\);

\BANCO_REG|registrador~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~37_sumout\,
	asdata => \ULA1|saida[9]~18_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~303_q\);

\BANCO_REG|saidaA[9]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[9]~11_combout\ = (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & (!\BANCO_REG|saidaA[0]~1_combout\ & \BANCO_REG|registrador~303_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~303_q\,
	combout => \BANCO_REG|saidaA[9]~11_combout\);

\BANCO_REG|registrador~1072\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1072_combout\ = ( \BANCO_REG|registrador~303_q\ & ( (!\ROM1|memROM~0_combout\ & ((!\BANCO_REG|registrador~47_q\) # ((\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\)))) ) ) # ( !\BANCO_REG|registrador~303_q\ & ( 
-- (!\ROM1|memROM~0_combout\ & (!\BANCO_REG|registrador~47_q\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000000000110011000000010011001000000000001100110000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~47_q\,
	datae => \BANCO_REG|ALT_INV_registrador~303_q\,
	combout => \BANCO_REG|registrador~1072_combout\);

\ULA1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~37_sumout\ = SUM(( \BANCO_REG|saidaA[9]~11_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1072_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1072_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~34\ ))
-- \ULA1|Add0~38\ = CARRY(( \BANCO_REG|saidaA[9]~11_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1072_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1072_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~34\ ))

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
	datad => \BANCO_REG|ALT_INV_saidaA[9]~11_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1072_combout\,
	cin => \ULA1|Add0~34\,
	sumout => \ULA1|Add0~37_sumout\,
	cout => \ULA1|Add0~38\);

\ULA1|Add0~37_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~37_wirecell_combout\ = !\ULA1|Add0~37_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~37_sumout\,
	combout => \ULA1|Add0~37_wirecell_combout\);

\ULA1|saida[9]~18_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[9]~18_wirecell_combout\ = !\ULA1|saida[9]~18_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[9]~18_combout\,
	combout => \ULA1|saida[9]~18_wirecell_combout\);

\BANCO_REG|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~37_wirecell_combout\,
	asdata => \ULA1|saida[9]~18_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~47_q\);

\BANCO_REG|saidaB[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[9]~9_combout\ = ( \BANCO_REG|registrador~47_q\ & ( \BANCO_REG|registrador~303_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~0_combout\ & \ROM1|memROM~4_combout\))) ) ) ) # ( 
-- !\BANCO_REG|registrador~47_q\ & ( \BANCO_REG|registrador~303_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & !\ROM1|memROM~0_combout\) ) ) ) # ( !\BANCO_REG|registrador~47_q\ & ( !\BANCO_REG|registrador~303_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & 
-- (!\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000000000000000000010100000101000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~47_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~303_q\,
	combout => \BANCO_REG|saidaB[9]~9_combout\);

\ULA1|saida[9]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[9]~18_combout\ = (\BANCO_REG|saidaB[9]~9_combout\ & ((!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[9]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaB[9]~9_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[9]~11_combout\,
	combout => \ULA1|saida[9]~18_combout\);

\ULA1|saida[9]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[9]~19_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~37_sumout\))) # (\Sel_ULA[1]~input_o\ & (\ULA1|saida[9]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ULA1|ALT_INV_saida[9]~18_combout\,
	datac => \ULA1|ALT_INV_Add0~37_sumout\,
	combout => \ULA1|saida[9]~19_combout\);

\BANCO_REG|registrador~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~41_sumout\,
	asdata => \ULA1|saida[10]~20_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~304_q\);

\BANCO_REG|saidaA[10]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[10]~12_combout\ = (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & (!\BANCO_REG|saidaA[0]~1_combout\ & \BANCO_REG|registrador~304_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~304_q\,
	combout => \BANCO_REG|saidaA[10]~12_combout\);

\BANCO_REG|registrador~1073\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1073_combout\ = ( \BANCO_REG|registrador~304_q\ & ( (!\ROM1|memROM~0_combout\ & (((\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\)) # (\BANCO_REG|registrador~48_q\))) ) ) # ( !\BANCO_REG|registrador~304_q\ & ( 
-- (!\ROM1|memROM~0_combout\ & (\BANCO_REG|registrador~48_q\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000001001100110000000000110010000000010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~48_q\,
	datae => \BANCO_REG|ALT_INV_registrador~304_q\,
	combout => \BANCO_REG|registrador~1073_combout\);

\ULA1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~41_sumout\ = SUM(( \BANCO_REG|saidaA[10]~12_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1073_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1073_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~38\ ))
-- \ULA1|Add0~42\ = CARRY(( \BANCO_REG|saidaA[10]~12_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1073_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1073_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~38\ ))

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
	datad => \BANCO_REG|ALT_INV_saidaA[10]~12_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1073_combout\,
	cin => \ULA1|Add0~38\,
	sumout => \ULA1|Add0~41_sumout\,
	cout => \ULA1|Add0~42\);

\BANCO_REG|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~41_sumout\,
	asdata => \ULA1|saida[10]~20_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~48_q\);

\BANCO_REG|saidaB[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[10]~10_combout\ = ( \BANCO_REG|registrador~48_q\ & ( \BANCO_REG|registrador~304_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & !\ROM1|memROM~0_combout\) ) ) ) # ( !\BANCO_REG|registrador~48_q\ & ( \BANCO_REG|registrador~304_q\ & ( 
-- (!\BANCO_REG|registrador~1062_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~0_combout\ & \ROM1|memROM~4_combout\))) ) ) ) # ( \BANCO_REG|registrador~48_q\ & ( !\BANCO_REG|registrador~304_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & 
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
	datae => \BANCO_REG|ALT_INV_registrador~48_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~304_q\,
	combout => \BANCO_REG|saidaB[10]~10_combout\);

\ULA1|saida[10]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[10]~20_combout\ = (\BANCO_REG|saidaB[10]~10_combout\ & ((!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[10]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaB[10]~10_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[10]~12_combout\,
	combout => \ULA1|saida[10]~20_combout\);

\ULA1|saida[10]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[10]~21_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~41_sumout\))) # (\Sel_ULA[1]~input_o\ & (\ULA1|saida[10]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ULA1|ALT_INV_saida[10]~20_combout\,
	datac => \ULA1|ALT_INV_Add0~41_sumout\,
	combout => \ULA1|saida[10]~21_combout\);

\BANCO_REG|registrador~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~45_sumout\,
	asdata => \ULA1|saida[11]~22_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~305_q\);

\BANCO_REG|saidaA[11]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[11]~13_combout\ = (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & (!\BANCO_REG|saidaA[0]~1_combout\ & \BANCO_REG|registrador~305_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~305_q\,
	combout => \BANCO_REG|saidaA[11]~13_combout\);

\BANCO_REG|registrador~1074\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1074_combout\ = ( \BANCO_REG|registrador~305_q\ & ( (!\ROM1|memROM~0_combout\ & ((!\BANCO_REG|registrador~49_q\) # ((\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\)))) ) ) # ( !\BANCO_REG|registrador~305_q\ & ( 
-- (!\ROM1|memROM~0_combout\ & (!\BANCO_REG|registrador~49_q\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000000000110011000000010011001000000000001100110000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~49_q\,
	datae => \BANCO_REG|ALT_INV_registrador~305_q\,
	combout => \BANCO_REG|registrador~1074_combout\);

\ULA1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~45_sumout\ = SUM(( \BANCO_REG|saidaA[11]~13_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1074_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1074_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~42\ ))
-- \ULA1|Add0~46\ = CARRY(( \BANCO_REG|saidaA[11]~13_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1074_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1074_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~42\ ))

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
	datad => \BANCO_REG|ALT_INV_saidaA[11]~13_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1074_combout\,
	cin => \ULA1|Add0~42\,
	sumout => \ULA1|Add0~45_sumout\,
	cout => \ULA1|Add0~46\);

\ULA1|Add0~45_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~45_wirecell_combout\ = !\ULA1|Add0~45_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~45_sumout\,
	combout => \ULA1|Add0~45_wirecell_combout\);

\ULA1|saida[11]~22_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[11]~22_wirecell_combout\ = !\ULA1|saida[11]~22_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[11]~22_combout\,
	combout => \ULA1|saida[11]~22_wirecell_combout\);

\BANCO_REG|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~45_wirecell_combout\,
	asdata => \ULA1|saida[11]~22_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~49_q\);

\BANCO_REG|saidaB[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[11]~11_combout\ = ( \BANCO_REG|registrador~49_q\ & ( \BANCO_REG|registrador~305_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~0_combout\ & \ROM1|memROM~4_combout\))) ) ) ) # ( 
-- !\BANCO_REG|registrador~49_q\ & ( \BANCO_REG|registrador~305_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & !\ROM1|memROM~0_combout\) ) ) ) # ( !\BANCO_REG|registrador~49_q\ & ( !\BANCO_REG|registrador~305_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & 
-- (!\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000000000000000000010100000101000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~49_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~305_q\,
	combout => \BANCO_REG|saidaB[11]~11_combout\);

\ULA1|saida[11]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[11]~22_combout\ = (\BANCO_REG|saidaB[11]~11_combout\ & ((!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[11]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaB[11]~11_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[11]~13_combout\,
	combout => \ULA1|saida[11]~22_combout\);

\ULA1|saida[11]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[11]~23_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~45_sumout\))) # (\Sel_ULA[1]~input_o\ & (\ULA1|saida[11]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ULA1|ALT_INV_saida[11]~22_combout\,
	datac => \ULA1|ALT_INV_Add0~45_sumout\,
	combout => \ULA1|saida[11]~23_combout\);

\BANCO_REG|registrador~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~49_sumout\,
	asdata => \ULA1|saida[12]~24_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~306_q\);

\BANCO_REG|saidaA[12]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[12]~14_combout\ = (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & (!\BANCO_REG|saidaA[0]~1_combout\ & \BANCO_REG|registrador~306_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~306_q\,
	combout => \BANCO_REG|saidaA[12]~14_combout\);

\BANCO_REG|registrador~1075\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1075_combout\ = ( \BANCO_REG|registrador~306_q\ & ( (!\ROM1|memROM~0_combout\ & (((\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\)) # (\BANCO_REG|registrador~50_q\))) ) ) # ( !\BANCO_REG|registrador~306_q\ & ( 
-- (!\ROM1|memROM~0_combout\ & (\BANCO_REG|registrador~50_q\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000001001100110000000000110010000000010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~50_q\,
	datae => \BANCO_REG|ALT_INV_registrador~306_q\,
	combout => \BANCO_REG|registrador~1075_combout\);

\ULA1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~49_sumout\ = SUM(( \BANCO_REG|saidaA[12]~14_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1075_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1075_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~46\ ))
-- \ULA1|Add0~50\ = CARRY(( \BANCO_REG|saidaA[12]~14_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1075_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1075_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~46\ ))

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
	datad => \BANCO_REG|ALT_INV_saidaA[12]~14_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1075_combout\,
	cin => \ULA1|Add0~46\,
	sumout => \ULA1|Add0~49_sumout\,
	cout => \ULA1|Add0~50\);

\BANCO_REG|registrador~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~49_sumout\,
	asdata => \ULA1|saida[12]~24_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~50_q\);

\BANCO_REG|saidaB[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[12]~12_combout\ = ( \BANCO_REG|registrador~50_q\ & ( \BANCO_REG|registrador~306_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & !\ROM1|memROM~0_combout\) ) ) ) # ( !\BANCO_REG|registrador~50_q\ & ( \BANCO_REG|registrador~306_q\ & ( 
-- (!\BANCO_REG|registrador~1062_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~0_combout\ & \ROM1|memROM~4_combout\))) ) ) ) # ( \BANCO_REG|registrador~50_q\ & ( !\BANCO_REG|registrador~306_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & 
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
	datae => \BANCO_REG|ALT_INV_registrador~50_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~306_q\,
	combout => \BANCO_REG|saidaB[12]~12_combout\);

\ULA1|saida[12]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[12]~24_combout\ = (\BANCO_REG|saidaB[12]~12_combout\ & ((!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[12]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaB[12]~12_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[12]~14_combout\,
	combout => \ULA1|saida[12]~24_combout\);

\ULA1|saida[12]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[12]~25_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~49_sumout\))) # (\Sel_ULA[1]~input_o\ & (\ULA1|saida[12]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ULA1|ALT_INV_saida[12]~24_combout\,
	datac => \ULA1|ALT_INV_Add0~49_sumout\,
	combout => \ULA1|saida[12]~25_combout\);

\BANCO_REG|registrador~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~53_sumout\,
	asdata => \ULA1|saida[13]~26_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~307_q\);

\BANCO_REG|saidaA[13]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[13]~15_combout\ = (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & (!\BANCO_REG|saidaA[0]~1_combout\ & \BANCO_REG|registrador~307_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~307_q\,
	combout => \BANCO_REG|saidaA[13]~15_combout\);

\BANCO_REG|registrador~1076\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1076_combout\ = ( \BANCO_REG|registrador~307_q\ & ( (!\ROM1|memROM~0_combout\ & ((!\BANCO_REG|registrador~51_q\) # ((\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\)))) ) ) # ( !\BANCO_REG|registrador~307_q\ & ( 
-- (!\ROM1|memROM~0_combout\ & (!\BANCO_REG|registrador~51_q\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000000000110011000000010011001000000000001100110000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~51_q\,
	datae => \BANCO_REG|ALT_INV_registrador~307_q\,
	combout => \BANCO_REG|registrador~1076_combout\);

\ULA1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~53_sumout\ = SUM(( \BANCO_REG|saidaA[13]~15_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1076_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1076_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~50\ ))
-- \ULA1|Add0~54\ = CARRY(( \BANCO_REG|saidaA[13]~15_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1076_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1076_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~50\ ))

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
	datad => \BANCO_REG|ALT_INV_saidaA[13]~15_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1076_combout\,
	cin => \ULA1|Add0~50\,
	sumout => \ULA1|Add0~53_sumout\,
	cout => \ULA1|Add0~54\);

\ULA1|Add0~53_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~53_wirecell_combout\ = !\ULA1|Add0~53_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~53_sumout\,
	combout => \ULA1|Add0~53_wirecell_combout\);

\ULA1|saida[13]~26_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[13]~26_wirecell_combout\ = !\ULA1|saida[13]~26_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[13]~26_combout\,
	combout => \ULA1|saida[13]~26_wirecell_combout\);

\BANCO_REG|registrador~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~53_wirecell_combout\,
	asdata => \ULA1|saida[13]~26_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~51_q\);

\BANCO_REG|saidaB[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[13]~13_combout\ = ( \BANCO_REG|registrador~51_q\ & ( \BANCO_REG|registrador~307_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~0_combout\ & \ROM1|memROM~4_combout\))) ) ) ) # ( 
-- !\BANCO_REG|registrador~51_q\ & ( \BANCO_REG|registrador~307_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & !\ROM1|memROM~0_combout\) ) ) ) # ( !\BANCO_REG|registrador~51_q\ & ( !\BANCO_REG|registrador~307_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & 
-- (!\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000000000000000000010100000101000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~51_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~307_q\,
	combout => \BANCO_REG|saidaB[13]~13_combout\);

\ULA1|saida[13]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[13]~26_combout\ = (\BANCO_REG|saidaB[13]~13_combout\ & ((!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[13]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaB[13]~13_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[13]~15_combout\,
	combout => \ULA1|saida[13]~26_combout\);

\ULA1|saida[13]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[13]~27_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~53_sumout\))) # (\Sel_ULA[1]~input_o\ & (\ULA1|saida[13]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ULA1|ALT_INV_saida[13]~26_combout\,
	datac => \ULA1|ALT_INV_Add0~53_sumout\,
	combout => \ULA1|saida[13]~27_combout\);

\BANCO_REG|registrador~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~57_sumout\,
	asdata => \ULA1|saida[14]~28_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~308_q\);

\BANCO_REG|saidaA[14]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[14]~16_combout\ = (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & (!\BANCO_REG|saidaA[0]~1_combout\ & \BANCO_REG|registrador~308_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~308_q\,
	combout => \BANCO_REG|saidaA[14]~16_combout\);

\BANCO_REG|registrador~1077\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1077_combout\ = ( \BANCO_REG|registrador~308_q\ & ( (!\ROM1|memROM~0_combout\ & (((\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\)) # (\BANCO_REG|registrador~52_q\))) ) ) # ( !\BANCO_REG|registrador~308_q\ & ( 
-- (!\ROM1|memROM~0_combout\ & (\BANCO_REG|registrador~52_q\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000001001100110000000000110010000000010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~52_q\,
	datae => \BANCO_REG|ALT_INV_registrador~308_q\,
	combout => \BANCO_REG|registrador~1077_combout\);

\ULA1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~57_sumout\ = SUM(( \BANCO_REG|saidaA[14]~16_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1077_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1077_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~54\ ))
-- \ULA1|Add0~58\ = CARRY(( \BANCO_REG|saidaA[14]~16_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1077_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1077_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~54\ ))

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
	datad => \BANCO_REG|ALT_INV_saidaA[14]~16_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1077_combout\,
	cin => \ULA1|Add0~54\,
	sumout => \ULA1|Add0~57_sumout\,
	cout => \ULA1|Add0~58\);

\BANCO_REG|registrador~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~57_sumout\,
	asdata => \ULA1|saida[14]~28_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~52_q\);

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

\ULA1|saida[14]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[14]~28_combout\ = (\BANCO_REG|saidaB[14]~14_combout\ & ((!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[14]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaB[14]~14_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[14]~16_combout\,
	combout => \ULA1|saida[14]~28_combout\);

\ULA1|saida[14]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[14]~29_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~57_sumout\))) # (\Sel_ULA[1]~input_o\ & (\ULA1|saida[14]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ULA1|ALT_INV_saida[14]~28_combout\,
	datac => \ULA1|ALT_INV_Add0~57_sumout\,
	combout => \ULA1|saida[14]~29_combout\);

\BANCO_REG|registrador~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~61_sumout\,
	asdata => \ULA1|saida[15]~30_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~309_q\);

\BANCO_REG|saidaA[15]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[15]~17_combout\ = (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & (!\BANCO_REG|saidaA[0]~1_combout\ & \BANCO_REG|registrador~309_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~309_q\,
	combout => \BANCO_REG|saidaA[15]~17_combout\);

\BANCO_REG|registrador~1078\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1078_combout\ = ( \BANCO_REG|registrador~309_q\ & ( (!\ROM1|memROM~0_combout\ & ((!\BANCO_REG|registrador~53_q\) # ((\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\)))) ) ) # ( !\BANCO_REG|registrador~309_q\ & ( 
-- (!\ROM1|memROM~0_combout\ & (!\BANCO_REG|registrador~53_q\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000000000110011000000010011001000000000001100110000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~53_q\,
	datae => \BANCO_REG|ALT_INV_registrador~309_q\,
	combout => \BANCO_REG|registrador~1078_combout\);

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

\ULA1|Add0~61_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~61_wirecell_combout\ = !\ULA1|Add0~61_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~61_sumout\,
	combout => \ULA1|Add0~61_wirecell_combout\);

\ULA1|saida[15]~30_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[15]~30_wirecell_combout\ = !\ULA1|saida[15]~30_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[15]~30_combout\,
	combout => \ULA1|saida[15]~30_wirecell_combout\);

\BANCO_REG|registrador~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~61_wirecell_combout\,
	asdata => \ULA1|saida[15]~30_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~53_q\);

\BANCO_REG|saidaB[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[15]~15_combout\ = ( \BANCO_REG|registrador~53_q\ & ( \BANCO_REG|registrador~309_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~0_combout\ & \ROM1|memROM~4_combout\))) ) ) ) # ( 
-- !\BANCO_REG|registrador~53_q\ & ( \BANCO_REG|registrador~309_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & !\ROM1|memROM~0_combout\) ) ) ) # ( !\BANCO_REG|registrador~53_q\ & ( !\BANCO_REG|registrador~309_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & 
-- (!\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000000000000000000010100000101000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~53_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~309_q\,
	combout => \BANCO_REG|saidaB[15]~15_combout\);

\ULA1|saida[15]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[15]~30_combout\ = (\BANCO_REG|saidaB[15]~15_combout\ & ((!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[15]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaB[15]~15_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[15]~17_combout\,
	combout => \ULA1|saida[15]~30_combout\);

\ULA1|saida[15]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[15]~31_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~61_sumout\))) # (\Sel_ULA[1]~input_o\ & (\ULA1|saida[15]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ULA1|ALT_INV_saida[15]~30_combout\,
	datac => \ULA1|ALT_INV_Add0~61_sumout\,
	combout => \ULA1|saida[15]~31_combout\);

\BANCO_REG|registrador~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~65_sumout\,
	asdata => \ULA1|saida[16]~32_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~310_q\);

\BANCO_REG|saidaA[16]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[16]~18_combout\ = (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & (!\BANCO_REG|saidaA[0]~1_combout\ & \BANCO_REG|registrador~310_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~310_q\,
	combout => \BANCO_REG|saidaA[16]~18_combout\);

\BANCO_REG|registrador~1079\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1079_combout\ = ( \BANCO_REG|registrador~310_q\ & ( (!\ROM1|memROM~0_combout\ & (((\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\)) # (\BANCO_REG|registrador~54_q\))) ) ) # ( !\BANCO_REG|registrador~310_q\ & ( 
-- (!\ROM1|memROM~0_combout\ & (\BANCO_REG|registrador~54_q\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000001001100110000000000110010000000010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~54_q\,
	datae => \BANCO_REG|ALT_INV_registrador~310_q\,
	combout => \BANCO_REG|registrador~1079_combout\);

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

\BANCO_REG|registrador~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~65_sumout\,
	asdata => \ULA1|saida[16]~32_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~54_q\);

\BANCO_REG|saidaB[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[16]~16_combout\ = ( \BANCO_REG|registrador~54_q\ & ( \BANCO_REG|registrador~310_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & !\ROM1|memROM~0_combout\) ) ) ) # ( !\BANCO_REG|registrador~54_q\ & ( \BANCO_REG|registrador~310_q\ & ( 
-- (!\BANCO_REG|registrador~1062_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~0_combout\ & \ROM1|memROM~4_combout\))) ) ) ) # ( \BANCO_REG|registrador~54_q\ & ( !\BANCO_REG|registrador~310_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & 
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
	datae => \BANCO_REG|ALT_INV_registrador~54_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~310_q\,
	combout => \BANCO_REG|saidaB[16]~16_combout\);

\ULA1|saida[16]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[16]~32_combout\ = (\BANCO_REG|saidaB[16]~16_combout\ & ((!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[16]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaB[16]~16_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[16]~18_combout\,
	combout => \ULA1|saida[16]~32_combout\);

\ULA1|saida[16]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[16]~33_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~65_sumout\))) # (\Sel_ULA[1]~input_o\ & (\ULA1|saida[16]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ULA1|ALT_INV_saida[16]~32_combout\,
	datac => \ULA1|ALT_INV_Add0~65_sumout\,
	combout => \ULA1|saida[16]~33_combout\);

\BANCO_REG|registrador~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~69_sumout\,
	asdata => \ULA1|saida[17]~34_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~311_q\);

\BANCO_REG|saidaA[17]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[17]~19_combout\ = (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & (!\BANCO_REG|saidaA[0]~1_combout\ & \BANCO_REG|registrador~311_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~311_q\,
	combout => \BANCO_REG|saidaA[17]~19_combout\);

\BANCO_REG|registrador~1080\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1080_combout\ = ( \BANCO_REG|registrador~311_q\ & ( (!\ROM1|memROM~0_combout\ & ((!\BANCO_REG|registrador~55_q\) # ((\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\)))) ) ) # ( !\BANCO_REG|registrador~311_q\ & ( 
-- (!\ROM1|memROM~0_combout\ & (!\BANCO_REG|registrador~55_q\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000000000110011000000010011001000000000001100110000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~55_q\,
	datae => \BANCO_REG|ALT_INV_registrador~311_q\,
	combout => \BANCO_REG|registrador~1080_combout\);

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

\ULA1|Add0~69_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~69_wirecell_combout\ = !\ULA1|Add0~69_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~69_sumout\,
	combout => \ULA1|Add0~69_wirecell_combout\);

\ULA1|saida[17]~34_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[17]~34_wirecell_combout\ = !\ULA1|saida[17]~34_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[17]~34_combout\,
	combout => \ULA1|saida[17]~34_wirecell_combout\);

\BANCO_REG|registrador~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~69_wirecell_combout\,
	asdata => \ULA1|saida[17]~34_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~55_q\);

\BANCO_REG|saidaB[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[17]~17_combout\ = ( \BANCO_REG|registrador~55_q\ & ( \BANCO_REG|registrador~311_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~0_combout\ & \ROM1|memROM~4_combout\))) ) ) ) # ( 
-- !\BANCO_REG|registrador~55_q\ & ( \BANCO_REG|registrador~311_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & !\ROM1|memROM~0_combout\) ) ) ) # ( !\BANCO_REG|registrador~55_q\ & ( !\BANCO_REG|registrador~311_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & 
-- (!\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000000000000000000010100000101000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~55_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~311_q\,
	combout => \BANCO_REG|saidaB[17]~17_combout\);

\ULA1|saida[17]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[17]~34_combout\ = (\BANCO_REG|saidaB[17]~17_combout\ & ((!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[17]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaB[17]~17_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[17]~19_combout\,
	combout => \ULA1|saida[17]~34_combout\);

\ULA1|saida[17]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[17]~35_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~69_sumout\))) # (\Sel_ULA[1]~input_o\ & (\ULA1|saida[17]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ULA1|ALT_INV_saida[17]~34_combout\,
	datac => \ULA1|ALT_INV_Add0~69_sumout\,
	combout => \ULA1|saida[17]~35_combout\);

\BANCO_REG|registrador~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~73_sumout\,
	asdata => \ULA1|saida[18]~36_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~312_q\);

\BANCO_REG|saidaA[18]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[18]~20_combout\ = (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & (!\BANCO_REG|saidaA[0]~1_combout\ & \BANCO_REG|registrador~312_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~312_q\,
	combout => \BANCO_REG|saidaA[18]~20_combout\);

\BANCO_REG|registrador~1081\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1081_combout\ = ( \BANCO_REG|registrador~312_q\ & ( (!\ROM1|memROM~0_combout\ & (((\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\)) # (\BANCO_REG|registrador~56_q\))) ) ) # ( !\BANCO_REG|registrador~312_q\ & ( 
-- (!\ROM1|memROM~0_combout\ & (\BANCO_REG|registrador~56_q\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000001001100110000000000110010000000010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~56_q\,
	datae => \BANCO_REG|ALT_INV_registrador~312_q\,
	combout => \BANCO_REG|registrador~1081_combout\);

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

\BANCO_REG|registrador~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~73_sumout\,
	asdata => \ULA1|saida[18]~36_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~56_q\);

\BANCO_REG|saidaB[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[18]~18_combout\ = ( \BANCO_REG|registrador~56_q\ & ( \BANCO_REG|registrador~312_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & !\ROM1|memROM~0_combout\) ) ) ) # ( !\BANCO_REG|registrador~56_q\ & ( \BANCO_REG|registrador~312_q\ & ( 
-- (!\BANCO_REG|registrador~1062_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~0_combout\ & \ROM1|memROM~4_combout\))) ) ) ) # ( \BANCO_REG|registrador~56_q\ & ( !\BANCO_REG|registrador~312_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & 
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
	datae => \BANCO_REG|ALT_INV_registrador~56_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~312_q\,
	combout => \BANCO_REG|saidaB[18]~18_combout\);

\ULA1|saida[18]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[18]~36_combout\ = (\BANCO_REG|saidaB[18]~18_combout\ & ((!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[18]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaB[18]~18_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[18]~20_combout\,
	combout => \ULA1|saida[18]~36_combout\);

\ULA1|saida[18]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[18]~37_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~73_sumout\))) # (\Sel_ULA[1]~input_o\ & (\ULA1|saida[18]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ULA1|ALT_INV_saida[18]~36_combout\,
	datac => \ULA1|ALT_INV_Add0~73_sumout\,
	combout => \ULA1|saida[18]~37_combout\);

\BANCO_REG|registrador~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~77_sumout\,
	asdata => \ULA1|saida[19]~38_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~313_q\);

\BANCO_REG|saidaA[19]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[19]~21_combout\ = (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & (!\BANCO_REG|saidaA[0]~1_combout\ & \BANCO_REG|registrador~313_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~313_q\,
	combout => \BANCO_REG|saidaA[19]~21_combout\);

\BANCO_REG|registrador~1082\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1082_combout\ = ( \BANCO_REG|registrador~313_q\ & ( (!\ROM1|memROM~0_combout\ & ((!\BANCO_REG|registrador~57_q\) # ((\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\)))) ) ) # ( !\BANCO_REG|registrador~313_q\ & ( 
-- (!\ROM1|memROM~0_combout\ & (!\BANCO_REG|registrador~57_q\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000000000110011000000010011001000000000001100110000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~57_q\,
	datae => \BANCO_REG|ALT_INV_registrador~313_q\,
	combout => \BANCO_REG|registrador~1082_combout\);

\ULA1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~77_sumout\ = SUM(( \BANCO_REG|saidaA[19]~21_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1082_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1082_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~74\ ))
-- \ULA1|Add0~78\ = CARRY(( \BANCO_REG|saidaA[19]~21_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1082_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1082_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~74\ ))

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
	datad => \BANCO_REG|ALT_INV_saidaA[19]~21_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1082_combout\,
	cin => \ULA1|Add0~74\,
	sumout => \ULA1|Add0~77_sumout\,
	cout => \ULA1|Add0~78\);

\ULA1|Add0~77_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~77_wirecell_combout\ = !\ULA1|Add0~77_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~77_sumout\,
	combout => \ULA1|Add0~77_wirecell_combout\);

\ULA1|saida[19]~38_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[19]~38_wirecell_combout\ = !\ULA1|saida[19]~38_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[19]~38_combout\,
	combout => \ULA1|saida[19]~38_wirecell_combout\);

\BANCO_REG|registrador~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~77_wirecell_combout\,
	asdata => \ULA1|saida[19]~38_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~57_q\);

\BANCO_REG|saidaB[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[19]~19_combout\ = ( \BANCO_REG|registrador~57_q\ & ( \BANCO_REG|registrador~313_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~0_combout\ & \ROM1|memROM~4_combout\))) ) ) ) # ( 
-- !\BANCO_REG|registrador~57_q\ & ( \BANCO_REG|registrador~313_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & !\ROM1|memROM~0_combout\) ) ) ) # ( !\BANCO_REG|registrador~57_q\ & ( !\BANCO_REG|registrador~313_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & 
-- (!\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000000000000000000010100000101000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~57_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~313_q\,
	combout => \BANCO_REG|saidaB[19]~19_combout\);

\ULA1|saida[19]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[19]~38_combout\ = (\BANCO_REG|saidaB[19]~19_combout\ & ((!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[19]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaB[19]~19_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[19]~21_combout\,
	combout => \ULA1|saida[19]~38_combout\);

\ULA1|saida[19]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[19]~39_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~77_sumout\))) # (\Sel_ULA[1]~input_o\ & (\ULA1|saida[19]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ULA1|ALT_INV_saida[19]~38_combout\,
	datac => \ULA1|ALT_INV_Add0~77_sumout\,
	combout => \ULA1|saida[19]~39_combout\);

\BANCO_REG|registrador~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~81_sumout\,
	asdata => \ULA1|saida[20]~40_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~314_q\);

\BANCO_REG|saidaA[20]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[20]~22_combout\ = (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & (!\BANCO_REG|saidaA[0]~1_combout\ & \BANCO_REG|registrador~314_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~314_q\,
	combout => \BANCO_REG|saidaA[20]~22_combout\);

\BANCO_REG|registrador~1083\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1083_combout\ = ( \BANCO_REG|registrador~314_q\ & ( (!\ROM1|memROM~0_combout\ & (((\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\)) # (\BANCO_REG|registrador~58_q\))) ) ) # ( !\BANCO_REG|registrador~314_q\ & ( 
-- (!\ROM1|memROM~0_combout\ & (\BANCO_REG|registrador~58_q\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000001001100110000000000110010000000010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~58_q\,
	datae => \BANCO_REG|ALT_INV_registrador~314_q\,
	combout => \BANCO_REG|registrador~1083_combout\);

\ULA1|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~81_sumout\ = SUM(( \BANCO_REG|saidaA[20]~22_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1083_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1083_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~78\ ))
-- \ULA1|Add0~82\ = CARRY(( \BANCO_REG|saidaA[20]~22_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1083_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1083_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~78\ ))

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
	datad => \BANCO_REG|ALT_INV_saidaA[20]~22_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1083_combout\,
	cin => \ULA1|Add0~78\,
	sumout => \ULA1|Add0~81_sumout\,
	cout => \ULA1|Add0~82\);

\BANCO_REG|registrador~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~81_sumout\,
	asdata => \ULA1|saida[20]~40_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~58_q\);

\BANCO_REG|saidaB[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[20]~20_combout\ = ( \BANCO_REG|registrador~58_q\ & ( \BANCO_REG|registrador~314_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & !\ROM1|memROM~0_combout\) ) ) ) # ( !\BANCO_REG|registrador~58_q\ & ( \BANCO_REG|registrador~314_q\ & ( 
-- (!\BANCO_REG|registrador~1062_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~0_combout\ & \ROM1|memROM~4_combout\))) ) ) ) # ( \BANCO_REG|registrador~58_q\ & ( !\BANCO_REG|registrador~314_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & 
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
	datae => \BANCO_REG|ALT_INV_registrador~58_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~314_q\,
	combout => \BANCO_REG|saidaB[20]~20_combout\);

\ULA1|saida[20]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[20]~40_combout\ = (\BANCO_REG|saidaB[20]~20_combout\ & ((!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[20]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaB[20]~20_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[20]~22_combout\,
	combout => \ULA1|saida[20]~40_combout\);

\ULA1|saida[20]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[20]~41_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~81_sumout\))) # (\Sel_ULA[1]~input_o\ & (\ULA1|saida[20]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ULA1|ALT_INV_saida[20]~40_combout\,
	datac => \ULA1|ALT_INV_Add0~81_sumout\,
	combout => \ULA1|saida[20]~41_combout\);

\BANCO_REG|registrador~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~85_sumout\,
	asdata => \ULA1|saida[21]~42_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~315_q\);

\BANCO_REG|saidaA[21]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[21]~23_combout\ = (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & (!\BANCO_REG|saidaA[0]~1_combout\ & \BANCO_REG|registrador~315_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~315_q\,
	combout => \BANCO_REG|saidaA[21]~23_combout\);

\BANCO_REG|registrador~1084\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1084_combout\ = ( \BANCO_REG|registrador~315_q\ & ( (!\ROM1|memROM~0_combout\ & ((!\BANCO_REG|registrador~59_q\) # ((\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\)))) ) ) # ( !\BANCO_REG|registrador~315_q\ & ( 
-- (!\ROM1|memROM~0_combout\ & (!\BANCO_REG|registrador~59_q\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000000000110011000000010011001000000000001100110000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~59_q\,
	datae => \BANCO_REG|ALT_INV_registrador~315_q\,
	combout => \BANCO_REG|registrador~1084_combout\);

\ULA1|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~85_sumout\ = SUM(( \BANCO_REG|saidaA[21]~23_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1084_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1084_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~82\ ))
-- \ULA1|Add0~86\ = CARRY(( \BANCO_REG|saidaA[21]~23_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1084_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1084_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~82\ ))

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
	datad => \BANCO_REG|ALT_INV_saidaA[21]~23_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1084_combout\,
	cin => \ULA1|Add0~82\,
	sumout => \ULA1|Add0~85_sumout\,
	cout => \ULA1|Add0~86\);

\ULA1|Add0~85_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~85_wirecell_combout\ = !\ULA1|Add0~85_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~85_sumout\,
	combout => \ULA1|Add0~85_wirecell_combout\);

\ULA1|saida[21]~42_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[21]~42_wirecell_combout\ = !\ULA1|saida[21]~42_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[21]~42_combout\,
	combout => \ULA1|saida[21]~42_wirecell_combout\);

\BANCO_REG|registrador~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~85_wirecell_combout\,
	asdata => \ULA1|saida[21]~42_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~59_q\);

\BANCO_REG|saidaB[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[21]~21_combout\ = ( \BANCO_REG|registrador~59_q\ & ( \BANCO_REG|registrador~315_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~0_combout\ & \ROM1|memROM~4_combout\))) ) ) ) # ( 
-- !\BANCO_REG|registrador~59_q\ & ( \BANCO_REG|registrador~315_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & !\ROM1|memROM~0_combout\) ) ) ) # ( !\BANCO_REG|registrador~59_q\ & ( !\BANCO_REG|registrador~315_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & 
-- (!\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000000000000000000010100000101000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~59_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~315_q\,
	combout => \BANCO_REG|saidaB[21]~21_combout\);

\ULA1|saida[21]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[21]~42_combout\ = (\BANCO_REG|saidaB[21]~21_combout\ & ((!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[21]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaB[21]~21_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[21]~23_combout\,
	combout => \ULA1|saida[21]~42_combout\);

\ULA1|saida[21]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[21]~43_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~85_sumout\))) # (\Sel_ULA[1]~input_o\ & (\ULA1|saida[21]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ULA1|ALT_INV_saida[21]~42_combout\,
	datac => \ULA1|ALT_INV_Add0~85_sumout\,
	combout => \ULA1|saida[21]~43_combout\);

\BANCO_REG|registrador~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~89_sumout\,
	asdata => \ULA1|saida[22]~44_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~316_q\);

\BANCO_REG|saidaA[22]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[22]~24_combout\ = (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & (!\BANCO_REG|saidaA[0]~1_combout\ & \BANCO_REG|registrador~316_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~316_q\,
	combout => \BANCO_REG|saidaA[22]~24_combout\);

\BANCO_REG|registrador~1085\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1085_combout\ = ( \BANCO_REG|registrador~316_q\ & ( (!\ROM1|memROM~0_combout\ & (((\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\)) # (\BANCO_REG|registrador~60_q\))) ) ) # ( !\BANCO_REG|registrador~316_q\ & ( 
-- (!\ROM1|memROM~0_combout\ & (\BANCO_REG|registrador~60_q\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000001001100110000000000110010000000010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~60_q\,
	datae => \BANCO_REG|ALT_INV_registrador~316_q\,
	combout => \BANCO_REG|registrador~1085_combout\);

\ULA1|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~89_sumout\ = SUM(( \BANCO_REG|saidaA[22]~24_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1085_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1085_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~86\ ))
-- \ULA1|Add0~90\ = CARRY(( \BANCO_REG|saidaA[22]~24_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1085_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1085_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~86\ ))

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
	datad => \BANCO_REG|ALT_INV_saidaA[22]~24_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1085_combout\,
	cin => \ULA1|Add0~86\,
	sumout => \ULA1|Add0~89_sumout\,
	cout => \ULA1|Add0~90\);

\BANCO_REG|registrador~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~89_sumout\,
	asdata => \ULA1|saida[22]~44_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~60_q\);

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

\ULA1|saida[22]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[22]~44_combout\ = (\BANCO_REG|saidaB[22]~22_combout\ & ((!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[22]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaB[22]~22_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[22]~24_combout\,
	combout => \ULA1|saida[22]~44_combout\);

\ULA1|saida[22]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[22]~45_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~89_sumout\))) # (\Sel_ULA[1]~input_o\ & (\ULA1|saida[22]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ULA1|ALT_INV_saida[22]~44_combout\,
	datac => \ULA1|ALT_INV_Add0~89_sumout\,
	combout => \ULA1|saida[22]~45_combout\);

\BANCO_REG|registrador~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~93_sumout\,
	asdata => \ULA1|saida[23]~46_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~317_q\);

\BANCO_REG|saidaA[23]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[23]~25_combout\ = (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & (!\BANCO_REG|saidaA[0]~1_combout\ & \BANCO_REG|registrador~317_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~317_q\,
	combout => \BANCO_REG|saidaA[23]~25_combout\);

\BANCO_REG|registrador~1086\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1086_combout\ = ( \BANCO_REG|registrador~317_q\ & ( (!\ROM1|memROM~0_combout\ & ((!\BANCO_REG|registrador~61_q\) # ((\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\)))) ) ) # ( !\BANCO_REG|registrador~317_q\ & ( 
-- (!\ROM1|memROM~0_combout\ & (!\BANCO_REG|registrador~61_q\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000000000110011000000010011001000000000001100110000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~61_q\,
	datae => \BANCO_REG|ALT_INV_registrador~317_q\,
	combout => \BANCO_REG|registrador~1086_combout\);

\ULA1|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~93_sumout\ = SUM(( \BANCO_REG|saidaA[23]~25_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1086_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1086_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~90\ ))
-- \ULA1|Add0~94\ = CARRY(( \BANCO_REG|saidaA[23]~25_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1086_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1086_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~90\ ))

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
	datad => \BANCO_REG|ALT_INV_saidaA[23]~25_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1086_combout\,
	cin => \ULA1|Add0~90\,
	sumout => \ULA1|Add0~93_sumout\,
	cout => \ULA1|Add0~94\);

\ULA1|Add0~93_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~93_wirecell_combout\ = !\ULA1|Add0~93_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~93_sumout\,
	combout => \ULA1|Add0~93_wirecell_combout\);

\ULA1|saida[23]~46_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[23]~46_wirecell_combout\ = !\ULA1|saida[23]~46_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[23]~46_combout\,
	combout => \ULA1|saida[23]~46_wirecell_combout\);

\BANCO_REG|registrador~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~93_wirecell_combout\,
	asdata => \ULA1|saida[23]~46_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~61_q\);

\BANCO_REG|saidaB[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[23]~23_combout\ = ( \BANCO_REG|registrador~61_q\ & ( \BANCO_REG|registrador~317_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~0_combout\ & \ROM1|memROM~4_combout\))) ) ) ) # ( 
-- !\BANCO_REG|registrador~61_q\ & ( \BANCO_REG|registrador~317_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & !\ROM1|memROM~0_combout\) ) ) ) # ( !\BANCO_REG|registrador~61_q\ & ( !\BANCO_REG|registrador~317_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & 
-- (!\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000000000000000000010100000101000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~61_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~317_q\,
	combout => \BANCO_REG|saidaB[23]~23_combout\);

\ULA1|saida[23]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[23]~46_combout\ = (\BANCO_REG|saidaB[23]~23_combout\ & ((!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[23]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaB[23]~23_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[23]~25_combout\,
	combout => \ULA1|saida[23]~46_combout\);

\ULA1|saida[23]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[23]~47_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~93_sumout\))) # (\Sel_ULA[1]~input_o\ & (\ULA1|saida[23]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ULA1|ALT_INV_saida[23]~46_combout\,
	datac => \ULA1|ALT_INV_Add0~93_sumout\,
	combout => \ULA1|saida[23]~47_combout\);

\BANCO_REG|registrador~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~97_sumout\,
	asdata => \ULA1|saida[24]~48_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~318_q\);

\BANCO_REG|saidaA[24]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[24]~26_combout\ = (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & (!\BANCO_REG|saidaA[0]~1_combout\ & \BANCO_REG|registrador~318_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~318_q\,
	combout => \BANCO_REG|saidaA[24]~26_combout\);

\BANCO_REG|registrador~1087\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1087_combout\ = ( \BANCO_REG|registrador~318_q\ & ( (!\ROM1|memROM~0_combout\ & (((\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\)) # (\BANCO_REG|registrador~62_q\))) ) ) # ( !\BANCO_REG|registrador~318_q\ & ( 
-- (!\ROM1|memROM~0_combout\ & (\BANCO_REG|registrador~62_q\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000001001100110000000000110010000000010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~62_q\,
	datae => \BANCO_REG|ALT_INV_registrador~318_q\,
	combout => \BANCO_REG|registrador~1087_combout\);

\ULA1|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~97_sumout\ = SUM(( \BANCO_REG|saidaA[24]~26_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1087_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1087_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~94\ ))
-- \ULA1|Add0~98\ = CARRY(( \BANCO_REG|saidaA[24]~26_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1087_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1087_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~94\ ))

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
	datad => \BANCO_REG|ALT_INV_saidaA[24]~26_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1087_combout\,
	cin => \ULA1|Add0~94\,
	sumout => \ULA1|Add0~97_sumout\,
	cout => \ULA1|Add0~98\);

\BANCO_REG|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~97_sumout\,
	asdata => \ULA1|saida[24]~48_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~62_q\);

\BANCO_REG|saidaB[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[24]~24_combout\ = ( \BANCO_REG|registrador~62_q\ & ( \BANCO_REG|registrador~318_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & !\ROM1|memROM~0_combout\) ) ) ) # ( !\BANCO_REG|registrador~62_q\ & ( \BANCO_REG|registrador~318_q\ & ( 
-- (!\BANCO_REG|registrador~1062_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~0_combout\ & \ROM1|memROM~4_combout\))) ) ) ) # ( \BANCO_REG|registrador~62_q\ & ( !\BANCO_REG|registrador~318_q\ & ( (!\BANCO_REG|registrador~1062_combout\ & 
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
	datae => \BANCO_REG|ALT_INV_registrador~62_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~318_q\,
	combout => \BANCO_REG|saidaB[24]~24_combout\);

\ULA1|saida[24]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[24]~48_combout\ = (\BANCO_REG|saidaB[24]~24_combout\ & ((!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[24]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaB[24]~24_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[24]~26_combout\,
	combout => \ULA1|saida[24]~48_combout\);

\ULA1|saida[24]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[24]~49_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~97_sumout\))) # (\Sel_ULA[1]~input_o\ & (\ULA1|saida[24]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ULA1|ALT_INV_saida[24]~48_combout\,
	datac => \ULA1|ALT_INV_Add0~97_sumout\,
	combout => \ULA1|saida[24]~49_combout\);

\BANCO_REG|saidaA[25]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[25]~27_combout\ = (\BANCO_REG|saidaA[1]~0_combout\ & (!\BANCO_REG|saidaA[0]~1_combout\ & \BANCO_REG|registrador~319_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datab => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~319_q\,
	combout => \BANCO_REG|saidaA[25]~27_combout\);

\ULA1|Add0~101_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~101_wirecell_combout\ = !\ULA1|Add0~101_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~101_sumout\,
	combout => \ULA1|Add0~101_wirecell_combout\);

\ULA1|saida[25]~50_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[25]~50_wirecell_combout\ = !\ULA1|saida[25]~50_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[25]~50_combout\,
	combout => \ULA1|saida[25]~50_wirecell_combout\);

\BANCO_REG|registrador~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~101_wirecell_combout\,
	asdata => \ULA1|saida[25]~50_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~63_q\);

\BANCO_REG|registrador~1090\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1090_combout\ = (!\ROM1|memROM~0_combout\ & ((!\BANCO_REG|saidaA[1]~0_combout\ & (!\BANCO_REG|registrador~63_q\)) # (\BANCO_REG|saidaA[1]~0_combout\ & ((\BANCO_REG|registrador~319_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010100010100000001010001010000000101000101000000010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~63_q\,
	datad => \BANCO_REG|ALT_INV_registrador~319_q\,
	combout => \BANCO_REG|registrador~1090_combout\);

\ULA1|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~101_sumout\ = SUM(( \BANCO_REG|saidaA[25]~27_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1090_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1090_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~98\ ))
-- \ULA1|Add0~102\ = CARRY(( \BANCO_REG|saidaA[25]~27_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1090_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1090_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~98\ ))

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
	datad => \BANCO_REG|ALT_INV_saidaA[25]~27_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1090_combout\,
	cin => \ULA1|Add0~98\,
	sumout => \ULA1|Add0~101_sumout\,
	cout => \ULA1|Add0~102\);

\BANCO_REG|registrador~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~101_sumout\,
	asdata => \ULA1|saida[25]~50_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~319_q\);

\BANCO_REG|saidaB[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[25]~25_combout\ = (!\ROM1|memROM~0_combout\ & (\BANCO_REG|saidaA[1]~0_combout\ & \BANCO_REG|registrador~319_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~319_q\,
	combout => \BANCO_REG|saidaB[25]~25_combout\);

\ULA1|saida[25]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[25]~50_combout\ = (\BANCO_REG|saidaB[25]~25_combout\ & ((!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[25]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaB[25]~25_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[25]~27_combout\,
	combout => \ULA1|saida[25]~50_combout\);

\ULA1|saida[25]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[25]~51_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~101_sumout\))) # (\Sel_ULA[1]~input_o\ & (\ULA1|saida[25]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ULA1|ALT_INV_saida[25]~50_combout\,
	datac => \ULA1|ALT_INV_Add0~101_sumout\,
	combout => \ULA1|saida[25]~51_combout\);

\BANCO_REG|saidaA[26]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[26]~28_combout\ = (\BANCO_REG|saidaA[1]~0_combout\ & (!\BANCO_REG|saidaA[0]~1_combout\ & \BANCO_REG|registrador~320_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datab => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~320_q\,
	combout => \BANCO_REG|saidaA[26]~28_combout\);

\BANCO_REG|registrador~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~105_sumout\,
	asdata => \ULA1|saida[26]~52_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~64_q\);

\BANCO_REG|registrador~1091\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1091_combout\ = (!\ROM1|memROM~0_combout\ & ((!\BANCO_REG|saidaA[1]~0_combout\ & (\BANCO_REG|registrador~64_q\)) # (\BANCO_REG|saidaA[1]~0_combout\ & ((\BANCO_REG|registrador~320_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000001000001010100000100000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~64_q\,
	datad => \BANCO_REG|ALT_INV_registrador~320_q\,
	combout => \BANCO_REG|registrador~1091_combout\);

\ULA1|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~105_sumout\ = SUM(( \BANCO_REG|saidaA[26]~28_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1091_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1091_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~102\ ))
-- \ULA1|Add0~106\ = CARRY(( \BANCO_REG|saidaA[26]~28_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1091_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1091_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~102\ ))

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
	datad => \BANCO_REG|ALT_INV_saidaA[26]~28_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1091_combout\,
	cin => \ULA1|Add0~102\,
	sumout => \ULA1|Add0~105_sumout\,
	cout => \ULA1|Add0~106\);

\BANCO_REG|registrador~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~105_sumout\,
	asdata => \ULA1|saida[26]~52_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~320_q\);

\BANCO_REG|saidaB[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[26]~26_combout\ = (!\ROM1|memROM~0_combout\ & (\BANCO_REG|saidaA[1]~0_combout\ & \BANCO_REG|registrador~320_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~320_q\,
	combout => \BANCO_REG|saidaB[26]~26_combout\);

\ULA1|saida[26]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[26]~52_combout\ = (\BANCO_REG|saidaB[26]~26_combout\ & ((!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[26]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaB[26]~26_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[26]~28_combout\,
	combout => \ULA1|saida[26]~52_combout\);

\ULA1|saida[26]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[26]~53_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~105_sumout\))) # (\Sel_ULA[1]~input_o\ & (\ULA1|saida[26]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ULA1|ALT_INV_saida[26]~52_combout\,
	datac => \ULA1|ALT_INV_Add0~105_sumout\,
	combout => \ULA1|saida[26]~53_combout\);

\BANCO_REG|saidaA[27]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[27]~29_combout\ = (\BANCO_REG|saidaA[1]~0_combout\ & (!\BANCO_REG|saidaA[0]~1_combout\ & \BANCO_REG|registrador~321_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datab => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~321_q\,
	combout => \BANCO_REG|saidaA[27]~29_combout\);

\ULA1|Add0~109_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~109_wirecell_combout\ = !\ULA1|Add0~109_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~109_sumout\,
	combout => \ULA1|Add0~109_wirecell_combout\);

\ULA1|saida[27]~54_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[27]~54_wirecell_combout\ = !\ULA1|saida[27]~54_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[27]~54_combout\,
	combout => \ULA1|saida[27]~54_wirecell_combout\);

\BANCO_REG|registrador~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~109_wirecell_combout\,
	asdata => \ULA1|saida[27]~54_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~65_q\);

\BANCO_REG|registrador~1092\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1092_combout\ = (!\ROM1|memROM~0_combout\ & ((!\BANCO_REG|saidaA[1]~0_combout\ & (!\BANCO_REG|registrador~65_q\)) # (\BANCO_REG|saidaA[1]~0_combout\ & ((\BANCO_REG|registrador~321_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010100010100000001010001010000000101000101000000010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~65_q\,
	datad => \BANCO_REG|ALT_INV_registrador~321_q\,
	combout => \BANCO_REG|registrador~1092_combout\);

\ULA1|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~109_sumout\ = SUM(( \BANCO_REG|saidaA[27]~29_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1092_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1092_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~106\ ))
-- \ULA1|Add0~110\ = CARRY(( \BANCO_REG|saidaA[27]~29_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1092_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1092_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~106\ ))

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
	datad => \BANCO_REG|ALT_INV_saidaA[27]~29_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1092_combout\,
	cin => \ULA1|Add0~106\,
	sumout => \ULA1|Add0~109_sumout\,
	cout => \ULA1|Add0~110\);

\BANCO_REG|registrador~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~109_sumout\,
	asdata => \ULA1|saida[27]~54_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~321_q\);

\BANCO_REG|saidaB[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[27]~27_combout\ = (!\ROM1|memROM~0_combout\ & (\BANCO_REG|saidaA[1]~0_combout\ & \BANCO_REG|registrador~321_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~321_q\,
	combout => \BANCO_REG|saidaB[27]~27_combout\);

\ULA1|saida[27]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[27]~54_combout\ = (\BANCO_REG|saidaB[27]~27_combout\ & ((!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[27]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaB[27]~27_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[27]~29_combout\,
	combout => \ULA1|saida[27]~54_combout\);

\ULA1|saida[27]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[27]~55_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~109_sumout\))) # (\Sel_ULA[1]~input_o\ & (\ULA1|saida[27]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ULA1|ALT_INV_saida[27]~54_combout\,
	datac => \ULA1|ALT_INV_Add0~109_sumout\,
	combout => \ULA1|saida[27]~55_combout\);

\BANCO_REG|saidaA[28]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[28]~30_combout\ = (\BANCO_REG|saidaA[1]~0_combout\ & (!\BANCO_REG|saidaA[0]~1_combout\ & \BANCO_REG|registrador~322_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datab => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~322_q\,
	combout => \BANCO_REG|saidaA[28]~30_combout\);

\BANCO_REG|registrador~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~113_sumout\,
	asdata => \ULA1|saida[28]~56_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~66_q\);

\BANCO_REG|registrador~1093\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1093_combout\ = (!\ROM1|memROM~0_combout\ & ((!\BANCO_REG|saidaA[1]~0_combout\ & (\BANCO_REG|registrador~66_q\)) # (\BANCO_REG|saidaA[1]~0_combout\ & ((\BANCO_REG|registrador~322_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000001000001010100000100000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~66_q\,
	datad => \BANCO_REG|ALT_INV_registrador~322_q\,
	combout => \BANCO_REG|registrador~1093_combout\);

\ULA1|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~113_sumout\ = SUM(( \BANCO_REG|saidaA[28]~30_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1093_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1093_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~110\ ))
-- \ULA1|Add0~114\ = CARRY(( \BANCO_REG|saidaA[28]~30_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1093_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1093_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~110\ ))

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
	datad => \BANCO_REG|ALT_INV_saidaA[28]~30_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1093_combout\,
	cin => \ULA1|Add0~110\,
	sumout => \ULA1|Add0~113_sumout\,
	cout => \ULA1|Add0~114\);

\BANCO_REG|registrador~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~113_sumout\,
	asdata => \ULA1|saida[28]~56_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~322_q\);

\BANCO_REG|saidaB[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[28]~28_combout\ = (!\ROM1|memROM~0_combout\ & (\BANCO_REG|saidaA[1]~0_combout\ & \BANCO_REG|registrador~322_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~322_q\,
	combout => \BANCO_REG|saidaB[28]~28_combout\);

\ULA1|saida[28]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[28]~56_combout\ = (\BANCO_REG|saidaB[28]~28_combout\ & ((!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[28]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaB[28]~28_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[28]~30_combout\,
	combout => \ULA1|saida[28]~56_combout\);

\ULA1|saida[28]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[28]~57_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~113_sumout\))) # (\Sel_ULA[1]~input_o\ & (\ULA1|saida[28]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ULA1|ALT_INV_saida[28]~56_combout\,
	datac => \ULA1|ALT_INV_Add0~113_sumout\,
	combout => \ULA1|saida[28]~57_combout\);

\BANCO_REG|saidaA[29]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[29]~31_combout\ = (\BANCO_REG|saidaA[1]~0_combout\ & (!\BANCO_REG|saidaA[0]~1_combout\ & \BANCO_REG|registrador~323_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datab => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~323_q\,
	combout => \BANCO_REG|saidaA[29]~31_combout\);

\ULA1|Add0~117_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~117_wirecell_combout\ = !\ULA1|Add0~117_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~117_sumout\,
	combout => \ULA1|Add0~117_wirecell_combout\);

\ULA1|saida[29]~58_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[29]~58_wirecell_combout\ = !\ULA1|saida[29]~58_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[29]~58_combout\,
	combout => \ULA1|saida[29]~58_wirecell_combout\);

\BANCO_REG|registrador~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~117_wirecell_combout\,
	asdata => \ULA1|saida[29]~58_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~67_q\);

\BANCO_REG|registrador~1094\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1094_combout\ = (!\ROM1|memROM~0_combout\ & ((!\BANCO_REG|saidaA[1]~0_combout\ & (!\BANCO_REG|registrador~67_q\)) # (\BANCO_REG|saidaA[1]~0_combout\ & ((\BANCO_REG|registrador~323_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010100010100000001010001010000000101000101000000010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~67_q\,
	datad => \BANCO_REG|ALT_INV_registrador~323_q\,
	combout => \BANCO_REG|registrador~1094_combout\);

\ULA1|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~117_sumout\ = SUM(( \BANCO_REG|saidaA[29]~31_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1094_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1094_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~114\ ))
-- \ULA1|Add0~118\ = CARRY(( \BANCO_REG|saidaA[29]~31_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1094_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1094_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~114\ ))

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
	datad => \BANCO_REG|ALT_INV_saidaA[29]~31_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1094_combout\,
	cin => \ULA1|Add0~114\,
	sumout => \ULA1|Add0~117_sumout\,
	cout => \ULA1|Add0~118\);

\BANCO_REG|registrador~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~117_sumout\,
	asdata => \ULA1|saida[29]~58_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~323_q\);

\BANCO_REG|saidaB[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[29]~29_combout\ = (!\ROM1|memROM~0_combout\ & (\BANCO_REG|saidaA[1]~0_combout\ & \BANCO_REG|registrador~323_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~323_q\,
	combout => \BANCO_REG|saidaB[29]~29_combout\);

\ULA1|saida[29]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[29]~58_combout\ = (\BANCO_REG|saidaB[29]~29_combout\ & ((!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[29]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaB[29]~29_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[29]~31_combout\,
	combout => \ULA1|saida[29]~58_combout\);

\ULA1|saida[29]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[29]~59_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~117_sumout\))) # (\Sel_ULA[1]~input_o\ & (\ULA1|saida[29]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ULA1|ALT_INV_saida[29]~58_combout\,
	datac => \ULA1|ALT_INV_Add0~117_sumout\,
	combout => \ULA1|saida[29]~59_combout\);

\BANCO_REG|saidaA[30]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[30]~32_combout\ = (\BANCO_REG|saidaA[1]~0_combout\ & (!\BANCO_REG|saidaA[0]~1_combout\ & \BANCO_REG|registrador~324_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datab => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~324_q\,
	combout => \BANCO_REG|saidaA[30]~32_combout\);

\BANCO_REG|registrador~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~121_sumout\,
	asdata => \ULA1|saida[30]~60_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~68_q\);

\BANCO_REG|registrador~1095\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1095_combout\ = (!\ROM1|memROM~0_combout\ & ((!\BANCO_REG|saidaA[1]~0_combout\ & (\BANCO_REG|registrador~68_q\)) # (\BANCO_REG|saidaA[1]~0_combout\ & ((\BANCO_REG|registrador~324_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000001000001010100000100000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~68_q\,
	datad => \BANCO_REG|ALT_INV_registrador~324_q\,
	combout => \BANCO_REG|registrador~1095_combout\);

\ULA1|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~121_sumout\ = SUM(( \BANCO_REG|saidaA[30]~32_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1095_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1095_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~118\ ))
-- \ULA1|Add0~122\ = CARRY(( \BANCO_REG|saidaA[30]~32_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1095_combout\)) # (\BANCO_REG|registrador~1062_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1095_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~118\ ))

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
	datad => \BANCO_REG|ALT_INV_saidaA[30]~32_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1095_combout\,
	cin => \ULA1|Add0~118\,
	sumout => \ULA1|Add0~121_sumout\,
	cout => \ULA1|Add0~122\);

\BANCO_REG|registrador~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~121_sumout\,
	asdata => \ULA1|saida[30]~60_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~324_q\);

\BANCO_REG|saidaB[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[30]~30_combout\ = (!\ROM1|memROM~0_combout\ & (\BANCO_REG|saidaA[1]~0_combout\ & \BANCO_REG|registrador~324_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~324_q\,
	combout => \BANCO_REG|saidaB[30]~30_combout\);

\ULA1|saida[30]~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[30]~60_combout\ = (\BANCO_REG|saidaB[30]~30_combout\ & ((!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[30]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaB[30]~30_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[30]~32_combout\,
	combout => \ULA1|saida[30]~60_combout\);

\ULA1|saida[30]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[30]~61_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~121_sumout\))) # (\Sel_ULA[1]~input_o\ & (\ULA1|saida[30]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ULA1|ALT_INV_saida[30]~60_combout\,
	datac => \ULA1|ALT_INV_Add0~121_sumout\,
	combout => \ULA1|saida[30]~61_combout\);

\BANCO_REG|saidaA[31]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[31]~33_combout\ = (\BANCO_REG|saidaA[1]~0_combout\ & (!\BANCO_REG|saidaA[0]~1_combout\ & \BANCO_REG|registrador~325_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datab => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~325_q\,
	combout => \BANCO_REG|saidaA[31]~33_combout\);

\ULA1|Add0~125_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~125_wirecell_combout\ = !\ULA1|Add0~125_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~125_sumout\,
	combout => \ULA1|Add0~125_wirecell_combout\);

\ULA1|saida[31]~62_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[31]~62_wirecell_combout\ = !\ULA1|saida[31]~62_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[31]~62_combout\,
	combout => \ULA1|saida[31]~62_wirecell_combout\);

\BANCO_REG|registrador~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~125_wirecell_combout\,
	asdata => \ULA1|saida[31]~62_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~69_q\);

\BANCO_REG|registrador~1096\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1096_combout\ = (!\ROM1|memROM~0_combout\ & ((!\BANCO_REG|saidaA[1]~0_combout\ & (!\BANCO_REG|registrador~69_q\)) # (\BANCO_REG|saidaA[1]~0_combout\ & ((\BANCO_REG|registrador~325_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010100010100000001010001010000000101000101000000010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~69_q\,
	datad => \BANCO_REG|ALT_INV_registrador~325_q\,
	combout => \BANCO_REG|registrador~1096_combout\);

\ULA1|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~125_sumout\ = SUM(( \BANCO_REG|saidaA[31]~33_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1096_combout\) # (\BANCO_REG|registrador~1062_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1096_combout\) # (\BANCO_REG|registrador~1062_combout\))))) ) + ( \ULA1|Add0~122\ ))

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
	datad => \BANCO_REG|ALT_INV_saidaA[31]~33_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1096_combout\,
	cin => \ULA1|Add0~122\,
	sumout => \ULA1|Add0~125_sumout\);

\BANCO_REG|registrador~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \ULA1|Add0~125_sumout\,
	asdata => \ULA1|saida[31]~62_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~325_q\);

\BANCO_REG|saidaB[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[31]~31_combout\ = (!\ROM1|memROM~0_combout\ & (\BANCO_REG|saidaA[1]~0_combout\ & \BANCO_REG|registrador~325_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \BANCO_REG|ALT_INV_saidaA[1]~0_combout\,
	datad => \BANCO_REG|ALT_INV_registrador~325_q\,
	combout => \BANCO_REG|saidaB[31]~31_combout\);

\ULA1|saida[31]~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[31]~62_combout\ = (\BANCO_REG|saidaB[31]~31_combout\ & ((!\Sel_ULA[1]~input_o\) # ((!\Sel_ULA[0]~input_o\) # (\BANCO_REG|saidaA[31]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ALT_INV_Sel_ULA[0]~input_o\,
	datac => \BANCO_REG|ALT_INV_saidaB[31]~31_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[31]~33_combout\,
	combout => \ULA1|saida[31]~62_combout\);

\ULA1|saida[31]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[31]~63_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~125_sumout\))) # (\Sel_ULA[1]~input_o\ & (\ULA1|saida[31]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \ULA1|ALT_INV_saida[31]~62_combout\,
	datac => \ULA1|ALT_INV_Add0~125_sumout\,
	combout => \ULA1|saida[31]~63_combout\);

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \ROM1|memROM~2_combout\ & ( (!\REG_PC|DOUT\(3) & (!\REG_PC|DOUT\(2) & (!\REG_PC|DOUT\(5) & !\REG_PC|DOUT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(3),
	datab => \REG_PC|ALT_INV_DOUT\(2),
	datac => \REG_PC|ALT_INV_DOUT\(5),
	datad => \REG_PC|ALT_INV_DOUT\(4),
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \ROM1|memROM~5_combout\);

\somador|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~21_sumout\ = SUM(( \REG_PC|DOUT\(8) ) + ( GND ) + ( \somador|Add0~14\ ))
-- \somador|Add0~22\ = CARRY(( \REG_PC|DOUT\(8) ) + ( GND ) + ( \somador|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(8),
	cin => \somador|Add0~14\,
	sumout => \somador|Add0~21_sumout\,
	cout => \somador|Add0~22\);

\REG_PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(8));

\somador|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~25_sumout\ = SUM(( \REG_PC|DOUT\(9) ) + ( GND ) + ( \somador|Add0~22\ ))
-- \somador|Add0~26\ = CARRY(( \REG_PC|DOUT\(9) ) + ( GND ) + ( \somador|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(9),
	cin => \somador|Add0~22\,
	sumout => \somador|Add0~25_sumout\,
	cout => \somador|Add0~26\);

\REG_PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(9));

\somador|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~29_sumout\ = SUM(( \REG_PC|DOUT\(10) ) + ( GND ) + ( \somador|Add0~26\ ))
-- \somador|Add0~30\ = CARRY(( \REG_PC|DOUT\(10) ) + ( GND ) + ( \somador|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(10),
	cin => \somador|Add0~26\,
	sumout => \somador|Add0~29_sumout\,
	cout => \somador|Add0~30\);

\REG_PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(10));

\somador|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~33_sumout\ = SUM(( \REG_PC|DOUT\(11) ) + ( GND ) + ( \somador|Add0~30\ ))
-- \somador|Add0~34\ = CARRY(( \REG_PC|DOUT\(11) ) + ( GND ) + ( \somador|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(11),
	cin => \somador|Add0~30\,
	sumout => \somador|Add0~33_sumout\,
	cout => \somador|Add0~34\);

\REG_PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(11));

\somador|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~37_sumout\ = SUM(( \REG_PC|DOUT\(12) ) + ( GND ) + ( \somador|Add0~34\ ))
-- \somador|Add0~38\ = CARRY(( \REG_PC|DOUT\(12) ) + ( GND ) + ( \somador|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(12),
	cin => \somador|Add0~34\,
	sumout => \somador|Add0~37_sumout\,
	cout => \somador|Add0~38\);

\REG_PC|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(12));

\somador|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~41_sumout\ = SUM(( \REG_PC|DOUT\(13) ) + ( GND ) + ( \somador|Add0~38\ ))
-- \somador|Add0~42\ = CARRY(( \REG_PC|DOUT\(13) ) + ( GND ) + ( \somador|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(13),
	cin => \somador|Add0~38\,
	sumout => \somador|Add0~41_sumout\,
	cout => \somador|Add0~42\);

\REG_PC|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(13));

\somador|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~45_sumout\ = SUM(( \REG_PC|DOUT\(14) ) + ( GND ) + ( \somador|Add0~42\ ))
-- \somador|Add0~46\ = CARRY(( \REG_PC|DOUT\(14) ) + ( GND ) + ( \somador|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(14),
	cin => \somador|Add0~42\,
	sumout => \somador|Add0~45_sumout\,
	cout => \somador|Add0~46\);

\REG_PC|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(14));

\somador|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~49_sumout\ = SUM(( \REG_PC|DOUT\(15) ) + ( GND ) + ( \somador|Add0~46\ ))
-- \somador|Add0~50\ = CARRY(( \REG_PC|DOUT\(15) ) + ( GND ) + ( \somador|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(15),
	cin => \somador|Add0~46\,
	sumout => \somador|Add0~49_sumout\,
	cout => \somador|Add0~50\);

\REG_PC|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(15));

\somador|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~53_sumout\ = SUM(( \REG_PC|DOUT\(16) ) + ( GND ) + ( \somador|Add0~50\ ))
-- \somador|Add0~54\ = CARRY(( \REG_PC|DOUT\(16) ) + ( GND ) + ( \somador|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(16),
	cin => \somador|Add0~50\,
	sumout => \somador|Add0~53_sumout\,
	cout => \somador|Add0~54\);

\REG_PC|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(16));

\somador|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~57_sumout\ = SUM(( \REG_PC|DOUT\(17) ) + ( GND ) + ( \somador|Add0~54\ ))
-- \somador|Add0~58\ = CARRY(( \REG_PC|DOUT\(17) ) + ( GND ) + ( \somador|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(17),
	cin => \somador|Add0~54\,
	sumout => \somador|Add0~57_sumout\,
	cout => \somador|Add0~58\);

\REG_PC|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(17));

\somador|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~61_sumout\ = SUM(( \REG_PC|DOUT\(18) ) + ( GND ) + ( \somador|Add0~58\ ))
-- \somador|Add0~62\ = CARRY(( \REG_PC|DOUT\(18) ) + ( GND ) + ( \somador|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(18),
	cin => \somador|Add0~58\,
	sumout => \somador|Add0~61_sumout\,
	cout => \somador|Add0~62\);

\REG_PC|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador|Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(18));

\somador|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~65_sumout\ = SUM(( \REG_PC|DOUT\(19) ) + ( GND ) + ( \somador|Add0~62\ ))
-- \somador|Add0~66\ = CARRY(( \REG_PC|DOUT\(19) ) + ( GND ) + ( \somador|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(19),
	cin => \somador|Add0~62\,
	sumout => \somador|Add0~65_sumout\,
	cout => \somador|Add0~66\);

\REG_PC|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador|Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(19));

\somador|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~69_sumout\ = SUM(( \REG_PC|DOUT\(20) ) + ( GND ) + ( \somador|Add0~66\ ))
-- \somador|Add0~70\ = CARRY(( \REG_PC|DOUT\(20) ) + ( GND ) + ( \somador|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(20),
	cin => \somador|Add0~66\,
	sumout => \somador|Add0~69_sumout\,
	cout => \somador|Add0~70\);

\REG_PC|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador|Add0~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(20));

\somador|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~73_sumout\ = SUM(( \REG_PC|DOUT\(21) ) + ( GND ) + ( \somador|Add0~70\ ))
-- \somador|Add0~74\ = CARRY(( \REG_PC|DOUT\(21) ) + ( GND ) + ( \somador|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(21),
	cin => \somador|Add0~70\,
	sumout => \somador|Add0~73_sumout\,
	cout => \somador|Add0~74\);

\REG_PC|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador|Add0~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(21));

\somador|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~77_sumout\ = SUM(( \REG_PC|DOUT\(22) ) + ( GND ) + ( \somador|Add0~74\ ))
-- \somador|Add0~78\ = CARRY(( \REG_PC|DOUT\(22) ) + ( GND ) + ( \somador|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(22),
	cin => \somador|Add0~74\,
	sumout => \somador|Add0~77_sumout\,
	cout => \somador|Add0~78\);

\REG_PC|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador|Add0~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(22));

\somador|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~81_sumout\ = SUM(( \REG_PC|DOUT\(23) ) + ( GND ) + ( \somador|Add0~78\ ))
-- \somador|Add0~82\ = CARRY(( \REG_PC|DOUT\(23) ) + ( GND ) + ( \somador|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(23),
	cin => \somador|Add0~78\,
	sumout => \somador|Add0~81_sumout\,
	cout => \somador|Add0~82\);

\REG_PC|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador|Add0~81_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(23));

\somador|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~85_sumout\ = SUM(( \REG_PC|DOUT\(24) ) + ( GND ) + ( \somador|Add0~82\ ))
-- \somador|Add0~86\ = CARRY(( \REG_PC|DOUT\(24) ) + ( GND ) + ( \somador|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(24),
	cin => \somador|Add0~82\,
	sumout => \somador|Add0~85_sumout\,
	cout => \somador|Add0~86\);

\REG_PC|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador|Add0~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(24));

\somador|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~89_sumout\ = SUM(( \REG_PC|DOUT\(25) ) + ( GND ) + ( \somador|Add0~86\ ))
-- \somador|Add0~90\ = CARRY(( \REG_PC|DOUT\(25) ) + ( GND ) + ( \somador|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(25),
	cin => \somador|Add0~86\,
	sumout => \somador|Add0~89_sumout\,
	cout => \somador|Add0~90\);

\REG_PC|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador|Add0~89_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(25));

\somador|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~93_sumout\ = SUM(( \REG_PC|DOUT\(26) ) + ( GND ) + ( \somador|Add0~90\ ))
-- \somador|Add0~94\ = CARRY(( \REG_PC|DOUT\(26) ) + ( GND ) + ( \somador|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(26),
	cin => \somador|Add0~90\,
	sumout => \somador|Add0~93_sumout\,
	cout => \somador|Add0~94\);

\REG_PC|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador|Add0~93_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(26));

\somador|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~97_sumout\ = SUM(( \REG_PC|DOUT\(27) ) + ( GND ) + ( \somador|Add0~94\ ))
-- \somador|Add0~98\ = CARRY(( \REG_PC|DOUT\(27) ) + ( GND ) + ( \somador|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(27),
	cin => \somador|Add0~94\,
	sumout => \somador|Add0~97_sumout\,
	cout => \somador|Add0~98\);

\REG_PC|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador|Add0~97_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(27));

\somador|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~101_sumout\ = SUM(( \REG_PC|DOUT\(28) ) + ( GND ) + ( \somador|Add0~98\ ))
-- \somador|Add0~102\ = CARRY(( \REG_PC|DOUT\(28) ) + ( GND ) + ( \somador|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(28),
	cin => \somador|Add0~98\,
	sumout => \somador|Add0~101_sumout\,
	cout => \somador|Add0~102\);

\REG_PC|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador|Add0~101_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(28));

\somador|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~105_sumout\ = SUM(( \REG_PC|DOUT\(29) ) + ( GND ) + ( \somador|Add0~102\ ))
-- \somador|Add0~106\ = CARRY(( \REG_PC|DOUT\(29) ) + ( GND ) + ( \somador|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(29),
	cin => \somador|Add0~102\,
	sumout => \somador|Add0~105_sumout\,
	cout => \somador|Add0~106\);

\REG_PC|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador|Add0~105_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(29));

\somador|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~109_sumout\ = SUM(( \REG_PC|DOUT\(30) ) + ( GND ) + ( \somador|Add0~106\ ))
-- \somador|Add0~110\ = CARRY(( \REG_PC|DOUT\(30) ) + ( GND ) + ( \somador|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(30),
	cin => \somador|Add0~106\,
	sumout => \somador|Add0~109_sumout\,
	cout => \somador|Add0~110\);

\REG_PC|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador|Add0~109_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(30));

\somador|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~113_sumout\ = SUM(( \REG_PC|DOUT\(31) ) + ( GND ) + ( \somador|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(31),
	cin => \somador|Add0~110\,
	sumout => \somador|Add0~113_sumout\);

\REG_PC|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador|Add0~113_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(31));

ww_Instru_opcode(0) <= \Instru_opcode[0]~output_o\;

ww_Instru_opcode(1) <= \Instru_opcode[1]~output_o\;

ww_Instru_opcode(2) <= \Instru_opcode[2]~output_o\;

ww_Instru_opcode(3) <= \Instru_opcode[3]~output_o\;

ww_Instru_opcode(4) <= \Instru_opcode[4]~output_o\;

ww_Instru_opcode(5) <= \Instru_opcode[5]~output_o\;

ww_Funct(0) <= \Funct[0]~output_o\;

ww_Funct(1) <= \Funct[1]~output_o\;

ww_Funct(2) <= \Funct[2]~output_o\;

ww_Funct(3) <= \Funct[3]~output_o\;

ww_Funct(4) <= \Funct[4]~output_o\;

ww_Funct(5) <= \Funct[5]~output_o\;

ww_ULAA_OUT(0) <= \ULAA_OUT[0]~output_o\;

ww_ULAA_OUT(1) <= \ULAA_OUT[1]~output_o\;

ww_ULAA_OUT(2) <= \ULAA_OUT[2]~output_o\;

ww_ULAA_OUT(3) <= \ULAA_OUT[3]~output_o\;

ww_ULAA_OUT(4) <= \ULAA_OUT[4]~output_o\;

ww_ULAA_OUT(5) <= \ULAA_OUT[5]~output_o\;

ww_ULAA_OUT(6) <= \ULAA_OUT[6]~output_o\;

ww_ULAA_OUT(7) <= \ULAA_OUT[7]~output_o\;

ww_ULAA_OUT(8) <= \ULAA_OUT[8]~output_o\;

ww_ULAA_OUT(9) <= \ULAA_OUT[9]~output_o\;

ww_ULAA_OUT(10) <= \ULAA_OUT[10]~output_o\;

ww_ULAA_OUT(11) <= \ULAA_OUT[11]~output_o\;

ww_ULAA_OUT(12) <= \ULAA_OUT[12]~output_o\;

ww_ULAA_OUT(13) <= \ULAA_OUT[13]~output_o\;

ww_ULAA_OUT(14) <= \ULAA_OUT[14]~output_o\;

ww_ULAA_OUT(15) <= \ULAA_OUT[15]~output_o\;

ww_ULAA_OUT(16) <= \ULAA_OUT[16]~output_o\;

ww_ULAA_OUT(17) <= \ULAA_OUT[17]~output_o\;

ww_ULAA_OUT(18) <= \ULAA_OUT[18]~output_o\;

ww_ULAA_OUT(19) <= \ULAA_OUT[19]~output_o\;

ww_ULAA_OUT(20) <= \ULAA_OUT[20]~output_o\;

ww_ULAA_OUT(21) <= \ULAA_OUT[21]~output_o\;

ww_ULAA_OUT(22) <= \ULAA_OUT[22]~output_o\;

ww_ULAA_OUT(23) <= \ULAA_OUT[23]~output_o\;

ww_ULAA_OUT(24) <= \ULAA_OUT[24]~output_o\;

ww_ULAA_OUT(25) <= \ULAA_OUT[25]~output_o\;

ww_ULAA_OUT(26) <= \ULAA_OUT[26]~output_o\;

ww_ULAA_OUT(27) <= \ULAA_OUT[27]~output_o\;

ww_ULAA_OUT(28) <= \ULAA_OUT[28]~output_o\;

ww_ULAA_OUT(29) <= \ULAA_OUT[29]~output_o\;

ww_ULAA_OUT(30) <= \ULAA_OUT[30]~output_o\;

ww_ULAA_OUT(31) <= \ULAA_OUT[31]~output_o\;

ww_RS_OUT(0) <= \RS_OUT[0]~output_o\;

ww_RS_OUT(1) <= \RS_OUT[1]~output_o\;

ww_RS_OUT(2) <= \RS_OUT[2]~output_o\;

ww_RS_OUT(3) <= \RS_OUT[3]~output_o\;

ww_RS_OUT(4) <= \RS_OUT[4]~output_o\;

ww_RS_OUT(5) <= \RS_OUT[5]~output_o\;

ww_RS_OUT(6) <= \RS_OUT[6]~output_o\;

ww_RS_OUT(7) <= \RS_OUT[7]~output_o\;

ww_RS_OUT(8) <= \RS_OUT[8]~output_o\;

ww_RS_OUT(9) <= \RS_OUT[9]~output_o\;

ww_RS_OUT(10) <= \RS_OUT[10]~output_o\;

ww_RS_OUT(11) <= \RS_OUT[11]~output_o\;

ww_RS_OUT(12) <= \RS_OUT[12]~output_o\;

ww_RS_OUT(13) <= \RS_OUT[13]~output_o\;

ww_RS_OUT(14) <= \RS_OUT[14]~output_o\;

ww_RS_OUT(15) <= \RS_OUT[15]~output_o\;

ww_RS_OUT(16) <= \RS_OUT[16]~output_o\;

ww_RS_OUT(17) <= \RS_OUT[17]~output_o\;

ww_RS_OUT(18) <= \RS_OUT[18]~output_o\;

ww_RS_OUT(19) <= \RS_OUT[19]~output_o\;

ww_RS_OUT(20) <= \RS_OUT[20]~output_o\;

ww_RS_OUT(21) <= \RS_OUT[21]~output_o\;

ww_RS_OUT(22) <= \RS_OUT[22]~output_o\;

ww_RS_OUT(23) <= \RS_OUT[23]~output_o\;

ww_RS_OUT(24) <= \RS_OUT[24]~output_o\;

ww_RS_OUT(25) <= \RS_OUT[25]~output_o\;

ww_RS_OUT(26) <= \RS_OUT[26]~output_o\;

ww_RS_OUT(27) <= \RS_OUT[27]~output_o\;

ww_RS_OUT(28) <= \RS_OUT[28]~output_o\;

ww_RS_OUT(29) <= \RS_OUT[29]~output_o\;

ww_RS_OUT(30) <= \RS_OUT[30]~output_o\;

ww_RS_OUT(31) <= \RS_OUT[31]~output_o\;

ww_RT_OUT(0) <= \RT_OUT[0]~output_o\;

ww_RT_OUT(1) <= \RT_OUT[1]~output_o\;

ww_RT_OUT(2) <= \RT_OUT[2]~output_o\;

ww_RT_OUT(3) <= \RT_OUT[3]~output_o\;

ww_RT_OUT(4) <= \RT_OUT[4]~output_o\;

ww_RT_OUT(5) <= \RT_OUT[5]~output_o\;

ww_RT_OUT(6) <= \RT_OUT[6]~output_o\;

ww_RT_OUT(7) <= \RT_OUT[7]~output_o\;

ww_RT_OUT(8) <= \RT_OUT[8]~output_o\;

ww_RT_OUT(9) <= \RT_OUT[9]~output_o\;

ww_RT_OUT(10) <= \RT_OUT[10]~output_o\;

ww_RT_OUT(11) <= \RT_OUT[11]~output_o\;

ww_RT_OUT(12) <= \RT_OUT[12]~output_o\;

ww_RT_OUT(13) <= \RT_OUT[13]~output_o\;

ww_RT_OUT(14) <= \RT_OUT[14]~output_o\;

ww_RT_OUT(15) <= \RT_OUT[15]~output_o\;

ww_RT_OUT(16) <= \RT_OUT[16]~output_o\;

ww_RT_OUT(17) <= \RT_OUT[17]~output_o\;

ww_RT_OUT(18) <= \RT_OUT[18]~output_o\;

ww_RT_OUT(19) <= \RT_OUT[19]~output_o\;

ww_RT_OUT(20) <= \RT_OUT[20]~output_o\;

ww_RT_OUT(21) <= \RT_OUT[21]~output_o\;

ww_RT_OUT(22) <= \RT_OUT[22]~output_o\;

ww_RT_OUT(23) <= \RT_OUT[23]~output_o\;

ww_RT_OUT(24) <= \RT_OUT[24]~output_o\;

ww_RT_OUT(25) <= \RT_OUT[25]~output_o\;

ww_RT_OUT(26) <= \RT_OUT[26]~output_o\;

ww_RT_OUT(27) <= \RT_OUT[27]~output_o\;

ww_RT_OUT(28) <= \RT_OUT[28]~output_o\;

ww_RT_OUT(29) <= \RT_OUT[29]~output_o\;

ww_RT_OUT(30) <= \RT_OUT[30]~output_o\;

ww_RT_OUT(31) <= \RT_OUT[31]~output_o\;

ww_Rs_End(0) <= \Rs_End[0]~output_o\;

ww_Rs_End(1) <= \Rs_End[1]~output_o\;

ww_Rs_End(2) <= \Rs_End[2]~output_o\;

ww_Rs_End(3) <= \Rs_End[3]~output_o\;

ww_Rs_End(4) <= \Rs_End[4]~output_o\;

ww_Rt_End(0) <= \Rt_End[0]~output_o\;

ww_Rt_End(1) <= \Rt_End[1]~output_o\;

ww_Rt_End(2) <= \Rt_End[2]~output_o\;

ww_Rt_End(3) <= \Rt_End[3]~output_o\;

ww_Rt_End(4) <= \Rt_End[4]~output_o\;

ww_Rd_End(0) <= \Rd_End[0]~output_o\;

ww_Rd_End(1) <= \Rd_End[1]~output_o\;

ww_Rd_End(2) <= \Rd_End[2]~output_o\;

ww_Rd_End(3) <= \Rd_End[3]~output_o\;

ww_Rd_End(4) <= \Rd_End[4]~output_o\;

ww_PC_OUT(0) <= \PC_OUT[0]~output_o\;

ww_PC_OUT(1) <= \PC_OUT[1]~output_o\;

ww_PC_OUT(2) <= \PC_OUT[2]~output_o\;

ww_PC_OUT(3) <= \PC_OUT[3]~output_o\;

ww_PC_OUT(4) <= \PC_OUT[4]~output_o\;

ww_PC_OUT(5) <= \PC_OUT[5]~output_o\;

ww_PC_OUT(6) <= \PC_OUT[6]~output_o\;

ww_PC_OUT(7) <= \PC_OUT[7]~output_o\;

ww_PC_OUT(8) <= \PC_OUT[8]~output_o\;

ww_PC_OUT(9) <= \PC_OUT[9]~output_o\;

ww_PC_OUT(10) <= \PC_OUT[10]~output_o\;

ww_PC_OUT(11) <= \PC_OUT[11]~output_o\;

ww_PC_OUT(12) <= \PC_OUT[12]~output_o\;

ww_PC_OUT(13) <= \PC_OUT[13]~output_o\;

ww_PC_OUT(14) <= \PC_OUT[14]~output_o\;

ww_PC_OUT(15) <= \PC_OUT[15]~output_o\;

ww_PC_OUT(16) <= \PC_OUT[16]~output_o\;

ww_PC_OUT(17) <= \PC_OUT[17]~output_o\;

ww_PC_OUT(18) <= \PC_OUT[18]~output_o\;

ww_PC_OUT(19) <= \PC_OUT[19]~output_o\;

ww_PC_OUT(20) <= \PC_OUT[20]~output_o\;

ww_PC_OUT(21) <= \PC_OUT[21]~output_o\;

ww_PC_OUT(22) <= \PC_OUT[22]~output_o\;

ww_PC_OUT(23) <= \PC_OUT[23]~output_o\;

ww_PC_OUT(24) <= \PC_OUT[24]~output_o\;

ww_PC_OUT(25) <= \PC_OUT[25]~output_o\;

ww_PC_OUT(26) <= \PC_OUT[26]~output_o\;

ww_PC_OUT(27) <= \PC_OUT[27]~output_o\;

ww_PC_OUT(28) <= \PC_OUT[28]~output_o\;

ww_PC_OUT(29) <= \PC_OUT[29]~output_o\;

ww_PC_OUT(30) <= \PC_OUT[30]~output_o\;

ww_PC_OUT(31) <= \PC_OUT[31]~output_o\;
END structure;

