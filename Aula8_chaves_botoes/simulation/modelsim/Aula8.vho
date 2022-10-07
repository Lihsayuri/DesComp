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

-- DATE "10/07/2022 16:28:24"

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

ENTITY 	Aula8 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	FPGA_RESET_N : IN std_logic;
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	REGA_OUT : OUT std_logic_vector(7 DOWNTO 0);
	Palavra : OUT std_logic_vector(12 DOWNTO 0);
	EQUAL_FLAG : OUT std_logic;
	HabilitaRAM : OUT std_logic;
	MEM_ADDRESS : OUT std_logic_vector(8 DOWNTO 0);
	ADD_OUT : OUT std_logic_vector(7 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Aula8;

-- Design Ports Information
-- PC_OUT[0]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[1]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[2]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[3]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[4]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[5]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[6]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[7]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[8]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[9]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- REGA_OUT[0]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[1]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[2]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[3]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[4]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[5]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[6]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[7]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[0]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[1]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[2]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[3]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[5]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[6]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[7]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[8]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[9]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[10]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[11]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[12]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EQUAL_FLAG	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HabilitaRAM	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[0]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[1]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[3]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[4]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[5]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[6]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[7]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[8]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[1]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[2]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[3]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[4]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[5]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[7]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[2]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[4]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[6]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[1]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[2]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[3]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[4]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[5]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[6]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[0]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[2]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[3]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[4]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[5]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[6]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[0]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[2]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[3]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[4]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[5]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[6]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[0]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[1]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[2]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[3]	=>  Location: PIN_U16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[4]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[5]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[6]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[0]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[1]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[2]	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[3]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[4]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[5]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[6]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FPGA_RESET_N	=>  Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Aula8 IS
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
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_FPGA_RESET_N : std_logic;
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_REGA_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Palavra : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_EQUAL_FLAG : std_logic;
SIGNAL ww_HabilitaRAM : std_logic;
SIGNAL ww_MEM_ADDRESS : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_ADD_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \gravar:detectorSub3|saidaQ~0_combout\ : std_logic;
SIGNAL \gravar:detectorSub3|saidaQ~q\ : std_logic;
SIGNAL \gravar:detectorSub3|saida~combout\ : std_logic;
SIGNAL \processador|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \ROM1|memROM~22_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~18\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~22\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[6]~6_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~26\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[7]~7_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~30\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[8]~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~23_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[5]~5_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida[9]~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~2\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~6\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \ROM1|memROM~18_combout\ : std_logic;
SIGNAL \ROM1|memROM~19_combout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[2]~2_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~10\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~14\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[4]~4_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal11~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \ROM1|memROM~17_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \comb~8_combout\ : std_logic;
SIGNAL \decoderBloco|Equal2~1_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \SW_8|saida[1]~8_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal11~2_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida[4]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~29_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \ROM1|memROM~20_combout\ : std_logic;
SIGNAL \ROM1|memROM~21_combout\ : std_logic;
SIGNAL \ROM1|memROM~28_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \ROM1|memROM~27_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \ROM1|memROM~26_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \ROM1|memROM~25_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida[1]~0_combout\ : std_logic;
SIGNAL \SW_8|saida[0]~7_combout\ : std_logic;
SIGNAL \RESET_511~0_combout\ : std_logic;
SIGNAL \SW_0_7|saida[0]~3_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW_0_7|saida[0]~2_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \SW_0_7|saida[0]~1_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \gravar:detectorSub0|saida~combout\ : std_logic;
SIGNAL \FF_DEBOUNCER|DOUT~feeder_combout\ : std_logic;
SIGNAL \RESET_511~combout\ : std_logic;
SIGNAL \FF_DEBOUNCER|DOUT~q\ : std_logic;
SIGNAL \SW_0_7|saida[0]~4_combout\ : std_logic;
SIGNAL \SW_0_7|saida[0]~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~24_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \processador|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \processador|ULA1|saida[0]~1_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida[6]~2_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal11~0_combout\ : std_logic;
SIGNAL \RAM1|ram~715_combout\ : std_logic;
SIGNAL \RAM1|ram~716_combout\ : std_logic;
SIGNAL \RAM1|ram~95_q\ : std_logic;
SIGNAL \RAM1|ram~717_combout\ : std_logic;
SIGNAL \RAM1|ram~718_combout\ : std_logic;
SIGNAL \RAM1|ram~103_q\ : std_logic;
SIGNAL \RAM1|ram~711_combout\ : std_logic;
SIGNAL \RAM1|ram~712_combout\ : std_logic;
SIGNAL \RAM1|ram~79_q\ : std_logic;
SIGNAL \RAM1|ram~713_combout\ : std_logic;
SIGNAL \RAM1|ram~714_combout\ : std_logic;
SIGNAL \RAM1|ram~87_q\ : std_logic;
SIGNAL \RAM1|ram~529_combout\ : std_logic;
SIGNAL \RAM1|ram~15feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~695_combout\ : std_logic;
SIGNAL \RAM1|ram~696_combout\ : std_logic;
SIGNAL \RAM1|ram~15_q\ : std_logic;
SIGNAL \RAM1|ram~701_combout\ : std_logic;
SIGNAL \RAM1|ram~702_combout\ : std_logic;
SIGNAL \RAM1|ram~39_q\ : std_logic;
SIGNAL \RAM1|ram~31feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~699_combout\ : std_logic;
SIGNAL \RAM1|ram~700_combout\ : std_logic;
SIGNAL \RAM1|ram~31_q\ : std_logic;
SIGNAL \RAM1|ram~697_combout\ : std_logic;
SIGNAL \RAM1|ram~698_combout\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~527_combout\ : std_logic;
SIGNAL \RAM1|ram~719_combout\ : std_logic;
SIGNAL \RAM1|ram~720_combout\ : std_logic;
SIGNAL \RAM1|ram~111_q\ : std_logic;
SIGNAL \RAM1|ram~725_combout\ : std_logic;
SIGNAL \RAM1|ram~726_combout\ : std_logic;
SIGNAL \RAM1|ram~135_q\ : std_logic;
SIGNAL \RAM1|ram~723_combout\ : std_logic;
SIGNAL \RAM1|ram~724_combout\ : std_logic;
SIGNAL \RAM1|ram~127_q\ : std_logic;
SIGNAL \RAM1|ram~721_combout\ : std_logic;
SIGNAL \RAM1|ram~722_combout\ : std_logic;
SIGNAL \RAM1|ram~119_q\ : std_logic;
SIGNAL \RAM1|ram~530_combout\ : std_logic;
SIGNAL \RAM1|ram~703_combout\ : std_logic;
SIGNAL \RAM1|ram~704_combout\ : std_logic;
SIGNAL \RAM1|ram~47_q\ : std_logic;
SIGNAL \RAM1|ram~705_combout\ : std_logic;
SIGNAL \RAM1|ram~706_combout\ : std_logic;
SIGNAL \RAM1|ram~55_q\ : std_logic;
SIGNAL \RAM1|ram~707_combout\ : std_logic;
SIGNAL \RAM1|ram~708_combout\ : std_logic;
SIGNAL \RAM1|ram~63_q\ : std_logic;
SIGNAL \RAM1|ram~709_combout\ : std_logic;
SIGNAL \RAM1|ram~710_combout\ : std_logic;
SIGNAL \RAM1|ram~71_q\ : std_logic;
SIGNAL \RAM1|ram~528_combout\ : std_logic;
SIGNAL \RAM1|ram~531_combout\ : std_logic;
SIGNAL \RAM1|ram~287feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~763_combout\ : std_logic;
SIGNAL \RAM1|ram~764_combout\ : std_logic;
SIGNAL \RAM1|ram~287_q\ : std_logic;
SIGNAL \RAM1|ram~279feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~761_combout\ : std_logic;
SIGNAL \RAM1|ram~762_combout\ : std_logic;
SIGNAL \RAM1|ram~279_q\ : std_logic;
SIGNAL \RAM1|ram~765_combout\ : std_logic;
SIGNAL \RAM1|ram~766_combout\ : std_logic;
SIGNAL \RAM1|ram~295_q\ : std_logic;
SIGNAL \RAM1|ram~759_combout\ : std_logic;
SIGNAL \RAM1|ram~760_combout\ : std_logic;
SIGNAL \RAM1|ram~271_q\ : std_logic;
SIGNAL \RAM1|ram~537_combout\ : std_logic;
SIGNAL \RAM1|ram~789_combout\ : std_logic;
SIGNAL \RAM1|ram~790_combout\ : std_logic;
SIGNAL \RAM1|ram~391_q\ : std_logic;
SIGNAL \RAM1|ram~383feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~787_combout\ : std_logic;
SIGNAL \RAM1|ram~788_combout\ : std_logic;
SIGNAL \RAM1|ram~383_q\ : std_logic;
SIGNAL \RAM1|ram~785_combout\ : std_logic;
SIGNAL \RAM1|ram~786_combout\ : std_logic;
SIGNAL \RAM1|ram~375_q\ : std_logic;
SIGNAL \RAM1|ram~367feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~783_combout\ : std_logic;
SIGNAL \RAM1|ram~784_combout\ : std_logic;
SIGNAL \RAM1|ram~367_q\ : std_logic;
SIGNAL \RAM1|ram~540_combout\ : std_logic;
SIGNAL \RAM1|ram~303feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~767_combout\ : std_logic;
SIGNAL \RAM1|ram~768_combout\ : std_logic;
SIGNAL \RAM1|ram~303_q\ : std_logic;
SIGNAL \RAM1|ram~771_combout\ : std_logic;
SIGNAL \RAM1|ram~772_combout\ : std_logic;
SIGNAL \RAM1|ram~319_q\ : std_logic;
SIGNAL \RAM1|ram~773_combout\ : std_logic;
SIGNAL \RAM1|ram~774_combout\ : std_logic;
SIGNAL \RAM1|ram~327_q\ : std_logic;
SIGNAL \RAM1|ram~769_combout\ : std_logic;
SIGNAL \RAM1|ram~770_combout\ : std_logic;
SIGNAL \RAM1|ram~311_q\ : std_logic;
SIGNAL \RAM1|ram~538_combout\ : std_logic;
SIGNAL \RAM1|ram~781_combout\ : std_logic;
SIGNAL \RAM1|ram~782_combout\ : std_logic;
SIGNAL \RAM1|ram~359_q\ : std_logic;
SIGNAL \RAM1|ram~777_combout\ : std_logic;
SIGNAL \RAM1|ram~778_combout\ : std_logic;
SIGNAL \RAM1|ram~343_q\ : std_logic;
SIGNAL \RAM1|ram~351feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~779_combout\ : std_logic;
SIGNAL \RAM1|ram~780_combout\ : std_logic;
SIGNAL \RAM1|ram~351_q\ : std_logic;
SIGNAL \RAM1|ram~775_combout\ : std_logic;
SIGNAL \RAM1|ram~776_combout\ : std_logic;
SIGNAL \RAM1|ram~335_q\ : std_logic;
SIGNAL \RAM1|ram~539_combout\ : std_logic;
SIGNAL \RAM1|ram~541_combout\ : std_logic;
SIGNAL \RAM1|ram~799_combout\ : std_logic;
SIGNAL \RAM1|ram~800_combout\ : std_logic;
SIGNAL \RAM1|ram~407_q\ : std_logic;
SIGNAL \RAM1|ram~801_combout\ : std_logic;
SIGNAL \RAM1|ram~802_combout\ : std_logic;
SIGNAL \RAM1|ram~439_q\ : std_logic;
SIGNAL \RAM1|ram~805_combout\ : std_logic;
SIGNAL \RAM1|ram~806_combout\ : std_logic;
SIGNAL \RAM1|ram~503_q\ : std_logic;
SIGNAL \RAM1|ram~803_combout\ : std_logic;
SIGNAL \RAM1|ram~804_combout\ : std_logic;
SIGNAL \RAM1|ram~471_q\ : std_logic;
SIGNAL \RAM1|ram~543_combout\ : std_logic;
SIGNAL \RAM1|ram~815_combout\ : std_logic;
SIGNAL \RAM1|ram~816_combout\ : std_logic;
SIGNAL \RAM1|ram~423_q\ : std_logic;
SIGNAL \RAM1|ram~821_combout\ : std_logic;
SIGNAL \RAM1|ram~822_combout\ : std_logic;
SIGNAL \RAM1|ram~519_q\ : std_logic;
SIGNAL \RAM1|ram~817_combout\ : std_logic;
SIGNAL \RAM1|ram~818_combout\ : std_logic;
SIGNAL \RAM1|ram~455_q\ : std_logic;
SIGNAL \RAM1|ram~819_combout\ : std_logic;
SIGNAL \RAM1|ram~820_combout\ : std_logic;
SIGNAL \RAM1|ram~487_q\ : std_logic;
SIGNAL \RAM1|ram~545_combout\ : std_logic;
SIGNAL \RAM1|ram~811_combout\ : std_logic;
SIGNAL \RAM1|ram~812_combout\ : std_logic;
SIGNAL \RAM1|ram~479_q\ : std_logic;
SIGNAL \RAM1|ram~807_combout\ : std_logic;
SIGNAL \RAM1|ram~808_combout\ : std_logic;
SIGNAL \RAM1|ram~415_q\ : std_logic;
SIGNAL \RAM1|ram~809_combout\ : std_logic;
SIGNAL \RAM1|ram~810_combout\ : std_logic;
SIGNAL \RAM1|ram~447_q\ : std_logic;
SIGNAL \RAM1|ram~813_combout\ : std_logic;
SIGNAL \RAM1|ram~814_combout\ : std_logic;
SIGNAL \RAM1|ram~511_q\ : std_logic;
SIGNAL \RAM1|ram~544_combout\ : std_logic;
SIGNAL \RAM1|ram~793_combout\ : std_logic;
SIGNAL \RAM1|ram~794_combout\ : std_logic;
SIGNAL \RAM1|ram~431_q\ : std_logic;
SIGNAL \RAM1|ram~791_combout\ : std_logic;
SIGNAL \RAM1|ram~792_combout\ : std_logic;
SIGNAL \RAM1|ram~399_q\ : std_logic;
SIGNAL \RAM1|ram~795_combout\ : std_logic;
SIGNAL \RAM1|ram~796_combout\ : std_logic;
SIGNAL \RAM1|ram~463_q\ : std_logic;
SIGNAL \RAM1|ram~797_combout\ : std_logic;
SIGNAL \RAM1|ram~798_combout\ : std_logic;
SIGNAL \RAM1|ram~495_q\ : std_logic;
SIGNAL \RAM1|ram~542_combout\ : std_logic;
SIGNAL \RAM1|ram~546_combout\ : std_logic;
SIGNAL \RAM1|ram~741_combout\ : std_logic;
SIGNAL \RAM1|ram~742_combout\ : std_logic;
SIGNAL \RAM1|ram~247_q\ : std_logic;
SIGNAL \RAM1|ram~735_combout\ : std_logic;
SIGNAL \RAM1|ram~736_combout\ : std_logic;
SIGNAL \RAM1|ram~151_q\ : std_logic;
SIGNAL \RAM1|ram~739_combout\ : std_logic;
SIGNAL \RAM1|ram~740_combout\ : std_logic;
SIGNAL \RAM1|ram~215_q\ : std_logic;
SIGNAL \RAM1|ram~737_combout\ : std_logic;
SIGNAL \RAM1|ram~738_combout\ : std_logic;
SIGNAL \RAM1|ram~183_q\ : std_logic;
SIGNAL \RAM1|ram~533_combout\ : std_logic;
SIGNAL \RAM1|ram~755_combout\ : std_logic;
SIGNAL \RAM1|ram~756_combout\ : std_logic;
SIGNAL \RAM1|ram~231_q\ : std_logic;
SIGNAL \RAM1|ram~751_combout\ : std_logic;
SIGNAL \RAM1|ram~752_combout\ : std_logic;
SIGNAL \RAM1|ram~167_q\ : std_logic;
SIGNAL \RAM1|ram~753_combout\ : std_logic;
SIGNAL \RAM1|ram~754_combout\ : std_logic;
SIGNAL \RAM1|ram~199_q\ : std_logic;
SIGNAL \RAM1|ram~757_combout\ : std_logic;
SIGNAL \RAM1|ram~758_combout\ : std_logic;
SIGNAL \RAM1|ram~263_q\ : std_logic;
SIGNAL \RAM1|ram~535_combout\ : std_logic;
SIGNAL \RAM1|ram~207feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~731_combout\ : std_logic;
SIGNAL \RAM1|ram~732_combout\ : std_logic;
SIGNAL \RAM1|ram~207_q\ : std_logic;
SIGNAL \RAM1|ram~729_combout\ : std_logic;
SIGNAL \RAM1|ram~730_combout\ : std_logic;
SIGNAL \RAM1|ram~175_q\ : std_logic;
SIGNAL \RAM1|ram~733_combout\ : std_logic;
SIGNAL \RAM1|ram~734_combout\ : std_logic;
SIGNAL \RAM1|ram~239_q\ : std_logic;
SIGNAL \RAM1|ram~727_combout\ : std_logic;
SIGNAL \RAM1|ram~728_combout\ : std_logic;
SIGNAL \RAM1|ram~143_q\ : std_logic;
SIGNAL \RAM1|ram~532_combout\ : std_logic;
SIGNAL \RAM1|ram~747_combout\ : std_logic;
SIGNAL \RAM1|ram~748_combout\ : std_logic;
SIGNAL \RAM1|ram~223_q\ : std_logic;
SIGNAL \RAM1|ram~745_combout\ : std_logic;
SIGNAL \RAM1|ram~746_combout\ : std_logic;
SIGNAL \RAM1|ram~191_q\ : std_logic;
SIGNAL \RAM1|ram~159feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~743_combout\ : std_logic;
SIGNAL \RAM1|ram~744_combout\ : std_logic;
SIGNAL \RAM1|ram~159_q\ : std_logic;
SIGNAL \RAM1|ram~749_combout\ : std_logic;
SIGNAL \RAM1|ram~750_combout\ : std_logic;
SIGNAL \RAM1|ram~255_q\ : std_logic;
SIGNAL \RAM1|ram~534_combout\ : std_logic;
SIGNAL \RAM1|ram~536_combout\ : std_logic;
SIGNAL \RAM1|ram~547_combout\ : std_logic;
SIGNAL \SW_0_7|saida[0]~8_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~2\ : std_logic;
SIGNAL \processador|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add0~2\ : std_logic;
SIGNAL \processador|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[1]~17_combout\ : std_logic;
SIGNAL \RAM1|ram~168_q\ : std_logic;
SIGNAL \RAM1|ram~40_q\ : std_logic;
SIGNAL \RAM1|ram~232_q\ : std_logic;
SIGNAL \RAM1|ram~104_q\ : std_logic;
SIGNAL \RAM1|ram~559_combout\ : std_logic;
SIGNAL \RAM1|ram~256_q\ : std_logic;
SIGNAL \RAM1|ram~128feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~128_q\ : std_logic;
SIGNAL \RAM1|ram~64_q\ : std_logic;
SIGNAL \RAM1|ram~192_q\ : std_logic;
SIGNAL \RAM1|ram~560_combout\ : std_logic;
SIGNAL \RAM1|ram~200_q\ : std_logic;
SIGNAL \RAM1|ram~136_q\ : std_logic;
SIGNAL \RAM1|ram~264_q\ : std_logic;
SIGNAL \RAM1|ram~72_q\ : std_logic;
SIGNAL \RAM1|ram~561_combout\ : std_logic;
SIGNAL \RAM1|ram~32feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~32_q\ : std_logic;
SIGNAL \RAM1|ram~96_q\ : std_logic;
SIGNAL \RAM1|ram~224_q\ : std_logic;
SIGNAL \RAM1|ram~160_q\ : std_logic;
SIGNAL \RAM1|ram~558_combout\ : std_logic;
SIGNAL \RAM1|ram~562_combout\ : std_logic;
SIGNAL \RAM1|ram~208_q\ : std_logic;
SIGNAL \RAM1|ram~216_q\ : std_logic;
SIGNAL \RAM1|ram~88_q\ : std_logic;
SIGNAL \RAM1|ram~80_q\ : std_logic;
SIGNAL \RAM1|ram~550_combout\ : std_logic;
SIGNAL \RAM1|ram~240feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~240_q\ : std_logic;
SIGNAL \RAM1|ram~120_q\ : std_logic;
SIGNAL \RAM1|ram~248feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~248_q\ : std_logic;
SIGNAL \RAM1|ram~112_q\ : std_logic;
SIGNAL \RAM1|ram~551_combout\ : std_logic;
SIGNAL \RAM1|ram~144_q\ : std_logic;
SIGNAL \RAM1|ram~16feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~16_q\ : std_logic;
SIGNAL \RAM1|ram~24feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~152_q\ : std_logic;
SIGNAL \RAM1|ram~548_combout\ : std_logic;
SIGNAL \RAM1|ram~56_q\ : std_logic;
SIGNAL \RAM1|ram~48_q\ : std_logic;
SIGNAL \RAM1|ram~176_q\ : std_logic;
SIGNAL \RAM1|ram~184_q\ : std_logic;
SIGNAL \RAM1|ram~549_combout\ : std_logic;
SIGNAL \RAM1|ram~552_combout\ : std_logic;
SIGNAL \RAM1|ram~472_q\ : std_logic;
SIGNAL \RAM1|ram~376_q\ : std_logic;
SIGNAL \RAM1|ram~344_q\ : std_logic;
SIGNAL \RAM1|ram~504_q\ : std_logic;
SIGNAL \RAM1|ram~556_combout\ : std_logic;
SIGNAL \RAM1|ram~432_q\ : std_logic;
SIGNAL \RAM1|ram~304_q\ : std_logic;
SIGNAL \RAM1|ram~272_q\ : std_logic;
SIGNAL \RAM1|ram~400_q\ : std_logic;
SIGNAL \RAM1|ram~553_combout\ : std_logic;
SIGNAL \RAM1|ram~280feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~280_q\ : std_logic;
SIGNAL \RAM1|ram~440_q\ : std_logic;
SIGNAL \RAM1|ram~312_q\ : std_logic;
SIGNAL \RAM1|ram~408_q\ : std_logic;
SIGNAL \RAM1|ram~554_combout\ : std_logic;
SIGNAL \RAM1|ram~464_q\ : std_logic;
SIGNAL \RAM1|ram~368_q\ : std_logic;
SIGNAL \RAM1|ram~336_q\ : std_logic;
SIGNAL \RAM1|ram~496_q\ : std_logic;
SIGNAL \RAM1|ram~555_combout\ : std_logic;
SIGNAL \RAM1|ram~557_combout\ : std_logic;
SIGNAL \RAM1|ram~384_q\ : std_logic;
SIGNAL \RAM1|ram~512_q\ : std_logic;
SIGNAL \RAM1|ram~520_q\ : std_logic;
SIGNAL \RAM1|ram~392_q\ : std_logic;
SIGNAL \RAM1|ram~566_combout\ : std_logic;
SIGNAL \RAM1|ram~288_q\ : std_logic;
SIGNAL \RAM1|ram~296_q\ : std_logic;
SIGNAL \RAM1|ram~416_q\ : std_logic;
SIGNAL \RAM1|ram~424_q\ : std_logic;
SIGNAL \RAM1|ram~563_combout\ : std_logic;
SIGNAL \RAM1|ram~328_q\ : std_logic;
SIGNAL \RAM1|ram~448_q\ : std_logic;
SIGNAL \RAM1|ram~320_q\ : std_logic;
SIGNAL \RAM1|ram~456_q\ : std_logic;
SIGNAL \RAM1|ram~564_combout\ : std_logic;
SIGNAL \RAM1|ram~488feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~488_q\ : std_logic;
SIGNAL \RAM1|ram~480feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~480_q\ : std_logic;
SIGNAL \RAM1|ram~352_q\ : std_logic;
SIGNAL \RAM1|ram~360feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~360_q\ : std_logic;
SIGNAL \RAM1|ram~565_combout\ : std_logic;
SIGNAL \RAM1|ram~567_combout\ : std_logic;
SIGNAL \RAM1|ram~568_combout\ : std_logic;
SIGNAL \SW_8|saida[1]~9_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~6\ : std_logic;
SIGNAL \processador|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add0~6\ : std_logic;
SIGNAL \processador|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[2]~13_combout\ : std_logic;
SIGNAL \RAM1|ram~105_q\ : std_logic;
SIGNAL \RAM1|ram~89_q\ : std_logic;
SIGNAL \RAM1|ram~217_q\ : std_logic;
SIGNAL \RAM1|ram~233_q\ : std_logic;
SIGNAL \RAM1|ram~572_combout\ : std_logic;
SIGNAL \RAM1|ram~153_q\ : std_logic;
SIGNAL \RAM1|ram~169_q\ : std_logic;
SIGNAL \RAM1|ram~25feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~41_q\ : std_logic;
SIGNAL \RAM1|ram~570_combout\ : std_logic;
SIGNAL \RAM1|ram~97_q\ : std_logic;
SIGNAL \RAM1|ram~81_q\ : std_logic;
SIGNAL \RAM1|ram~209_q\ : std_logic;
SIGNAL \RAM1|ram~225_q\ : std_logic;
SIGNAL \RAM1|ram~571_combout\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~145_q\ : std_logic;
SIGNAL \RAM1|ram~161_q\ : std_logic;
SIGNAL \RAM1|ram~33_q\ : std_logic;
SIGNAL \RAM1|ram~569_combout\ : std_logic;
SIGNAL \RAM1|ram~573_combout\ : std_logic;
SIGNAL \RAM1|ram~465_q\ : std_logic;
SIGNAL \RAM1|ram~481_q\ : std_logic;
SIGNAL \RAM1|ram~401_q\ : std_logic;
SIGNAL \RAM1|ram~417_q\ : std_logic;
SIGNAL \RAM1|ram~576_combout\ : std_logic;
SIGNAL \RAM1|ram~353_q\ : std_logic;
SIGNAL \RAM1|ram~337_q\ : std_logic;
SIGNAL \RAM1|ram~289_q\ : std_logic;
SIGNAL \RAM1|ram~273_q\ : std_logic;
SIGNAL \RAM1|ram~574_combout\ : std_logic;
SIGNAL \RAM1|ram~473_q\ : std_logic;
SIGNAL \RAM1|ram~489_q\ : std_logic;
SIGNAL \RAM1|ram~425_q\ : std_logic;
SIGNAL \RAM1|ram~409_q\ : std_logic;
SIGNAL \RAM1|ram~577_combout\ : std_logic;
SIGNAL \RAM1|ram~361_q\ : std_logic;
SIGNAL \RAM1|ram~281_q\ : std_logic;
SIGNAL \RAM1|ram~297_q\ : std_logic;
SIGNAL \RAM1|ram~345feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~345_q\ : std_logic;
SIGNAL \RAM1|ram~575_combout\ : std_logic;
SIGNAL \RAM1|ram~578_combout\ : std_logic;
SIGNAL \RAM1|ram~265_q\ : std_logic;
SIGNAL \RAM1|ram~137_q\ : std_logic;
SIGNAL \RAM1|ram~249_q\ : std_logic;
SIGNAL \RAM1|ram~121feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~121_q\ : std_logic;
SIGNAL \RAM1|ram~582_combout\ : std_logic;
SIGNAL \RAM1|ram~241_q\ : std_logic;
SIGNAL \RAM1|ram~129_q\ : std_logic;
SIGNAL \RAM1|ram~257_q\ : std_logic;
SIGNAL \RAM1|ram~113_q\ : std_logic;
SIGNAL \RAM1|ram~581_combout\ : std_logic;
SIGNAL \RAM1|ram~65feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~65_q\ : std_logic;
SIGNAL \RAM1|ram~177_q\ : std_logic;
SIGNAL \RAM1|ram~49_q\ : std_logic;
SIGNAL \RAM1|ram~193_q\ : std_logic;
SIGNAL \RAM1|ram~579_combout\ : std_logic;
SIGNAL \RAM1|ram~57_q\ : std_logic;
SIGNAL \RAM1|ram~201_q\ : std_logic;
SIGNAL \RAM1|ram~73_q\ : std_logic;
SIGNAL \RAM1|ram~185_q\ : std_logic;
SIGNAL \RAM1|ram~580_combout\ : std_logic;
SIGNAL \RAM1|ram~583_combout\ : std_logic;
SIGNAL \RAM1|ram~457_q\ : std_logic;
SIGNAL \RAM1|ram~449_q\ : std_logic;
SIGNAL \RAM1|ram~321_q\ : std_logic;
SIGNAL \RAM1|ram~329_q\ : std_logic;
SIGNAL \RAM1|ram~585_combout\ : std_logic;
SIGNAL \RAM1|ram~513_q\ : std_logic;
SIGNAL \RAM1|ram~521_q\ : std_logic;
SIGNAL \RAM1|ram~385_q\ : std_logic;
SIGNAL \RAM1|ram~393_q\ : std_logic;
SIGNAL \RAM1|ram~587_combout\ : std_logic;
SIGNAL \RAM1|ram~369feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~369_q\ : std_logic;
SIGNAL \RAM1|ram~377feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~377_q\ : std_logic;
SIGNAL \RAM1|ram~505_q\ : std_logic;
SIGNAL \RAM1|ram~497_q\ : std_logic;
SIGNAL \RAM1|ram~586_combout\ : std_logic;
SIGNAL \RAM1|ram~313_q\ : std_logic;
SIGNAL \RAM1|ram~305_q\ : std_logic;
SIGNAL \RAM1|ram~433feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~433_q\ : std_logic;
SIGNAL \RAM1|ram~441_q\ : std_logic;
SIGNAL \RAM1|ram~584_combout\ : std_logic;
SIGNAL \RAM1|ram~588_combout\ : std_logic;
SIGNAL \RAM1|ram~589_combout\ : std_logic;
SIGNAL \SW_8|saida[2]~10_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~10\ : std_logic;
SIGNAL \processador|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add1~10\ : std_logic;
SIGNAL \processador|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[3]~9_combout\ : std_logic;
SIGNAL \RAM1|ram~98_q\ : std_logic;
SIGNAL \RAM1|ram~82_q\ : std_logic;
SIGNAL \RAM1|ram~130_q\ : std_logic;
SIGNAL \RAM1|ram~114_q\ : std_logic;
SIGNAL \RAM1|ram~592_combout\ : std_logic;
SIGNAL \RAM1|ram~162_q\ : std_logic;
SIGNAL \RAM1|ram~194_q\ : std_logic;
SIGNAL \RAM1|ram~178_q\ : std_logic;
SIGNAL \RAM1|ram~146_q\ : std_logic;
SIGNAL \RAM1|ram~591_combout\ : std_logic;
SIGNAL \RAM1|ram~34feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~34_q\ : std_logic;
SIGNAL \RAM1|ram~66feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~66_q\ : std_logic;
SIGNAL \RAM1|ram~18feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~50_q\ : std_logic;
SIGNAL \RAM1|ram~590_combout\ : std_logic;
SIGNAL \RAM1|ram~226_q\ : std_logic;
SIGNAL \RAM1|ram~242_q\ : std_logic;
SIGNAL \RAM1|ram~210_q\ : std_logic;
SIGNAL \RAM1|ram~258_q\ : std_logic;
SIGNAL \RAM1|ram~593_combout\ : std_logic;
SIGNAL \RAM1|ram~594_combout\ : std_logic;
SIGNAL \RAM1|ram~74feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~74_q\ : std_logic;
SIGNAL \RAM1|ram~138_q\ : std_logic;
SIGNAL \RAM1|ram~42feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~42_q\ : std_logic;
SIGNAL \RAM1|ram~106_q\ : std_logic;
SIGNAL \RAM1|ram~602_combout\ : std_logic;
SIGNAL \RAM1|ram~202_q\ : std_logic;
SIGNAL \RAM1|ram~266feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~266_q\ : std_logic;
SIGNAL \RAM1|ram~234_q\ : std_logic;
SIGNAL \RAM1|ram~170_q\ : std_logic;
SIGNAL \RAM1|ram~603_combout\ : std_logic;
SIGNAL \RAM1|ram~250_q\ : std_logic;
SIGNAL \RAM1|ram~218feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~218_q\ : std_logic;
SIGNAL \RAM1|ram~186_q\ : std_logic;
SIGNAL \RAM1|ram~154_q\ : std_logic;
SIGNAL \RAM1|ram~601_combout\ : std_logic;
SIGNAL \RAM1|ram~90_q\ : std_logic;
SIGNAL \RAM1|ram~122_q\ : std_logic;
SIGNAL \RAM1|ram~58_q\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~600_combout\ : std_logic;
SIGNAL \RAM1|ram~604_combout\ : std_logic;
SIGNAL \RAM1|ram~498feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~498_q\ : std_logic;
SIGNAL \RAM1|ram~482_q\ : std_logic;
SIGNAL \RAM1|ram~466_q\ : std_logic;
SIGNAL \RAM1|ram~514_q\ : std_logic;
SIGNAL \RAM1|ram~598_combout\ : std_logic;
SIGNAL \RAM1|ram~290_q\ : std_logic;
SIGNAL \RAM1|ram~306_q\ : std_logic;
SIGNAL \RAM1|ram~274_q\ : std_logic;
SIGNAL \RAM1|ram~322_q\ : std_logic;
SIGNAL \RAM1|ram~595_combout\ : std_logic;
SIGNAL \RAM1|ram~402_q\ : std_logic;
SIGNAL \RAM1|ram~434_q\ : std_logic;
SIGNAL \RAM1|ram~418feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~418_q\ : std_logic;
SIGNAL \RAM1|ram~450_q\ : std_logic;
SIGNAL \RAM1|ram~596_combout\ : std_logic;
SIGNAL \RAM1|ram~354_q\ : std_logic;
SIGNAL \RAM1|ram~386_q\ : std_logic;
SIGNAL \RAM1|ram~338_q\ : std_logic;
SIGNAL \RAM1|ram~370_q\ : std_logic;
SIGNAL \RAM1|ram~597_combout\ : std_logic;
SIGNAL \RAM1|ram~599_combout\ : std_logic;
SIGNAL \RAM1|ram~330_q\ : std_logic;
SIGNAL \RAM1|ram~458_q\ : std_logic;
SIGNAL \RAM1|ram~298feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~298_q\ : std_logic;
SIGNAL \RAM1|ram~426_q\ : std_logic;
SIGNAL \RAM1|ram~606_combout\ : std_logic;
SIGNAL \RAM1|ram~522_q\ : std_logic;
SIGNAL \RAM1|ram~394_q\ : std_logic;
SIGNAL \RAM1|ram~490feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~490_q\ : std_logic;
SIGNAL \RAM1|ram~362feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~362_q\ : std_logic;
SIGNAL \RAM1|ram~608_combout\ : std_logic;
SIGNAL \RAM1|ram~474_q\ : std_logic;
SIGNAL \RAM1|ram~378feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~378_q\ : std_logic;
SIGNAL \RAM1|ram~346_q\ : std_logic;
SIGNAL \RAM1|ram~506_q\ : std_logic;
SIGNAL \RAM1|ram~607_combout\ : std_logic;
SIGNAL \RAM1|ram~282_q\ : std_logic;
SIGNAL \RAM1|ram~314_q\ : std_logic;
SIGNAL \RAM1|ram~442_q\ : std_logic;
SIGNAL \RAM1|ram~410feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~410_q\ : std_logic;
SIGNAL \RAM1|ram~605_combout\ : std_logic;
SIGNAL \RAM1|ram~609_combout\ : std_logic;
SIGNAL \RAM1|ram~610_combout\ : std_logic;
SIGNAL \SW_8|saida[3]~11_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~14\ : std_logic;
SIGNAL \processador|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add0~14\ : std_logic;
SIGNAL \processador|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[4]~2_combout\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~91_q\ : std_logic;
SIGNAL \RAM1|ram~27_q\ : std_logic;
SIGNAL \RAM1|ram~83feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~83_q\ : std_logic;
SIGNAL \RAM1|ram~611_combout\ : std_logic;
SIGNAL \RAM1|ram~115_q\ : std_logic;
SIGNAL \RAM1|ram~123_q\ : std_logic;
SIGNAL \RAM1|ram~59_q\ : std_logic;
SIGNAL \RAM1|ram~51_q\ : std_logic;
SIGNAL \RAM1|ram~612_combout\ : std_logic;
SIGNAL \RAM1|ram~75feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~75_q\ : std_logic;
SIGNAL \RAM1|ram~67_q\ : std_logic;
SIGNAL \RAM1|ram~131_q\ : std_logic;
SIGNAL \RAM1|ram~139_q\ : std_logic;
SIGNAL \RAM1|ram~614_combout\ : std_logic;
SIGNAL \RAM1|ram~35_q\ : std_logic;
SIGNAL \RAM1|ram~43_q\ : std_logic;
SIGNAL \RAM1|ram~99_q\ : std_logic;
SIGNAL \RAM1|ram~107_q\ : std_logic;
SIGNAL \RAM1|ram~613_combout\ : std_logic;
SIGNAL \RAM1|ram~615_combout\ : std_logic;
SIGNAL \RAM1|ram~507_q\ : std_logic;
SIGNAL \RAM1|ram~499_q\ : std_logic;
SIGNAL \RAM1|ram~443_q\ : std_logic;
SIGNAL \RAM1|ram~435feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~435_q\ : std_logic;
SIGNAL \RAM1|ram~627_combout\ : std_logic;
SIGNAL \RAM1|ram~515_q\ : std_logic;
SIGNAL \RAM1|ram~459_q\ : std_logic;
SIGNAL \RAM1|ram~523_q\ : std_logic;
SIGNAL \RAM1|ram~451_q\ : std_logic;
SIGNAL \RAM1|ram~629_combout\ : std_logic;
SIGNAL \RAM1|ram~491_q\ : std_logic;
SIGNAL \RAM1|ram~427_q\ : std_logic;
SIGNAL \RAM1|ram~419_q\ : std_logic;
SIGNAL \RAM1|ram~483feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~483_q\ : std_logic;
SIGNAL \RAM1|ram~628_combout\ : std_logic;
SIGNAL \RAM1|ram~411_q\ : std_logic;
SIGNAL \RAM1|ram~475_q\ : std_logic;
SIGNAL \RAM1|ram~403_q\ : std_logic;
SIGNAL \RAM1|ram~467_q\ : std_logic;
SIGNAL \RAM1|ram~626_combout\ : std_logic;
SIGNAL \RAM1|ram~630_combout\ : std_logic;
SIGNAL \RAM1|ram~203feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~203_q\ : std_logic;
SIGNAL \RAM1|ram~163_q\ : std_logic;
SIGNAL \RAM1|ram~195_q\ : std_logic;
SIGNAL \RAM1|ram~171_q\ : std_logic;
SIGNAL \RAM1|ram~622_combout\ : std_logic;
SIGNAL \RAM1|ram~155_q\ : std_logic;
SIGNAL \RAM1|ram~179_q\ : std_logic;
SIGNAL \RAM1|ram~187_q\ : std_logic;
SIGNAL \RAM1|ram~147_q\ : std_logic;
SIGNAL \RAM1|ram~621_combout\ : std_logic;
SIGNAL \RAM1|ram~211feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~211_q\ : std_logic;
SIGNAL \RAM1|ram~219_q\ : std_logic;
SIGNAL \RAM1|ram~243_q\ : std_logic;
SIGNAL \RAM1|ram~251_q\ : std_logic;
SIGNAL \RAM1|ram~623_combout\ : std_logic;
SIGNAL \RAM1|ram~259_q\ : std_logic;
SIGNAL \RAM1|ram~235_q\ : std_logic;
SIGNAL \RAM1|ram~227_q\ : std_logic;
SIGNAL \RAM1|ram~267feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~267_q\ : std_logic;
SIGNAL \RAM1|ram~624_combout\ : std_logic;
SIGNAL \RAM1|ram~625_combout\ : std_logic;
SIGNAL \RAM1|ram~291_q\ : std_logic;
SIGNAL \RAM1|ram~299_q\ : std_logic;
SIGNAL \RAM1|ram~283_q\ : std_logic;
SIGNAL \RAM1|ram~275_q\ : std_logic;
SIGNAL \RAM1|ram~616_combout\ : std_logic;
SIGNAL \RAM1|ram~323_q\ : std_logic;
SIGNAL \RAM1|ram~307_q\ : std_logic;
SIGNAL \RAM1|ram~315feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~315_q\ : std_logic;
SIGNAL \RAM1|ram~331_q\ : std_logic;
SIGNAL \RAM1|ram~617_combout\ : std_logic;
SIGNAL \RAM1|ram~371feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~371_q\ : std_logic;
SIGNAL \RAM1|ram~387_q\ : std_logic;
SIGNAL \RAM1|ram~379_q\ : std_logic;
SIGNAL \RAM1|ram~395feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~395_q\ : std_logic;
SIGNAL \RAM1|ram~619_combout\ : std_logic;
SIGNAL \RAM1|ram~355_q\ : std_logic;
SIGNAL \RAM1|ram~339_q\ : std_logic;
SIGNAL \RAM1|ram~363_q\ : std_logic;
SIGNAL \RAM1|ram~347_q\ : std_logic;
SIGNAL \RAM1|ram~618_combout\ : std_logic;
SIGNAL \RAM1|ram~620_combout\ : std_logic;
SIGNAL \RAM1|ram~631_combout\ : std_logic;
SIGNAL \SW_8|saida[4]~12_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~18\ : std_logic;
SIGNAL \processador|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add0~18\ : std_logic;
SIGNAL \processador|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[5]~3_combout\ : std_logic;
SIGNAL \RAM1|ram~244_q\ : std_logic;
SIGNAL \RAM1|ram~116feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~116_q\ : std_logic;
SIGNAL \RAM1|ram~372_q\ : std_logic;
SIGNAL \RAM1|ram~500_q\ : std_logic;
SIGNAL \RAM1|ram~644_combout\ : std_logic;
SIGNAL \RAM1|ram~308feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~308_q\ : std_logic;
SIGNAL \RAM1|ram~52feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~52_q\ : std_logic;
SIGNAL \RAM1|ram~180_q\ : std_logic;
SIGNAL \RAM1|ram~436_q\ : std_logic;
SIGNAL \RAM1|ram~642_combout\ : std_logic;
SIGNAL \RAM1|ram~508_q\ : std_logic;
SIGNAL \RAM1|ram~380_q\ : std_logic;
SIGNAL \RAM1|ram~124_q\ : std_logic;
SIGNAL \RAM1|ram~252_q\ : std_logic;
SIGNAL \RAM1|ram~645_combout\ : std_logic;
SIGNAL \RAM1|ram~60_q\ : std_logic;
SIGNAL \RAM1|ram~316_q\ : std_logic;
SIGNAL \RAM1|ram~188_q\ : std_logic;
SIGNAL \RAM1|ram~444_q\ : std_logic;
SIGNAL \RAM1|ram~643_combout\ : std_logic;
SIGNAL \RAM1|ram~646_combout\ : std_logic;
SIGNAL \RAM1|ram~236_q\ : std_logic;
SIGNAL \RAM1|ram~364_q\ : std_logic;
SIGNAL \RAM1|ram~108feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~108_q\ : std_logic;
SIGNAL \RAM1|ram~492_q\ : std_logic;
SIGNAL \RAM1|ram~640_combout\ : std_logic;
SIGNAL \RAM1|ram~228_q\ : std_logic;
SIGNAL \RAM1|ram~356_q\ : std_logic;
SIGNAL \RAM1|ram~100_q\ : std_logic;
SIGNAL \RAM1|ram~484feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~484_q\ : std_logic;
SIGNAL \RAM1|ram~639_combout\ : std_logic;
SIGNAL \RAM1|ram~420_q\ : std_logic;
SIGNAL \RAM1|ram~164_q\ : std_logic;
SIGNAL \RAM1|ram~36feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~36_q\ : std_logic;
SIGNAL \RAM1|ram~292feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~292_q\ : std_logic;
SIGNAL \RAM1|ram~637_combout\ : std_logic;
SIGNAL \RAM1|ram~44_q\ : std_logic;
SIGNAL \RAM1|ram~428_q\ : std_logic;
SIGNAL \RAM1|ram~172_q\ : std_logic;
SIGNAL \RAM1|ram~300_q\ : std_logic;
SIGNAL \RAM1|ram~638_combout\ : std_logic;
SIGNAL \RAM1|ram~641_combout\ : std_logic;
SIGNAL \RAM1|ram~284_q\ : std_logic;
SIGNAL \RAM1|ram~412_q\ : std_logic;
SIGNAL \RAM1|ram~156_q\ : std_logic;
SIGNAL \RAM1|ram~28_q\ : std_logic;
SIGNAL \RAM1|ram~633_combout\ : std_logic;
SIGNAL \RAM1|ram~404_q\ : std_logic;
SIGNAL \RAM1|ram~276_q\ : std_logic;
SIGNAL \RAM1|ram~20feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~148_q\ : std_logic;
SIGNAL \RAM1|ram~632_combout\ : std_logic;
SIGNAL \RAM1|ram~476_q\ : std_logic;
SIGNAL \RAM1|ram~348_q\ : std_logic;
SIGNAL \RAM1|ram~220_q\ : std_logic;
SIGNAL \RAM1|ram~92_q\ : std_logic;
SIGNAL \RAM1|ram~635_combout\ : std_logic;
SIGNAL \RAM1|ram~212_q\ : std_logic;
SIGNAL \RAM1|ram~84_q\ : std_logic;
SIGNAL \RAM1|ram~468feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~468_q\ : std_logic;
SIGNAL \RAM1|ram~340_q\ : std_logic;
SIGNAL \RAM1|ram~634_combout\ : std_logic;
SIGNAL \RAM1|ram~636_combout\ : std_logic;
SIGNAL \RAM1|ram~68_q\ : std_logic;
SIGNAL \RAM1|ram~332_q\ : std_logic;
SIGNAL \RAM1|ram~324_q\ : std_logic;
SIGNAL \RAM1|ram~76_q\ : std_logic;
SIGNAL \RAM1|ram~647_combout\ : std_logic;
SIGNAL \RAM1|ram~516_q\ : std_logic;
SIGNAL \RAM1|ram~524_q\ : std_logic;
SIGNAL \RAM1|ram~268_q\ : std_logic;
SIGNAL \RAM1|ram~260feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~260_q\ : std_logic;
SIGNAL \RAM1|ram~650_combout\ : std_logic;
SIGNAL \RAM1|ram~460_q\ : std_logic;
SIGNAL \RAM1|ram~204_q\ : std_logic;
SIGNAL \RAM1|ram~196_q\ : std_logic;
SIGNAL \RAM1|ram~452_q\ : std_logic;
SIGNAL \RAM1|ram~648_combout\ : std_logic;
SIGNAL \RAM1|ram~388_q\ : std_logic;
SIGNAL \RAM1|ram~140feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~140_q\ : std_logic;
SIGNAL \RAM1|ram~396feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~396_q\ : std_logic;
SIGNAL \RAM1|ram~132_q\ : std_logic;
SIGNAL \RAM1|ram~649_combout\ : std_logic;
SIGNAL \RAM1|ram~651_combout\ : std_logic;
SIGNAL \RAM1|ram~652_combout\ : std_logic;
SIGNAL \SW_8|saida[5]~13_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~22\ : std_logic;
SIGNAL \processador|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[6]~5_combout\ : std_logic;
SIGNAL \RAM1|ram~77feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~77_q\ : std_logic;
SIGNAL \RAM1|ram~45_q\ : std_logic;
SIGNAL \RAM1|ram~109feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~109_q\ : std_logic;
SIGNAL \RAM1|ram~141_q\ : std_logic;
SIGNAL \RAM1|ram~665_combout\ : std_logic;
SIGNAL \RAM1|ram~157_q\ : std_logic;
SIGNAL \RAM1|ram~189_q\ : std_logic;
SIGNAL \RAM1|ram~221_q\ : std_logic;
SIGNAL \RAM1|ram~253_q\ : std_logic;
SIGNAL \RAM1|ram~664_combout\ : std_logic;
SIGNAL \RAM1|ram~29_q\ : std_logic;
SIGNAL \RAM1|ram~61feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~61_q\ : std_logic;
SIGNAL \RAM1|ram~93_q\ : std_logic;
SIGNAL \RAM1|ram~125_q\ : std_logic;
SIGNAL \RAM1|ram~663_combout\ : std_logic;
SIGNAL \RAM1|ram~237_q\ : std_logic;
SIGNAL \RAM1|ram~269_q\ : std_logic;
SIGNAL \RAM1|ram~173_q\ : std_logic;
SIGNAL \RAM1|ram~205_q\ : std_logic;
SIGNAL \RAM1|ram~666_combout\ : std_logic;
SIGNAL \RAM1|ram~667_combout\ : std_logic;
SIGNAL \RAM1|ram~229_q\ : std_logic;
SIGNAL \RAM1|ram~213feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~213_q\ : std_logic;
SIGNAL \RAM1|ram~245_q\ : std_logic;
SIGNAL \RAM1|ram~261_q\ : std_logic;
SIGNAL \RAM1|ram~656_combout\ : std_logic;
SIGNAL \RAM1|ram~117_q\ : std_logic;
SIGNAL \RAM1|ram~101_q\ : std_logic;
SIGNAL \RAM1|ram~85feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~85_q\ : std_logic;
SIGNAL \RAM1|ram~133_q\ : std_logic;
SIGNAL \RAM1|ram~655_combout\ : std_logic;
SIGNAL \RAM1|ram~149_q\ : std_logic;
SIGNAL \RAM1|ram~181_q\ : std_logic;
SIGNAL \RAM1|ram~197_q\ : std_logic;
SIGNAL \RAM1|ram~165_q\ : std_logic;
SIGNAL \RAM1|ram~654_combout\ : std_logic;
SIGNAL \RAM1|ram~37_q\ : std_logic;
SIGNAL \RAM1|ram~53_q\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~69_q\ : std_logic;
SIGNAL \RAM1|ram~653_combout\ : std_logic;
SIGNAL \RAM1|ram~657_combout\ : std_logic;
SIGNAL \RAM1|ram~285_q\ : std_logic;
SIGNAL \RAM1|ram~413feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~413_q\ : std_logic;
SIGNAL \RAM1|ram~301_q\ : std_logic;
SIGNAL \RAM1|ram~429_q\ : std_logic;
SIGNAL \RAM1|ram~668_combout\ : std_logic;
SIGNAL \RAM1|ram~317_q\ : std_logic;
SIGNAL \RAM1|ram~445feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~445_q\ : std_logic;
SIGNAL \RAM1|ram~333_q\ : std_logic;
SIGNAL \RAM1|ram~461_q\ : std_logic;
SIGNAL \RAM1|ram~669_combout\ : std_logic;
SIGNAL \RAM1|ram~365_q\ : std_logic;
SIGNAL \RAM1|ram~477_q\ : std_logic;
SIGNAL \RAM1|ram~349feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~349_q\ : std_logic;
SIGNAL \RAM1|ram~493_q\ : std_logic;
SIGNAL \RAM1|ram~670_combout\ : std_logic;
SIGNAL \RAM1|ram~381_q\ : std_logic;
SIGNAL \RAM1|ram~397_q\ : std_logic;
SIGNAL \RAM1|ram~509feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~509_q\ : std_logic;
SIGNAL \RAM1|ram~525_q\ : std_logic;
SIGNAL \RAM1|ram~671_combout\ : std_logic;
SIGNAL \RAM1|ram~672_combout\ : std_logic;
SIGNAL \RAM1|ram~421_q\ : std_logic;
SIGNAL \RAM1|ram~437feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~437_q\ : std_logic;
SIGNAL \RAM1|ram~405_q\ : std_logic;
SIGNAL \RAM1|ram~453_q\ : std_logic;
SIGNAL \RAM1|ram~659_combout\ : std_logic;
SIGNAL \RAM1|ram~325_q\ : std_logic;
SIGNAL \RAM1|ram~277_q\ : std_logic;
SIGNAL \RAM1|ram~309feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~309_q\ : std_logic;
SIGNAL \RAM1|ram~293_q\ : std_logic;
SIGNAL \RAM1|ram~658_combout\ : std_logic;
SIGNAL \RAM1|ram~501_q\ : std_logic;
SIGNAL \RAM1|ram~469feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~469_q\ : std_logic;
SIGNAL \RAM1|ram~517_q\ : std_logic;
SIGNAL \RAM1|ram~485feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~485_q\ : std_logic;
SIGNAL \RAM1|ram~661_combout\ : std_logic;
SIGNAL \RAM1|ram~373_q\ : std_logic;
SIGNAL \RAM1|ram~357_q\ : std_logic;
SIGNAL \RAM1|ram~389_q\ : std_logic;
SIGNAL \RAM1|ram~341_q\ : std_logic;
SIGNAL \RAM1|ram~660_combout\ : std_logic;
SIGNAL \RAM1|ram~662_combout\ : std_logic;
SIGNAL \RAM1|ram~673_combout\ : std_logic;
SIGNAL \SW_8|saida[6]~14_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~22\ : std_logic;
SIGNAL \processador|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal11~1_combout\ : std_logic;
SIGNAL \processador|FLAG|DOUT~1_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \RAM1|ram~438_q\ : std_logic;
SIGNAL \RAM1|ram~198feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~198_q\ : std_logic;
SIGNAL \RAM1|ram~454feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~454_q\ : std_logic;
SIGNAL \RAM1|ram~182_q\ : std_logic;
SIGNAL \RAM1|ram~685_combout\ : std_logic;
SIGNAL \RAM1|ram~166_q\ : std_logic;
SIGNAL \RAM1|ram~406_q\ : std_logic;
SIGNAL \RAM1|ram~150_q\ : std_logic;
SIGNAL \RAM1|ram~422_q\ : std_logic;
SIGNAL \RAM1|ram~684_combout\ : std_logic;
SIGNAL \RAM1|ram~262_q\ : std_logic;
SIGNAL \RAM1|ram~246_q\ : std_logic;
SIGNAL \RAM1|ram~502_q\ : std_logic;
SIGNAL \RAM1|ram~518_q\ : std_logic;
SIGNAL \RAM1|ram~687_combout\ : std_logic;
SIGNAL \RAM1|ram~214feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~214_q\ : std_logic;
SIGNAL \RAM1|ram~470feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~470_q\ : std_logic;
SIGNAL \RAM1|ram~230_q\ : std_logic;
SIGNAL \RAM1|ram~486_q\ : std_logic;
SIGNAL \RAM1|ram~686_combout\ : std_logic;
SIGNAL \RAM1|ram~688_combout\ : std_logic;
SIGNAL \RAM1|ram~390_q\ : std_logic;
SIGNAL \RAM1|ram~134_q\ : std_logic;
SIGNAL \RAM1|ram~326feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~326_q\ : std_logic;
SIGNAL \RAM1|ram~70feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~70_q\ : std_logic;
SIGNAL \RAM1|ram~677_combout\ : std_logic;
SIGNAL \RAM1|ram~278_q\ : std_logic;
SIGNAL \RAM1|ram~86_q\ : std_logic;
SIGNAL \RAM1|ram~22feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~342_q\ : std_logic;
SIGNAL \RAM1|ram~674_combout\ : std_logic;
SIGNAL \RAM1|ram~118_q\ : std_logic;
SIGNAL \RAM1|ram~310feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~310_q\ : std_logic;
SIGNAL \RAM1|ram~54feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~54_q\ : std_logic;
SIGNAL \RAM1|ram~374_q\ : std_logic;
SIGNAL \RAM1|ram~675_combout\ : std_logic;
SIGNAL \RAM1|ram~38_q\ : std_logic;
SIGNAL \RAM1|ram~294_q\ : std_logic;
SIGNAL \RAM1|ram~102_q\ : std_logic;
SIGNAL \RAM1|ram~358_q\ : std_logic;
SIGNAL \RAM1|ram~676_combout\ : std_logic;
SIGNAL \RAM1|ram~678_combout\ : std_logic;
SIGNAL \RAM1|ram~174_q\ : std_logic;
SIGNAL \RAM1|ram~494_q\ : std_logic;
SIGNAL \RAM1|ram~430_q\ : std_logic;
SIGNAL \RAM1|ram~238_q\ : std_logic;
SIGNAL \RAM1|ram~691_combout\ : std_logic;
SIGNAL \RAM1|ram~206feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~206_q\ : std_logic;
SIGNAL \RAM1|ram~462feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~462_q\ : std_logic;
SIGNAL \RAM1|ram~270_q\ : std_logic;
SIGNAL \RAM1|ram~526_q\ : std_logic;
SIGNAL \RAM1|ram~692_combout\ : std_logic;
SIGNAL \RAM1|ram~510_q\ : std_logic;
SIGNAL \RAM1|ram~254_q\ : std_logic;
SIGNAL \RAM1|ram~446feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~446_q\ : std_logic;
SIGNAL \RAM1|ram~190_q\ : std_logic;
SIGNAL \RAM1|ram~690_combout\ : std_logic;
SIGNAL \RAM1|ram~414feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~414_q\ : std_logic;
SIGNAL \RAM1|ram~158feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~158_q\ : std_logic;
SIGNAL \RAM1|ram~222feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~222_q\ : std_logic;
SIGNAL \RAM1|ram~478_q\ : std_logic;
SIGNAL \RAM1|ram~689_combout\ : std_logic;
SIGNAL \RAM1|ram~693_combout\ : std_logic;
SIGNAL \RAM1|ram~62_q\ : std_logic;
SIGNAL \RAM1|ram~286_q\ : std_logic;
SIGNAL \RAM1|ram~30_q\ : std_logic;
SIGNAL \RAM1|ram~318_q\ : std_logic;
SIGNAL \RAM1|ram~679_combout\ : std_logic;
SIGNAL \RAM1|ram~366_q\ : std_logic;
SIGNAL \RAM1|ram~142_q\ : std_logic;
SIGNAL \RAM1|ram~398_q\ : std_logic;
SIGNAL \RAM1|ram~110_q\ : std_logic;
SIGNAL \RAM1|ram~682_combout\ : std_logic;
SIGNAL \RAM1|ram~302_q\ : std_logic;
SIGNAL \RAM1|ram~78_q\ : std_logic;
SIGNAL \RAM1|ram~46_q\ : std_logic;
SIGNAL \RAM1|ram~334_q\ : std_logic;
SIGNAL \RAM1|ram~680_combout\ : std_logic;
SIGNAL \RAM1|ram~126_q\ : std_logic;
SIGNAL \RAM1|ram~350_q\ : std_logic;
SIGNAL \RAM1|ram~94_q\ : std_logic;
SIGNAL \RAM1|ram~382_q\ : std_logic;
SIGNAL \RAM1|ram~681_combout\ : std_logic;
SIGNAL \RAM1|ram~683_combout\ : std_logic;
SIGNAL \RAM1|ram~694_combout\ : std_logic;
SIGNAL \SW_8|saida[7]~15_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~26\ : std_logic;
SIGNAL \processador|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[7]~4_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~26\ : std_logic;
SIGNAL \processador|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \processador|FLAG|DOUT~0_combout\ : std_logic;
SIGNAL \processador|FLAG|DOUT~q\ : std_logic;
SIGNAL \processador|MUX2|Equal1~0_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[3]~3_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \processador|MUX2|Equal2~0_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[1]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \decoderBloco|Equal7~0_combout\ : std_logic;
SIGNAL \RAM1|dado_out~0_combout\ : std_logic;
SIGNAL \SW_0_7|saida[0]~6_combout\ : std_logic;
SIGNAL \SW_0_7|saida[0]~7_combout\ : std_logic;
SIGNAL \decoderBloco|Equal2~0_combout\ : std_logic;
SIGNAL \logica_LED|comb~0_combout\ : std_logic;
SIGNAL \logica_LED|REG_LEDS|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \logica_LED|REG_LEDS|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \logica_LED|REG_LEDS|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|comb~0_combout\ : std_logic;
SIGNAL \logica_LED|FlipFlop1|DOUT~0_combout\ : std_logic;
SIGNAL \logica_LED|FlipFlop1|DOUT~q\ : std_logic;
SIGNAL \logica_LED|FlipFlop2|DOUT~0_combout\ : std_logic;
SIGNAL \logica_LED|FlipFlop2|DOUT~q\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal11~4_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida[10]~4_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal11~5_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|comb~1_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|comb~2_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|comb~3_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \processador|REG_RET|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \processador|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \logica_LED|REG_LEDS|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processador|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \ALT_INV_comb~8_combout\ : std_logic;
SIGNAL \ALT_INV_comb~7_combout\ : std_logic;
SIGNAL \decoderBloco|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \processador|FLAG|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~29_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~28_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~27_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~26_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~25_combout\ : std_logic;
SIGNAL \ALT_INV_RESET_511~combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~821_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~819_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~817_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~815_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~813_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~811_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~809_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~807_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~805_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~803_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~801_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~799_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~797_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~795_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~793_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~791_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~789_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~787_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~785_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~783_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~781_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~779_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~777_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~775_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~773_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~771_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~769_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~767_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~765_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~763_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~761_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~759_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~757_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~755_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~753_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~751_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~749_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~747_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~745_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~743_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~741_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~739_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~737_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~735_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~733_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~731_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~729_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~727_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~725_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~723_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~721_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~719_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~717_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~715_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~713_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~711_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~709_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~707_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~705_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~703_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~701_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~699_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~697_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~695_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~24_combout\ : std_logic;
SIGNAL \SW_0_7|ALT_INV_saida[0]~8_combout\ : std_logic;
SIGNAL \gravar:detectorSub3|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \SW_0_7|ALT_INV_saida[0]~6_combout\ : std_logic;
SIGNAL \SW_8|ALT_INV_saida[7]~15_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~694_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~693_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~692_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~526_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~270_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~462_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~206_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~691_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~494_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~238_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~430_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~174_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~690_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~510_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~254_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~446_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~190_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~689_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~478_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~222_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~414_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~158_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~688_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~687_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~518_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~262_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~502_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~246_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~686_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~486_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~230_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~470_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~214_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~685_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~454_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~198_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~438_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~182_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~684_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~422_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~166_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~406_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~150_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~683_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~682_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~398_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~142_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~366_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~110_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~681_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~382_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~126_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~350_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~94_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~680_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~334_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~302_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~679_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~318_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~286_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~678_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~677_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~390_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~134_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~326_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~676_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~358_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~102_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~294_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~675_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~374_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~118_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~310_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~674_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~342_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~86_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~278_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \SW_8|ALT_INV_saida[6]~14_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~673_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~672_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~671_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~525_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~397_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~509_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~381_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~670_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~493_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~365_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~477_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~349_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~669_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~461_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~333_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~445_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~317_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~668_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~429_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~301_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~413_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~285_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~667_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~666_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~269_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~237_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~205_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~173_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~665_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~141_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~109_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~664_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~253_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~221_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~189_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~157_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~663_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~125_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~93_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~662_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~661_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~517_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~501_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~485_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~469_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~660_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~389_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~373_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~357_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~341_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~659_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~453_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~437_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~421_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~405_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~658_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~325_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~309_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~293_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~277_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~657_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~656_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~261_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~245_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~229_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~213_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~655_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~133_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~117_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~101_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~85_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~654_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~197_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~181_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~165_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~149_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~653_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \SW_8|ALT_INV_saida[5]~13_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~652_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~651_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~650_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~524_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~268_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~516_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~260_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~649_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~396_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~140_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~388_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~132_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~648_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~460_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~204_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~452_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~196_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~647_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~332_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~324_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~646_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~645_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~508_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~252_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~380_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~124_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~644_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~500_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~244_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~372_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~116_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~643_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~444_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~188_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~316_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~642_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~436_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~180_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~308_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~641_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~640_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~492_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~236_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~364_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~108_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~639_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~484_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~228_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~356_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~100_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~638_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~428_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~172_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~300_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~637_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~420_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~164_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~292_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~636_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~635_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~476_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~220_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~348_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~92_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~634_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~468_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~212_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~340_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~633_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~412_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~156_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~284_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~632_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~404_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~148_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~276_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \SW_8|ALT_INV_saida[4]~12_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~631_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~630_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~629_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~523_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~515_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~459_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~451_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~628_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~491_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~483_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~427_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~419_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~627_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~507_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~499_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~443_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~435_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~626_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~475_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~467_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~411_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~403_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~625_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~624_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~267_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~259_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~235_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~227_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~623_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~251_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~243_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~219_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~211_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~622_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~203_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~195_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~171_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~163_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~621_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~187_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~179_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~155_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~147_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~620_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~619_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~395_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~387_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~379_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~371_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~618_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~363_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~355_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~347_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~339_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~617_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~331_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~323_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~315_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~307_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~616_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~299_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~291_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~283_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~275_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~615_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~614_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~139_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~131_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~613_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~107_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~99_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~612_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~123_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~115_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~611_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~91_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \SW_8|ALT_INV_saida[3]~11_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~610_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~609_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~608_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~522_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~394_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~490_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~362_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~607_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~506_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~378_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~474_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~346_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~606_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~458_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~330_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~426_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~298_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~605_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~442_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~314_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~410_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~282_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~604_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~603_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~266_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~234_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~202_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~170_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~602_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~138_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~106_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~601_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~250_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~218_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~186_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~154_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~600_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~122_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~90_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~599_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~598_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~514_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~482_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~498_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~466_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~597_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~386_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~354_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~370_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~338_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~596_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~450_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~418_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~434_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~402_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~595_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~322_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~290_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~306_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~274_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~594_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~593_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~258_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~226_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~242_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~210_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~592_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~130_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~98_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~114_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~591_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~194_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~162_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~178_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~146_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~590_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \SW_8|ALT_INV_saida[2]~10_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~589_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~588_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~587_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~521_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~513_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~393_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~385_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~586_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~505_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~497_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~377_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~369_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~585_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~457_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~449_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~329_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~321_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~584_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~441_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~433_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~313_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~305_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~583_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~582_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~265_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~137_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~249_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~121_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~581_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~257_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~129_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~241_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~113_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~580_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~201_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~185_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~579_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~193_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~177_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~578_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~577_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~489_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~473_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~425_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~409_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~576_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~481_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~465_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~417_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~401_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~575_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~361_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~345_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~297_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~281_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~574_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~353_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~337_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~289_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~273_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~573_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~572_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~233_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~105_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~217_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~89_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~571_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~225_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~209_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~570_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~169_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~153_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~569_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~161_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~145_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \SW_8|ALT_INV_saida[1]~9_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~568_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~567_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~566_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~520_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~512_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~392_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~384_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~488_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~480_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~360_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~352_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~564_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~456_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~448_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~328_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~320_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~563_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~424_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~416_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~296_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~288_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~562_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~264_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~136_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~200_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~560_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~256_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~128_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~192_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~232_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~104_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~168_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~558_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~224_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~96_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~160_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~504_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~376_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~472_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~344_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~496_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~368_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~464_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~336_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~440_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~312_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~408_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~280_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~432_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~304_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~400_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~272_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~248_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~240_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~120_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~112_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~216_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~208_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~88_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~184_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~176_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~152_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~144_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \SW_8|ALT_INV_saida[1]~8_combout\ : std_logic;
SIGNAL \ALT_INV_comb~6_combout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \SW_0_7|ALT_INV_saida[0]~5_combout\ : std_logic;
SIGNAL \SW_0_7|ALT_INV_saida[0]~4_combout\ : std_logic;
SIGNAL \SW_0_7|ALT_INV_saida[0]~3_combout\ : std_logic;
SIGNAL \ALT_INV_RESET_511~0_combout\ : std_logic;
SIGNAL \SW_0_7|ALT_INV_saida[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_comb~5_combout\ : std_logic;
SIGNAL \FF_DEBOUNCER|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \SW_8|ALT_INV_saida[0]~7_combout\ : std_logic;
SIGNAL \SW_0_7|ALT_INV_saida[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_comb~4_combout\ : std_logic;
SIGNAL \ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~519_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~487_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~455_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~423_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~511_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~479_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~447_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~415_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~503_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~471_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~439_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~407_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~495_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~463_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~431_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~399_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~391_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~383_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~375_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~367_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~359_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~351_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~343_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~335_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~327_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~319_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~311_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~303_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~295_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~287_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~279_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~271_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~263_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~231_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~199_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~167_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~255_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~223_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~191_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~159_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~247_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~215_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~183_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~151_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~239_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~207_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~175_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~143_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~135_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~127_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~119_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~111_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~103_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~95_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~87_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \decoderBloco|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \processador|REG_RET|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \processador|MUX2|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \processador|MUX2|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|REG4|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~23_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \decoderBloco|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \processador|FLAG|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_Equal11~3_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_Equal11~2_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_Equal11~1_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_saida[1]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_Equal11~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \processador|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \logica_LED|FlipFlop2|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \logica_LED|FlipFlop1|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
ww_FPGA_RESET_N <= FPGA_RESET_N;
PC_OUT <= ww_PC_OUT;
LEDR <= ww_LEDR;
REGA_OUT <= ww_REGA_OUT;
Palavra <= ww_Palavra;
EQUAL_FLAG <= ww_EQUAL_FLAG;
HabilitaRAM <= ww_HabilitaRAM;
MEM_ADDRESS <= ww_MEM_ADDRESS;
ADD_OUT <= ww_ADD_OUT;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[8]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[7]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[6]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[5]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[4]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[3]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[2]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[0]~DUPLICATE_q\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_FPGA_RESET_N~input_o\ <= NOT \FPGA_RESET_N~input_o\;
\ALT_INV_comb~8_combout\ <= NOT \comb~8_combout\;
\ALT_INV_comb~7_combout\ <= NOT \comb~7_combout\;
\decoderBloco|ALT_INV_Equal2~1_combout\ <= NOT \decoderBloco|Equal2~1_combout\;
\processador|FLAG|ALT_INV_DOUT~1_combout\ <= NOT \processador|FLAG|DOUT~1_combout\;
\gravar:detectorSub0|ALT_INV_saidaQ~q\ <= NOT \gravar:detectorSub0|saidaQ~q\;
\ROM1|ALT_INV_memROM~29_combout\ <= NOT \ROM1|memROM~29_combout\;
\ROM1|ALT_INV_memROM~28_combout\ <= NOT \ROM1|memROM~28_combout\;
\ROM1|ALT_INV_memROM~27_combout\ <= NOT \ROM1|memROM~27_combout\;
\ROM1|ALT_INV_memROM~26_combout\ <= NOT \ROM1|memROM~26_combout\;
\ROM1|ALT_INV_memROM~25_combout\ <= NOT \ROM1|memROM~25_combout\;
\ALT_INV_RESET_511~combout\ <= NOT \RESET_511~combout\;
\RAM1|ALT_INV_ram~821_combout\ <= NOT \RAM1|ram~821_combout\;
\RAM1|ALT_INV_ram~819_combout\ <= NOT \RAM1|ram~819_combout\;
\RAM1|ALT_INV_ram~817_combout\ <= NOT \RAM1|ram~817_combout\;
\RAM1|ALT_INV_ram~815_combout\ <= NOT \RAM1|ram~815_combout\;
\RAM1|ALT_INV_ram~813_combout\ <= NOT \RAM1|ram~813_combout\;
\RAM1|ALT_INV_ram~811_combout\ <= NOT \RAM1|ram~811_combout\;
\RAM1|ALT_INV_ram~809_combout\ <= NOT \RAM1|ram~809_combout\;
\RAM1|ALT_INV_ram~807_combout\ <= NOT \RAM1|ram~807_combout\;
\RAM1|ALT_INV_ram~805_combout\ <= NOT \RAM1|ram~805_combout\;
\RAM1|ALT_INV_ram~803_combout\ <= NOT \RAM1|ram~803_combout\;
\RAM1|ALT_INV_ram~801_combout\ <= NOT \RAM1|ram~801_combout\;
\RAM1|ALT_INV_ram~799_combout\ <= NOT \RAM1|ram~799_combout\;
\RAM1|ALT_INV_ram~797_combout\ <= NOT \RAM1|ram~797_combout\;
\RAM1|ALT_INV_ram~795_combout\ <= NOT \RAM1|ram~795_combout\;
\RAM1|ALT_INV_ram~793_combout\ <= NOT \RAM1|ram~793_combout\;
\RAM1|ALT_INV_ram~791_combout\ <= NOT \RAM1|ram~791_combout\;
\RAM1|ALT_INV_ram~789_combout\ <= NOT \RAM1|ram~789_combout\;
\RAM1|ALT_INV_ram~787_combout\ <= NOT \RAM1|ram~787_combout\;
\RAM1|ALT_INV_ram~785_combout\ <= NOT \RAM1|ram~785_combout\;
\RAM1|ALT_INV_ram~783_combout\ <= NOT \RAM1|ram~783_combout\;
\RAM1|ALT_INV_ram~781_combout\ <= NOT \RAM1|ram~781_combout\;
\RAM1|ALT_INV_ram~779_combout\ <= NOT \RAM1|ram~779_combout\;
\RAM1|ALT_INV_ram~777_combout\ <= NOT \RAM1|ram~777_combout\;
\RAM1|ALT_INV_ram~775_combout\ <= NOT \RAM1|ram~775_combout\;
\RAM1|ALT_INV_ram~773_combout\ <= NOT \RAM1|ram~773_combout\;
\RAM1|ALT_INV_ram~771_combout\ <= NOT \RAM1|ram~771_combout\;
\RAM1|ALT_INV_ram~769_combout\ <= NOT \RAM1|ram~769_combout\;
\RAM1|ALT_INV_ram~767_combout\ <= NOT \RAM1|ram~767_combout\;
\RAM1|ALT_INV_ram~765_combout\ <= NOT \RAM1|ram~765_combout\;
\RAM1|ALT_INV_ram~763_combout\ <= NOT \RAM1|ram~763_combout\;
\RAM1|ALT_INV_ram~761_combout\ <= NOT \RAM1|ram~761_combout\;
\RAM1|ALT_INV_ram~759_combout\ <= NOT \RAM1|ram~759_combout\;
\RAM1|ALT_INV_ram~757_combout\ <= NOT \RAM1|ram~757_combout\;
\RAM1|ALT_INV_ram~755_combout\ <= NOT \RAM1|ram~755_combout\;
\RAM1|ALT_INV_ram~753_combout\ <= NOT \RAM1|ram~753_combout\;
\RAM1|ALT_INV_ram~751_combout\ <= NOT \RAM1|ram~751_combout\;
\RAM1|ALT_INV_ram~749_combout\ <= NOT \RAM1|ram~749_combout\;
\RAM1|ALT_INV_ram~747_combout\ <= NOT \RAM1|ram~747_combout\;
\RAM1|ALT_INV_ram~745_combout\ <= NOT \RAM1|ram~745_combout\;
\RAM1|ALT_INV_ram~743_combout\ <= NOT \RAM1|ram~743_combout\;
\RAM1|ALT_INV_ram~741_combout\ <= NOT \RAM1|ram~741_combout\;
\RAM1|ALT_INV_ram~739_combout\ <= NOT \RAM1|ram~739_combout\;
\RAM1|ALT_INV_ram~737_combout\ <= NOT \RAM1|ram~737_combout\;
\RAM1|ALT_INV_ram~735_combout\ <= NOT \RAM1|ram~735_combout\;
\RAM1|ALT_INV_ram~733_combout\ <= NOT \RAM1|ram~733_combout\;
\RAM1|ALT_INV_ram~731_combout\ <= NOT \RAM1|ram~731_combout\;
\RAM1|ALT_INV_ram~729_combout\ <= NOT \RAM1|ram~729_combout\;
\RAM1|ALT_INV_ram~727_combout\ <= NOT \RAM1|ram~727_combout\;
\RAM1|ALT_INV_ram~725_combout\ <= NOT \RAM1|ram~725_combout\;
\RAM1|ALT_INV_ram~723_combout\ <= NOT \RAM1|ram~723_combout\;
\RAM1|ALT_INV_ram~721_combout\ <= NOT \RAM1|ram~721_combout\;
\RAM1|ALT_INV_ram~719_combout\ <= NOT \RAM1|ram~719_combout\;
\RAM1|ALT_INV_ram~717_combout\ <= NOT \RAM1|ram~717_combout\;
\RAM1|ALT_INV_ram~715_combout\ <= NOT \RAM1|ram~715_combout\;
\RAM1|ALT_INV_ram~713_combout\ <= NOT \RAM1|ram~713_combout\;
\RAM1|ALT_INV_ram~711_combout\ <= NOT \RAM1|ram~711_combout\;
\RAM1|ALT_INV_ram~709_combout\ <= NOT \RAM1|ram~709_combout\;
\RAM1|ALT_INV_ram~707_combout\ <= NOT \RAM1|ram~707_combout\;
\RAM1|ALT_INV_ram~705_combout\ <= NOT \RAM1|ram~705_combout\;
\RAM1|ALT_INV_ram~703_combout\ <= NOT \RAM1|ram~703_combout\;
\RAM1|ALT_INV_ram~701_combout\ <= NOT \RAM1|ram~701_combout\;
\RAM1|ALT_INV_ram~699_combout\ <= NOT \RAM1|ram~699_combout\;
\RAM1|ALT_INV_ram~697_combout\ <= NOT \RAM1|ram~697_combout\;
\RAM1|ALT_INV_ram~695_combout\ <= NOT \RAM1|ram~695_combout\;
\ROM1|ALT_INV_memROM~24_combout\ <= NOT \ROM1|memROM~24_combout\;
\SW_0_7|ALT_INV_saida[0]~8_combout\ <= NOT \SW_0_7|saida[0]~8_combout\;
\gravar:detectorSub3|ALT_INV_saidaQ~q\ <= NOT \gravar:detectorSub3|saidaQ~q\;
\SW_0_7|ALT_INV_saida[0]~6_combout\ <= NOT \SW_0_7|saida[0]~6_combout\;
\SW_8|ALT_INV_saida[7]~15_combout\ <= NOT \SW_8|saida[7]~15_combout\;
\RAM1|ALT_INV_ram~694_combout\ <= NOT \RAM1|ram~694_combout\;
\RAM1|ALT_INV_ram~693_combout\ <= NOT \RAM1|ram~693_combout\;
\RAM1|ALT_INV_ram~692_combout\ <= NOT \RAM1|ram~692_combout\;
\RAM1|ALT_INV_ram~526_q\ <= NOT \RAM1|ram~526_q\;
\RAM1|ALT_INV_ram~270_q\ <= NOT \RAM1|ram~270_q\;
\RAM1|ALT_INV_ram~462_q\ <= NOT \RAM1|ram~462_q\;
\RAM1|ALT_INV_ram~206_q\ <= NOT \RAM1|ram~206_q\;
\RAM1|ALT_INV_ram~691_combout\ <= NOT \RAM1|ram~691_combout\;
\RAM1|ALT_INV_ram~494_q\ <= NOT \RAM1|ram~494_q\;
\RAM1|ALT_INV_ram~238_q\ <= NOT \RAM1|ram~238_q\;
\RAM1|ALT_INV_ram~430_q\ <= NOT \RAM1|ram~430_q\;
\RAM1|ALT_INV_ram~174_q\ <= NOT \RAM1|ram~174_q\;
\RAM1|ALT_INV_ram~690_combout\ <= NOT \RAM1|ram~690_combout\;
\RAM1|ALT_INV_ram~510_q\ <= NOT \RAM1|ram~510_q\;
\RAM1|ALT_INV_ram~254_q\ <= NOT \RAM1|ram~254_q\;
\RAM1|ALT_INV_ram~446_q\ <= NOT \RAM1|ram~446_q\;
\RAM1|ALT_INV_ram~190_q\ <= NOT \RAM1|ram~190_q\;
\RAM1|ALT_INV_ram~689_combout\ <= NOT \RAM1|ram~689_combout\;
\RAM1|ALT_INV_ram~478_q\ <= NOT \RAM1|ram~478_q\;
\RAM1|ALT_INV_ram~222_q\ <= NOT \RAM1|ram~222_q\;
\RAM1|ALT_INV_ram~414_q\ <= NOT \RAM1|ram~414_q\;
\RAM1|ALT_INV_ram~158_q\ <= NOT \RAM1|ram~158_q\;
\RAM1|ALT_INV_ram~688_combout\ <= NOT \RAM1|ram~688_combout\;
\RAM1|ALT_INV_ram~687_combout\ <= NOT \RAM1|ram~687_combout\;
\RAM1|ALT_INV_ram~518_q\ <= NOT \RAM1|ram~518_q\;
\RAM1|ALT_INV_ram~262_q\ <= NOT \RAM1|ram~262_q\;
\RAM1|ALT_INV_ram~502_q\ <= NOT \RAM1|ram~502_q\;
\RAM1|ALT_INV_ram~246_q\ <= NOT \RAM1|ram~246_q\;
\RAM1|ALT_INV_ram~686_combout\ <= NOT \RAM1|ram~686_combout\;
\RAM1|ALT_INV_ram~486_q\ <= NOT \RAM1|ram~486_q\;
\RAM1|ALT_INV_ram~230_q\ <= NOT \RAM1|ram~230_q\;
\RAM1|ALT_INV_ram~470_q\ <= NOT \RAM1|ram~470_q\;
\RAM1|ALT_INV_ram~214_q\ <= NOT \RAM1|ram~214_q\;
\RAM1|ALT_INV_ram~685_combout\ <= NOT \RAM1|ram~685_combout\;
\RAM1|ALT_INV_ram~454_q\ <= NOT \RAM1|ram~454_q\;
\RAM1|ALT_INV_ram~198_q\ <= NOT \RAM1|ram~198_q\;
\RAM1|ALT_INV_ram~438_q\ <= NOT \RAM1|ram~438_q\;
\RAM1|ALT_INV_ram~182_q\ <= NOT \RAM1|ram~182_q\;
\RAM1|ALT_INV_ram~684_combout\ <= NOT \RAM1|ram~684_combout\;
\RAM1|ALT_INV_ram~422_q\ <= NOT \RAM1|ram~422_q\;
\RAM1|ALT_INV_ram~166_q\ <= NOT \RAM1|ram~166_q\;
\RAM1|ALT_INV_ram~406_q\ <= NOT \RAM1|ram~406_q\;
\RAM1|ALT_INV_ram~150_q\ <= NOT \RAM1|ram~150_q\;
\RAM1|ALT_INV_ram~683_combout\ <= NOT \RAM1|ram~683_combout\;
\RAM1|ALT_INV_ram~682_combout\ <= NOT \RAM1|ram~682_combout\;
\RAM1|ALT_INV_ram~398_q\ <= NOT \RAM1|ram~398_q\;
\RAM1|ALT_INV_ram~142_q\ <= NOT \RAM1|ram~142_q\;
\RAM1|ALT_INV_ram~366_q\ <= NOT \RAM1|ram~366_q\;
\RAM1|ALT_INV_ram~110_q\ <= NOT \RAM1|ram~110_q\;
\RAM1|ALT_INV_ram~681_combout\ <= NOT \RAM1|ram~681_combout\;
\RAM1|ALT_INV_ram~382_q\ <= NOT \RAM1|ram~382_q\;
\RAM1|ALT_INV_ram~126_q\ <= NOT \RAM1|ram~126_q\;
\RAM1|ALT_INV_ram~350_q\ <= NOT \RAM1|ram~350_q\;
\RAM1|ALT_INV_ram~94_q\ <= NOT \RAM1|ram~94_q\;
\RAM1|ALT_INV_ram~680_combout\ <= NOT \RAM1|ram~680_combout\;
\RAM1|ALT_INV_ram~334_q\ <= NOT \RAM1|ram~334_q\;
\RAM1|ALT_INV_ram~78_q\ <= NOT \RAM1|ram~78_q\;
\RAM1|ALT_INV_ram~302_q\ <= NOT \RAM1|ram~302_q\;
\RAM1|ALT_INV_ram~46_q\ <= NOT \RAM1|ram~46_q\;
\RAM1|ALT_INV_ram~679_combout\ <= NOT \RAM1|ram~679_combout\;
\RAM1|ALT_INV_ram~318_q\ <= NOT \RAM1|ram~318_q\;
\RAM1|ALT_INV_ram~62_q\ <= NOT \RAM1|ram~62_q\;
\RAM1|ALT_INV_ram~286_q\ <= NOT \RAM1|ram~286_q\;
\RAM1|ALT_INV_ram~30_q\ <= NOT \RAM1|ram~30_q\;
\RAM1|ALT_INV_ram~678_combout\ <= NOT \RAM1|ram~678_combout\;
\RAM1|ALT_INV_ram~677_combout\ <= NOT \RAM1|ram~677_combout\;
\RAM1|ALT_INV_ram~390_q\ <= NOT \RAM1|ram~390_q\;
\RAM1|ALT_INV_ram~134_q\ <= NOT \RAM1|ram~134_q\;
\RAM1|ALT_INV_ram~326_q\ <= NOT \RAM1|ram~326_q\;
\RAM1|ALT_INV_ram~70_q\ <= NOT \RAM1|ram~70_q\;
\RAM1|ALT_INV_ram~676_combout\ <= NOT \RAM1|ram~676_combout\;
\RAM1|ALT_INV_ram~358_q\ <= NOT \RAM1|ram~358_q\;
\RAM1|ALT_INV_ram~102_q\ <= NOT \RAM1|ram~102_q\;
\RAM1|ALT_INV_ram~294_q\ <= NOT \RAM1|ram~294_q\;
\RAM1|ALT_INV_ram~38_q\ <= NOT \RAM1|ram~38_q\;
\RAM1|ALT_INV_ram~675_combout\ <= NOT \RAM1|ram~675_combout\;
\RAM1|ALT_INV_ram~374_q\ <= NOT \RAM1|ram~374_q\;
\RAM1|ALT_INV_ram~118_q\ <= NOT \RAM1|ram~118_q\;
\RAM1|ALT_INV_ram~310_q\ <= NOT \RAM1|ram~310_q\;
\RAM1|ALT_INV_ram~54_q\ <= NOT \RAM1|ram~54_q\;
\RAM1|ALT_INV_ram~674_combout\ <= NOT \RAM1|ram~674_combout\;
\RAM1|ALT_INV_ram~342_q\ <= NOT \RAM1|ram~342_q\;
\RAM1|ALT_INV_ram~86_q\ <= NOT \RAM1|ram~86_q\;
\RAM1|ALT_INV_ram~278_q\ <= NOT \RAM1|ram~278_q\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\SW_8|ALT_INV_saida[6]~14_combout\ <= NOT \SW_8|saida[6]~14_combout\;
\RAM1|ALT_INV_ram~673_combout\ <= NOT \RAM1|ram~673_combout\;
\RAM1|ALT_INV_ram~672_combout\ <= NOT \RAM1|ram~672_combout\;
\RAM1|ALT_INV_ram~671_combout\ <= NOT \RAM1|ram~671_combout\;
\RAM1|ALT_INV_ram~525_q\ <= NOT \RAM1|ram~525_q\;
\RAM1|ALT_INV_ram~397_q\ <= NOT \RAM1|ram~397_q\;
\RAM1|ALT_INV_ram~509_q\ <= NOT \RAM1|ram~509_q\;
\RAM1|ALT_INV_ram~381_q\ <= NOT \RAM1|ram~381_q\;
\RAM1|ALT_INV_ram~670_combout\ <= NOT \RAM1|ram~670_combout\;
\RAM1|ALT_INV_ram~493_q\ <= NOT \RAM1|ram~493_q\;
\RAM1|ALT_INV_ram~365_q\ <= NOT \RAM1|ram~365_q\;
\RAM1|ALT_INV_ram~477_q\ <= NOT \RAM1|ram~477_q\;
\RAM1|ALT_INV_ram~349_q\ <= NOT \RAM1|ram~349_q\;
\RAM1|ALT_INV_ram~669_combout\ <= NOT \RAM1|ram~669_combout\;
\RAM1|ALT_INV_ram~461_q\ <= NOT \RAM1|ram~461_q\;
\RAM1|ALT_INV_ram~333_q\ <= NOT \RAM1|ram~333_q\;
\RAM1|ALT_INV_ram~445_q\ <= NOT \RAM1|ram~445_q\;
\RAM1|ALT_INV_ram~317_q\ <= NOT \RAM1|ram~317_q\;
\RAM1|ALT_INV_ram~668_combout\ <= NOT \RAM1|ram~668_combout\;
\RAM1|ALT_INV_ram~429_q\ <= NOT \RAM1|ram~429_q\;
\RAM1|ALT_INV_ram~301_q\ <= NOT \RAM1|ram~301_q\;
\RAM1|ALT_INV_ram~413_q\ <= NOT \RAM1|ram~413_q\;
\RAM1|ALT_INV_ram~285_q\ <= NOT \RAM1|ram~285_q\;
\RAM1|ALT_INV_ram~667_combout\ <= NOT \RAM1|ram~667_combout\;
\RAM1|ALT_INV_ram~666_combout\ <= NOT \RAM1|ram~666_combout\;
\RAM1|ALT_INV_ram~269_q\ <= NOT \RAM1|ram~269_q\;
\RAM1|ALT_INV_ram~237_q\ <= NOT \RAM1|ram~237_q\;
\RAM1|ALT_INV_ram~205_q\ <= NOT \RAM1|ram~205_q\;
\RAM1|ALT_INV_ram~173_q\ <= NOT \RAM1|ram~173_q\;
\RAM1|ALT_INV_ram~665_combout\ <= NOT \RAM1|ram~665_combout\;
\RAM1|ALT_INV_ram~141_q\ <= NOT \RAM1|ram~141_q\;
\RAM1|ALT_INV_ram~109_q\ <= NOT \RAM1|ram~109_q\;
\RAM1|ALT_INV_ram~77_q\ <= NOT \RAM1|ram~77_q\;
\RAM1|ALT_INV_ram~45_q\ <= NOT \RAM1|ram~45_q\;
\RAM1|ALT_INV_ram~664_combout\ <= NOT \RAM1|ram~664_combout\;
\RAM1|ALT_INV_ram~253_q\ <= NOT \RAM1|ram~253_q\;
\RAM1|ALT_INV_ram~221_q\ <= NOT \RAM1|ram~221_q\;
\RAM1|ALT_INV_ram~189_q\ <= NOT \RAM1|ram~189_q\;
\RAM1|ALT_INV_ram~157_q\ <= NOT \RAM1|ram~157_q\;
\RAM1|ALT_INV_ram~663_combout\ <= NOT \RAM1|ram~663_combout\;
\RAM1|ALT_INV_ram~125_q\ <= NOT \RAM1|ram~125_q\;
\RAM1|ALT_INV_ram~93_q\ <= NOT \RAM1|ram~93_q\;
\RAM1|ALT_INV_ram~61_q\ <= NOT \RAM1|ram~61_q\;
\RAM1|ALT_INV_ram~29_q\ <= NOT \RAM1|ram~29_q\;
\RAM1|ALT_INV_ram~662_combout\ <= NOT \RAM1|ram~662_combout\;
\RAM1|ALT_INV_ram~661_combout\ <= NOT \RAM1|ram~661_combout\;
\RAM1|ALT_INV_ram~517_q\ <= NOT \RAM1|ram~517_q\;
\RAM1|ALT_INV_ram~501_q\ <= NOT \RAM1|ram~501_q\;
\RAM1|ALT_INV_ram~485_q\ <= NOT \RAM1|ram~485_q\;
\RAM1|ALT_INV_ram~469_q\ <= NOT \RAM1|ram~469_q\;
\RAM1|ALT_INV_ram~660_combout\ <= NOT \RAM1|ram~660_combout\;
\RAM1|ALT_INV_ram~389_q\ <= NOT \RAM1|ram~389_q\;
\RAM1|ALT_INV_ram~373_q\ <= NOT \RAM1|ram~373_q\;
\RAM1|ALT_INV_ram~357_q\ <= NOT \RAM1|ram~357_q\;
\RAM1|ALT_INV_ram~341_q\ <= NOT \RAM1|ram~341_q\;
\RAM1|ALT_INV_ram~659_combout\ <= NOT \RAM1|ram~659_combout\;
\RAM1|ALT_INV_ram~453_q\ <= NOT \RAM1|ram~453_q\;
\RAM1|ALT_INV_ram~437_q\ <= NOT \RAM1|ram~437_q\;
\RAM1|ALT_INV_ram~421_q\ <= NOT \RAM1|ram~421_q\;
\RAM1|ALT_INV_ram~405_q\ <= NOT \RAM1|ram~405_q\;
\RAM1|ALT_INV_ram~658_combout\ <= NOT \RAM1|ram~658_combout\;
\RAM1|ALT_INV_ram~325_q\ <= NOT \RAM1|ram~325_q\;
\RAM1|ALT_INV_ram~309_q\ <= NOT \RAM1|ram~309_q\;
\RAM1|ALT_INV_ram~293_q\ <= NOT \RAM1|ram~293_q\;
\RAM1|ALT_INV_ram~277_q\ <= NOT \RAM1|ram~277_q\;
\RAM1|ALT_INV_ram~657_combout\ <= NOT \RAM1|ram~657_combout\;
\RAM1|ALT_INV_ram~656_combout\ <= NOT \RAM1|ram~656_combout\;
\RAM1|ALT_INV_ram~261_q\ <= NOT \RAM1|ram~261_q\;
\RAM1|ALT_INV_ram~245_q\ <= NOT \RAM1|ram~245_q\;
\RAM1|ALT_INV_ram~229_q\ <= NOT \RAM1|ram~229_q\;
\RAM1|ALT_INV_ram~213_q\ <= NOT \RAM1|ram~213_q\;
\RAM1|ALT_INV_ram~655_combout\ <= NOT \RAM1|ram~655_combout\;
\RAM1|ALT_INV_ram~133_q\ <= NOT \RAM1|ram~133_q\;
\RAM1|ALT_INV_ram~117_q\ <= NOT \RAM1|ram~117_q\;
\RAM1|ALT_INV_ram~101_q\ <= NOT \RAM1|ram~101_q\;
\RAM1|ALT_INV_ram~85_q\ <= NOT \RAM1|ram~85_q\;
\RAM1|ALT_INV_ram~654_combout\ <= NOT \RAM1|ram~654_combout\;
\RAM1|ALT_INV_ram~197_q\ <= NOT \RAM1|ram~197_q\;
\RAM1|ALT_INV_ram~181_q\ <= NOT \RAM1|ram~181_q\;
\RAM1|ALT_INV_ram~165_q\ <= NOT \RAM1|ram~165_q\;
\RAM1|ALT_INV_ram~149_q\ <= NOT \RAM1|ram~149_q\;
\RAM1|ALT_INV_ram~653_combout\ <= NOT \RAM1|ram~653_combout\;
\RAM1|ALT_INV_ram~69_q\ <= NOT \RAM1|ram~69_q\;
\RAM1|ALT_INV_ram~53_q\ <= NOT \RAM1|ram~53_q\;
\RAM1|ALT_INV_ram~37_q\ <= NOT \RAM1|ram~37_q\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\SW_8|ALT_INV_saida[5]~13_combout\ <= NOT \SW_8|saida[5]~13_combout\;
\RAM1|ALT_INV_ram~652_combout\ <= NOT \RAM1|ram~652_combout\;
\RAM1|ALT_INV_ram~651_combout\ <= NOT \RAM1|ram~651_combout\;
\RAM1|ALT_INV_ram~650_combout\ <= NOT \RAM1|ram~650_combout\;
\RAM1|ALT_INV_ram~524_q\ <= NOT \RAM1|ram~524_q\;
\RAM1|ALT_INV_ram~268_q\ <= NOT \RAM1|ram~268_q\;
\RAM1|ALT_INV_ram~516_q\ <= NOT \RAM1|ram~516_q\;
\RAM1|ALT_INV_ram~260_q\ <= NOT \RAM1|ram~260_q\;
\RAM1|ALT_INV_ram~649_combout\ <= NOT \RAM1|ram~649_combout\;
\RAM1|ALT_INV_ram~396_q\ <= NOT \RAM1|ram~396_q\;
\RAM1|ALT_INV_ram~140_q\ <= NOT \RAM1|ram~140_q\;
\RAM1|ALT_INV_ram~388_q\ <= NOT \RAM1|ram~388_q\;
\RAM1|ALT_INV_ram~132_q\ <= NOT \RAM1|ram~132_q\;
\RAM1|ALT_INV_ram~648_combout\ <= NOT \RAM1|ram~648_combout\;
\RAM1|ALT_INV_ram~460_q\ <= NOT \RAM1|ram~460_q\;
\RAM1|ALT_INV_ram~204_q\ <= NOT \RAM1|ram~204_q\;
\RAM1|ALT_INV_ram~452_q\ <= NOT \RAM1|ram~452_q\;
\RAM1|ALT_INV_ram~196_q\ <= NOT \RAM1|ram~196_q\;
\RAM1|ALT_INV_ram~647_combout\ <= NOT \RAM1|ram~647_combout\;
\RAM1|ALT_INV_ram~332_q\ <= NOT \RAM1|ram~332_q\;
\RAM1|ALT_INV_ram~76_q\ <= NOT \RAM1|ram~76_q\;
\RAM1|ALT_INV_ram~324_q\ <= NOT \RAM1|ram~324_q\;
\RAM1|ALT_INV_ram~68_q\ <= NOT \RAM1|ram~68_q\;
\RAM1|ALT_INV_ram~646_combout\ <= NOT \RAM1|ram~646_combout\;
\RAM1|ALT_INV_ram~645_combout\ <= NOT \RAM1|ram~645_combout\;
\RAM1|ALT_INV_ram~508_q\ <= NOT \RAM1|ram~508_q\;
\RAM1|ALT_INV_ram~252_q\ <= NOT \RAM1|ram~252_q\;
\RAM1|ALT_INV_ram~380_q\ <= NOT \RAM1|ram~380_q\;
\RAM1|ALT_INV_ram~124_q\ <= NOT \RAM1|ram~124_q\;
\RAM1|ALT_INV_ram~644_combout\ <= NOT \RAM1|ram~644_combout\;
\RAM1|ALT_INV_ram~500_q\ <= NOT \RAM1|ram~500_q\;
\RAM1|ALT_INV_ram~244_q\ <= NOT \RAM1|ram~244_q\;
\RAM1|ALT_INV_ram~372_q\ <= NOT \RAM1|ram~372_q\;
\RAM1|ALT_INV_ram~116_q\ <= NOT \RAM1|ram~116_q\;
\RAM1|ALT_INV_ram~643_combout\ <= NOT \RAM1|ram~643_combout\;
\RAM1|ALT_INV_ram~444_q\ <= NOT \RAM1|ram~444_q\;
\RAM1|ALT_INV_ram~188_q\ <= NOT \RAM1|ram~188_q\;
\RAM1|ALT_INV_ram~316_q\ <= NOT \RAM1|ram~316_q\;
\RAM1|ALT_INV_ram~60_q\ <= NOT \RAM1|ram~60_q\;
\RAM1|ALT_INV_ram~642_combout\ <= NOT \RAM1|ram~642_combout\;
\RAM1|ALT_INV_ram~436_q\ <= NOT \RAM1|ram~436_q\;
\RAM1|ALT_INV_ram~180_q\ <= NOT \RAM1|ram~180_q\;
\RAM1|ALT_INV_ram~308_q\ <= NOT \RAM1|ram~308_q\;
\RAM1|ALT_INV_ram~52_q\ <= NOT \RAM1|ram~52_q\;
\RAM1|ALT_INV_ram~641_combout\ <= NOT \RAM1|ram~641_combout\;
\RAM1|ALT_INV_ram~640_combout\ <= NOT \RAM1|ram~640_combout\;
\RAM1|ALT_INV_ram~492_q\ <= NOT \RAM1|ram~492_q\;
\RAM1|ALT_INV_ram~236_q\ <= NOT \RAM1|ram~236_q\;
\RAM1|ALT_INV_ram~364_q\ <= NOT \RAM1|ram~364_q\;
\RAM1|ALT_INV_ram~108_q\ <= NOT \RAM1|ram~108_q\;
\RAM1|ALT_INV_ram~639_combout\ <= NOT \RAM1|ram~639_combout\;
\RAM1|ALT_INV_ram~484_q\ <= NOT \RAM1|ram~484_q\;
\RAM1|ALT_INV_ram~228_q\ <= NOT \RAM1|ram~228_q\;
\RAM1|ALT_INV_ram~356_q\ <= NOT \RAM1|ram~356_q\;
\RAM1|ALT_INV_ram~100_q\ <= NOT \RAM1|ram~100_q\;
\RAM1|ALT_INV_ram~638_combout\ <= NOT \RAM1|ram~638_combout\;
\RAM1|ALT_INV_ram~428_q\ <= NOT \RAM1|ram~428_q\;
\RAM1|ALT_INV_ram~172_q\ <= NOT \RAM1|ram~172_q\;
\RAM1|ALT_INV_ram~300_q\ <= NOT \RAM1|ram~300_q\;
\RAM1|ALT_INV_ram~44_q\ <= NOT \RAM1|ram~44_q\;
\RAM1|ALT_INV_ram~637_combout\ <= NOT \RAM1|ram~637_combout\;
\RAM1|ALT_INV_ram~420_q\ <= NOT \RAM1|ram~420_q\;
\RAM1|ALT_INV_ram~164_q\ <= NOT \RAM1|ram~164_q\;
\RAM1|ALT_INV_ram~292_q\ <= NOT \RAM1|ram~292_q\;
\RAM1|ALT_INV_ram~36_q\ <= NOT \RAM1|ram~36_q\;
\RAM1|ALT_INV_ram~636_combout\ <= NOT \RAM1|ram~636_combout\;
\RAM1|ALT_INV_ram~635_combout\ <= NOT \RAM1|ram~635_combout\;
\RAM1|ALT_INV_ram~476_q\ <= NOT \RAM1|ram~476_q\;
\RAM1|ALT_INV_ram~220_q\ <= NOT \RAM1|ram~220_q\;
\RAM1|ALT_INV_ram~348_q\ <= NOT \RAM1|ram~348_q\;
\RAM1|ALT_INV_ram~92_q\ <= NOT \RAM1|ram~92_q\;
\RAM1|ALT_INV_ram~634_combout\ <= NOT \RAM1|ram~634_combout\;
\RAM1|ALT_INV_ram~468_q\ <= NOT \RAM1|ram~468_q\;
\RAM1|ALT_INV_ram~212_q\ <= NOT \RAM1|ram~212_q\;
\RAM1|ALT_INV_ram~340_q\ <= NOT \RAM1|ram~340_q\;
\RAM1|ALT_INV_ram~84_q\ <= NOT \RAM1|ram~84_q\;
\RAM1|ALT_INV_ram~633_combout\ <= NOT \RAM1|ram~633_combout\;
\RAM1|ALT_INV_ram~412_q\ <= NOT \RAM1|ram~412_q\;
\RAM1|ALT_INV_ram~156_q\ <= NOT \RAM1|ram~156_q\;
\RAM1|ALT_INV_ram~284_q\ <= NOT \RAM1|ram~284_q\;
\RAM1|ALT_INV_ram~28_q\ <= NOT \RAM1|ram~28_q\;
\RAM1|ALT_INV_ram~632_combout\ <= NOT \RAM1|ram~632_combout\;
\RAM1|ALT_INV_ram~404_q\ <= NOT \RAM1|ram~404_q\;
\RAM1|ALT_INV_ram~148_q\ <= NOT \RAM1|ram~148_q\;
\RAM1|ALT_INV_ram~276_q\ <= NOT \RAM1|ram~276_q\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\SW_8|ALT_INV_saida[4]~12_combout\ <= NOT \SW_8|saida[4]~12_combout\;
\RAM1|ALT_INV_ram~631_combout\ <= NOT \RAM1|ram~631_combout\;
\RAM1|ALT_INV_ram~630_combout\ <= NOT \RAM1|ram~630_combout\;
\RAM1|ALT_INV_ram~629_combout\ <= NOT \RAM1|ram~629_combout\;
\RAM1|ALT_INV_ram~523_q\ <= NOT \RAM1|ram~523_q\;
\RAM1|ALT_INV_ram~515_q\ <= NOT \RAM1|ram~515_q\;
\RAM1|ALT_INV_ram~459_q\ <= NOT \RAM1|ram~459_q\;
\RAM1|ALT_INV_ram~451_q\ <= NOT \RAM1|ram~451_q\;
\RAM1|ALT_INV_ram~628_combout\ <= NOT \RAM1|ram~628_combout\;
\RAM1|ALT_INV_ram~491_q\ <= NOT \RAM1|ram~491_q\;
\RAM1|ALT_INV_ram~483_q\ <= NOT \RAM1|ram~483_q\;
\RAM1|ALT_INV_ram~427_q\ <= NOT \RAM1|ram~427_q\;
\RAM1|ALT_INV_ram~419_q\ <= NOT \RAM1|ram~419_q\;
\RAM1|ALT_INV_ram~627_combout\ <= NOT \RAM1|ram~627_combout\;
\RAM1|ALT_INV_ram~507_q\ <= NOT \RAM1|ram~507_q\;
\RAM1|ALT_INV_ram~499_q\ <= NOT \RAM1|ram~499_q\;
\RAM1|ALT_INV_ram~443_q\ <= NOT \RAM1|ram~443_q\;
\RAM1|ALT_INV_ram~435_q\ <= NOT \RAM1|ram~435_q\;
\RAM1|ALT_INV_ram~626_combout\ <= NOT \RAM1|ram~626_combout\;
\RAM1|ALT_INV_ram~475_q\ <= NOT \RAM1|ram~475_q\;
\RAM1|ALT_INV_ram~467_q\ <= NOT \RAM1|ram~467_q\;
\RAM1|ALT_INV_ram~411_q\ <= NOT \RAM1|ram~411_q\;
\RAM1|ALT_INV_ram~403_q\ <= NOT \RAM1|ram~403_q\;
\RAM1|ALT_INV_ram~625_combout\ <= NOT \RAM1|ram~625_combout\;
\RAM1|ALT_INV_ram~624_combout\ <= NOT \RAM1|ram~624_combout\;
\RAM1|ALT_INV_ram~267_q\ <= NOT \RAM1|ram~267_q\;
\RAM1|ALT_INV_ram~259_q\ <= NOT \RAM1|ram~259_q\;
\RAM1|ALT_INV_ram~235_q\ <= NOT \RAM1|ram~235_q\;
\RAM1|ALT_INV_ram~227_q\ <= NOT \RAM1|ram~227_q\;
\RAM1|ALT_INV_ram~623_combout\ <= NOT \RAM1|ram~623_combout\;
\RAM1|ALT_INV_ram~251_q\ <= NOT \RAM1|ram~251_q\;
\RAM1|ALT_INV_ram~243_q\ <= NOT \RAM1|ram~243_q\;
\RAM1|ALT_INV_ram~219_q\ <= NOT \RAM1|ram~219_q\;
\RAM1|ALT_INV_ram~211_q\ <= NOT \RAM1|ram~211_q\;
\RAM1|ALT_INV_ram~622_combout\ <= NOT \RAM1|ram~622_combout\;
\RAM1|ALT_INV_ram~203_q\ <= NOT \RAM1|ram~203_q\;
\RAM1|ALT_INV_ram~195_q\ <= NOT \RAM1|ram~195_q\;
\RAM1|ALT_INV_ram~171_q\ <= NOT \RAM1|ram~171_q\;
\RAM1|ALT_INV_ram~163_q\ <= NOT \RAM1|ram~163_q\;
\RAM1|ALT_INV_ram~621_combout\ <= NOT \RAM1|ram~621_combout\;
\RAM1|ALT_INV_ram~187_q\ <= NOT \RAM1|ram~187_q\;
\RAM1|ALT_INV_ram~179_q\ <= NOT \RAM1|ram~179_q\;
\RAM1|ALT_INV_ram~155_q\ <= NOT \RAM1|ram~155_q\;
\RAM1|ALT_INV_ram~147_q\ <= NOT \RAM1|ram~147_q\;
\RAM1|ALT_INV_ram~620_combout\ <= NOT \RAM1|ram~620_combout\;
\RAM1|ALT_INV_ram~619_combout\ <= NOT \RAM1|ram~619_combout\;
\RAM1|ALT_INV_ram~395_q\ <= NOT \RAM1|ram~395_q\;
\RAM1|ALT_INV_ram~387_q\ <= NOT \RAM1|ram~387_q\;
\RAM1|ALT_INV_ram~379_q\ <= NOT \RAM1|ram~379_q\;
\RAM1|ALT_INV_ram~371_q\ <= NOT \RAM1|ram~371_q\;
\RAM1|ALT_INV_ram~618_combout\ <= NOT \RAM1|ram~618_combout\;
\RAM1|ALT_INV_ram~363_q\ <= NOT \RAM1|ram~363_q\;
\RAM1|ALT_INV_ram~355_q\ <= NOT \RAM1|ram~355_q\;
\RAM1|ALT_INV_ram~347_q\ <= NOT \RAM1|ram~347_q\;
\RAM1|ALT_INV_ram~339_q\ <= NOT \RAM1|ram~339_q\;
\RAM1|ALT_INV_ram~617_combout\ <= NOT \RAM1|ram~617_combout\;
\RAM1|ALT_INV_ram~331_q\ <= NOT \RAM1|ram~331_q\;
\RAM1|ALT_INV_ram~323_q\ <= NOT \RAM1|ram~323_q\;
\RAM1|ALT_INV_ram~315_q\ <= NOT \RAM1|ram~315_q\;
\RAM1|ALT_INV_ram~307_q\ <= NOT \RAM1|ram~307_q\;
\RAM1|ALT_INV_ram~616_combout\ <= NOT \RAM1|ram~616_combout\;
\RAM1|ALT_INV_ram~299_q\ <= NOT \RAM1|ram~299_q\;
\RAM1|ALT_INV_ram~291_q\ <= NOT \RAM1|ram~291_q\;
\RAM1|ALT_INV_ram~283_q\ <= NOT \RAM1|ram~283_q\;
\RAM1|ALT_INV_ram~275_q\ <= NOT \RAM1|ram~275_q\;
\RAM1|ALT_INV_ram~615_combout\ <= NOT \RAM1|ram~615_combout\;
\RAM1|ALT_INV_ram~614_combout\ <= NOT \RAM1|ram~614_combout\;
\RAM1|ALT_INV_ram~139_q\ <= NOT \RAM1|ram~139_q\;
\RAM1|ALT_INV_ram~131_q\ <= NOT \RAM1|ram~131_q\;
\RAM1|ALT_INV_ram~75_q\ <= NOT \RAM1|ram~75_q\;
\RAM1|ALT_INV_ram~67_q\ <= NOT \RAM1|ram~67_q\;
\RAM1|ALT_INV_ram~613_combout\ <= NOT \RAM1|ram~613_combout\;
\RAM1|ALT_INV_ram~107_q\ <= NOT \RAM1|ram~107_q\;
\RAM1|ALT_INV_ram~99_q\ <= NOT \RAM1|ram~99_q\;
\RAM1|ALT_INV_ram~43_q\ <= NOT \RAM1|ram~43_q\;
\RAM1|ALT_INV_ram~35_q\ <= NOT \RAM1|ram~35_q\;
\RAM1|ALT_INV_ram~612_combout\ <= NOT \RAM1|ram~612_combout\;
\RAM1|ALT_INV_ram~123_q\ <= NOT \RAM1|ram~123_q\;
\RAM1|ALT_INV_ram~115_q\ <= NOT \RAM1|ram~115_q\;
\RAM1|ALT_INV_ram~59_q\ <= NOT \RAM1|ram~59_q\;
\RAM1|ALT_INV_ram~51_q\ <= NOT \RAM1|ram~51_q\;
\RAM1|ALT_INV_ram~611_combout\ <= NOT \RAM1|ram~611_combout\;
\RAM1|ALT_INV_ram~91_q\ <= NOT \RAM1|ram~91_q\;
\RAM1|ALT_INV_ram~83_q\ <= NOT \RAM1|ram~83_q\;
\RAM1|ALT_INV_ram~27_q\ <= NOT \RAM1|ram~27_q\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\SW_8|ALT_INV_saida[3]~11_combout\ <= NOT \SW_8|saida[3]~11_combout\;
\RAM1|ALT_INV_ram~610_combout\ <= NOT \RAM1|ram~610_combout\;
\RAM1|ALT_INV_ram~609_combout\ <= NOT \RAM1|ram~609_combout\;
\RAM1|ALT_INV_ram~608_combout\ <= NOT \RAM1|ram~608_combout\;
\RAM1|ALT_INV_ram~522_q\ <= NOT \RAM1|ram~522_q\;
\RAM1|ALT_INV_ram~394_q\ <= NOT \RAM1|ram~394_q\;
\RAM1|ALT_INV_ram~490_q\ <= NOT \RAM1|ram~490_q\;
\RAM1|ALT_INV_ram~362_q\ <= NOT \RAM1|ram~362_q\;
\RAM1|ALT_INV_ram~607_combout\ <= NOT \RAM1|ram~607_combout\;
\RAM1|ALT_INV_ram~506_q\ <= NOT \RAM1|ram~506_q\;
\RAM1|ALT_INV_ram~378_q\ <= NOT \RAM1|ram~378_q\;
\RAM1|ALT_INV_ram~474_q\ <= NOT \RAM1|ram~474_q\;
\RAM1|ALT_INV_ram~346_q\ <= NOT \RAM1|ram~346_q\;
\RAM1|ALT_INV_ram~606_combout\ <= NOT \RAM1|ram~606_combout\;
\RAM1|ALT_INV_ram~458_q\ <= NOT \RAM1|ram~458_q\;
\RAM1|ALT_INV_ram~330_q\ <= NOT \RAM1|ram~330_q\;
\RAM1|ALT_INV_ram~426_q\ <= NOT \RAM1|ram~426_q\;
\RAM1|ALT_INV_ram~298_q\ <= NOT \RAM1|ram~298_q\;
\RAM1|ALT_INV_ram~605_combout\ <= NOT \RAM1|ram~605_combout\;
\RAM1|ALT_INV_ram~442_q\ <= NOT \RAM1|ram~442_q\;
\RAM1|ALT_INV_ram~314_q\ <= NOT \RAM1|ram~314_q\;
\RAM1|ALT_INV_ram~410_q\ <= NOT \RAM1|ram~410_q\;
\RAM1|ALT_INV_ram~282_q\ <= NOT \RAM1|ram~282_q\;
\RAM1|ALT_INV_ram~604_combout\ <= NOT \RAM1|ram~604_combout\;
\RAM1|ALT_INV_ram~603_combout\ <= NOT \RAM1|ram~603_combout\;
\RAM1|ALT_INV_ram~266_q\ <= NOT \RAM1|ram~266_q\;
\RAM1|ALT_INV_ram~234_q\ <= NOT \RAM1|ram~234_q\;
\RAM1|ALT_INV_ram~202_q\ <= NOT \RAM1|ram~202_q\;
\RAM1|ALT_INV_ram~170_q\ <= NOT \RAM1|ram~170_q\;
\RAM1|ALT_INV_ram~602_combout\ <= NOT \RAM1|ram~602_combout\;
\RAM1|ALT_INV_ram~138_q\ <= NOT \RAM1|ram~138_q\;
\RAM1|ALT_INV_ram~106_q\ <= NOT \RAM1|ram~106_q\;
\RAM1|ALT_INV_ram~74_q\ <= NOT \RAM1|ram~74_q\;
\RAM1|ALT_INV_ram~42_q\ <= NOT \RAM1|ram~42_q\;
\RAM1|ALT_INV_ram~601_combout\ <= NOT \RAM1|ram~601_combout\;
\RAM1|ALT_INV_ram~250_q\ <= NOT \RAM1|ram~250_q\;
\RAM1|ALT_INV_ram~218_q\ <= NOT \RAM1|ram~218_q\;
\RAM1|ALT_INV_ram~186_q\ <= NOT \RAM1|ram~186_q\;
\RAM1|ALT_INV_ram~154_q\ <= NOT \RAM1|ram~154_q\;
\RAM1|ALT_INV_ram~600_combout\ <= NOT \RAM1|ram~600_combout\;
\RAM1|ALT_INV_ram~122_q\ <= NOT \RAM1|ram~122_q\;
\RAM1|ALT_INV_ram~90_q\ <= NOT \RAM1|ram~90_q\;
\RAM1|ALT_INV_ram~58_q\ <= NOT \RAM1|ram~58_q\;
\RAM1|ALT_INV_ram~26_q\ <= NOT \RAM1|ram~26_q\;
\RAM1|ALT_INV_ram~599_combout\ <= NOT \RAM1|ram~599_combout\;
\RAM1|ALT_INV_ram~598_combout\ <= NOT \RAM1|ram~598_combout\;
\RAM1|ALT_INV_ram~514_q\ <= NOT \RAM1|ram~514_q\;
\RAM1|ALT_INV_ram~482_q\ <= NOT \RAM1|ram~482_q\;
\RAM1|ALT_INV_ram~498_q\ <= NOT \RAM1|ram~498_q\;
\RAM1|ALT_INV_ram~466_q\ <= NOT \RAM1|ram~466_q\;
\RAM1|ALT_INV_ram~597_combout\ <= NOT \RAM1|ram~597_combout\;
\RAM1|ALT_INV_ram~386_q\ <= NOT \RAM1|ram~386_q\;
\RAM1|ALT_INV_ram~354_q\ <= NOT \RAM1|ram~354_q\;
\RAM1|ALT_INV_ram~370_q\ <= NOT \RAM1|ram~370_q\;
\RAM1|ALT_INV_ram~338_q\ <= NOT \RAM1|ram~338_q\;
\RAM1|ALT_INV_ram~596_combout\ <= NOT \RAM1|ram~596_combout\;
\RAM1|ALT_INV_ram~450_q\ <= NOT \RAM1|ram~450_q\;
\RAM1|ALT_INV_ram~418_q\ <= NOT \RAM1|ram~418_q\;
\RAM1|ALT_INV_ram~434_q\ <= NOT \RAM1|ram~434_q\;
\RAM1|ALT_INV_ram~402_q\ <= NOT \RAM1|ram~402_q\;
\RAM1|ALT_INV_ram~595_combout\ <= NOT \RAM1|ram~595_combout\;
\RAM1|ALT_INV_ram~322_q\ <= NOT \RAM1|ram~322_q\;
\RAM1|ALT_INV_ram~290_q\ <= NOT \RAM1|ram~290_q\;
\RAM1|ALT_INV_ram~306_q\ <= NOT \RAM1|ram~306_q\;
\RAM1|ALT_INV_ram~274_q\ <= NOT \RAM1|ram~274_q\;
\RAM1|ALT_INV_ram~594_combout\ <= NOT \RAM1|ram~594_combout\;
\RAM1|ALT_INV_ram~593_combout\ <= NOT \RAM1|ram~593_combout\;
\RAM1|ALT_INV_ram~258_q\ <= NOT \RAM1|ram~258_q\;
\RAM1|ALT_INV_ram~226_q\ <= NOT \RAM1|ram~226_q\;
\RAM1|ALT_INV_ram~242_q\ <= NOT \RAM1|ram~242_q\;
\RAM1|ALT_INV_ram~210_q\ <= NOT \RAM1|ram~210_q\;
\RAM1|ALT_INV_ram~592_combout\ <= NOT \RAM1|ram~592_combout\;
\RAM1|ALT_INV_ram~130_q\ <= NOT \RAM1|ram~130_q\;
\RAM1|ALT_INV_ram~98_q\ <= NOT \RAM1|ram~98_q\;
\RAM1|ALT_INV_ram~114_q\ <= NOT \RAM1|ram~114_q\;
\RAM1|ALT_INV_ram~82_q\ <= NOT \RAM1|ram~82_q\;
\RAM1|ALT_INV_ram~591_combout\ <= NOT \RAM1|ram~591_combout\;
\RAM1|ALT_INV_ram~194_q\ <= NOT \RAM1|ram~194_q\;
\RAM1|ALT_INV_ram~162_q\ <= NOT \RAM1|ram~162_q\;
\RAM1|ALT_INV_ram~178_q\ <= NOT \RAM1|ram~178_q\;
\RAM1|ALT_INV_ram~146_q\ <= NOT \RAM1|ram~146_q\;
\RAM1|ALT_INV_ram~590_combout\ <= NOT \RAM1|ram~590_combout\;
\RAM1|ALT_INV_ram~66_q\ <= NOT \RAM1|ram~66_q\;
\RAM1|ALT_INV_ram~34_q\ <= NOT \RAM1|ram~34_q\;
\RAM1|ALT_INV_ram~50_q\ <= NOT \RAM1|ram~50_q\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\SW_8|ALT_INV_saida[2]~10_combout\ <= NOT \SW_8|saida[2]~10_combout\;
\RAM1|ALT_INV_ram~589_combout\ <= NOT \RAM1|ram~589_combout\;
\RAM1|ALT_INV_ram~588_combout\ <= NOT \RAM1|ram~588_combout\;
\RAM1|ALT_INV_ram~587_combout\ <= NOT \RAM1|ram~587_combout\;
\RAM1|ALT_INV_ram~521_q\ <= NOT \RAM1|ram~521_q\;
\RAM1|ALT_INV_ram~513_q\ <= NOT \RAM1|ram~513_q\;
\RAM1|ALT_INV_ram~393_q\ <= NOT \RAM1|ram~393_q\;
\RAM1|ALT_INV_ram~385_q\ <= NOT \RAM1|ram~385_q\;
\RAM1|ALT_INV_ram~586_combout\ <= NOT \RAM1|ram~586_combout\;
\RAM1|ALT_INV_ram~505_q\ <= NOT \RAM1|ram~505_q\;
\RAM1|ALT_INV_ram~497_q\ <= NOT \RAM1|ram~497_q\;
\RAM1|ALT_INV_ram~377_q\ <= NOT \RAM1|ram~377_q\;
\RAM1|ALT_INV_ram~369_q\ <= NOT \RAM1|ram~369_q\;
\RAM1|ALT_INV_ram~585_combout\ <= NOT \RAM1|ram~585_combout\;
\RAM1|ALT_INV_ram~457_q\ <= NOT \RAM1|ram~457_q\;
\RAM1|ALT_INV_ram~449_q\ <= NOT \RAM1|ram~449_q\;
\RAM1|ALT_INV_ram~329_q\ <= NOT \RAM1|ram~329_q\;
\RAM1|ALT_INV_ram~321_q\ <= NOT \RAM1|ram~321_q\;
\RAM1|ALT_INV_ram~584_combout\ <= NOT \RAM1|ram~584_combout\;
\RAM1|ALT_INV_ram~441_q\ <= NOT \RAM1|ram~441_q\;
\RAM1|ALT_INV_ram~433_q\ <= NOT \RAM1|ram~433_q\;
\RAM1|ALT_INV_ram~313_q\ <= NOT \RAM1|ram~313_q\;
\RAM1|ALT_INV_ram~305_q\ <= NOT \RAM1|ram~305_q\;
\RAM1|ALT_INV_ram~583_combout\ <= NOT \RAM1|ram~583_combout\;
\RAM1|ALT_INV_ram~582_combout\ <= NOT \RAM1|ram~582_combout\;
\RAM1|ALT_INV_ram~265_q\ <= NOT \RAM1|ram~265_q\;
\RAM1|ALT_INV_ram~137_q\ <= NOT \RAM1|ram~137_q\;
\RAM1|ALT_INV_ram~249_q\ <= NOT \RAM1|ram~249_q\;
\RAM1|ALT_INV_ram~121_q\ <= NOT \RAM1|ram~121_q\;
\RAM1|ALT_INV_ram~581_combout\ <= NOT \RAM1|ram~581_combout\;
\RAM1|ALT_INV_ram~257_q\ <= NOT \RAM1|ram~257_q\;
\RAM1|ALT_INV_ram~129_q\ <= NOT \RAM1|ram~129_q\;
\RAM1|ALT_INV_ram~241_q\ <= NOT \RAM1|ram~241_q\;
\RAM1|ALT_INV_ram~113_q\ <= NOT \RAM1|ram~113_q\;
\RAM1|ALT_INV_ram~580_combout\ <= NOT \RAM1|ram~580_combout\;
\RAM1|ALT_INV_ram~201_q\ <= NOT \RAM1|ram~201_q\;
\RAM1|ALT_INV_ram~73_q\ <= NOT \RAM1|ram~73_q\;
\RAM1|ALT_INV_ram~185_q\ <= NOT \RAM1|ram~185_q\;
\RAM1|ALT_INV_ram~57_q\ <= NOT \RAM1|ram~57_q\;
\RAM1|ALT_INV_ram~579_combout\ <= NOT \RAM1|ram~579_combout\;
\RAM1|ALT_INV_ram~193_q\ <= NOT \RAM1|ram~193_q\;
\RAM1|ALT_INV_ram~65_q\ <= NOT \RAM1|ram~65_q\;
\RAM1|ALT_INV_ram~177_q\ <= NOT \RAM1|ram~177_q\;
\RAM1|ALT_INV_ram~49_q\ <= NOT \RAM1|ram~49_q\;
\RAM1|ALT_INV_ram~578_combout\ <= NOT \RAM1|ram~578_combout\;
\RAM1|ALT_INV_ram~577_combout\ <= NOT \RAM1|ram~577_combout\;
\RAM1|ALT_INV_ram~489_q\ <= NOT \RAM1|ram~489_q\;
\RAM1|ALT_INV_ram~473_q\ <= NOT \RAM1|ram~473_q\;
\RAM1|ALT_INV_ram~425_q\ <= NOT \RAM1|ram~425_q\;
\RAM1|ALT_INV_ram~409_q\ <= NOT \RAM1|ram~409_q\;
\RAM1|ALT_INV_ram~576_combout\ <= NOT \RAM1|ram~576_combout\;
\RAM1|ALT_INV_ram~481_q\ <= NOT \RAM1|ram~481_q\;
\RAM1|ALT_INV_ram~465_q\ <= NOT \RAM1|ram~465_q\;
\RAM1|ALT_INV_ram~417_q\ <= NOT \RAM1|ram~417_q\;
\RAM1|ALT_INV_ram~401_q\ <= NOT \RAM1|ram~401_q\;
\RAM1|ALT_INV_ram~575_combout\ <= NOT \RAM1|ram~575_combout\;
\RAM1|ALT_INV_ram~361_q\ <= NOT \RAM1|ram~361_q\;
\RAM1|ALT_INV_ram~345_q\ <= NOT \RAM1|ram~345_q\;
\RAM1|ALT_INV_ram~297_q\ <= NOT \RAM1|ram~297_q\;
\RAM1|ALT_INV_ram~281_q\ <= NOT \RAM1|ram~281_q\;
\RAM1|ALT_INV_ram~574_combout\ <= NOT \RAM1|ram~574_combout\;
\RAM1|ALT_INV_ram~353_q\ <= NOT \RAM1|ram~353_q\;
\RAM1|ALT_INV_ram~337_q\ <= NOT \RAM1|ram~337_q\;
\RAM1|ALT_INV_ram~289_q\ <= NOT \RAM1|ram~289_q\;
\RAM1|ALT_INV_ram~273_q\ <= NOT \RAM1|ram~273_q\;
\RAM1|ALT_INV_ram~573_combout\ <= NOT \RAM1|ram~573_combout\;
\RAM1|ALT_INV_ram~572_combout\ <= NOT \RAM1|ram~572_combout\;
\RAM1|ALT_INV_ram~233_q\ <= NOT \RAM1|ram~233_q\;
\RAM1|ALT_INV_ram~105_q\ <= NOT \RAM1|ram~105_q\;
\RAM1|ALT_INV_ram~217_q\ <= NOT \RAM1|ram~217_q\;
\RAM1|ALT_INV_ram~89_q\ <= NOT \RAM1|ram~89_q\;
\RAM1|ALT_INV_ram~571_combout\ <= NOT \RAM1|ram~571_combout\;
\RAM1|ALT_INV_ram~225_q\ <= NOT \RAM1|ram~225_q\;
\RAM1|ALT_INV_ram~97_q\ <= NOT \RAM1|ram~97_q\;
\RAM1|ALT_INV_ram~209_q\ <= NOT \RAM1|ram~209_q\;
\RAM1|ALT_INV_ram~81_q\ <= NOT \RAM1|ram~81_q\;
\RAM1|ALT_INV_ram~570_combout\ <= NOT \RAM1|ram~570_combout\;
\RAM1|ALT_INV_ram~169_q\ <= NOT \RAM1|ram~169_q\;
\RAM1|ALT_INV_ram~41_q\ <= NOT \RAM1|ram~41_q\;
\RAM1|ALT_INV_ram~153_q\ <= NOT \RAM1|ram~153_q\;
\RAM1|ALT_INV_ram~25_q\ <= NOT \RAM1|ram~25_q\;
\RAM1|ALT_INV_ram~569_combout\ <= NOT \RAM1|ram~569_combout\;
\RAM1|ALT_INV_ram~161_q\ <= NOT \RAM1|ram~161_q\;
\RAM1|ALT_INV_ram~33_q\ <= NOT \RAM1|ram~33_q\;
\RAM1|ALT_INV_ram~145_q\ <= NOT \RAM1|ram~145_q\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\SW_8|ALT_INV_saida[1]~9_combout\ <= NOT \SW_8|saida[1]~9_combout\;
\RAM1|ALT_INV_ram~568_combout\ <= NOT \RAM1|ram~568_combout\;
\RAM1|ALT_INV_ram~567_combout\ <= NOT \RAM1|ram~567_combout\;
\RAM1|ALT_INV_ram~566_combout\ <= NOT \RAM1|ram~566_combout\;
\RAM1|ALT_INV_ram~520_q\ <= NOT \RAM1|ram~520_q\;
\RAM1|ALT_INV_ram~512_q\ <= NOT \RAM1|ram~512_q\;
\RAM1|ALT_INV_ram~392_q\ <= NOT \RAM1|ram~392_q\;
\RAM1|ALT_INV_ram~384_q\ <= NOT \RAM1|ram~384_q\;
\RAM1|ALT_INV_ram~565_combout\ <= NOT \RAM1|ram~565_combout\;
\RAM1|ALT_INV_ram~488_q\ <= NOT \RAM1|ram~488_q\;
\RAM1|ALT_INV_ram~480_q\ <= NOT \RAM1|ram~480_q\;
\RAM1|ALT_INV_ram~360_q\ <= NOT \RAM1|ram~360_q\;
\RAM1|ALT_INV_ram~352_q\ <= NOT \RAM1|ram~352_q\;
\RAM1|ALT_INV_ram~564_combout\ <= NOT \RAM1|ram~564_combout\;
\RAM1|ALT_INV_ram~456_q\ <= NOT \RAM1|ram~456_q\;
\RAM1|ALT_INV_ram~448_q\ <= NOT \RAM1|ram~448_q\;
\RAM1|ALT_INV_ram~328_q\ <= NOT \RAM1|ram~328_q\;
\RAM1|ALT_INV_ram~320_q\ <= NOT \RAM1|ram~320_q\;
\RAM1|ALT_INV_ram~563_combout\ <= NOT \RAM1|ram~563_combout\;
\RAM1|ALT_INV_ram~424_q\ <= NOT \RAM1|ram~424_q\;
\RAM1|ALT_INV_ram~416_q\ <= NOT \RAM1|ram~416_q\;
\RAM1|ALT_INV_ram~296_q\ <= NOT \RAM1|ram~296_q\;
\RAM1|ALT_INV_ram~288_q\ <= NOT \RAM1|ram~288_q\;
\RAM1|ALT_INV_ram~562_combout\ <= NOT \RAM1|ram~562_combout\;
\RAM1|ALT_INV_ram~561_combout\ <= NOT \RAM1|ram~561_combout\;
\RAM1|ALT_INV_ram~264_q\ <= NOT \RAM1|ram~264_q\;
\RAM1|ALT_INV_ram~136_q\ <= NOT \RAM1|ram~136_q\;
\RAM1|ALT_INV_ram~200_q\ <= NOT \RAM1|ram~200_q\;
\RAM1|ALT_INV_ram~72_q\ <= NOT \RAM1|ram~72_q\;
\RAM1|ALT_INV_ram~560_combout\ <= NOT \RAM1|ram~560_combout\;
\RAM1|ALT_INV_ram~256_q\ <= NOT \RAM1|ram~256_q\;
\RAM1|ALT_INV_ram~128_q\ <= NOT \RAM1|ram~128_q\;
\RAM1|ALT_INV_ram~192_q\ <= NOT \RAM1|ram~192_q\;
\RAM1|ALT_INV_ram~64_q\ <= NOT \RAM1|ram~64_q\;
\RAM1|ALT_INV_ram~559_combout\ <= NOT \RAM1|ram~559_combout\;
\RAM1|ALT_INV_ram~232_q\ <= NOT \RAM1|ram~232_q\;
\RAM1|ALT_INV_ram~104_q\ <= NOT \RAM1|ram~104_q\;
\RAM1|ALT_INV_ram~168_q\ <= NOT \RAM1|ram~168_q\;
\RAM1|ALT_INV_ram~40_q\ <= NOT \RAM1|ram~40_q\;
\RAM1|ALT_INV_ram~558_combout\ <= NOT \RAM1|ram~558_combout\;
\RAM1|ALT_INV_ram~224_q\ <= NOT \RAM1|ram~224_q\;
\RAM1|ALT_INV_ram~96_q\ <= NOT \RAM1|ram~96_q\;
\RAM1|ALT_INV_ram~160_q\ <= NOT \RAM1|ram~160_q\;
\RAM1|ALT_INV_ram~32_q\ <= NOT \RAM1|ram~32_q\;
\RAM1|ALT_INV_ram~557_combout\ <= NOT \RAM1|ram~557_combout\;
\RAM1|ALT_INV_ram~556_combout\ <= NOT \RAM1|ram~556_combout\;
\RAM1|ALT_INV_ram~504_q\ <= NOT \RAM1|ram~504_q\;
\RAM1|ALT_INV_ram~376_q\ <= NOT \RAM1|ram~376_q\;
\RAM1|ALT_INV_ram~472_q\ <= NOT \RAM1|ram~472_q\;
\RAM1|ALT_INV_ram~344_q\ <= NOT \RAM1|ram~344_q\;
\RAM1|ALT_INV_ram~555_combout\ <= NOT \RAM1|ram~555_combout\;
\RAM1|ALT_INV_ram~496_q\ <= NOT \RAM1|ram~496_q\;
\RAM1|ALT_INV_ram~368_q\ <= NOT \RAM1|ram~368_q\;
\RAM1|ALT_INV_ram~464_q\ <= NOT \RAM1|ram~464_q\;
\RAM1|ALT_INV_ram~336_q\ <= NOT \RAM1|ram~336_q\;
\RAM1|ALT_INV_ram~554_combout\ <= NOT \RAM1|ram~554_combout\;
\RAM1|ALT_INV_ram~440_q\ <= NOT \RAM1|ram~440_q\;
\RAM1|ALT_INV_ram~312_q\ <= NOT \RAM1|ram~312_q\;
\RAM1|ALT_INV_ram~408_q\ <= NOT \RAM1|ram~408_q\;
\RAM1|ALT_INV_ram~280_q\ <= NOT \RAM1|ram~280_q\;
\RAM1|ALT_INV_ram~553_combout\ <= NOT \RAM1|ram~553_combout\;
\RAM1|ALT_INV_ram~432_q\ <= NOT \RAM1|ram~432_q\;
\RAM1|ALT_INV_ram~304_q\ <= NOT \RAM1|ram~304_q\;
\RAM1|ALT_INV_ram~400_q\ <= NOT \RAM1|ram~400_q\;
\RAM1|ALT_INV_ram~272_q\ <= NOT \RAM1|ram~272_q\;
\RAM1|ALT_INV_ram~552_combout\ <= NOT \RAM1|ram~552_combout\;
\RAM1|ALT_INV_ram~551_combout\ <= NOT \RAM1|ram~551_combout\;
\RAM1|ALT_INV_ram~248_q\ <= NOT \RAM1|ram~248_q\;
\RAM1|ALT_INV_ram~240_q\ <= NOT \RAM1|ram~240_q\;
\RAM1|ALT_INV_ram~120_q\ <= NOT \RAM1|ram~120_q\;
\RAM1|ALT_INV_ram~112_q\ <= NOT \RAM1|ram~112_q\;
\RAM1|ALT_INV_ram~550_combout\ <= NOT \RAM1|ram~550_combout\;
\RAM1|ALT_INV_ram~216_q\ <= NOT \RAM1|ram~216_q\;
\RAM1|ALT_INV_ram~208_q\ <= NOT \RAM1|ram~208_q\;
\RAM1|ALT_INV_ram~88_q\ <= NOT \RAM1|ram~88_q\;
\RAM1|ALT_INV_ram~80_q\ <= NOT \RAM1|ram~80_q\;
\RAM1|ALT_INV_ram~549_combout\ <= NOT \RAM1|ram~549_combout\;
\RAM1|ALT_INV_ram~184_q\ <= NOT \RAM1|ram~184_q\;
\RAM1|ALT_INV_ram~176_q\ <= NOT \RAM1|ram~176_q\;
\RAM1|ALT_INV_ram~56_q\ <= NOT \RAM1|ram~56_q\;
\RAM1|ALT_INV_ram~48_q\ <= NOT \RAM1|ram~48_q\;
\RAM1|ALT_INV_ram~548_combout\ <= NOT \RAM1|ram~548_combout\;
\RAM1|ALT_INV_ram~152_q\ <= NOT \RAM1|ram~152_q\;
\RAM1|ALT_INV_ram~144_q\ <= NOT \RAM1|ram~144_q\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\RAM1|ALT_INV_ram~16_q\ <= NOT \RAM1|ram~16_q\;
\SW_8|ALT_INV_saida[1]~8_combout\ <= NOT \SW_8|saida[1]~8_combout\;
\ALT_INV_comb~6_combout\ <= NOT \comb~6_combout\;
\processador|ULA1|ALT_INV_saida[0]~0_combout\ <= NOT \processador|ULA1|saida[0]~0_combout\;
\SW_0_7|ALT_INV_saida[0]~5_combout\ <= NOT \SW_0_7|saida[0]~5_combout\;
\SW_0_7|ALT_INV_saida[0]~4_combout\ <= NOT \SW_0_7|saida[0]~4_combout\;
\SW_0_7|ALT_INV_saida[0]~3_combout\ <= NOT \SW_0_7|saida[0]~3_combout\;
\ALT_INV_RESET_511~0_combout\ <= NOT \RESET_511~0_combout\;
\SW_0_7|ALT_INV_saida[0]~2_combout\ <= NOT \SW_0_7|saida[0]~2_combout\;
\ALT_INV_comb~5_combout\ <= NOT \comb~5_combout\;
\FF_DEBOUNCER|ALT_INV_DOUT~q\ <= NOT \FF_DEBOUNCER|DOUT~q\;
\SW_8|ALT_INV_saida[0]~7_combout\ <= NOT \SW_8|saida[0]~7_combout\;
\SW_0_7|ALT_INV_saida[0]~1_combout\ <= NOT \SW_0_7|saida[0]~1_combout\;
\ALT_INV_comb~4_combout\ <= NOT \comb~4_combout\;
\ALT_INV_comb~3_combout\ <= NOT \comb~3_combout\;
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\RAM1|ALT_INV_ram~547_combout\ <= NOT \RAM1|ram~547_combout\;
\RAM1|ALT_INV_ram~546_combout\ <= NOT \RAM1|ram~546_combout\;
\RAM1|ALT_INV_ram~545_combout\ <= NOT \RAM1|ram~545_combout\;
\RAM1|ALT_INV_ram~519_q\ <= NOT \RAM1|ram~519_q\;
\RAM1|ALT_INV_ram~487_q\ <= NOT \RAM1|ram~487_q\;
\RAM1|ALT_INV_ram~455_q\ <= NOT \RAM1|ram~455_q\;
\RAM1|ALT_INV_ram~423_q\ <= NOT \RAM1|ram~423_q\;
\RAM1|ALT_INV_ram~544_combout\ <= NOT \RAM1|ram~544_combout\;
\RAM1|ALT_INV_ram~511_q\ <= NOT \RAM1|ram~511_q\;
\RAM1|ALT_INV_ram~479_q\ <= NOT \RAM1|ram~479_q\;
\RAM1|ALT_INV_ram~447_q\ <= NOT \RAM1|ram~447_q\;
\RAM1|ALT_INV_ram~415_q\ <= NOT \RAM1|ram~415_q\;
\RAM1|ALT_INV_ram~543_combout\ <= NOT \RAM1|ram~543_combout\;
\RAM1|ALT_INV_ram~503_q\ <= NOT \RAM1|ram~503_q\;
\RAM1|ALT_INV_ram~471_q\ <= NOT \RAM1|ram~471_q\;
\RAM1|ALT_INV_ram~439_q\ <= NOT \RAM1|ram~439_q\;
\RAM1|ALT_INV_ram~407_q\ <= NOT \RAM1|ram~407_q\;
\RAM1|ALT_INV_ram~542_combout\ <= NOT \RAM1|ram~542_combout\;
\RAM1|ALT_INV_ram~495_q\ <= NOT \RAM1|ram~495_q\;
\RAM1|ALT_INV_ram~463_q\ <= NOT \RAM1|ram~463_q\;
\RAM1|ALT_INV_ram~431_q\ <= NOT \RAM1|ram~431_q\;
\RAM1|ALT_INV_ram~399_q\ <= NOT \RAM1|ram~399_q\;
\RAM1|ALT_INV_ram~541_combout\ <= NOT \RAM1|ram~541_combout\;
\RAM1|ALT_INV_ram~540_combout\ <= NOT \RAM1|ram~540_combout\;
\RAM1|ALT_INV_ram~391_q\ <= NOT \RAM1|ram~391_q\;
\RAM1|ALT_INV_ram~383_q\ <= NOT \RAM1|ram~383_q\;
\RAM1|ALT_INV_ram~375_q\ <= NOT \RAM1|ram~375_q\;
\RAM1|ALT_INV_ram~367_q\ <= NOT \RAM1|ram~367_q\;
\RAM1|ALT_INV_ram~539_combout\ <= NOT \RAM1|ram~539_combout\;
\RAM1|ALT_INV_ram~359_q\ <= NOT \RAM1|ram~359_q\;
\RAM1|ALT_INV_ram~351_q\ <= NOT \RAM1|ram~351_q\;
\RAM1|ALT_INV_ram~343_q\ <= NOT \RAM1|ram~343_q\;
\RAM1|ALT_INV_ram~335_q\ <= NOT \RAM1|ram~335_q\;
\RAM1|ALT_INV_ram~538_combout\ <= NOT \RAM1|ram~538_combout\;
\RAM1|ALT_INV_ram~327_q\ <= NOT \RAM1|ram~327_q\;
\RAM1|ALT_INV_ram~319_q\ <= NOT \RAM1|ram~319_q\;
\RAM1|ALT_INV_ram~311_q\ <= NOT \RAM1|ram~311_q\;
\RAM1|ALT_INV_ram~303_q\ <= NOT \RAM1|ram~303_q\;
\RAM1|ALT_INV_ram~537_combout\ <= NOT \RAM1|ram~537_combout\;
\RAM1|ALT_INV_ram~295_q\ <= NOT \RAM1|ram~295_q\;
\RAM1|ALT_INV_ram~287_q\ <= NOT \RAM1|ram~287_q\;
\RAM1|ALT_INV_ram~279_q\ <= NOT \RAM1|ram~279_q\;
\RAM1|ALT_INV_ram~271_q\ <= NOT \RAM1|ram~271_q\;
\RAM1|ALT_INV_ram~536_combout\ <= NOT \RAM1|ram~536_combout\;
\RAM1|ALT_INV_ram~535_combout\ <= NOT \RAM1|ram~535_combout\;
\RAM1|ALT_INV_ram~263_q\ <= NOT \RAM1|ram~263_q\;
\RAM1|ALT_INV_ram~231_q\ <= NOT \RAM1|ram~231_q\;
\RAM1|ALT_INV_ram~199_q\ <= NOT \RAM1|ram~199_q\;
\RAM1|ALT_INV_ram~167_q\ <= NOT \RAM1|ram~167_q\;
\RAM1|ALT_INV_ram~534_combout\ <= NOT \RAM1|ram~534_combout\;
\RAM1|ALT_INV_ram~255_q\ <= NOT \RAM1|ram~255_q\;
\RAM1|ALT_INV_ram~223_q\ <= NOT \RAM1|ram~223_q\;
\RAM1|ALT_INV_ram~191_q\ <= NOT \RAM1|ram~191_q\;
\RAM1|ALT_INV_ram~159_q\ <= NOT \RAM1|ram~159_q\;
\RAM1|ALT_INV_ram~533_combout\ <= NOT \RAM1|ram~533_combout\;
\RAM1|ALT_INV_ram~247_q\ <= NOT \RAM1|ram~247_q\;
\RAM1|ALT_INV_ram~215_q\ <= NOT \RAM1|ram~215_q\;
\RAM1|ALT_INV_ram~183_q\ <= NOT \RAM1|ram~183_q\;
\RAM1|ALT_INV_ram~151_q\ <= NOT \RAM1|ram~151_q\;
\RAM1|ALT_INV_ram~532_combout\ <= NOT \RAM1|ram~532_combout\;
\RAM1|ALT_INV_ram~239_q\ <= NOT \RAM1|ram~239_q\;
\RAM1|ALT_INV_ram~207_q\ <= NOT \RAM1|ram~207_q\;
\RAM1|ALT_INV_ram~175_q\ <= NOT \RAM1|ram~175_q\;
\RAM1|ALT_INV_ram~143_q\ <= NOT \RAM1|ram~143_q\;
\RAM1|ALT_INV_ram~531_combout\ <= NOT \RAM1|ram~531_combout\;
\RAM1|ALT_INV_ram~530_combout\ <= NOT \RAM1|ram~530_combout\;
\RAM1|ALT_INV_ram~135_q\ <= NOT \RAM1|ram~135_q\;
\RAM1|ALT_INV_ram~127_q\ <= NOT \RAM1|ram~127_q\;
\RAM1|ALT_INV_ram~119_q\ <= NOT \RAM1|ram~119_q\;
\RAM1|ALT_INV_ram~111_q\ <= NOT \RAM1|ram~111_q\;
\RAM1|ALT_INV_ram~529_combout\ <= NOT \RAM1|ram~529_combout\;
\RAM1|ALT_INV_ram~103_q\ <= NOT \RAM1|ram~103_q\;
\RAM1|ALT_INV_ram~95_q\ <= NOT \RAM1|ram~95_q\;
\RAM1|ALT_INV_ram~87_q\ <= NOT \RAM1|ram~87_q\;
\RAM1|ALT_INV_ram~79_q\ <= NOT \RAM1|ram~79_q\;
\RAM1|ALT_INV_ram~528_combout\ <= NOT \RAM1|ram~528_combout\;
\RAM1|ALT_INV_ram~71_q\ <= NOT \RAM1|ram~71_q\;
\RAM1|ALT_INV_ram~63_q\ <= NOT \RAM1|ram~63_q\;
\RAM1|ALT_INV_ram~55_q\ <= NOT \RAM1|ram~55_q\;
\RAM1|ALT_INV_ram~47_q\ <= NOT \RAM1|ram~47_q\;
\RAM1|ALT_INV_ram~527_combout\ <= NOT \RAM1|ram~527_combout\;
\RAM1|ALT_INV_ram~39_q\ <= NOT \RAM1|ram~39_q\;
\RAM1|ALT_INV_ram~31_q\ <= NOT \RAM1|ram~31_q\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\RAM1|ALT_INV_ram~15_q\ <= NOT \RAM1|ram~15_q\;
\RAM1|ALT_INV_dado_out~0_combout\ <= NOT \RAM1|dado_out~0_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\logica_Seven_Seg|ALT_INV_comb~0_combout\ <= NOT \logica_Seven_Seg|comb~0_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\decoderBloco|ALT_INV_Equal2~0_combout\ <= NOT \decoderBloco|Equal2~0_combout\;
\processador|REG_RET|ALT_INV_DOUT\(8) <= NOT \processador|REG_RET|DOUT\(8);
\processador|REG_RET|ALT_INV_DOUT\(7) <= NOT \processador|REG_RET|DOUT\(7);
\processador|REG_RET|ALT_INV_DOUT\(6) <= NOT \processador|REG_RET|DOUT\(6);
\processador|REG_RET|ALT_INV_DOUT\(5) <= NOT \processador|REG_RET|DOUT\(5);
\processador|REG_RET|ALT_INV_DOUT\(4) <= NOT \processador|REG_RET|DOUT\(4);
\processador|REG_RET|ALT_INV_DOUT\(3) <= NOT \processador|REG_RET|DOUT\(3);
\processador|REG_RET|ALT_INV_DOUT\(2) <= NOT \processador|REG_RET|DOUT\(2);
\processador|REG_RET|ALT_INV_DOUT\(1) <= NOT \processador|REG_RET|DOUT\(1);
\processador|REG_RET|ALT_INV_DOUT\(0) <= NOT \processador|REG_RET|DOUT\(0);
\processador|MUX2|ALT_INV_Equal1~0_combout\ <= NOT \processador|MUX2|Equal1~0_combout\;
\processador|MUX2|ALT_INV_Equal2~0_combout\ <= NOT \processador|MUX2|Equal2~0_combout\;
\logica_Seven_Seg|REG4|ALT_INV_DOUT\(2) <= NOT \logica_Seven_Seg|REG4|DOUT\(2);
\logica_Seven_Seg|REG4|ALT_INV_DOUT\(1) <= NOT \logica_Seven_Seg|REG4|DOUT\(1);
\logica_Seven_Seg|REG4|ALT_INV_DOUT\(3) <= NOT \logica_Seven_Seg|REG4|DOUT\(3);
\logica_Seven_Seg|REG4|ALT_INV_DOUT\(0) <= NOT \logica_Seven_Seg|REG4|DOUT\(0);
\logica_Seven_Seg|REG3|ALT_INV_DOUT\(2) <= NOT \logica_Seven_Seg|REG3|DOUT\(2);
\logica_Seven_Seg|REG3|ALT_INV_DOUT\(1) <= NOT \logica_Seven_Seg|REG3|DOUT\(1);
\logica_Seven_Seg|REG3|ALT_INV_DOUT\(3) <= NOT \logica_Seven_Seg|REG3|DOUT\(3);
\logica_Seven_Seg|REG3|ALT_INV_DOUT\(0) <= NOT \logica_Seven_Seg|REG3|DOUT\(0);
\logica_Seven_Seg|REG0|ALT_INV_DOUT\(2) <= NOT \logica_Seven_Seg|REG0|DOUT\(2);
\logica_Seven_Seg|REG0|ALT_INV_DOUT\(1) <= NOT \logica_Seven_Seg|REG0|DOUT\(1);
\logica_Seven_Seg|REG0|ALT_INV_DOUT\(3) <= NOT \logica_Seven_Seg|REG0|DOUT\(3);
\logica_Seven_Seg|REG0|ALT_INV_DOUT\(0) <= NOT \logica_Seven_Seg|REG0|DOUT\(0);
\ROM1|ALT_INV_memROM~23_combout\ <= NOT \ROM1|memROM~23_combout\;
\ROM1|ALT_INV_memROM~22_combout\ <= NOT \ROM1|memROM~22_combout\;
\ROM1|ALT_INV_memROM~21_combout\ <= NOT \ROM1|memROM~21_combout\;
\ROM1|ALT_INV_memROM~20_combout\ <= NOT \ROM1|memROM~20_combout\;
\ROM1|ALT_INV_memROM~19_combout\ <= NOT \ROM1|memROM~19_combout\;
\ROM1|ALT_INV_memROM~18_combout\ <= NOT \ROM1|memROM~18_combout\;
\ROM1|ALT_INV_memROM~17_combout\ <= NOT \ROM1|memROM~17_combout\;
\ROM1|ALT_INV_memROM~16_combout\ <= NOT \ROM1|memROM~16_combout\;
\ROM1|ALT_INV_memROM~15_combout\ <= NOT \ROM1|memROM~15_combout\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\decoderBloco|ALT_INV_Equal7~0_combout\ <= NOT \decoderBloco|Equal7~0_combout\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\processador|FLAG|ALT_INV_DOUT~q\ <= NOT \processador|FLAG|DOUT~q\;
\processador|decoderInstru1|ALT_INV_Equal11~3_combout\ <= NOT \processador|decoderInstru1|Equal11~3_combout\;
\processador|decoderInstru1|ALT_INV_saida[4]~1_combout\ <= NOT \processador|decoderInstru1|saida[4]~1_combout\;
\processador|decoderInstru1|ALT_INV_Equal11~2_combout\ <= NOT \processador|decoderInstru1|Equal11~2_combout\;
\processador|decoderInstru1|ALT_INV_Equal11~1_combout\ <= NOT \processador|decoderInstru1|Equal11~1_combout\;
\processador|decoderInstru1|ALT_INV_saida[1]~0_combout\ <= NOT \processador|decoderInstru1|saida[1]~0_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\processador|decoderInstru1|ALT_INV_Equal11~0_combout\ <= NOT \processador|decoderInstru1|Equal11~0_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\processador|REGA|ALT_INV_DOUT\(7) <= NOT \processador|REGA|DOUT\(7);
\processador|REGA|ALT_INV_DOUT\(6) <= NOT \processador|REGA|DOUT\(6);
\processador|REGA|ALT_INV_DOUT\(5) <= NOT \processador|REGA|DOUT\(5);
\processador|REGA|ALT_INV_DOUT\(4) <= NOT \processador|REGA|DOUT\(4);
\processador|REGA|ALT_INV_DOUT\(3) <= NOT \processador|REGA|DOUT\(3);
\processador|REGA|ALT_INV_DOUT\(2) <= NOT \processador|REGA|DOUT\(2);
\processador|REGA|ALT_INV_DOUT\(1) <= NOT \processador|REGA|DOUT\(1);
\processador|REGA|ALT_INV_DOUT\(0) <= NOT \processador|REGA|DOUT\(0);
\logica_LED|FlipFlop2|ALT_INV_DOUT~q\ <= NOT \logica_LED|FlipFlop2|DOUT~q\;
\logica_LED|FlipFlop1|ALT_INV_DOUT~q\ <= NOT \logica_LED|FlipFlop1|DOUT~q\;
\processador|ULA1|ALT_INV_Add0~29_sumout\ <= NOT \processador|ULA1|Add0~29_sumout\;
\processador|ULA1|ALT_INV_Add1~29_sumout\ <= NOT \processador|ULA1|Add1~29_sumout\;
\processador|ULA1|ALT_INV_Add0~25_sumout\ <= NOT \processador|ULA1|Add0~25_sumout\;
\processador|ULA1|ALT_INV_Add1~25_sumout\ <= NOT \processador|ULA1|Add1~25_sumout\;
\processador|ULA1|ALT_INV_Add0~21_sumout\ <= NOT \processador|ULA1|Add0~21_sumout\;
\processador|ULA1|ALT_INV_Add1~21_sumout\ <= NOT \processador|ULA1|Add1~21_sumout\;
\processador|ULA1|ALT_INV_Add0~17_sumout\ <= NOT \processador|ULA1|Add0~17_sumout\;
\processador|ULA1|ALT_INV_Add1~17_sumout\ <= NOT \processador|ULA1|Add1~17_sumout\;
\processador|ULA1|ALT_INV_Add0~13_sumout\ <= NOT \processador|ULA1|Add0~13_sumout\;
\processador|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \processador|ULA1|Add1~13_sumout\;
\processador|ULA1|ALT_INV_Add0~9_sumout\ <= NOT \processador|ULA1|Add0~9_sumout\;
\processador|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \processador|ULA1|Add1~9_sumout\;
\processador|ULA1|ALT_INV_Add0~5_sumout\ <= NOT \processador|ULA1|Add0~5_sumout\;
\processador|ULA1|ALT_INV_Add1~5_sumout\ <= NOT \processador|ULA1|Add1~5_sumout\;
\processador|ULA1|ALT_INV_Add1~1_sumout\ <= NOT \processador|ULA1|Add1~1_sumout\;
\processador|ULA1|ALT_INV_Add0~1_sumout\ <= NOT \processador|ULA1|Add0~1_sumout\;
\processador|incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \processador|incrementaPC|Add0~33_sumout\;
\processador|incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \processador|incrementaPC|Add0~29_sumout\;
\processador|incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \processador|incrementaPC|Add0~25_sumout\;
\processador|incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \processador|incrementaPC|Add0~21_sumout\;
\processador|incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \processador|incrementaPC|Add0~17_sumout\;
\processador|incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \processador|incrementaPC|Add0~13_sumout\;
\processador|incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \processador|incrementaPC|Add0~9_sumout\;
\processador|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \processador|incrementaPC|Add0~5_sumout\;
\processador|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \processador|incrementaPC|Add0~1_sumout\;
\processador|PC|ALT_INV_DOUT\(8) <= NOT \processador|PC|DOUT\(8);
\processador|PC|ALT_INV_DOUT\(6) <= NOT \processador|PC|DOUT\(6);
\processador|PC|ALT_INV_DOUT\(5) <= NOT \processador|PC|DOUT\(5);
\processador|PC|ALT_INV_DOUT\(4) <= NOT \processador|PC|DOUT\(4);
\processador|PC|ALT_INV_DOUT\(3) <= NOT \processador|PC|DOUT\(3);
\processador|PC|ALT_INV_DOUT\(2) <= NOT \processador|PC|DOUT\(2);
\processador|PC|ALT_INV_DOUT\(1) <= NOT \processador|PC|DOUT\(1);
\processador|PC|ALT_INV_DOUT\(0) <= NOT \processador|PC|DOUT\(0);

-- Location: IOOBUF_X54_Y18_N62
\ADD_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_0_7|saida[0]~7_combout\,
	oe => \SW_0_7|saida[0]~5_combout\,
	devoe => ww_devoe,
	o => ww_ADD_OUT(0));

-- Location: IOOBUF_X54_Y15_N56
\ADD_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_8|saida[1]~9_combout\,
	oe => \SW_0_7|saida[0]~5_combout\,
	devoe => ww_devoe,
	o => ww_ADD_OUT(1));

-- Location: IOOBUF_X34_Y45_N36
\ADD_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_8|saida[2]~10_combout\,
	oe => \SW_0_7|saida[0]~5_combout\,
	devoe => ww_devoe,
	o => ww_ADD_OUT(2));

-- Location: IOOBUF_X34_Y45_N2
\ADD_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_8|saida[3]~11_combout\,
	oe => \SW_0_7|saida[0]~5_combout\,
	devoe => ww_devoe,
	o => ww_ADD_OUT(3));

-- Location: IOOBUF_X54_Y15_N5
\ADD_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_8|saida[4]~12_combout\,
	oe => \SW_0_7|saida[0]~5_combout\,
	devoe => ww_devoe,
	o => ww_ADD_OUT(4));

-- Location: IOOBUF_X46_Y45_N42
\ADD_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_8|saida[5]~13_combout\,
	oe => \SW_0_7|saida[0]~5_combout\,
	devoe => ww_devoe,
	o => ww_ADD_OUT(5));

-- Location: IOOBUF_X32_Y45_N42
\ADD_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_8|saida[6]~14_combout\,
	oe => \SW_0_7|saida[0]~5_combout\,
	devoe => ww_devoe,
	o => ww_ADD_OUT(6));

-- Location: IOOBUF_X32_Y45_N59
\ADD_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_8|saida[7]~15_combout\,
	oe => \SW_0_7|saida[0]~5_combout\,
	devoe => ww_devoe,
	o => ww_ADD_OUT(7));

-- Location: IOOBUF_X54_Y16_N22
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X54_Y21_N5
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(1),
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X54_Y16_N39
\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X38_Y45_N53
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X22_Y45_N53
\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(4));

-- Location: IOOBUF_X43_Y45_N19
\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(5),
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X43_Y45_N2
\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X46_Y45_N76
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(7),
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X12_Y0_N2
\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(8),
	devoe => ww_devoe,
	o => ww_PC_OUT(8));

-- Location: IOOBUF_X0_Y18_N79
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_LED|REG_LEDS|DOUT\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X0_Y18_N96
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_LED|REG_LEDS|DOUT\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X0_Y18_N62
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_LED|REG_LEDS|DOUT\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X0_Y18_N45
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_LED|REG_LEDS|DOUT\(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X0_Y19_N39
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_LED|REG_LEDS|DOUT\(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X0_Y19_N56
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_LED|REG_LEDS|DOUT\(5),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X0_Y19_N5
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_LED|REG_LEDS|DOUT\(6),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X0_Y19_N22
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_LED|REG_LEDS|DOUT\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X0_Y20_N39
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_LED|FlipFlop1|DOUT~q\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X0_Y20_N56
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_LED|FlipFlop2|DOUT~q\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X38_Y45_N36
\REGA_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT\(0),
	devoe => ww_devoe,
	o => ww_REGA_OUT(0));

-- Location: IOOBUF_X54_Y20_N22
\REGA_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT\(1),
	devoe => ww_devoe,
	o => ww_REGA_OUT(1));

-- Location: IOOBUF_X44_Y45_N19
\REGA_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT\(2),
	devoe => ww_devoe,
	o => ww_REGA_OUT(2));

-- Location: IOOBUF_X54_Y14_N79
\REGA_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT\(3),
	devoe => ww_devoe,
	o => ww_REGA_OUT(3));

-- Location: IOOBUF_X20_Y45_N53
\REGA_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT\(4),
	devoe => ww_devoe,
	o => ww_REGA_OUT(4));

-- Location: IOOBUF_X34_Y45_N19
\REGA_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT\(5),
	devoe => ww_devoe,
	o => ww_REGA_OUT(5));

-- Location: IOOBUF_X38_Y45_N19
\REGA_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT\(6),
	devoe => ww_devoe,
	o => ww_REGA_OUT(6));

-- Location: IOOBUF_X54_Y14_N62
\REGA_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT\(7),
	devoe => ww_devoe,
	o => ww_REGA_OUT(7));

-- Location: IOOBUF_X54_Y14_N45
\Palavra[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|Equal11~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(0));

-- Location: IOOBUF_X36_Y45_N36
\Palavra[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|saida[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(1));

-- Location: IOOBUF_X54_Y19_N39
\Palavra[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|Equal11~1_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(2));

-- Location: IOOBUF_X54_Y18_N79
\Palavra[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|Equal11~2_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(3));

-- Location: IOOBUF_X36_Y45_N2
\Palavra[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|saida[4]~1_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(4));

-- Location: IOOBUF_X14_Y45_N2
\Palavra[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Palavra(5));

-- Location: IOOBUF_X54_Y15_N22
\Palavra[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|saida[6]~2_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(6));

-- Location: IOOBUF_X54_Y14_N96
\Palavra[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|Equal11~3_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(7));

-- Location: IOOBUF_X54_Y15_N39
\Palavra[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|Equal11~4_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(8));

-- Location: IOOBUF_X44_Y45_N2
\Palavra[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|saida[9]~3_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(9));

-- Location: IOOBUF_X54_Y16_N5
\Palavra[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|saida[10]~4_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(10));

-- Location: IOOBUF_X48_Y45_N2
\Palavra[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|Equal11~5_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(11));

-- Location: IOOBUF_X44_Y45_N53
\Palavra[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|saida[9]~3_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(12));

-- Location: IOOBUF_X54_Y17_N56
\EQUAL_FLAG~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|FLAG|DOUT~q\,
	devoe => ww_devoe,
	o => ww_EQUAL_FLAG);

-- Location: IOOBUF_X36_Y45_N19
\HabilitaRAM~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderBloco|Equal7~0_combout\,
	devoe => ww_devoe,
	o => ww_HabilitaRAM);

-- Location: IOOBUF_X42_Y45_N2
\MEM_ADDRESS[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~15_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(0));

-- Location: IOOBUF_X14_Y0_N36
\MEM_ADDRESS[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~17_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(1));

-- Location: IOOBUF_X42_Y45_N19
\MEM_ADDRESS[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~19_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(2));

-- Location: IOOBUF_X42_Y45_N36
\MEM_ADDRESS[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~21_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(3));

-- Location: IOOBUF_X40_Y45_N42
\MEM_ADDRESS[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~12_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(4));

-- Location: IOOBUF_X38_Y45_N2
\MEM_ADDRESS[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~23_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(5));

-- Location: IOOBUF_X10_Y0_N42
\MEM_ADDRESS[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~11_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(6));

-- Location: IOOBUF_X42_Y45_N53
\MEM_ADDRESS[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~12_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(7));

-- Location: IOOBUF_X11_Y0_N53
\MEM_ADDRESS[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~13_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(8));

-- Location: IOOBUF_X52_Y0_N53
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H0|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X51_Y0_N36
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H0|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X48_Y0_N76
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H0|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X50_Y0_N36
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H0|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X48_Y0_N93
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H0|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X50_Y0_N53
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H0|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X46_Y0_N36
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H0|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X44_Y0_N36
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X40_Y0_N93
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X44_Y0_N53
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X43_Y0_N36
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X38_Y0_N36
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X43_Y0_N53
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X51_Y0_N53
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X48_Y0_N42
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X38_Y0_N53
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X22_Y0_N53
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X36_Y0_N19
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X38_Y0_N19
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X46_Y0_N53
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X40_Y0_N76
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X40_Y0_N59
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H3|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X46_Y0_N2
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H3|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X40_Y0_N42
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H3|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X46_Y0_N19
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H3|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X52_Y0_N2
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H3|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X51_Y0_N2
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H3|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X51_Y0_N19
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H3|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X52_Y0_N36
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H4|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X48_Y0_N59
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H4|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X44_Y0_N19
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H4|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X52_Y0_N19
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H4|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X43_Y0_N2
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H4|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X36_Y0_N2
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H4|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X29_Y0_N19
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H4|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X29_Y0_N2
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X22_Y0_N19
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X43_Y0_N19
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X50_Y0_N19
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X0_Y21_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X0_Y21_N39
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X44_Y0_N2
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOIBUF_X14_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

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

-- Location: LABCELL_X14_Y2_N6
\gravar:detectorSub3|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gravar:detectorSub3|saidaQ~0_combout\ = ( !\KEY[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \gravar:detectorSub3|saidaQ~0_combout\);

-- Location: FF_X14_Y2_N7
\gravar:detectorSub3|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \gravar:detectorSub3|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gravar:detectorSub3|saidaQ~q\);

-- Location: MLABCELL_X37_Y10_N54
\gravar:detectorSub3|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \gravar:detectorSub3|saida~combout\ = LCELL(( !\gravar:detectorSub3|saidaQ~q\ & ( !\KEY[3]~input_o\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[3]~input_o\,
	dataf => \gravar:detectorSub3|ALT_INV_saidaQ~q\,
	combout => \gravar:detectorSub3|saida~combout\);

-- Location: FF_X37_Y11_N58
\processador|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \processador|MUX2|MUX_OUT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[4]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y10_N0
\processador|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~1_sumout\ = SUM(( \processador|PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \processador|incrementaPC|Add0~2\ = CARRY(( \processador|PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \processador|incrementaPC|Add0~1_sumout\,
	cout => \processador|incrementaPC|Add0~2\);

-- Location: FF_X37_Y11_N29
\processador|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \processador|MUX2|MUX_OUT[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(3));

-- Location: LABCELL_X36_Y11_N24
\ROM1|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~22_combout\ = ( \processador|PC|DOUT\(3) & ( (!\processador|PC|DOUT[2]~DUPLICATE_q\ & (!\processador|PC|DOUT[5]~DUPLICATE_q\ & (!\processador|PC|DOUT[0]~DUPLICATE_q\ & \processador|PC|DOUT\(1)))) ) ) # ( !\processador|PC|DOUT\(3) & ( 
-- (!\processador|PC|DOUT[5]~DUPLICATE_q\ & (\processador|PC|DOUT[2]~DUPLICATE_q\ & ((\processador|PC|DOUT\(1))))) # (\processador|PC|DOUT[5]~DUPLICATE_q\ & (((!\processador|PC|DOUT[0]~DUPLICATE_q\ & !\processador|PC|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001000100001100000100010000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(1),
	dataf => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~22_combout\);

-- Location: MLABCELL_X37_Y10_N12
\processador|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~17_sumout\ = SUM(( \processador|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~14\ ))
-- \processador|incrementaPC|Add0~18\ = CARRY(( \processador|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \processador|incrementaPC|Add0~14\,
	sumout => \processador|incrementaPC|Add0~17_sumout\,
	cout => \processador|incrementaPC|Add0~18\);

-- Location: MLABCELL_X37_Y10_N15
\processador|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~21_sumout\ = SUM(( \processador|PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~18\ ))
-- \processador|incrementaPC|Add0~22\ = CARRY(( \processador|PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \processador|incrementaPC|Add0~18\,
	sumout => \processador|incrementaPC|Add0~21_sumout\,
	cout => \processador|incrementaPC|Add0~22\);

-- Location: MLABCELL_X37_Y10_N18
\processador|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~25_sumout\ = SUM(( \processador|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~22\ ))
-- \processador|incrementaPC|Add0~26\ = CARRY(( \processador|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \processador|incrementaPC|Add0~22\,
	sumout => \processador|incrementaPC|Add0~25_sumout\,
	cout => \processador|incrementaPC|Add0~26\);

-- Location: FF_X37_Y11_N56
\processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \processador|MUX2|MUX_OUT[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(2));

-- Location: LABCELL_X36_Y11_N45
\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( \processador|PC|DOUT\(1) & ( (\processador|PC|DOUT\(2) & (!\processador|PC|DOUT[5]~DUPLICATE_q\ & !\processador|PC|DOUT[0]~DUPLICATE_q\)) ) ) # ( !\processador|PC|DOUT\(1) & ( (!\processador|PC|DOUT\(2) & 
-- (\processador|PC|DOUT[5]~DUPLICATE_q\ & !\processador|PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(2),
	datac => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~10_combout\);

-- Location: MLABCELL_X37_Y11_N33
\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( !\processador|PC|DOUT[7]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[6]~DUPLICATE_q\ & !\processador|PC|DOUT\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(4),
	dataf => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \ROM1|memROM~9_combout\);

-- Location: LABCELL_X35_Y11_N18
\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( \ROM1|memROM~9_combout\ & ( (!\processador|PC|DOUT[3]~DUPLICATE_q\ & (!\processador|PC|DOUT\(8) & \ROM1|memROM~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ROM1|memROM~11_combout\);

-- Location: FF_X37_Y10_N20
\processador|REG_RET|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \processador|incrementaPC|Add0~25_sumout\,
	ena => \processador|decoderInstru1|saida[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(6));

-- Location: MLABCELL_X37_Y11_N18
\processador|MUX2|MUX_OUT[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[6]~6_combout\ = ( \processador|MUX2|Equal2~0_combout\ & ( (!\processador|MUX2|Equal1~0_combout\ & ((\processador|REG_RET|DOUT\(6)))) # (\processador|MUX2|Equal1~0_combout\ & (\ROM1|memROM~11_combout\)) ) ) # ( 
-- !\processador|MUX2|Equal2~0_combout\ & ( \processador|incrementaPC|Add0~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|incrementaPC|ALT_INV_Add0~25_sumout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \processador|REG_RET|ALT_INV_DOUT\(6),
	datad => \processador|MUX2|ALT_INV_Equal1~0_combout\,
	dataf => \processador|MUX2|ALT_INV_Equal2~0_combout\,
	combout => \processador|MUX2|MUX_OUT[6]~6_combout\);

-- Location: FF_X37_Y11_N19
\processador|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \processador|MUX2|MUX_OUT[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[6]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y10_N21
\processador|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~29_sumout\ = SUM(( \processador|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~26\ ))
-- \processador|incrementaPC|Add0~30\ = CARRY(( \processador|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \processador|incrementaPC|Add0~26\,
	sumout => \processador|incrementaPC|Add0~29_sumout\,
	cout => \processador|incrementaPC|Add0~30\);

-- Location: FF_X37_Y11_N25
\processador|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \processador|MUX2|MUX_OUT[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(5));

-- Location: FF_X36_Y11_N4
\processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|MUX2|MUX_OUT[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(0));

-- Location: MLABCELL_X37_Y11_N12
\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = ( !\processador|PC|DOUT\(0) & ( \ROM1|memROM~1_combout\ & ( (!\processador|PC|DOUT\(3) & (\processador|PC|DOUT\(5) & (!\processador|PC|DOUT\(1) & !\processador|PC|DOUT[2]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(3),
	datab => \processador|PC|ALT_INV_DOUT\(5),
	datac => \processador|PC|ALT_INV_DOUT\(1),
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \processador|PC|ALT_INV_DOUT\(0),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~12_combout\);

-- Location: FF_X37_Y10_N22
\processador|REG_RET|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \processador|incrementaPC|Add0~29_sumout\,
	ena => \processador|decoderInstru1|saida[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(7));

-- Location: LABCELL_X39_Y11_N54
\processador|MUX2|MUX_OUT[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[7]~7_combout\ = ( \processador|REG_RET|DOUT\(7) & ( (!\processador|MUX2|Equal2~0_combout\ & (\processador|incrementaPC|Add0~29_sumout\)) # (\processador|MUX2|Equal2~0_combout\ & (((!\processador|MUX2|Equal1~0_combout\) # 
-- (\ROM1|memROM~12_combout\)))) ) ) # ( !\processador|REG_RET|DOUT\(7) & ( (!\processador|MUX2|Equal2~0_combout\ & (\processador|incrementaPC|Add0~29_sumout\)) # (\processador|MUX2|Equal2~0_combout\ & (((\ROM1|memROM~12_combout\ & 
-- \processador|MUX2|Equal1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100111001000100010011101110111001001110111011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUX2|ALT_INV_Equal2~0_combout\,
	datab => \processador|incrementaPC|ALT_INV_Add0~29_sumout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \processador|MUX2|ALT_INV_Equal1~0_combout\,
	dataf => \processador|REG_RET|ALT_INV_DOUT\(7),
	combout => \processador|MUX2|MUX_OUT[7]~7_combout\);

-- Location: FF_X39_Y11_N56
\processador|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \processador|MUX2|MUX_OUT[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[7]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y10_N24
\processador|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~33_sumout\ = SUM(( \processador|PC|DOUT\(8) ) + ( GND ) + ( \processador|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT\(8),
	cin => \processador|incrementaPC|Add0~30\,
	sumout => \processador|incrementaPC|Add0~33_sumout\);

-- Location: FF_X37_Y10_N25
\processador|REG_RET|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \processador|incrementaPC|Add0~33_sumout\,
	ena => \processador|decoderInstru1|saida[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(8));

-- Location: LABCELL_X35_Y11_N48
\processador|MUX2|MUX_OUT[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[8]~8_combout\ = ( \processador|incrementaPC|Add0~33_sumout\ & ( (!\processador|MUX2|Equal2~0_combout\) # ((!\processador|MUX2|Equal1~0_combout\ & (\processador|REG_RET|DOUT\(8))) # (\processador|MUX2|Equal1~0_combout\ & 
-- ((\ROM1|memROM~13_combout\)))) ) ) # ( !\processador|incrementaPC|Add0~33_sumout\ & ( (\processador|MUX2|Equal2~0_combout\ & ((!\processador|MUX2|Equal1~0_combout\ & (\processador|REG_RET|DOUT\(8))) # (\processador|MUX2|Equal1~0_combout\ & 
-- ((\ROM1|memROM~13_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110101110101111111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUX2|ALT_INV_Equal2~0_combout\,
	datab => \processador|MUX2|ALT_INV_Equal1~0_combout\,
	datac => \processador|REG_RET|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \processador|incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \processador|MUX2|MUX_OUT[8]~8_combout\);

-- Location: FF_X36_Y11_N14
\processador|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|MUX2|MUX_OUT[8]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(8));

-- Location: LABCELL_X36_Y11_N42
\ROM1|memROM~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~23_combout\ = ( \ROM1|memROM~9_combout\ & ( (\ROM1|memROM~22_combout\ & !\processador|PC|DOUT\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~22_combout\,
	datad => \processador|PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ROM1|memROM~23_combout\);

-- Location: FF_X37_Y10_N16
\processador|REG_RET|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \processador|incrementaPC|Add0~21_sumout\,
	ena => \processador|decoderInstru1|saida[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(5));

-- Location: MLABCELL_X37_Y11_N24
\processador|MUX2|MUX_OUT[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[5]~5_combout\ = ( \processador|REG_RET|DOUT\(5) & ( (!\processador|MUX2|Equal2~0_combout\ & (((\processador|incrementaPC|Add0~21_sumout\)))) # (\processador|MUX2|Equal2~0_combout\ & ((!\processador|MUX2|Equal1~0_combout\) # 
-- ((\ROM1|memROM~23_combout\)))) ) ) # ( !\processador|REG_RET|DOUT\(5) & ( (!\processador|MUX2|Equal2~0_combout\ & (((\processador|incrementaPC|Add0~21_sumout\)))) # (\processador|MUX2|Equal2~0_combout\ & (\processador|MUX2|Equal1~0_combout\ & 
-- (\ROM1|memROM~23_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101101000101111011110100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUX2|ALT_INV_Equal2~0_combout\,
	datab => \processador|MUX2|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~23_combout\,
	datad => \processador|incrementaPC|ALT_INV_Add0~21_sumout\,
	dataf => \processador|REG_RET|ALT_INV_DOUT\(5),
	combout => \processador|MUX2|MUX_OUT[5]~5_combout\);

-- Location: FF_X37_Y11_N26
\processador|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \processador|MUX2|MUX_OUT[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[5]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y11_N30
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \processador|PC|DOUT\(0) & ( (!\processador|PC|DOUT\(1) & ((!\processador|PC|DOUT[3]~DUPLICATE_q\ & (\processador|PC|DOUT[5]~DUPLICATE_q\ & \processador|PC|DOUT\(2))) # (\processador|PC|DOUT[3]~DUPLICATE_q\ & 
-- (!\processador|PC|DOUT[5]~DUPLICATE_q\ & !\processador|PC|DOUT\(2))))) ) ) # ( !\processador|PC|DOUT\(0) & ( (!\processador|PC|DOUT\(1) & (\processador|PC|DOUT[3]~DUPLICATE_q\ & (!\processador|PC|DOUT[5]~DUPLICATE_q\ & \processador|PC|DOUT\(2)))) # 
-- (\processador|PC|DOUT\(1) & (!\processador|PC|DOUT[3]~DUPLICATE_q\ & (\processador|PC|DOUT[5]~DUPLICATE_q\ & !\processador|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100000000001000010000000100000000010000010000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(1),
	datab => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~0_combout\);

-- Location: MLABCELL_X37_Y11_N42
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \processador|PC|DOUT\(0) & ( (!\processador|PC|DOUT\(2) & ((!\processador|PC|DOUT[5]~DUPLICATE_q\ & ((!\processador|PC|DOUT\(1)))) # (\processador|PC|DOUT[5]~DUPLICATE_q\ & (!\processador|PC|DOUT[3]~DUPLICATE_q\)))) # 
-- (\processador|PC|DOUT\(2) & (!\processador|PC|DOUT[3]~DUPLICATE_q\ & (!\processador|PC|DOUT[5]~DUPLICATE_q\ & \processador|PC|DOUT\(1)))) ) ) # ( !\processador|PC|DOUT\(0) & ( (!\processador|PC|DOUT[5]~DUPLICATE_q\ & ((!\processador|PC|DOUT\(2) & 
-- ((\processador|PC|DOUT\(1)))) # (\processador|PC|DOUT\(2) & (!\processador|PC|DOUT[3]~DUPLICATE_q\)))) # (\processador|PC|DOUT[5]~DUPLICATE_q\ & (((!\processador|PC|DOUT[3]~DUPLICATE_q\ & !\processador|PC|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110011100000010011001110000010101000010010001010100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(2),
	datab => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(1),
	dataf => \processador|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~2_combout\);

-- Location: MLABCELL_X37_Y11_N36
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \processador|PC|DOUT\(0) & ( (!\processador|PC|DOUT\(1) & (((!\processador|PC|DOUT[5]~DUPLICATE_q\ & !\processador|PC|DOUT\(2))))) # (\processador|PC|DOUT\(1) & (!\processador|PC|DOUT[3]~DUPLICATE_q\ & 
-- ((!\processador|PC|DOUT[5]~DUPLICATE_q\) # (!\processador|PC|DOUT\(2))))) ) ) # ( !\processador|PC|DOUT\(0) & ( (!\processador|PC|DOUT[5]~DUPLICATE_q\ & ((!\processador|PC|DOUT\(2) & ((!\processador|PC|DOUT[3]~DUPLICATE_q\))) # (\processador|PC|DOUT\(2) & 
-- (!\processador|PC|DOUT\(1))))) # (\processador|PC|DOUT[5]~DUPLICATE_q\ & (!\processador|PC|DOUT\(1) & (!\processador|PC|DOUT[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100010101000110010001010100011100100010000001110010001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(1),
	datab => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~3_combout\);

-- Location: LABCELL_X41_Y11_N18
\processador|decoderInstru1|saida[9]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida[9]~3_combout\ = ( \ROM1|memROM~1_combout\ & ( (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \processador|decoderInstru1|saida[9]~3_combout\);

-- Location: FF_X37_Y10_N1
\processador|REG_RET|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \processador|incrementaPC|Add0~1_sumout\,
	ena => \processador|decoderInstru1|saida[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(0));

-- Location: LABCELL_X36_Y11_N30
\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = ( !\processador|PC|DOUT\(1) & ( \processador|PC|DOUT\(3) & ( (!\processador|PC|DOUT[5]~DUPLICATE_q\ & (!\processador|PC|DOUT[0]~DUPLICATE_q\ & \processador|PC|DOUT\(2))) ) ) ) # ( \processador|PC|DOUT\(1) & ( 
-- !\processador|PC|DOUT\(3) & ( (!\processador|PC|DOUT\(2) & (!\processador|PC|DOUT[5]~DUPLICATE_q\ $ (!\processador|PC|DOUT[0]~DUPLICATE_q\))) ) ) ) # ( !\processador|PC|DOUT\(1) & ( !\processador|PC|DOUT\(3) & ( (!\processador|PC|DOUT[0]~DUPLICATE_q\ & 
-- (!\processador|PC|DOUT[5]~DUPLICATE_q\ $ (!\processador|PC|DOUT\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001111000000000000000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(2),
	datae => \processador|PC|ALT_INV_DOUT\(1),
	dataf => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~14_combout\);

-- Location: LABCELL_X36_Y11_N36
\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = ( \ROM1|memROM~14_combout\ & ( (\ROM1|memROM~9_combout\ & !\processador|PC|DOUT\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \processador|PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \ROM1|memROM~15_combout\);

-- Location: LABCELL_X35_Y11_N51
\processador|MUX2|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[0]~0_combout\ = ( \ROM1|memROM~15_combout\ & ( (!\processador|MUX2|Equal2~0_combout\ & (((\processador|incrementaPC|Add0~1_sumout\)))) # (\processador|MUX2|Equal2~0_combout\ & (((\processador|REG_RET|DOUT\(0))) # 
-- (\processador|MUX2|Equal1~0_combout\))) ) ) # ( !\ROM1|memROM~15_combout\ & ( (!\processador|MUX2|Equal2~0_combout\ & (((\processador|incrementaPC|Add0~1_sumout\)))) # (\processador|MUX2|Equal2~0_combout\ & (!\processador|MUX2|Equal1~0_combout\ & 
-- ((\processador|REG_RET|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100100111000011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUX2|ALT_INV_Equal2~0_combout\,
	datab => \processador|MUX2|ALT_INV_Equal1~0_combout\,
	datac => \processador|incrementaPC|ALT_INV_Add0~1_sumout\,
	datad => \processador|REG_RET|ALT_INV_DOUT\(0),
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \processador|MUX2|MUX_OUT[0]~0_combout\);

-- Location: FF_X36_Y11_N5
\processador|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|MUX2|MUX_OUT[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[0]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y10_N3
\processador|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~5_sumout\ = SUM(( \processador|PC|DOUT\(1) ) + ( GND ) + ( \processador|incrementaPC|Add0~2\ ))
-- \processador|incrementaPC|Add0~6\ = CARRY(( \processador|PC|DOUT\(1) ) + ( GND ) + ( \processador|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(1),
	cin => \processador|incrementaPC|Add0~2\,
	sumout => \processador|incrementaPC|Add0~5_sumout\,
	cout => \processador|incrementaPC|Add0~6\);

-- Location: MLABCELL_X37_Y10_N6
\processador|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~9_sumout\ = SUM(( \processador|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~6\ ))
-- \processador|incrementaPC|Add0~10\ = CARRY(( \processador|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \processador|incrementaPC|Add0~6\,
	sumout => \processador|incrementaPC|Add0~9_sumout\,
	cout => \processador|incrementaPC|Add0~10\);

-- Location: FF_X37_Y10_N8
\processador|REG_RET|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \processador|incrementaPC|Add0~9_sumout\,
	ena => \processador|decoderInstru1|saida[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(2));

-- Location: LABCELL_X36_Y11_N57
\ROM1|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~18_combout\ = ( \processador|PC|DOUT\(5) & ( (!\processador|PC|DOUT\(3) & (!\processador|PC|DOUT\(2) & !\processador|PC|DOUT[0]~DUPLICATE_q\)) ) ) # ( !\processador|PC|DOUT\(5) & ( (\processador|PC|DOUT\(3) & (\processador|PC|DOUT\(2) & 
-- !\processador|PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(3),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~18_combout\);

-- Location: LABCELL_X36_Y11_N54
\ROM1|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~19_combout\ = ( \ROM1|memROM~9_combout\ & ( (!\processador|PC|DOUT\(8) & (!\processador|PC|DOUT\(1) & \ROM1|memROM~18_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \processador|PC|ALT_INV_DOUT\(1),
	datad => \ROM1|ALT_INV_memROM~18_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ROM1|memROM~19_combout\);

-- Location: MLABCELL_X37_Y11_N54
\processador|MUX2|MUX_OUT[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[2]~2_combout\ = ( \ROM1|memROM~19_combout\ & ( (!\processador|MUX2|Equal2~0_combout\ & (((\processador|incrementaPC|Add0~9_sumout\)))) # (\processador|MUX2|Equal2~0_combout\ & (((\processador|REG_RET|DOUT\(2))) # 
-- (\processador|MUX2|Equal1~0_combout\))) ) ) # ( !\ROM1|memROM~19_combout\ & ( (!\processador|MUX2|Equal2~0_combout\ & (((\processador|incrementaPC|Add0~9_sumout\)))) # (\processador|MUX2|Equal2~0_combout\ & (!\processador|MUX2|Equal1~0_combout\ & 
-- (\processador|REG_RET|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUX2|ALT_INV_Equal2~0_combout\,
	datab => \processador|MUX2|ALT_INV_Equal1~0_combout\,
	datac => \processador|REG_RET|ALT_INV_DOUT\(2),
	datad => \processador|incrementaPC|ALT_INV_Add0~9_sumout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \processador|MUX2|MUX_OUT[2]~2_combout\);

-- Location: FF_X37_Y11_N55
\processador|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \processador|MUX2|MUX_OUT[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[2]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y10_N9
\processador|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~13_sumout\ = SUM(( \processador|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~10\ ))
-- \processador|incrementaPC|Add0~14\ = CARRY(( \processador|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \processador|incrementaPC|Add0~10\,
	sumout => \processador|incrementaPC|Add0~13_sumout\,
	cout => \processador|incrementaPC|Add0~14\);

-- Location: FF_X37_Y10_N14
\processador|REG_RET|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \processador|incrementaPC|Add0~17_sumout\,
	ena => \processador|decoderInstru1|saida[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(4));

-- Location: MLABCELL_X37_Y11_N57
\processador|MUX2|MUX_OUT[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[4]~4_combout\ = ( \ROM1|memROM~12_combout\ & ( (!\processador|MUX2|Equal2~0_combout\ & (((\processador|incrementaPC|Add0~17_sumout\)))) # (\processador|MUX2|Equal2~0_combout\ & (((\processador|REG_RET|DOUT\(4))) # 
-- (\processador|MUX2|Equal1~0_combout\))) ) ) # ( !\ROM1|memROM~12_combout\ & ( (!\processador|MUX2|Equal2~0_combout\ & (((\processador|incrementaPC|Add0~17_sumout\)))) # (\processador|MUX2|Equal2~0_combout\ & (!\processador|MUX2|Equal1~0_combout\ & 
-- ((\processador|REG_RET|DOUT\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100100111000011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUX2|ALT_INV_Equal2~0_combout\,
	datab => \processador|MUX2|ALT_INV_Equal1~0_combout\,
	datac => \processador|incrementaPC|ALT_INV_Add0~17_sumout\,
	datad => \processador|REG_RET|ALT_INV_DOUT\(4),
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \processador|MUX2|MUX_OUT[4]~4_combout\);

-- Location: FF_X37_Y11_N59
\processador|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \processador|MUX2|MUX_OUT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(4));

-- Location: FF_X37_Y11_N20
\processador|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \processador|MUX2|MUX_OUT[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(6));

-- Location: FF_X36_Y11_N13
\processador|PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|MUX2|MUX_OUT[8]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[8]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y11_N48
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\processador|PC|DOUT[7]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(4) & (!\processador|PC|DOUT\(6) & !\processador|PC|DOUT[8]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(4),
	datac => \processador|PC|ALT_INV_DOUT\(6),
	datad => \processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X41_Y11_N42
\processador|decoderInstru1|Equal11~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal11~3_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~4_combout\ & !\ROM1|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \processador|decoderInstru1|Equal11~3_combout\);

-- Location: MLABCELL_X37_Y11_N9
\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = ( \processador|PC|DOUT\(5) & ( (!\processador|PC|DOUT\(3) & ((!\processador|PC|DOUT\(1)) # (\processador|PC|DOUT\(0)))) ) ) # ( !\processador|PC|DOUT\(5) & ( (!\processador|PC|DOUT\(3) & (!\processador|PC|DOUT\(0) & 
-- \processador|PC|DOUT\(1))) # (\processador|PC|DOUT\(3) & (\processador|PC|DOUT\(0) & !\processador|PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110100000000001011010000010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(3),
	datac => \processador|PC|ALT_INV_DOUT\(0),
	datad => \processador|PC|ALT_INV_DOUT\(1),
	dataf => \processador|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~16_combout\);

-- Location: MLABCELL_X37_Y11_N6
\ROM1|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~17_combout\ = ( \ROM1|memROM~9_combout\ & ( (\ROM1|memROM~16_combout\ & (!\processador|PC|DOUT\(2) & !\processador|PC|DOUT[8]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ROM1|memROM~17_combout\);

-- Location: LABCELL_X36_Y10_N9
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( \ROM1|memROM~14_combout\ & ( (\ROM1|memROM~9_combout\ & !\processador|PC|DOUT\(8)) ) ) # ( !\ROM1|memROM~14_combout\ & ( (\ROM1|memROM~9_combout\ & (!\processador|PC|DOUT\(8) & \ROM1|memROM~22_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \processador|PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~22_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \comb~0_combout\);

-- Location: MLABCELL_X37_Y11_N51
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~6_combout\);

-- Location: MLABCELL_X37_Y11_N0
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~7_combout\);

-- Location: MLABCELL_X37_Y11_N21
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \ROM1|memROM~0_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~5_combout\);

-- Location: MLABCELL_X37_Y10_N51
\comb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~8_combout\ = ( !\processador|PC|DOUT[4]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[6]~DUPLICATE_q\ & (\processador|PC|DOUT[2]~DUPLICATE_q\ & !\processador|PC|DOUT[7]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \comb~8_combout\);

-- Location: LABCELL_X36_Y11_N48
\decoderBloco|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderBloco|Equal2~1_combout\ = ( \processador|PC|DOUT[5]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(8) & (!\processador|PC|DOUT\(1) & !\processador|PC|DOUT[0]~DUPLICATE_q\)) ) ) # ( !\processador|PC|DOUT[5]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(8) & 
-- \processador|PC|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \processador|PC|ALT_INV_DOUT\(1),
	datad => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \decoderBloco|Equal2~1_combout\);

-- Location: MLABCELL_X37_Y10_N36
\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( (\comb~8_combout\ & (!\processador|PC|DOUT\(8) & (\decoderBloco|Equal2~1_combout\ & !\processador|PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~8_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \decoderBloco|ALT_INV_Equal2~1_combout\,
	datad => \processador|PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \comb~2_combout\);

-- Location: MLABCELL_X37_Y11_N45
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = (\ROM1|memROM~4_combout\ & \ROM1|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~8_combout\);

-- Location: MLABCELL_X37_Y10_N57
\comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = ( \ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~6_combout\ & (!\ROM1|memROM~7_combout\ & (!\ROM1|memROM~5_combout\ & \comb~2_combout\))) ) ) # ( !\ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~7_combout\ & (\comb~2_combout\ & 
-- (!\ROM1|memROM~6_combout\ $ (!\ROM1|memROM~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001001000000000000100100000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ALT_INV_comb~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \comb~3_combout\);

-- Location: LABCELL_X35_Y10_N36
\comb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = ( !\comb~0_combout\ & ( \comb~3_combout\ & ( (!\ROM1|memROM~17_combout\ & !\ROM1|memROM~19_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \ALT_INV_comb~0_combout\,
	dataf => \ALT_INV_comb~3_combout\,
	combout => \comb~6_combout\);

-- Location: MLABCELL_X37_Y10_N30
\SW_8|saida[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_8|saida[1]~8_combout\ = ( \ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~19_combout\ & (\comb~3_combout\ & ((!\ROM1|memROM~15_combout\) # (\ROM1|memROM~23_combout\)))) ) ) # ( !\ROM1|memROM~17_combout\ & ( (\comb~3_combout\ & ((!\ROM1|memROM~15_combout\ 
-- & (\ROM1|memROM~23_combout\)) # (\ROM1|memROM~15_combout\ & ((!\ROM1|memROM~19_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011100000000000101110000000000110001000000000011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~23_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \ALT_INV_comb~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \SW_8|saida[1]~8_combout\);

-- Location: IOIBUF_X34_Y0_N52
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LABCELL_X41_Y11_N3
\processador|decoderInstru1|Equal11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal11~2_combout\ = ( !\ROM1|memROM~2_combout\ & ( (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~3_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \processador|decoderInstru1|Equal11~2_combout\);

-- Location: LABCELL_X35_Y11_N24
\processador|decoderInstru1|saida[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida[4]~1_combout\ = ( !\ROM1|memROM~8_combout\ & ( \ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~7_combout\ & !\ROM1|memROM~5_combout\) ) ) ) # ( !\ROM1|memROM~8_combout\ & ( !\ROM1|memROM~6_combout\ & ( (\ROM1|memROM~7_combout\ 
-- & !\ROM1|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000000000000000010001000100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \processador|decoderInstru1|saida[4]~1_combout\);

-- Location: LABCELL_X35_Y11_N33
\ROM1|memROM~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~29_combout\ = ( \ROM1|memROM~10_combout\ & ( (\ROM1|memROM~9_combout\ & !\processador|PC|DOUT[3]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \ROM1|memROM~29_combout\);

-- Location: IOIBUF_X36_Y0_N52
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LABCELL_X36_Y11_N18
\ROM1|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~20_combout\ = ( \processador|PC|DOUT\(3) & ( (!\processador|PC|DOUT[5]~DUPLICATE_q\ & (!\processador|PC|DOUT\(1) & \processador|PC|DOUT[0]~DUPLICATE_q\)) ) ) # ( !\processador|PC|DOUT\(3) & ( (\processador|PC|DOUT[5]~DUPLICATE_q\ & 
-- (!\processador|PC|DOUT\(1) & !\processador|PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(1),
	datad => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~20_combout\);

-- Location: LABCELL_X36_Y11_N21
\ROM1|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~21_combout\ = ( \ROM1|memROM~20_combout\ & ( (\ROM1|memROM~9_combout\ & (!\processador|PC|DOUT[2]~DUPLICATE_q\ & !\processador|PC|DOUT[8]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~20_combout\,
	combout => \ROM1|memROM~21_combout\);

-- Location: LABCELL_X35_Y11_N15
\ROM1|memROM~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~28_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~22_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~22_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ROM1|memROM~28_combout\);

-- Location: IOIBUF_X36_Y0_N35
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LABCELL_X35_Y11_N45
\ROM1|memROM~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~27_combout\ = ( !\processador|PC|DOUT[2]~DUPLICATE_q\ & ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~20_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~20_combout\,
	datae => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ROM1|memROM~27_combout\);

-- Location: IOIBUF_X34_Y0_N1
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LABCELL_X35_Y11_N36
\ROM1|memROM~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~26_combout\ = ( \ROM1|memROM~9_combout\ & ( (\ROM1|memROM~18_combout\ & !\processador|PC|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~18_combout\,
	datac => \processador|PC|ALT_INV_DOUT\(1),
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ROM1|memROM~26_combout\);

-- Location: IOIBUF_X33_Y0_N58
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LABCELL_X36_Y10_N45
\ROM1|memROM~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~25_combout\ = ( !\processador|PC|DOUT[2]~DUPLICATE_q\ & ( (\ROM1|memROM~16_combout\ & \ROM1|memROM~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~25_combout\);

-- Location: IOIBUF_X33_Y0_N92
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LABCELL_X36_Y10_N57
\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ( !\ROM1|memROM~22_combout\ & ( \ROM1|memROM~14_combout\ & ( (!\processador|PC|DOUT\(8) & (\ROM1|memROM~9_combout\ & ((!\ROM1|memROM~16_combout\) # (\processador|PC|DOUT[2]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	datae => \ROM1|ALT_INV_memROM~22_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \comb~1_combout\);

-- Location: MLABCELL_X37_Y11_N3
\processador|decoderInstru1|saida[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida[1]~0_combout\ = ( \ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~8_combout\ & !\ROM1|memROM~7_combout\)) ) ) # ( !\ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~7_combout\ & (!\ROM1|memROM~5_combout\ $ 
-- (!\ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000000010110100000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \processador|decoderInstru1|saida[1]~0_combout\);

-- Location: LABCELL_X36_Y10_N36
\SW_8|saida[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_8|saida[0]~7_combout\ = ( \processador|decoderInstru1|saida[1]~0_combout\ & ( (\comb~2_combout\ & (!\ROM1|memROM~19_combout\ & (!\SW[8]~input_o\ & \comb~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~2_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \ALT_INV_comb~1_combout\,
	dataf => \processador|decoderInstru1|ALT_INV_saida[1]~0_combout\,
	combout => \SW_8|saida[0]~7_combout\);

-- Location: LABCELL_X36_Y11_N0
\RESET_511~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RESET_511~0_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~22_combout\ & ( (!\processador|PC|DOUT[2]~DUPLICATE_q\ & (!\processador|PC|DOUT\(8) & (\ROM1|memROM~9_combout\ & \ROM1|memROM~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~22_combout\,
	combout => \RESET_511~0_combout\);

-- Location: MLABCELL_X37_Y10_N48
\SW_0_7|saida[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_0_7|saida[0]~3_combout\ = ( !\KEY[3]~input_o\ & ( (\RESET_511~0_combout\ & (!\ROM1|memROM~19_combout\ & \comb~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_RESET_511~0_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ALT_INV_comb~3_combout\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \SW_0_7|saida[0]~3_combout\);

-- Location: IOIBUF_X33_Y0_N41
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X33_Y0_N75
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LABCELL_X36_Y10_N0
\SW_0_7|saida[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_0_7|saida[0]~2_combout\ = ( \comb~3_combout\ & ( !\comb~0_combout\ & ( (!\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~17_combout\ & (!\SW[0]~input_o\)) # (\ROM1|memROM~17_combout\ & ((!\SW[9]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ALT_INV_comb~3_combout\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \SW_0_7|saida[0]~2_combout\);

-- Location: LABCELL_X36_Y10_N54
\comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~22_combout\ & ( (!\processador|PC|DOUT\(8) & (\ROM1|memROM~9_combout\ & ((!\ROM1|memROM~16_combout\) # (\processador|PC|DOUT[2]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~22_combout\,
	combout => \comb~4_combout\);

-- Location: MLABCELL_X37_Y10_N33
\comb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = ( \ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~5_combout\ & !\ROM1|memROM~8_combout\) ) ) # ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~5_combout\ $ (!\ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \comb~7_combout\);

-- Location: LABCELL_X36_Y10_N39
\comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = ( \comb~7_combout\ & ( (\comb~2_combout\ & (!\ROM1|memROM~19_combout\ & (!\ROM1|memROM~7_combout\ & \comb~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~2_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ALT_INV_comb~4_combout\,
	dataf => \ALT_INV_comb~7_combout\,
	combout => \comb~5_combout\);

-- Location: IOIBUF_X54_Y16_N55
\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

-- Location: LABCELL_X36_Y10_N6
\SW_0_7|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_0_7|saida[0]~1_combout\ = ( !\FPGA_RESET_N~input_o\ & ( (\ROM1|memROM~19_combout\ & (\comb~4_combout\ & \comb~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ALT_INV_comb~4_combout\,
	datad => \ALT_INV_comb~3_combout\,
	dataf => \ALT_INV_FPGA_RESET_N~input_o\,
	combout => \SW_0_7|saida[0]~1_combout\);

-- Location: IOIBUF_X10_Y0_N92
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LABCELL_X14_Y2_N0
\gravar:detectorSub0|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gravar:detectorSub0|saidaQ~0_combout\ = ( !\KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \gravar:detectorSub0|saidaQ~0_combout\);

-- Location: FF_X14_Y2_N1
\gravar:detectorSub0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \gravar:detectorSub0|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gravar:detectorSub0|saidaQ~q\);

-- Location: LABCELL_X35_Y11_N3
\gravar:detectorSub0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \gravar:detectorSub0|saida~combout\ = LCELL(( !\gravar:detectorSub0|saidaQ~q\ & ( !\KEY[0]~input_o\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[0]~input_o\,
	dataf => \gravar:detectorSub0|ALT_INV_saidaQ~q\,
	combout => \gravar:detectorSub0|saida~combout\);

-- Location: LABCELL_X36_Y11_N51
\FF_DEBOUNCER|DOUT~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF_DEBOUNCER|DOUT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \FF_DEBOUNCER|DOUT~feeder_combout\);

-- Location: LABCELL_X36_Y11_N6
RESET_511 : cyclonev_lcell_comb
-- Equation(s):
-- \RESET_511~combout\ = ( \RESET_511~0_combout\ & ( \ROM1|memROM~11_combout\ & ( (\ROM1|memROM~21_combout\ & (\ROM1|memROM~13_combout\ & (\ROM1|memROM~19_combout\ & \ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~21_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ALT_INV_RESET_511~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RESET_511~combout\);

-- Location: FF_X36_Y11_N53
\FF_DEBOUNCER|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \FF_DEBOUNCER|DOUT~feeder_combout\,
	clrn => \ALT_INV_RESET_511~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF_DEBOUNCER|DOUT~q\);

-- Location: LABCELL_X36_Y10_N18
\SW_0_7|saida[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_0_7|saida[0]~4_combout\ = ( !\SW_0_7|saida[0]~1_combout\ & ( \FF_DEBOUNCER|DOUT~q\ & ( (!\SW_8|saida[0]~7_combout\ & (!\SW_0_7|saida[0]~3_combout\ & !\SW_0_7|saida[0]~2_combout\)) ) ) ) # ( !\SW_0_7|saida[0]~1_combout\ & ( !\FF_DEBOUNCER|DOUT~q\ & ( 
-- (!\SW_8|saida[0]~7_combout\ & (!\SW_0_7|saida[0]~3_combout\ & (!\SW_0_7|saida[0]~2_combout\ & !\comb~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SW_8|ALT_INV_saida[0]~7_combout\,
	datab => \SW_0_7|ALT_INV_saida[0]~3_combout\,
	datac => \SW_0_7|ALT_INV_saida[0]~2_combout\,
	datad => \ALT_INV_comb~5_combout\,
	datae => \SW_0_7|ALT_INV_saida[0]~1_combout\,
	dataf => \FF_DEBOUNCER|ALT_INV_DOUT~q\,
	combout => \SW_0_7|saida[0]~4_combout\);

-- Location: LABCELL_X36_Y10_N30
\SW_0_7|saida[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_0_7|saida[0]~5_combout\ = ( \comb~3_combout\ & ( \RAM1|dado_out~0_combout\ ) ) # ( !\comb~3_combout\ & ( \RAM1|dado_out~0_combout\ ) ) # ( \comb~3_combout\ & ( !\RAM1|dado_out~0_combout\ & ( (!\ROM1|memROM~15_combout\ & ((!\ROM1|memROM~19_combout\) # 
-- ((\ROM1|memROM~23_combout\ & !\ROM1|memROM~17_combout\)))) # (\ROM1|memROM~15_combout\ & (!\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~17_combout\) # (\ROM1|memROM~23_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011101000110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ROM1|ALT_INV_memROM~23_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ALT_INV_comb~3_combout\,
	dataf => \RAM1|ALT_INV_dado_out~0_combout\,
	combout => \SW_0_7|saida[0]~5_combout\);

-- Location: LABCELL_X35_Y11_N30
\ROM1|memROM~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~24_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \ROM1|memROM~24_combout\);

-- Location: LABCELL_X36_Y9_N30
\processador|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~1_sumout\ = SUM(( \processador|REGA|DOUT\(0) ) + ( (!\processador|decoderInstru1|Equal11~3_combout\ & (((\SW_0_7|saida[0]~8_combout\)))) # (\processador|decoderInstru1|Equal11~3_combout\ & (!\processador|PC|DOUT\(8) & 
-- ((\ROM1|memROM~24_combout\)))) ) + ( !VCC ))
-- \processador|ULA1|Add0~2\ = CARRY(( \processador|REGA|DOUT\(0) ) + ( (!\processador|decoderInstru1|Equal11~3_combout\ & (((\SW_0_7|saida[0]~8_combout\)))) # (\processador|decoderInstru1|Equal11~3_combout\ & (!\processador|PC|DOUT\(8) & 
-- ((\ROM1|memROM~24_combout\)))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~3_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \SW_0_7|ALT_INV_saida[0]~8_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(0),
	dataf => \ROM1|ALT_INV_memROM~24_combout\,
	cin => GND,
	sumout => \processador|ULA1|Add0~1_sumout\,
	cout => \processador|ULA1|Add0~2\);

-- Location: LABCELL_X35_Y9_N0
\processador|ULA1|Add1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \processador|ULA1|Add1~34_cout\);

-- Location: LABCELL_X35_Y9_N3
\processador|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~1_sumout\ = SUM(( \processador|REGA|DOUT\(0) ) + ( (!\processador|decoderInstru1|Equal11~3_combout\ & (!\SW_0_7|saida[0]~8_combout\)) # (\processador|decoderInstru1|Equal11~3_combout\ & (((!\ROM1|memROM~24_combout\) # 
-- (\processador|PC|DOUT\(8))))) ) + ( \processador|ULA1|Add1~34_cout\ ))
-- \processador|ULA1|Add1~2\ = CARRY(( \processador|REGA|DOUT\(0) ) + ( (!\processador|decoderInstru1|Equal11~3_combout\ & (!\SW_0_7|saida[0]~8_combout\)) # (\processador|decoderInstru1|Equal11~3_combout\ & (((!\ROM1|memROM~24_combout\) # 
-- (\processador|PC|DOUT\(8))))) ) + ( \processador|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100111001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~3_combout\,
	datab => \SW_0_7|ALT_INV_saida[0]~8_combout\,
	datac => \processador|PC|ALT_INV_DOUT\(8),
	datad => \processador|REGA|ALT_INV_DOUT\(0),
	dataf => \ROM1|ALT_INV_memROM~24_combout\,
	cin => \processador|ULA1|Add1~34_cout\,
	sumout => \processador|ULA1|Add1~1_sumout\,
	cout => \processador|ULA1|Add1~2\);

-- Location: LABCELL_X36_Y10_N48
\processador|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[0]~0_combout\ = ( \ROM1|memROM~15_combout\ & ( \SW_0_7|saida[0]~4_combout\ & ( (\RAM1|dado_out~0_combout\ & (!\RAM1|ram~547_combout\ & (!\processador|decoderInstru1|Equal11~3_combout\ & \SW_0_7|saida[0]~5_combout\))) ) ) ) # ( 
-- !\ROM1|memROM~15_combout\ & ( \SW_0_7|saida[0]~4_combout\ & ( ((\RAM1|dado_out~0_combout\ & (!\RAM1|ram~547_combout\ & \SW_0_7|saida[0]~5_combout\))) # (\processador|decoderInstru1|Equal11~3_combout\) ) ) ) # ( \ROM1|memROM~15_combout\ & ( 
-- !\SW_0_7|saida[0]~4_combout\ & ( (!\processador|decoderInstru1|Equal11~3_combout\ & \SW_0_7|saida[0]~5_combout\) ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\SW_0_7|saida[0]~4_combout\ & ( (\SW_0_7|saida[0]~5_combout\) # 
-- (\processador|decoderInstru1|Equal11~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000000001111000000001111010011110000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~0_combout\,
	datab => \RAM1|ALT_INV_ram~547_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal11~3_combout\,
	datad => \SW_0_7|ALT_INV_saida[0]~5_combout\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \SW_0_7|ALT_INV_saida[0]~4_combout\,
	combout => \processador|ULA1|saida[0]~0_combout\);

-- Location: LABCELL_X36_Y10_N42
\processador|ULA1|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[0]~1_combout\ = ( \processador|ULA1|saida[0]~0_combout\ & ( (!\processador|decoderInstru1|Equal11~2_combout\ & (((\processador|ULA1|Add1~1_sumout\ & !\processador|decoderInstru1|saida[4]~1_combout\)))) # 
-- (\processador|decoderInstru1|Equal11~2_combout\ & (\processador|ULA1|Add0~1_sumout\)) ) ) # ( !\processador|ULA1|saida[0]~0_combout\ & ( (!\processador|decoderInstru1|Equal11~2_combout\ & (((\processador|decoderInstru1|saida[4]~1_combout\) # 
-- (\processador|ULA1|Add1~1_sumout\)))) # (\processador|decoderInstru1|Equal11~2_combout\ & (\processador|ULA1|Add0~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111101010101001111110101010100110000010101010011000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA1|ALT_INV_Add0~1_sumout\,
	datab => \processador|ULA1|ALT_INV_Add1~1_sumout\,
	datac => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	datad => \processador|decoderInstru1|ALT_INV_Equal11~2_combout\,
	dataf => \processador|ULA1|ALT_INV_saida[0]~0_combout\,
	combout => \processador|ULA1|saida[0]~1_combout\);

-- Location: MLABCELL_X34_Y11_N0
\processador|decoderInstru1|saida[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida[6]~2_combout\ = ( !\ROM1|memROM~8_combout\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~7_combout\) ) ) ) # ( !\ROM1|memROM~8_combout\ & ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ 
-- $ (!\ROM1|memROM~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010000000000000000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \processador|decoderInstru1|saida[6]~2_combout\);

-- Location: FF_X36_Y10_N44
\processador|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \processador|ULA1|saida[0]~1_combout\,
	ena => \processador|decoderInstru1|saida[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(0));

-- Location: LABCELL_X41_Y11_N39
\processador|decoderInstru1|Equal11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal11~0_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~0_combout\ & \ROM1|memROM~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \processador|decoderInstru1|Equal11~0_combout\);

-- Location: LABCELL_X39_Y11_N42
\RAM1|ram~715\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~715_combout\ = ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~23_combout\ & (!\ROM1|memROM~19_combout\ & (\ROM1|memROM~21_combout\ & !\ROM1|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~23_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~715_combout\);

-- Location: LABCELL_X39_Y11_N51
\RAM1|ram~716\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~716_combout\ = ( \processador|decoderInstru1|Equal11~0_combout\ & ( \RAM1|ram~715_combout\ & ( \decoderBloco|Equal7~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datae => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	dataf => \RAM1|ALT_INV_ram~715_combout\,
	combout => \RAM1|ram~716_combout\);

-- Location: FF_X32_Y11_N22
\RAM1|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~95_q\);

-- Location: LABCELL_X35_Y12_N51
\RAM1|ram~717\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~717_combout\ = ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~12_combout\ & (\ROM1|memROM~17_combout\ & (!\ROM1|memROM~19_combout\ & \ROM1|memROM~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~21_combout\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~717_combout\);

-- Location: MLABCELL_X34_Y8_N18
\RAM1|ram~718\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~718_combout\ = ( \RAM1|ram~717_combout\ & ( (\decoderBloco|Equal7~0_combout\ & \processador|decoderInstru1|Equal11~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datad => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	dataf => \RAM1|ALT_INV_ram~717_combout\,
	combout => \RAM1|ram~718_combout\);

-- Location: FF_X34_Y8_N14
\RAM1|ram~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~103_q\);

-- Location: LABCELL_X32_Y11_N39
\RAM1|ram~711\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~711_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~19_combout\ & (!\ROM1|memROM~17_combout\ & (\ROM1|memROM~21_combout\ & !\ROM1|memROM~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datad => \ROM1|ALT_INV_memROM~23_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~711_combout\);

-- Location: LABCELL_X32_Y9_N24
\RAM1|ram~712\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~712_combout\ = ( \decoderBloco|Equal7~0_combout\ & ( \processador|decoderInstru1|Equal11~0_combout\ & ( \RAM1|ram~711_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~711_combout\,
	datae => \decoderBloco|ALT_INV_Equal7~0_combout\,
	dataf => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	combout => \RAM1|ram~712_combout\);

-- Location: FF_X32_Y8_N28
\RAM1|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~79_q\);

-- Location: MLABCELL_X37_Y7_N30
\RAM1|ram~713\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~713_combout\ = ( !\ROM1|memROM~23_combout\ & ( !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~17_combout\ & (\ROM1|memROM~15_combout\ & (\ROM1|memROM~21_combout\ & !\ROM1|memROM~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \ROM1|ALT_INV_memROM~23_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~713_combout\);

-- Location: LABCELL_X41_Y10_N27
\RAM1|ram~714\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~714_combout\ = ( \decoderBloco|Equal7~0_combout\ & ( (\processador|decoderInstru1|Equal11~0_combout\ & \RAM1|ram~713_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datad => \RAM1|ALT_INV_ram~713_combout\,
	datae => \decoderBloco|ALT_INV_Equal7~0_combout\,
	combout => \RAM1|ram~714_combout\);

-- Location: FF_X41_Y10_N22
\RAM1|ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~87_q\);

-- Location: MLABCELL_X34_Y8_N15
\RAM1|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~529_combout\ = ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~103_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~87_q\ ) ) ) # ( \ROM1|memROM~17_combout\ & ( !\ROM1|memROM~15_combout\ & ( 
-- \RAM1|ram~95_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM1|ram~79_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~95_q\,
	datab => \RAM1|ALT_INV_ram~103_q\,
	datac => \RAM1|ALT_INV_ram~79_q\,
	datad => \RAM1|ALT_INV_ram~87_q\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~529_combout\);

-- Location: LABCELL_X31_Y11_N3
\RAM1|ram~15feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~15feeder_combout\ = ( \processador|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~15feeder_combout\);

-- Location: MLABCELL_X34_Y13_N21
\RAM1|ram~695\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~695_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~17_combout\ & (!\ROM1|memROM~15_combout\ & (!\ROM1|memROM~19_combout\ & !\ROM1|memROM~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~21_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~695_combout\);

-- Location: MLABCELL_X34_Y13_N30
\RAM1|ram~696\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~696_combout\ = ( \processador|decoderInstru1|Equal11~0_combout\ & ( \decoderBloco|Equal7~0_combout\ & ( \RAM1|ram~695_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~695_combout\,
	datae => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	dataf => \decoderBloco|ALT_INV_Equal7~0_combout\,
	combout => \RAM1|ram~696_combout\);

-- Location: FF_X31_Y11_N4
\RAM1|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~15feeder_combout\,
	ena => \RAM1|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~15_q\);

-- Location: LABCELL_X41_Y9_N33
\RAM1|ram~701\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~701_combout\ = ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~23_combout\ & (!\ROM1|memROM~21_combout\ & (!\ROM1|memROM~19_combout\ & \ROM1|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~23_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~701_combout\);

-- Location: LABCELL_X40_Y9_N30
\RAM1|ram~702\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~702_combout\ = ( \decoderBloco|Equal7~0_combout\ & ( \RAM1|ram~701_combout\ & ( \processador|decoderInstru1|Equal11~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datae => \decoderBloco|ALT_INV_Equal7~0_combout\,
	dataf => \RAM1|ALT_INV_ram~701_combout\,
	combout => \RAM1|ram~702_combout\);

-- Location: FF_X34_Y9_N29
\RAM1|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~39_q\);

-- Location: LABCELL_X31_Y11_N54
\RAM1|ram~31feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~31feeder_combout\ = ( \processador|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~31feeder_combout\);

-- Location: MLABCELL_X34_Y8_N54
\RAM1|ram~699\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~699_combout\ = ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~21_combout\ & ( (\ROM1|memROM~17_combout\ & (!\ROM1|memROM~12_combout\ & (!\ROM1|memROM~23_combout\ & !\ROM1|memROM~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~23_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~699_combout\);

-- Location: LABCELL_X35_Y8_N48
\RAM1|ram~700\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~700_combout\ = ( \RAM1|ram~699_combout\ & ( (\processador|decoderInstru1|Equal11~0_combout\ & \decoderBloco|Equal7~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datad => \decoderBloco|ALT_INV_Equal7~0_combout\,
	dataf => \RAM1|ALT_INV_ram~699_combout\,
	combout => \RAM1|ram~700_combout\);

-- Location: FF_X31_Y11_N55
\RAM1|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~31feeder_combout\,
	ena => \RAM1|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~31_q\);

-- Location: MLABCELL_X34_Y13_N6
\RAM1|ram~697\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~697_combout\ = ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~12_combout\ & (!\ROM1|memROM~19_combout\ & (!\ROM1|memROM~23_combout\ & \ROM1|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ROM1|ALT_INV_memROM~23_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~697_combout\);

-- Location: MLABCELL_X37_Y7_N48
\RAM1|ram~698\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~698_combout\ = ( \RAM1|ram~697_combout\ & ( (\decoderBloco|Equal7~0_combout\ & \processador|decoderInstru1|Equal11~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	dataf => \RAM1|ALT_INV_ram~697_combout\,
	combout => \RAM1|ram~698_combout\);

-- Location: FF_X35_Y7_N44
\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

-- Location: LABCELL_X35_Y7_N18
\RAM1|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~527_combout\ = ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~39_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~23_q\ ) ) ) # ( \ROM1|memROM~17_combout\ & ( !\ROM1|memROM~15_combout\ & ( 
-- \RAM1|ram~31_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM1|ram~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~15_q\,
	datab => \RAM1|ALT_INV_ram~39_q\,
	datac => \RAM1|ALT_INV_ram~31_q\,
	datad => \RAM1|ALT_INV_ram~23_q\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~527_combout\);

-- Location: MLABCELL_X37_Y7_N45
\RAM1|ram~719\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~719_combout\ = ( \ROM1|memROM~21_combout\ & ( !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~17_combout\ & (!\ROM1|memROM~15_combout\ & (!\ROM1|memROM~23_combout\ & \ROM1|memROM~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~23_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \ROM1|ALT_INV_memROM~21_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~719_combout\);

-- Location: LABCELL_X41_Y10_N12
\RAM1|ram~720\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~720_combout\ = ( \RAM1|ram~719_combout\ & ( (\processador|decoderInstru1|Equal11~0_combout\ & \decoderBloco|Equal7~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datab => \decoderBloco|ALT_INV_Equal7~0_combout\,
	dataf => \RAM1|ALT_INV_ram~719_combout\,
	combout => \RAM1|ram~720_combout\);

-- Location: FF_X35_Y10_N25
\RAM1|ram~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~111_q\);

-- Location: LABCELL_X32_Y9_N51
\RAM1|ram~725\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~725_combout\ = ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~23_combout\ & ( (\ROM1|memROM~17_combout\ & (!\ROM1|memROM~12_combout\ & (\ROM1|memROM~19_combout\ & \ROM1|memROM~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~21_combout\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~725_combout\);

-- Location: MLABCELL_X34_Y8_N36
\RAM1|ram~726\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~726_combout\ = ( \RAM1|ram~725_combout\ & ( (\decoderBloco|Equal7~0_combout\ & \processador|decoderInstru1|Equal11~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	dataf => \RAM1|ALT_INV_ram~725_combout\,
	combout => \RAM1|ram~726_combout\);

-- Location: FF_X34_Y8_N50
\RAM1|ram~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~135_q\);

-- Location: LABCELL_X41_Y10_N42
\RAM1|ram~723\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~723_combout\ = ( \ROM1|memROM~17_combout\ & ( !\ROM1|memROM~23_combout\ & ( (\ROM1|memROM~19_combout\ & (!\ROM1|memROM~15_combout\ & (!\ROM1|memROM~12_combout\ & \ROM1|memROM~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~21_combout\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~723_combout\);

-- Location: LABCELL_X41_Y10_N15
\RAM1|ram~724\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~724_combout\ = ( \RAM1|ram~723_combout\ & ( (\processador|decoderInstru1|Equal11~0_combout\ & \decoderBloco|Equal7~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datab => \decoderBloco|ALT_INV_Equal7~0_combout\,
	dataf => \RAM1|ALT_INV_ram~723_combout\,
	combout => \RAM1|ram~724_combout\);

-- Location: FF_X35_Y10_N20
\RAM1|ram~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~127_q\);

-- Location: MLABCELL_X34_Y11_N27
\RAM1|ram~721\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~721_combout\ = ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~15_combout\ & ( (\ROM1|memROM~19_combout\ & (\ROM1|memROM~21_combout\ & (!\ROM1|memROM~23_combout\ & !\ROM1|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \ROM1|ALT_INV_memROM~23_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~721_combout\);

-- Location: MLABCELL_X34_Y11_N33
\RAM1|ram~722\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~722_combout\ = ( \decoderBloco|Equal7~0_combout\ & ( (\processador|decoderInstru1|Equal11~0_combout\ & \RAM1|ram~721_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datad => \RAM1|ALT_INV_ram~721_combout\,
	dataf => \decoderBloco|ALT_INV_Equal7~0_combout\,
	combout => \RAM1|ram~722_combout\);

-- Location: FF_X34_Y8_N7
\RAM1|ram~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~119_q\);

-- Location: MLABCELL_X34_Y8_N51
\RAM1|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~530_combout\ = ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~135_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~119_q\ ) ) ) # ( \ROM1|memROM~17_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM1|ram~127_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM1|ram~111_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~111_q\,
	datab => \RAM1|ALT_INV_ram~135_q\,
	datac => \RAM1|ALT_INV_ram~127_q\,
	datad => \RAM1|ALT_INV_ram~119_q\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~530_combout\);

-- Location: MLABCELL_X34_Y13_N27
\RAM1|ram~703\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~703_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~15_combout\ & (!\ROM1|memROM~21_combout\ & (\ROM1|memROM~19_combout\ & !\ROM1|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~703_combout\);

-- Location: MLABCELL_X34_Y13_N57
\RAM1|ram~704\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~704_combout\ = ( \RAM1|ram~703_combout\ & ( \decoderBloco|Equal7~0_combout\ & ( \processador|decoderInstru1|Equal11~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datae => \RAM1|ALT_INV_ram~703_combout\,
	dataf => \decoderBloco|ALT_INV_Equal7~0_combout\,
	combout => \RAM1|ram~704_combout\);

-- Location: FF_X39_Y9_N26
\RAM1|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~47_q\);

-- Location: LABCELL_X41_Y10_N57
\RAM1|ram~705\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~705_combout\ = ( !\ROM1|memROM~23_combout\ & ( !\ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~12_combout\ & (\ROM1|memROM~15_combout\ & (\ROM1|memROM~19_combout\ & !\ROM1|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~23_combout\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~705_combout\);

-- Location: LABCELL_X41_Y10_N18
\RAM1|ram~706\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~706_combout\ = ( \RAM1|ram~705_combout\ & ( \decoderBloco|Equal7~0_combout\ & ( \processador|decoderInstru1|Equal11~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datae => \RAM1|ALT_INV_ram~705_combout\,
	dataf => \decoderBloco|ALT_INV_Equal7~0_combout\,
	combout => \RAM1|ram~706_combout\);

-- Location: FF_X39_Y9_N32
\RAM1|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~55_q\);

-- Location: LABCELL_X41_Y9_N15
\RAM1|ram~707\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~707_combout\ = ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~23_combout\ & (!\ROM1|memROM~21_combout\ & (\ROM1|memROM~17_combout\ & !\ROM1|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~23_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~707_combout\);

-- Location: LABCELL_X41_Y9_N54
\RAM1|ram~708\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~708_combout\ = ( \decoderBloco|Equal7~0_combout\ & ( \RAM1|ram~707_combout\ & ( \processador|decoderInstru1|Equal11~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datae => \decoderBloco|ALT_INV_Equal7~0_combout\,
	dataf => \RAM1|ALT_INV_ram~707_combout\,
	combout => \RAM1|ram~708_combout\);

-- Location: FF_X41_Y9_N43
\RAM1|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~63_q\);

-- Location: MLABCELL_X37_Y13_N24
\RAM1|ram~709\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~709_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~12_combout\ & (\ROM1|memROM~17_combout\ & (!\ROM1|memROM~21_combout\ & !\ROM1|memROM~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datad => \ROM1|ALT_INV_memROM~23_combout\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~709_combout\);

-- Location: MLABCELL_X37_Y13_N42
\RAM1|ram~710\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~710_combout\ = ( \RAM1|ram~709_combout\ & ( (\decoderBloco|Equal7~0_combout\ & \processador|decoderInstru1|Equal11~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datad => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	dataf => \RAM1|ALT_INV_ram~709_combout\,
	combout => \RAM1|ram~710_combout\);

-- Location: FF_X40_Y10_N4
\RAM1|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~71_q\);

-- Location: LABCELL_X39_Y9_N33
\RAM1|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~528_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \RAM1|ram~71_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \RAM1|ram~63_q\ ) ) ) # ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( 
-- \RAM1|ram~55_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( \RAM1|ram~47_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~47_q\,
	datab => \RAM1|ALT_INV_ram~55_q\,
	datac => \RAM1|ALT_INV_ram~63_q\,
	datad => \RAM1|ALT_INV_ram~71_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~528_combout\);

-- Location: MLABCELL_X34_Y9_N24
\RAM1|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~531_combout\ = ( \RAM1|ram~530_combout\ & ( \RAM1|ram~528_combout\ & ( ((!\ROM1|memROM~21_combout\ & ((\RAM1|ram~527_combout\))) # (\ROM1|memROM~21_combout\ & (\RAM1|ram~529_combout\))) # (\ROM1|memROM~19_combout\) ) ) ) # ( 
-- !\RAM1|ram~530_combout\ & ( \RAM1|ram~528_combout\ & ( (!\ROM1|memROM~21_combout\ & (((\ROM1|memROM~19_combout\) # (\RAM1|ram~527_combout\)))) # (\ROM1|memROM~21_combout\ & (\RAM1|ram~529_combout\ & ((!\ROM1|memROM~19_combout\)))) ) ) ) # ( 
-- \RAM1|ram~530_combout\ & ( !\RAM1|ram~528_combout\ & ( (!\ROM1|memROM~21_combout\ & (((\RAM1|ram~527_combout\ & !\ROM1|memROM~19_combout\)))) # (\ROM1|memROM~21_combout\ & (((\ROM1|memROM~19_combout\)) # (\RAM1|ram~529_combout\))) ) ) ) # ( 
-- !\RAM1|ram~530_combout\ & ( !\RAM1|ram~528_combout\ & ( (!\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~21_combout\ & ((\RAM1|ram~527_combout\))) # (\ROM1|memROM~21_combout\ & (\RAM1|ram~529_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110110101010100011011101010100001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~21_combout\,
	datab => \RAM1|ALT_INV_ram~529_combout\,
	datac => \RAM1|ALT_INV_ram~527_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \RAM1|ALT_INV_ram~530_combout\,
	dataf => \RAM1|ALT_INV_ram~528_combout\,
	combout => \RAM1|ram~531_combout\);

-- Location: LABCELL_X32_Y10_N0
\RAM1|ram~287feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~287feeder_combout\ = ( \processador|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~287feeder_combout\);

-- Location: LABCELL_X39_Y13_N6
\RAM1|ram~763\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~763_combout\ = ( \ROM1|memROM~17_combout\ & ( !\ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~19_combout\ & (\ROM1|memROM~23_combout\ & (!\ROM1|memROM~12_combout\ & !\ROM1|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~23_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~763_combout\);

-- Location: LABCELL_X39_Y13_N15
\RAM1|ram~764\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~764_combout\ = ( \RAM1|ram~763_combout\ & ( (\processador|decoderInstru1|Equal11~0_combout\ & \decoderBloco|Equal7~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datad => \decoderBloco|ALT_INV_Equal7~0_combout\,
	dataf => \RAM1|ALT_INV_ram~763_combout\,
	combout => \RAM1|ram~764_combout\);

-- Location: FF_X32_Y10_N1
\RAM1|ram~287\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~287feeder_combout\,
	ena => \RAM1|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~287_q\);

-- Location: MLABCELL_X34_Y12_N39
\RAM1|ram~279feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~279feeder_combout\ = ( \processador|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~279feeder_combout\);

-- Location: LABCELL_X39_Y11_N30
\RAM1|ram~761\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~761_combout\ = ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~21_combout\ & (!\ROM1|memROM~19_combout\ & (\ROM1|memROM~23_combout\ & !\ROM1|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~21_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ROM1|ALT_INV_memROM~23_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~761_combout\);

-- Location: LABCELL_X39_Y11_N6
\RAM1|ram~762\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~762_combout\ = ( \processador|decoderInstru1|Equal11~0_combout\ & ( \RAM1|ram~761_combout\ & ( \decoderBloco|Equal7~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datae => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	dataf => \RAM1|ALT_INV_ram~761_combout\,
	combout => \RAM1|ram~762_combout\);

-- Location: FF_X34_Y12_N41
\RAM1|ram~279\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~279feeder_combout\,
	ena => \RAM1|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~279_q\);

-- Location: MLABCELL_X37_Y8_N42
\RAM1|ram~765\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~765_combout\ = ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~17_combout\ & ( (\ROM1|memROM~15_combout\ & (!\ROM1|memROM~21_combout\ & (!\ROM1|memROM~19_combout\ & \ROM1|memROM~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~23_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~765_combout\);

-- Location: MLABCELL_X37_Y8_N3
\RAM1|ram~766\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~766_combout\ = ( \RAM1|ram~765_combout\ & ( (\decoderBloco|Equal7~0_combout\ & \processador|decoderInstru1|Equal11~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	dataf => \RAM1|ALT_INV_ram~765_combout\,
	combout => \RAM1|ram~766_combout\);

-- Location: FF_X34_Y9_N22
\RAM1|ram~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~295_q\);

-- Location: MLABCELL_X34_Y12_N48
\RAM1|ram~759\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~759_combout\ = ( !\ROM1|memROM~19_combout\ & ( \ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~21_combout\ & (!\ROM1|memROM~12_combout\ & (!\ROM1|memROM~17_combout\ & !\ROM1|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~21_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~759_combout\);

-- Location: MLABCELL_X34_Y12_N12
\RAM1|ram~760\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~760_combout\ = ( \processador|decoderInstru1|Equal11~0_combout\ & ( (\decoderBloco|Equal7~0_combout\ & \RAM1|ram~759_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datac => \RAM1|ALT_INV_ram~759_combout\,
	dataf => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	combout => \RAM1|ram~760_combout\);

-- Location: FF_X34_Y12_N5
\RAM1|ram~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~271_q\);

-- Location: MLABCELL_X34_Y9_N15
\RAM1|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~537_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \RAM1|ram~295_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \RAM1|ram~287_q\ ) ) ) # ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & 
-- ( \RAM1|ram~279_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( \RAM1|ram~271_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~287_q\,
	datab => \RAM1|ALT_INV_ram~279_q\,
	datac => \RAM1|ALT_INV_ram~295_q\,
	datad => \RAM1|ALT_INV_ram~271_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~537_combout\);

-- Location: LABCELL_X39_Y12_N30
\RAM1|ram~789\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~789_combout\ = ( \ROM1|memROM~21_combout\ & ( \ROM1|memROM~19_combout\ & ( (\ROM1|memROM~17_combout\ & (!\ROM1|memROM~12_combout\ & (\ROM1|memROM~23_combout\ & \ROM1|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~23_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~21_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~789_combout\);

-- Location: MLABCELL_X34_Y12_N18
\RAM1|ram~790\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~790_combout\ = ( \decoderBloco|Equal7~0_combout\ & ( (\RAM1|ram~789_combout\ & \processador|decoderInstru1|Equal11~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~789_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	dataf => \decoderBloco|ALT_INV_Equal7~0_combout\,
	combout => \RAM1|ram~790_combout\);

-- Location: FF_X34_Y12_N50
\RAM1|ram~391\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~391_q\);

-- Location: LABCELL_X35_Y14_N57
\RAM1|ram~383feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~383feeder_combout\ = \processador|REGA|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|REGA|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~383feeder_combout\);

-- Location: LABCELL_X40_Y13_N30
\RAM1|ram~787\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~787_combout\ = ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~15_combout\ & (!\ROM1|memROM~12_combout\ & (\ROM1|memROM~21_combout\ & \ROM1|memROM~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~787_combout\);

-- Location: LABCELL_X40_Y13_N51
\RAM1|ram~788\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~788_combout\ = ( \RAM1|ram~787_combout\ & ( (\processador|decoderInstru1|Equal11~0_combout\ & \decoderBloco|Equal7~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datac => \decoderBloco|ALT_INV_Equal7~0_combout\,
	dataf => \RAM1|ALT_INV_ram~787_combout\,
	combout => \RAM1|ram~788_combout\);

-- Location: FF_X35_Y14_N58
\RAM1|ram~383\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~383feeder_combout\,
	ena => \RAM1|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~383_q\);

-- Location: LABCELL_X40_Y10_N54
\RAM1|ram~785\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~785_combout\ = ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~17_combout\ & (\ROM1|memROM~19_combout\ & (\ROM1|memROM~23_combout\ & \ROM1|memROM~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ROM1|ALT_INV_memROM~23_combout\,
	datad => \ROM1|ALT_INV_memROM~21_combout\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~785_combout\);

-- Location: LABCELL_X40_Y10_N36
\RAM1|ram~786\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~786_combout\ = ( \decoderBloco|Equal7~0_combout\ & ( (\processador|decoderInstru1|Equal11~0_combout\ & \RAM1|ram~785_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datac => \RAM1|ALT_INV_ram~785_combout\,
	dataf => \decoderBloco|ALT_INV_Equal7~0_combout\,
	combout => \RAM1|ram~786_combout\);

-- Location: FF_X40_Y10_N38
\RAM1|ram~375\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~375_q\);

-- Location: LABCELL_X35_Y11_N57
\RAM1|ram~367feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~367feeder_combout\ = ( \processador|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~367feeder_combout\);

-- Location: LABCELL_X41_Y10_N45
\RAM1|ram~783\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~783_combout\ = ( \ROM1|memROM~23_combout\ & ( !\ROM1|memROM~17_combout\ & ( (\ROM1|memROM~19_combout\ & (!\ROM1|memROM~15_combout\ & (\ROM1|memROM~21_combout\ & !\ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~23_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~783_combout\);

-- Location: LABCELL_X41_Y10_N9
\RAM1|ram~784\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~784_combout\ = ( \RAM1|ram~783_combout\ & ( \decoderBloco|Equal7~0_combout\ & ( \processador|decoderInstru1|Equal11~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datae => \RAM1|ALT_INV_ram~783_combout\,
	dataf => \decoderBloco|ALT_INV_Equal7~0_combout\,
	combout => \RAM1|ram~784_combout\);

-- Location: FF_X35_Y11_N59
\RAM1|ram~367\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~367feeder_combout\,
	ena => \RAM1|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~367_q\);

-- Location: MLABCELL_X34_Y11_N12
\RAM1|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~540_combout\ = ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~391_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~375_q\ ) ) ) # ( \ROM1|memROM~17_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM1|ram~383_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM1|ram~367_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~391_q\,
	datab => \RAM1|ALT_INV_ram~383_q\,
	datac => \RAM1|ALT_INV_ram~375_q\,
	datad => \RAM1|ALT_INV_ram~367_q\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~540_combout\);

-- Location: LABCELL_X32_Y10_N36
\RAM1|ram~303feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~303feeder_combout\ = ( \processador|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~303feeder_combout\);

-- Location: MLABCELL_X37_Y8_N27
\RAM1|ram~767\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~767_combout\ = ( \ROM1|memROM~23_combout\ & ( !\ROM1|memROM~12_combout\ & ( (\ROM1|memROM~19_combout\ & (!\ROM1|memROM~21_combout\ & (!\ROM1|memROM~17_combout\ & !\ROM1|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~23_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~767_combout\);

-- Location: LABCELL_X35_Y8_N39
\RAM1|ram~768\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~768_combout\ = ( \RAM1|ram~767_combout\ & ( (\decoderBloco|Equal7~0_combout\ & \processador|decoderInstru1|Equal11~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	dataf => \RAM1|ALT_INV_ram~767_combout\,
	combout => \RAM1|ram~768_combout\);

-- Location: FF_X32_Y10_N38
\RAM1|ram~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~303feeder_combout\,
	ena => \RAM1|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~303_q\);

-- Location: LABCELL_X36_Y7_N36
\RAM1|ram~771\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~771_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~15_combout\ & ( (\ROM1|memROM~17_combout\ & (!\ROM1|memROM~21_combout\ & (\ROM1|memROM~23_combout\ & \ROM1|memROM~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \ROM1|ALT_INV_memROM~23_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~771_combout\);

-- Location: MLABCELL_X34_Y8_N39
\RAM1|ram~772\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~772_combout\ = ( \RAM1|ram~771_combout\ & ( (\decoderBloco|Equal7~0_combout\ & \processador|decoderInstru1|Equal11~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	dataf => \RAM1|ALT_INV_ram~771_combout\,
	combout => \RAM1|ram~772_combout\);

-- Location: FF_X35_Y12_N17
\RAM1|ram~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~319_q\);

-- Location: LABCELL_X40_Y13_N9
\RAM1|ram~773\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~773_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~21_combout\ & (!\ROM1|memROM~12_combout\ & (\ROM1|memROM~19_combout\ & \ROM1|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~21_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~773_combout\);

-- Location: LABCELL_X40_Y13_N12
\RAM1|ram~774\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~774_combout\ = ( \decoderBloco|Equal7~0_combout\ & ( (\RAM1|ram~773_combout\ & \processador|decoderInstru1|Equal11~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~773_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	dataf => \decoderBloco|ALT_INV_Equal7~0_combout\,
	combout => \RAM1|ram~774_combout\);

-- Location: FF_X35_Y12_N23
\RAM1|ram~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~327_q\);

-- Location: LABCELL_X36_Y14_N24
\RAM1|ram~769\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~769_combout\ = ( !\ROM1|memROM~17_combout\ & ( \ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~21_combout\ & (!\ROM1|memROM~12_combout\ & (\ROM1|memROM~23_combout\ & \ROM1|memROM~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~21_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~23_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~769_combout\);

-- Location: LABCELL_X36_Y14_N39
\RAM1|ram~770\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~770_combout\ = ( \decoderBloco|Equal7~0_combout\ & ( \RAM1|ram~769_combout\ & ( \processador|decoderInstru1|Equal11~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datae => \decoderBloco|ALT_INV_Equal7~0_combout\,
	dataf => \RAM1|ALT_INV_ram~769_combout\,
	combout => \RAM1|ram~770_combout\);

-- Location: FF_X36_Y14_N13
\RAM1|ram~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~311_q\);

-- Location: LABCELL_X35_Y12_N12
\RAM1|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~538_combout\ = ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~327_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~311_q\ ) ) ) # ( \ROM1|memROM~17_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM1|ram~319_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM1|ram~303_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~303_q\,
	datab => \RAM1|ALT_INV_ram~319_q\,
	datac => \RAM1|ALT_INV_ram~327_q\,
	datad => \RAM1|ALT_INV_ram~311_q\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~538_combout\);

-- Location: MLABCELL_X37_Y13_N48
\RAM1|ram~781\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~781_combout\ = ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~12_combout\ & (\ROM1|memROM~23_combout\ & (\ROM1|memROM~17_combout\ & \ROM1|memROM~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~23_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \ROM1|ALT_INV_memROM~21_combout\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~781_combout\);

-- Location: MLABCELL_X37_Y13_N54
\RAM1|ram~782\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~782_combout\ = ( \decoderBloco|Equal7~0_combout\ & ( \RAM1|ram~781_combout\ & ( \processador|decoderInstru1|Equal11~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datae => \decoderBloco|ALT_INV_Equal7~0_combout\,
	dataf => \RAM1|ALT_INV_ram~781_combout\,
	combout => \RAM1|ram~782_combout\);

-- Location: FF_X34_Y13_N14
\RAM1|ram~359\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~359_q\);

-- Location: LABCELL_X40_Y10_N0
\RAM1|ram~777\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~777_combout\ = ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~12_combout\ & ( (\ROM1|memROM~23_combout\ & (\ROM1|memROM~21_combout\ & (!\ROM1|memROM~17_combout\ & !\ROM1|memROM~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~23_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~777_combout\);

-- Location: LABCELL_X40_Y12_N42
\RAM1|ram~778\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~778_combout\ = ( \processador|decoderInstru1|Equal11~0_combout\ & ( \RAM1|ram~777_combout\ & ( \decoderBloco|Equal7~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datae => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	dataf => \RAM1|ALT_INV_ram~777_combout\,
	combout => \RAM1|ram~778_combout\);

-- Location: FF_X40_Y12_N34
\RAM1|ram~343\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~343_q\);

-- Location: MLABCELL_X34_Y13_N42
\RAM1|ram~351feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~351feeder_combout\ = \processador|REGA|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|REGA|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~351feeder_combout\);

-- Location: LABCELL_X39_Y11_N24
\RAM1|ram~779\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~779_combout\ = ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~17_combout\ & ( (\ROM1|memROM~23_combout\ & (!\ROM1|memROM~19_combout\ & (\ROM1|memROM~21_combout\ & !\ROM1|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~23_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~779_combout\);

-- Location: LABCELL_X39_Y11_N3
\RAM1|ram~780\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~780_combout\ = ( \processador|decoderInstru1|Equal11~0_combout\ & ( \RAM1|ram~779_combout\ & ( \decoderBloco|Equal7~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datae => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	dataf => \RAM1|ALT_INV_ram~779_combout\,
	combout => \RAM1|ram~780_combout\);

-- Location: FF_X34_Y13_N44
\RAM1|ram~351\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~351feeder_combout\,
	ena => \RAM1|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~351_q\);

-- Location: LABCELL_X39_Y13_N9
\RAM1|ram~775\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~775_combout\ = ( \ROM1|memROM~21_combout\ & ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~19_combout\ & (\ROM1|memROM~23_combout\ & (!\ROM1|memROM~15_combout\ & !\ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~23_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~21_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~775_combout\);

-- Location: LABCELL_X39_Y13_N27
\RAM1|ram~776\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~776_combout\ = ( \RAM1|ram~775_combout\ & ( (\decoderBloco|Equal7~0_combout\ & \processador|decoderInstru1|Equal11~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	dataf => \RAM1|ALT_INV_ram~775_combout\,
	combout => \RAM1|ram~776_combout\);

-- Location: FF_X34_Y13_N56
\RAM1|ram~335\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~335_q\);

-- Location: MLABCELL_X34_Y13_N15
\RAM1|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~539_combout\ = ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~359_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~343_q\ ) ) ) # ( \ROM1|memROM~17_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM1|ram~351_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM1|ram~335_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~359_q\,
	datab => \RAM1|ALT_INV_ram~343_q\,
	datac => \RAM1|ALT_INV_ram~351_q\,
	datad => \RAM1|ALT_INV_ram~335_q\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~539_combout\);

-- Location: MLABCELL_X34_Y9_N6
\RAM1|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~541_combout\ = ( \RAM1|ram~538_combout\ & ( \RAM1|ram~539_combout\ & ( (!\ROM1|memROM~19_combout\ & (((\ROM1|memROM~21_combout\)) # (\RAM1|ram~537_combout\))) # (\ROM1|memROM~19_combout\ & (((!\ROM1|memROM~21_combout\) # 
-- (\RAM1|ram~540_combout\)))) ) ) ) # ( !\RAM1|ram~538_combout\ & ( \RAM1|ram~539_combout\ & ( (!\ROM1|memROM~19_combout\ & (((\ROM1|memROM~21_combout\)) # (\RAM1|ram~537_combout\))) # (\ROM1|memROM~19_combout\ & (((\RAM1|ram~540_combout\ & 
-- \ROM1|memROM~21_combout\)))) ) ) ) # ( \RAM1|ram~538_combout\ & ( !\RAM1|ram~539_combout\ & ( (!\ROM1|memROM~19_combout\ & (\RAM1|ram~537_combout\ & ((!\ROM1|memROM~21_combout\)))) # (\ROM1|memROM~19_combout\ & (((!\ROM1|memROM~21_combout\) # 
-- (\RAM1|ram~540_combout\)))) ) ) ) # ( !\RAM1|ram~538_combout\ & ( !\RAM1|ram~539_combout\ & ( (!\ROM1|memROM~19_combout\ & (\RAM1|ram~537_combout\ & ((!\ROM1|memROM~21_combout\)))) # (\ROM1|memROM~19_combout\ & (((\RAM1|ram~540_combout\ & 
-- \ROM1|memROM~21_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101011101110000010100100010101011110111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \RAM1|ALT_INV_ram~537_combout\,
	datac => \RAM1|ALT_INV_ram~540_combout\,
	datad => \ROM1|ALT_INV_memROM~21_combout\,
	datae => \RAM1|ALT_INV_ram~538_combout\,
	dataf => \RAM1|ALT_INV_ram~539_combout\,
	combout => \RAM1|ram~541_combout\);

-- Location: LABCELL_X39_Y13_N3
\RAM1|ram~799\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~799_combout\ = ( !\ROM1|memROM~21_combout\ & ( \ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~19_combout\ & (\ROM1|memROM~15_combout\ & (!\ROM1|memROM~17_combout\ & \ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~21_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~799_combout\);

-- Location: LABCELL_X39_Y13_N54
\RAM1|ram~800\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~800_combout\ = ( \decoderBloco|Equal7~0_combout\ & ( (\processador|decoderInstru1|Equal11~0_combout\ & \RAM1|ram~799_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datac => \RAM1|ALT_INV_ram~799_combout\,
	dataf => \decoderBloco|ALT_INV_Equal7~0_combout\,
	combout => \RAM1|ram~800_combout\);

-- Location: FF_X39_Y13_N53
\RAM1|ram~407\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~407_q\);

-- Location: MLABCELL_X42_Y11_N12
\RAM1|ram~801\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~801_combout\ = ( \ROM1|memROM~23_combout\ & ( !\ROM1|memROM~21_combout\ & ( (\ROM1|memROM~19_combout\ & (!\ROM1|memROM~17_combout\ & (\ROM1|memROM~15_combout\ & \ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~23_combout\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~801_combout\);

-- Location: MLABCELL_X42_Y11_N30
\RAM1|ram~802\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~802_combout\ = ( \decoderBloco|Equal7~0_combout\ & ( \RAM1|ram~801_combout\ & ( \processador|decoderInstru1|Equal11~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datae => \decoderBloco|ALT_INV_Equal7~0_combout\,
	dataf => \RAM1|ALT_INV_ram~801_combout\,
	combout => \RAM1|ram~802_combout\);

-- Location: FF_X40_Y11_N59
\RAM1|ram~439\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~439_q\);

-- Location: LABCELL_X39_Y12_N48
\RAM1|ram~805\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~805_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~17_combout\ & (\ROM1|memROM~21_combout\ & (\ROM1|memROM~23_combout\ & \ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \ROM1|ALT_INV_memROM~23_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~805_combout\);

-- Location: MLABCELL_X37_Y14_N48
\RAM1|ram~806\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~806_combout\ = ( \processador|decoderInstru1|Equal11~0_combout\ & ( \RAM1|ram~805_combout\ & ( \decoderBloco|Equal7~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datae => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	dataf => \RAM1|ALT_INV_ram~805_combout\,
	combout => \RAM1|ram~806_combout\);

-- Location: FF_X40_Y11_N44
\RAM1|ram~503\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~503_q\);

-- Location: LABCELL_X40_Y12_N54
\RAM1|ram~803\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~803_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~21_combout\ & ( (\ROM1|memROM~23_combout\ & (!\ROM1|memROM~17_combout\ & (!\ROM1|memROM~19_combout\ & \ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~23_combout\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~803_combout\);

-- Location: LABCELL_X40_Y12_N27
\RAM1|ram~804\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~804_combout\ = ( \RAM1|ram~803_combout\ & ( (\processador|decoderInstru1|Equal11~0_combout\ & \decoderBloco|Equal7~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datac => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datae => \RAM1|ALT_INV_ram~803_combout\,
	combout => \RAM1|ram~804_combout\);

-- Location: FF_X40_Y12_N5
\RAM1|ram~471\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~471_q\);

-- Location: LABCELL_X40_Y11_N51
\RAM1|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~543_combout\ = ( \ROM1|memROM~19_combout\ & ( \ROM1|memROM~21_combout\ & ( \RAM1|ram~503_q\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( \ROM1|memROM~21_combout\ & ( \RAM1|ram~471_q\ ) ) ) # ( \ROM1|memROM~19_combout\ & ( !\ROM1|memROM~21_combout\ & 
-- ( \RAM1|ram~439_q\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( !\ROM1|memROM~21_combout\ & ( \RAM1|ram~407_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~407_q\,
	datab => \RAM1|ALT_INV_ram~439_q\,
	datac => \RAM1|ALT_INV_ram~503_q\,
	datad => \RAM1|ALT_INV_ram~471_q\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~543_combout\);

-- Location: LABCELL_X39_Y12_N42
\RAM1|ram~815\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~815_combout\ = ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~19_combout\ & ( (\ROM1|memROM~23_combout\ & (!\ROM1|memROM~21_combout\ & (\ROM1|memROM~17_combout\ & \ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~23_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~815_combout\);

-- Location: LABCELL_X39_Y12_N15
\RAM1|ram~816\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~816_combout\ = ( \processador|decoderInstru1|Equal11~0_combout\ & ( \decoderBloco|Equal7~0_combout\ & ( \RAM1|ram~815_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~815_combout\,
	datae => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	dataf => \decoderBloco|ALT_INV_Equal7~0_combout\,
	combout => \RAM1|ram~816_combout\);

-- Location: FF_X39_Y13_N31
\RAM1|ram~423\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~423_q\);

-- Location: MLABCELL_X37_Y8_N18
\RAM1|ram~821\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~821_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~17_combout\ & ( (\ROM1|memROM~15_combout\ & (\ROM1|memROM~21_combout\ & (\ROM1|memROM~19_combout\ & \ROM1|memROM~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~23_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~821_combout\);

-- Location: MLABCELL_X37_Y8_N0
\RAM1|ram~822\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~822_combout\ = ( \RAM1|ram~821_combout\ & ( (\decoderBloco|Equal7~0_combout\ & \processador|decoderInstru1|Equal11~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	dataf => \RAM1|ALT_INV_ram~821_combout\,
	combout => \RAM1|ram~822_combout\);

-- Location: FF_X36_Y13_N14
\RAM1|ram~519\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~519_q\);

-- Location: LABCELL_X40_Y13_N45
\RAM1|ram~817\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~817_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~21_combout\ & (\ROM1|memROM~12_combout\ & (\ROM1|memROM~19_combout\ & \ROM1|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~21_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~817_combout\);

-- Location: LABCELL_X39_Y13_N57
\RAM1|ram~818\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~818_combout\ = ( \RAM1|ram~817_combout\ & ( (\processador|decoderInstru1|Equal11~0_combout\ & \decoderBloco|Equal7~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datad => \decoderBloco|ALT_INV_Equal7~0_combout\,
	dataf => \RAM1|ALT_INV_ram~817_combout\,
	combout => \RAM1|ram~818_combout\);

-- Location: FF_X36_Y13_N47
\RAM1|ram~455\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~455_q\);

-- Location: LABCELL_X39_Y13_N21
\RAM1|ram~819\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~819_combout\ = ( \ROM1|memROM~21_combout\ & ( \ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~19_combout\ & (\ROM1|memROM~17_combout\ & (\ROM1|memROM~15_combout\ & \ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~21_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~819_combout\);

-- Location: LABCELL_X39_Y13_N12
\RAM1|ram~820\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~820_combout\ = ( \decoderBloco|Equal7~0_combout\ & ( (\processador|decoderInstru1|Equal11~0_combout\ & \RAM1|ram~819_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datac => \RAM1|ALT_INV_ram~819_combout\,
	dataf => \decoderBloco|ALT_INV_Equal7~0_combout\,
	combout => \RAM1|ram~820_combout\);

-- Location: FF_X39_Y13_N28
\RAM1|ram~487\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~487_q\);

-- Location: LABCELL_X36_Y13_N15
\RAM1|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~545_combout\ = ( \ROM1|memROM~19_combout\ & ( \ROM1|memROM~21_combout\ & ( \RAM1|ram~519_q\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( \ROM1|memROM~21_combout\ & ( \RAM1|ram~487_q\ ) ) ) # ( \ROM1|memROM~19_combout\ & ( !\ROM1|memROM~21_combout\ & 
-- ( \RAM1|ram~455_q\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( !\ROM1|memROM~21_combout\ & ( \RAM1|ram~423_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~423_q\,
	datab => \RAM1|ALT_INV_ram~519_q\,
	datac => \RAM1|ALT_INV_ram~455_q\,
	datad => \RAM1|ALT_INV_ram~487_q\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~545_combout\);

-- Location: LABCELL_X39_Y13_N48
\RAM1|ram~811\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~811_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~19_combout\ & (\ROM1|memROM~17_combout\ & (!\ROM1|memROM~15_combout\ & \ROM1|memROM~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \ROM1|ALT_INV_memROM~21_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~811_combout\);

-- Location: LABCELL_X39_Y13_N45
\RAM1|ram~812\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~812_combout\ = ( \decoderBloco|Equal7~0_combout\ & ( \RAM1|ram~811_combout\ & ( \processador|decoderInstru1|Equal11~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datae => \decoderBloco|ALT_INV_Equal7~0_combout\,
	dataf => \RAM1|ALT_INV_ram~811_combout\,
	combout => \RAM1|ram~812_combout\);

-- Location: FF_X37_Y11_N2
\RAM1|ram~479\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~479_q\);

-- Location: LABCELL_X32_Y11_N57
\RAM1|ram~807\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~807_combout\ = ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~21_combout\ & ( (\ROM1|memROM~23_combout\ & (\ROM1|memROM~17_combout\ & (!\ROM1|memROM~15_combout\ & !\ROM1|memROM~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~23_combout\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~807_combout\);

-- Location: LABCELL_X32_Y11_N9
\RAM1|ram~808\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~808_combout\ = ( \decoderBloco|Equal7~0_combout\ & ( (\processador|decoderInstru1|Equal11~0_combout\ & \RAM1|ram~807_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datac => \RAM1|ALT_INV_ram~807_combout\,
	dataf => \decoderBloco|ALT_INV_Equal7~0_combout\,
	combout => \RAM1|ram~808_combout\);

-- Location: FF_X41_Y11_N35
\RAM1|ram~415\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~415_q\);

-- Location: LABCELL_X39_Y12_N18
\RAM1|ram~809\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~809_combout\ = ( !\ROM1|memROM~21_combout\ & ( \ROM1|memROM~19_combout\ & ( (\ROM1|memROM~17_combout\ & (!\ROM1|memROM~15_combout\ & (\ROM1|memROM~23_combout\ & \ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~23_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~21_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~809_combout\);

-- Location: LABCELL_X39_Y12_N24
\RAM1|ram~810\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~810_combout\ = ( \processador|decoderInstru1|Equal11~0_combout\ & ( \RAM1|ram~809_combout\ & ( \decoderBloco|Equal7~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datae => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	dataf => \RAM1|ALT_INV_ram~809_combout\,
	combout => \RAM1|ram~810_combout\);

-- Location: FF_X36_Y8_N5
\RAM1|ram~447\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~447_q\);

-- Location: MLABCELL_X37_Y13_N0
\RAM1|ram~813\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~813_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~19_combout\ & ( (\ROM1|memROM~21_combout\ & (\ROM1|memROM~23_combout\ & (\ROM1|memROM~12_combout\ & \ROM1|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~21_combout\,
	datab => \ROM1|ALT_INV_memROM~23_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~813_combout\);

-- Location: MLABCELL_X37_Y13_N45
\RAM1|ram~814\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~814_combout\ = (\decoderBloco|Equal7~0_combout\ & (\processador|decoderInstru1|Equal11~0_combout\ & \RAM1|ram~813_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datad => \RAM1|ALT_INV_ram~813_combout\,
	combout => \RAM1|ram~814_combout\);

-- Location: FF_X36_Y13_N29
\RAM1|ram~511\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~511_q\);

-- Location: LABCELL_X36_Y13_N27
\RAM1|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~544_combout\ = ( \RAM1|ram~511_q\ & ( \ROM1|memROM~21_combout\ & ( (\ROM1|memROM~19_combout\) # (\RAM1|ram~479_q\) ) ) ) # ( !\RAM1|ram~511_q\ & ( \ROM1|memROM~21_combout\ & ( (\RAM1|ram~479_q\ & !\ROM1|memROM~19_combout\) ) ) ) # ( 
-- \RAM1|ram~511_q\ & ( !\ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~19_combout\ & (\RAM1|ram~415_q\)) # (\ROM1|memROM~19_combout\ & ((\RAM1|ram~447_q\))) ) ) ) # ( !\RAM1|ram~511_q\ & ( !\ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~19_combout\ & 
-- (\RAM1|ram~415_q\)) # (\ROM1|memROM~19_combout\ & ((\RAM1|ram~447_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~479_q\,
	datab => \RAM1|ALT_INV_ram~415_q\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \RAM1|ALT_INV_ram~447_q\,
	datae => \RAM1|ALT_INV_ram~511_q\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~544_combout\);

-- Location: MLABCELL_X34_Y13_N39
\RAM1|ram~793\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~793_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~17_combout\ & (\ROM1|memROM~19_combout\ & (!\ROM1|memROM~21_combout\ & !\ROM1|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~793_combout\);

-- Location: LABCELL_X35_Y13_N18
\RAM1|ram~794\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~794_combout\ = ( \processador|decoderInstru1|Equal11~0_combout\ & ( \decoderBloco|Equal7~0_combout\ & ( \RAM1|ram~793_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~793_combout\,
	datae => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	dataf => \decoderBloco|ALT_INV_Equal7~0_combout\,
	combout => \RAM1|ram~794_combout\);

-- Location: FF_X35_Y13_N50
\RAM1|ram~431\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~431_q\);

-- Location: LABCELL_X39_Y11_N33
\RAM1|ram~791\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~791_combout\ = ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~21_combout\ & (!\ROM1|memROM~19_combout\ & (!\ROM1|memROM~17_combout\ & \ROM1|memROM~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~21_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \ROM1|ALT_INV_memROM~23_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~791_combout\);

-- Location: LABCELL_X39_Y11_N57
\RAM1|ram~792\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~792_combout\ = ( \RAM1|ram~791_combout\ & ( (\decoderBloco|Equal7~0_combout\ & \processador|decoderInstru1|Equal11~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datad => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	dataf => \RAM1|ALT_INV_ram~791_combout\,
	combout => \RAM1|ram~792_combout\);

-- Location: FF_X36_Y10_N16
\RAM1|ram~399\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~399_q\);

-- Location: LABCELL_X39_Y13_N33
\RAM1|ram~795\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~795_combout\ = ( !\ROM1|memROM~19_combout\ & ( \ROM1|memROM~23_combout\ & ( (\ROM1|memROM~12_combout\ & (!\ROM1|memROM~15_combout\ & (!\ROM1|memROM~17_combout\ & \ROM1|memROM~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \ROM1|ALT_INV_memROM~21_combout\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~795_combout\);

-- Location: LABCELL_X35_Y13_N24
\RAM1|ram~796\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~796_combout\ = ( \processador|decoderInstru1|Equal11~0_combout\ & ( \RAM1|ram~795_combout\ & ( \decoderBloco|Equal7~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datae => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	dataf => \RAM1|ALT_INV_ram~795_combout\,
	combout => \RAM1|ram~796_combout\);

-- Location: FF_X35_Y13_N8
\RAM1|ram~463\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~463_q\);

-- Location: LABCELL_X36_Y8_N0
\RAM1|ram~797\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~797_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~23_combout\ & ( (\ROM1|memROM~19_combout\ & (\ROM1|memROM~21_combout\ & (\ROM1|memROM~12_combout\ & !\ROM1|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~797_combout\);

-- Location: LABCELL_X35_Y8_N6
\RAM1|ram~798\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~798_combout\ = ( \RAM1|ram~797_combout\ & ( (\processador|decoderInstru1|Equal11~0_combout\ & \decoderBloco|Equal7~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datad => \decoderBloco|ALT_INV_Equal7~0_combout\,
	dataf => \RAM1|ALT_INV_ram~797_combout\,
	combout => \RAM1|ram~798_combout\);

-- Location: FF_X35_Y13_N38
\RAM1|ram~495\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~495_q\);

-- Location: LABCELL_X35_Y13_N39
\RAM1|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~542_combout\ = ( \ROM1|memROM~21_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~495_q\ ) ) ) # ( !\ROM1|memROM~21_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~431_q\ ) ) ) # ( \ROM1|memROM~21_combout\ & ( !\ROM1|memROM~19_combout\ & 
-- ( \RAM1|ram~463_q\ ) ) ) # ( !\ROM1|memROM~21_combout\ & ( !\ROM1|memROM~19_combout\ & ( \RAM1|ram~399_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~431_q\,
	datab => \RAM1|ALT_INV_ram~399_q\,
	datac => \RAM1|ALT_INV_ram~463_q\,
	datad => \RAM1|ALT_INV_ram~495_q\,
	datae => \ROM1|ALT_INV_memROM~21_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~542_combout\);

-- Location: MLABCELL_X34_Y9_N0
\RAM1|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~546_combout\ = ( \RAM1|ram~544_combout\ & ( \RAM1|ram~542_combout\ & ( (!\ROM1|memROM~15_combout\) # ((!\ROM1|memROM~17_combout\ & (\RAM1|ram~543_combout\)) # (\ROM1|memROM~17_combout\ & ((\RAM1|ram~545_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~544_combout\ & ( \RAM1|ram~542_combout\ & ( (!\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~15_combout\) # ((\RAM1|ram~543_combout\)))) # (\ROM1|memROM~17_combout\ & (\ROM1|memROM~15_combout\ & ((\RAM1|ram~545_combout\)))) ) ) ) # ( 
-- \RAM1|ram~544_combout\ & ( !\RAM1|ram~542_combout\ & ( (!\ROM1|memROM~17_combout\ & (\ROM1|memROM~15_combout\ & (\RAM1|ram~543_combout\))) # (\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~15_combout\) # ((\RAM1|ram~545_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~544_combout\ & ( !\RAM1|ram~542_combout\ & ( (\ROM1|memROM~15_combout\ & ((!\ROM1|memROM~17_combout\ & (\RAM1|ram~543_combout\)) # (\ROM1|memROM~17_combout\ & ((\RAM1|ram~545_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \RAM1|ALT_INV_ram~543_combout\,
	datad => \RAM1|ALT_INV_ram~545_combout\,
	datae => \RAM1|ALT_INV_ram~544_combout\,
	dataf => \RAM1|ALT_INV_ram~542_combout\,
	combout => \RAM1|ram~546_combout\);

-- Location: LABCELL_X39_Y13_N39
\RAM1|ram~741\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~741_combout\ = ( \ROM1|memROM~19_combout\ & ( !\ROM1|memROM~23_combout\ & ( (\ROM1|memROM~12_combout\ & (\ROM1|memROM~15_combout\ & (!\ROM1|memROM~17_combout\ & \ROM1|memROM~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \ROM1|ALT_INV_memROM~21_combout\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~741_combout\);

-- Location: LABCELL_X39_Y13_N24
\RAM1|ram~742\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~742_combout\ = ( \RAM1|ram~741_combout\ & ( (\processador|decoderInstru1|Equal11~0_combout\ & \decoderBloco|Equal7~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datad => \decoderBloco|ALT_INV_Equal7~0_combout\,
	dataf => \RAM1|ALT_INV_ram~741_combout\,
	combout => \RAM1|ram~742_combout\);

-- Location: FF_X37_Y9_N5
\RAM1|ram~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~247_q\);

-- Location: LABCELL_X40_Y9_N42
\RAM1|ram~735\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~735_combout\ = ( !\ROM1|memROM~19_combout\ & ( !\ROM1|memROM~23_combout\ & ( (\ROM1|memROM~15_combout\ & (!\ROM1|memROM~21_combout\ & (\ROM1|memROM~12_combout\ & !\ROM1|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~735_combout\);

-- Location: LABCELL_X40_Y9_N48
\RAM1|ram~736\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~736_combout\ = ( \decoderBloco|Equal7~0_combout\ & ( \RAM1|ram~735_combout\ & ( \processador|decoderInstru1|Equal11~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datae => \decoderBloco|ALT_INV_Equal7~0_combout\,
	dataf => \RAM1|ALT_INV_ram~735_combout\,
	combout => \RAM1|ram~736_combout\);

-- Location: FF_X40_Y9_N5
\RAM1|ram~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~151_q\);

-- Location: LABCELL_X41_Y9_N39
\RAM1|ram~739\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~739_combout\ = ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~23_combout\ & (!\ROM1|memROM~19_combout\ & (\ROM1|memROM~21_combout\ & \ROM1|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~23_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~739_combout\);

-- Location: LABCELL_X41_Y9_N6
\RAM1|ram~740\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~740_combout\ = ( \decoderBloco|Equal7~0_combout\ & ( \RAM1|ram~739_combout\ & ( \processador|decoderInstru1|Equal11~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datae => \decoderBloco|ALT_INV_Equal7~0_combout\,
	dataf => \RAM1|ALT_INV_ram~739_combout\,
	combout => \RAM1|ram~740_combout\);

-- Location: FF_X37_Y9_N8
\RAM1|ram~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~215_q\);

-- Location: LABCELL_X41_Y9_N18
\RAM1|ram~737\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~737_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~19_combout\ & ( (\ROM1|memROM~15_combout\ & (!\ROM1|memROM~21_combout\ & (!\ROM1|memROM~23_combout\ & !\ROM1|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \ROM1|ALT_INV_memROM~23_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~737_combout\);

-- Location: LABCELL_X40_Y9_N39
\RAM1|ram~738\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~738_combout\ = ( \decoderBloco|Equal7~0_combout\ & ( \RAM1|ram~737_combout\ & ( \processador|decoderInstru1|Equal11~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datae => \decoderBloco|ALT_INV_Equal7~0_combout\,
	dataf => \RAM1|ALT_INV_ram~737_combout\,
	combout => \RAM1|ram~738_combout\);

-- Location: FF_X37_Y9_N17
\RAM1|ram~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~183_q\);

-- Location: MLABCELL_X37_Y9_N15
\RAM1|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~533_combout\ = ( \RAM1|ram~183_q\ & ( \ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~19_combout\ & ((\RAM1|ram~215_q\))) # (\ROM1|memROM~19_combout\ & (\RAM1|ram~247_q\)) ) ) ) # ( !\RAM1|ram~183_q\ & ( \ROM1|memROM~21_combout\ & ( 
-- (!\ROM1|memROM~19_combout\ & ((\RAM1|ram~215_q\))) # (\ROM1|memROM~19_combout\ & (\RAM1|ram~247_q\)) ) ) ) # ( \RAM1|ram~183_q\ & ( !\ROM1|memROM~21_combout\ & ( (\ROM1|memROM~19_combout\) # (\RAM1|ram~151_q\) ) ) ) # ( !\RAM1|ram~183_q\ & ( 
-- !\ROM1|memROM~21_combout\ & ( (\RAM1|ram~151_q\ & !\ROM1|memROM~19_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~247_q\,
	datab => \RAM1|ALT_INV_ram~151_q\,
	datac => \RAM1|ALT_INV_ram~215_q\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \RAM1|ALT_INV_ram~183_q\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~533_combout\);

-- Location: MLABCELL_X42_Y11_N24
\RAM1|ram~755\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~755_combout\ = ( !\ROM1|memROM~23_combout\ & ( \ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~19_combout\ & (\ROM1|memROM~12_combout\ & (\ROM1|memROM~15_combout\ & \ROM1|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~23_combout\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~755_combout\);

-- Location: MLABCELL_X42_Y11_N21
\RAM1|ram~756\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~756_combout\ = ( \decoderBloco|Equal7~0_combout\ & ( \RAM1|ram~755_combout\ & ( \processador|decoderInstru1|Equal11~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datae => \decoderBloco|ALT_INV_Equal7~0_combout\,
	dataf => \RAM1|ALT_INV_ram~755_combout\,
	combout => \RAM1|ram~756_combout\);

-- Location: FF_X36_Y7_N11
\RAM1|ram~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~231_q\);

-- Location: LABCELL_X36_Y7_N12
\RAM1|ram~751\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~751_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~15_combout\ & ( (\ROM1|memROM~17_combout\ & (!\ROM1|memROM~21_combout\ & (!\ROM1|memROM~23_combout\ & !\ROM1|memROM~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \ROM1|ALT_INV_memROM~23_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~751_combout\);

-- Location: LABCELL_X36_Y7_N3
\RAM1|ram~752\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~752_combout\ = ( \processador|decoderInstru1|Equal11~0_combout\ & ( (\decoderBloco|Equal7~0_combout\ & \RAM1|ram~751_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datac => \RAM1|ALT_INV_ram~751_combout\,
	dataf => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	combout => \RAM1|ram~752_combout\);

-- Location: FF_X36_Y7_N34
\RAM1|ram~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~167_q\);

-- Location: MLABCELL_X37_Y7_N6
\RAM1|ram~753\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~753_combout\ = ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~12_combout\ & ( (\ROM1|memROM~19_combout\ & (!\ROM1|memROM~23_combout\ & (!\ROM1|memROM~21_combout\ & \ROM1|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~23_combout\,
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~753_combout\);

-- Location: LABCELL_X36_Y7_N6
\RAM1|ram~754\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~754_combout\ = ( \processador|decoderInstru1|Equal11~0_combout\ & ( (\decoderBloco|Equal7~0_combout\ & \RAM1|ram~753_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datac => \RAM1|ALT_INV_ram~753_combout\,
	dataf => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	combout => \RAM1|ram~754_combout\);

-- Location: FF_X36_Y7_N55
\RAM1|ram~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~199_q\);

-- Location: MLABCELL_X37_Y7_N54
\RAM1|ram~757\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~757_combout\ = ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~12_combout\ & ( (\ROM1|memROM~19_combout\ & (\ROM1|memROM~15_combout\ & (\ROM1|memROM~21_combout\ & !\ROM1|memROM~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datad => \ROM1|ALT_INV_memROM~23_combout\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~757_combout\);

-- Location: MLABCELL_X37_Y7_N21
\RAM1|ram~758\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~758_combout\ = ( \RAM1|ram~757_combout\ & ( \decoderBloco|Equal7~0_combout\ & ( \processador|decoderInstru1|Equal11~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datae => \RAM1|ALT_INV_ram~757_combout\,
	dataf => \decoderBloco|ALT_INV_Equal7~0_combout\,
	combout => \RAM1|ram~758_combout\);

-- Location: FF_X37_Y7_N13
\RAM1|ram~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~263_q\);

-- Location: MLABCELL_X37_Y7_N15
\RAM1|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~535_combout\ = ( \RAM1|ram~263_q\ & ( \ROM1|memROM~21_combout\ & ( (\ROM1|memROM~19_combout\) # (\RAM1|ram~231_q\) ) ) ) # ( !\RAM1|ram~263_q\ & ( \ROM1|memROM~21_combout\ & ( (\RAM1|ram~231_q\ & !\ROM1|memROM~19_combout\) ) ) ) # ( 
-- \RAM1|ram~263_q\ & ( !\ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~19_combout\ & (\RAM1|ram~167_q\)) # (\ROM1|memROM~19_combout\ & ((\RAM1|ram~199_q\))) ) ) ) # ( !\RAM1|ram~263_q\ & ( !\ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~19_combout\ & 
-- (\RAM1|ram~167_q\)) # (\ROM1|memROM~19_combout\ & ((\RAM1|ram~199_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~231_q\,
	datab => \RAM1|ALT_INV_ram~167_q\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \RAM1|ALT_INV_ram~199_q\,
	datae => \RAM1|ALT_INV_ram~263_q\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~535_combout\);

-- Location: LABCELL_X31_Y10_N12
\RAM1|ram~207feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~207feeder_combout\ = ( \processador|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~207feeder_combout\);

-- Location: LABCELL_X32_Y9_N33
\RAM1|ram~731\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~731_combout\ = ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~17_combout\ & (\ROM1|memROM~12_combout\ & (!\ROM1|memROM~19_combout\ & \ROM1|memROM~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~21_combout\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~731_combout\);

-- Location: LABCELL_X32_Y9_N57
\RAM1|ram~732\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~732_combout\ = ( \decoderBloco|Equal7~0_combout\ & ( \RAM1|ram~731_combout\ & ( \processador|decoderInstru1|Equal11~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datae => \decoderBloco|ALT_INV_Equal7~0_combout\,
	dataf => \RAM1|ALT_INV_ram~731_combout\,
	combout => \RAM1|ram~732_combout\);

-- Location: FF_X31_Y10_N13
\RAM1|ram~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~207feeder_combout\,
	ena => \RAM1|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~207_q\);

-- Location: MLABCELL_X37_Y8_N24
\RAM1|ram~729\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~729_combout\ = ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~23_combout\ & ( (\ROM1|memROM~19_combout\ & (!\ROM1|memROM~21_combout\ & (!\ROM1|memROM~15_combout\ & !\ROM1|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~729_combout\);

-- Location: MLABCELL_X37_Y8_N39
\RAM1|ram~730\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~730_combout\ = ( \decoderBloco|Equal7~0_combout\ & ( \RAM1|ram~729_combout\ & ( \processador|decoderInstru1|Equal11~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datae => \decoderBloco|ALT_INV_Equal7~0_combout\,
	dataf => \RAM1|ALT_INV_ram~729_combout\,
	combout => \RAM1|ram~730_combout\);

-- Location: FF_X37_Y13_N14
\RAM1|ram~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~175_q\);

-- Location: MLABCELL_X34_Y11_N18
\RAM1|ram~733\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~733_combout\ = ( \ROM1|memROM~21_combout\ & ( \ROM1|memROM~12_combout\ & ( (\ROM1|memROM~19_combout\ & (!\ROM1|memROM~23_combout\ & (!\ROM1|memROM~17_combout\ & !\ROM1|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~23_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~21_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~733_combout\);

-- Location: MLABCELL_X34_Y11_N30
\RAM1|ram~734\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~734_combout\ = ( \RAM1|ram~733_combout\ & ( (\processador|decoderInstru1|Equal11~0_combout\ & \decoderBloco|Equal7~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datab => \decoderBloco|ALT_INV_Equal7~0_combout\,
	dataf => \RAM1|ALT_INV_ram~733_combout\,
	combout => \RAM1|ram~734_combout\);

-- Location: FF_X34_Y11_N23
\RAM1|ram~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~239_q\);

-- Location: MLABCELL_X34_Y11_N48
\RAM1|ram~727\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~727_combout\ = ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~15_combout\ & (!\ROM1|memROM~23_combout\ & (!\ROM1|memROM~19_combout\ & !\ROM1|memROM~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \ROM1|ALT_INV_memROM~23_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~21_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~727_combout\);

-- Location: LABCELL_X40_Y9_N15
\RAM1|ram~728\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~728_combout\ = ( \decoderBloco|Equal7~0_combout\ & ( (\RAM1|ram~727_combout\ & \processador|decoderInstru1|Equal11~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~727_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datae => \decoderBloco|ALT_INV_Equal7~0_combout\,
	combout => \RAM1|ram~728_combout\);

-- Location: FF_X40_Y9_N46
\RAM1|ram~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~143_q\);

-- Location: MLABCELL_X37_Y13_N6
\RAM1|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~532_combout\ = ( \RAM1|ram~143_q\ & ( \ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~19_combout\ & (\RAM1|ram~207_q\)) # (\ROM1|memROM~19_combout\ & ((\RAM1|ram~239_q\))) ) ) ) # ( !\RAM1|ram~143_q\ & ( \ROM1|memROM~21_combout\ & ( 
-- (!\ROM1|memROM~19_combout\ & (\RAM1|ram~207_q\)) # (\ROM1|memROM~19_combout\ & ((\RAM1|ram~239_q\))) ) ) ) # ( \RAM1|ram~143_q\ & ( !\ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~19_combout\) # (\RAM1|ram~175_q\) ) ) ) # ( !\RAM1|ram~143_q\ & ( 
-- !\ROM1|memROM~21_combout\ & ( (\RAM1|ram~175_q\ & \ROM1|memROM~19_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~207_q\,
	datab => \RAM1|ALT_INV_ram~175_q\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \RAM1|ALT_INV_ram~239_q\,
	datae => \RAM1|ALT_INV_ram~143_q\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~532_combout\);

-- Location: LABCELL_X32_Y11_N18
\RAM1|ram~747\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~747_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~19_combout\ & (!\ROM1|memROM~15_combout\ & (!\ROM1|memROM~23_combout\ & \ROM1|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~23_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~747_combout\);

-- Location: LABCELL_X32_Y11_N6
\RAM1|ram~748\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~748_combout\ = ( \RAM1|ram~747_combout\ & ( (\decoderBloco|Equal7~0_combout\ & \processador|decoderInstru1|Equal11~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datad => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	dataf => \RAM1|ALT_INV_ram~747_combout\,
	combout => \RAM1|ram~748_combout\);

-- Location: FF_X36_Y10_N34
\RAM1|ram~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~223_q\);

-- Location: MLABCELL_X34_Y8_N27
\RAM1|ram~745\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~745_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~19_combout\ & ( (\ROM1|memROM~17_combout\ & (\ROM1|memROM~12_combout\ & (!\ROM1|memROM~21_combout\ & !\ROM1|memROM~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datad => \ROM1|ALT_INV_memROM~23_combout\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~745_combout\);

-- Location: LABCELL_X39_Y10_N54
\RAM1|ram~746\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~746_combout\ = ( \decoderBloco|Equal7~0_combout\ & ( (\RAM1|ram~745_combout\ & \processador|decoderInstru1|Equal11~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~745_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datae => \decoderBloco|ALT_INV_Equal7~0_combout\,
	combout => \RAM1|ram~746_combout\);

-- Location: FF_X39_Y10_N10
\RAM1|ram~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~191_q\);

-- Location: LABCELL_X39_Y10_N21
\RAM1|ram~159feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~159feeder_combout\ = ( \processador|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~159feeder_combout\);

-- Location: LABCELL_X39_Y10_N33
\RAM1|ram~743\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~743_combout\ = ( !\ROM1|memROM~19_combout\ & ( !\ROM1|memROM~23_combout\ & ( (\ROM1|memROM~17_combout\ & (!\ROM1|memROM~15_combout\ & (\ROM1|memROM~12_combout\ & !\ROM1|memROM~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~21_combout\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~743_combout\);

-- Location: LABCELL_X39_Y10_N39
\RAM1|ram~744\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~744_combout\ = ( \processador|decoderInstru1|Equal11~0_combout\ & ( (\RAM1|ram~743_combout\ & \decoderBloco|Equal7~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~743_combout\,
	datad => \decoderBloco|ALT_INV_Equal7~0_combout\,
	dataf => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	combout => \RAM1|ram~744_combout\);

-- Location: FF_X39_Y10_N23
\RAM1|ram~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~159feeder_combout\,
	ena => \RAM1|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~159_q\);

-- Location: LABCELL_X32_Y11_N24
\RAM1|ram~749\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~749_combout\ = ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~15_combout\ & (\ROM1|memROM~17_combout\ & (\ROM1|memROM~19_combout\ & \ROM1|memROM~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~21_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~749_combout\);

-- Location: LABCELL_X32_Y11_N12
\RAM1|ram~750\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~750_combout\ = ( \processador|decoderInstru1|Equal11~0_combout\ & ( \RAM1|ram~749_combout\ & ( \decoderBloco|Equal7~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datae => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	dataf => \RAM1|ALT_INV_ram~749_combout\,
	combout => \RAM1|ram~750_combout\);

-- Location: FF_X41_Y9_N26
\RAM1|ram~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~255_q\);

-- Location: LABCELL_X41_Y9_N51
\RAM1|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~534_combout\ = ( \ROM1|memROM~21_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~255_q\ ) ) ) # ( !\ROM1|memROM~21_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~191_q\ ) ) ) # ( \ROM1|memROM~21_combout\ & ( !\ROM1|memROM~19_combout\ & 
-- ( \RAM1|ram~223_q\ ) ) ) # ( !\ROM1|memROM~21_combout\ & ( !\ROM1|memROM~19_combout\ & ( \RAM1|ram~159_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~223_q\,
	datab => \RAM1|ALT_INV_ram~191_q\,
	datac => \RAM1|ALT_INV_ram~159_q\,
	datad => \RAM1|ALT_INV_ram~255_q\,
	datae => \ROM1|ALT_INV_memROM~21_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~534_combout\);

-- Location: MLABCELL_X37_Y9_N45
\RAM1|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~536_combout\ = ( \RAM1|ram~532_combout\ & ( \RAM1|ram~534_combout\ & ( (!\ROM1|memROM~15_combout\) # ((!\ROM1|memROM~17_combout\ & (\RAM1|ram~533_combout\)) # (\ROM1|memROM~17_combout\ & ((\RAM1|ram~535_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~532_combout\ & ( \RAM1|ram~534_combout\ & ( (!\ROM1|memROM~15_combout\ & (\ROM1|memROM~17_combout\)) # (\ROM1|memROM~15_combout\ & ((!\ROM1|memROM~17_combout\ & (\RAM1|ram~533_combout\)) # (\ROM1|memROM~17_combout\ & 
-- ((\RAM1|ram~535_combout\))))) ) ) ) # ( \RAM1|ram~532_combout\ & ( !\RAM1|ram~534_combout\ & ( (!\ROM1|memROM~15_combout\ & (!\ROM1|memROM~17_combout\)) # (\ROM1|memROM~15_combout\ & ((!\ROM1|memROM~17_combout\ & (\RAM1|ram~533_combout\)) # 
-- (\ROM1|memROM~17_combout\ & ((\RAM1|ram~535_combout\))))) ) ) ) # ( !\RAM1|ram~532_combout\ & ( !\RAM1|ram~534_combout\ & ( (\ROM1|memROM~15_combout\ & ((!\ROM1|memROM~17_combout\ & (\RAM1|ram~533_combout\)) # (\ROM1|memROM~17_combout\ & 
-- ((\RAM1|ram~535_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101100011001001110100100110001101111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \RAM1|ALT_INV_ram~533_combout\,
	datad => \RAM1|ALT_INV_ram~535_combout\,
	datae => \RAM1|ALT_INV_ram~532_combout\,
	dataf => \RAM1|ALT_INV_ram~534_combout\,
	combout => \RAM1|ram~536_combout\);

-- Location: MLABCELL_X34_Y9_N42
\RAM1|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~547_combout\ = ( \RAM1|ram~546_combout\ & ( \RAM1|ram~536_combout\ & ( ((!\ROM1|memROM~23_combout\ & (\RAM1|ram~531_combout\)) # (\ROM1|memROM~23_combout\ & ((\RAM1|ram~541_combout\)))) # (\ROM1|memROM~12_combout\) ) ) ) # ( 
-- !\RAM1|ram~546_combout\ & ( \RAM1|ram~536_combout\ & ( (!\ROM1|memROM~23_combout\ & (((\RAM1|ram~531_combout\)) # (\ROM1|memROM~12_combout\))) # (\ROM1|memROM~23_combout\ & (!\ROM1|memROM~12_combout\ & ((\RAM1|ram~541_combout\)))) ) ) ) # ( 
-- \RAM1|ram~546_combout\ & ( !\RAM1|ram~536_combout\ & ( (!\ROM1|memROM~23_combout\ & (!\ROM1|memROM~12_combout\ & (\RAM1|ram~531_combout\))) # (\ROM1|memROM~23_combout\ & (((\RAM1|ram~541_combout\)) # (\ROM1|memROM~12_combout\))) ) ) ) # ( 
-- !\RAM1|ram~546_combout\ & ( !\RAM1|ram~536_combout\ & ( (!\ROM1|memROM~12_combout\ & ((!\ROM1|memROM~23_combout\ & (\RAM1|ram~531_combout\)) # (\ROM1|memROM~23_combout\ & ((\RAM1|ram~541_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~23_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \RAM1|ALT_INV_ram~531_combout\,
	datad => \RAM1|ALT_INV_ram~541_combout\,
	datae => \RAM1|ALT_INV_ram~546_combout\,
	dataf => \RAM1|ALT_INV_ram~536_combout\,
	combout => \RAM1|ram~547_combout\);

-- Location: LABCELL_X35_Y9_N54
\SW_0_7|saida[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_0_7|saida[0]~8_combout\ = ( \SW_0_7|saida[0]~5_combout\ & ( \RAM1|ram~547_combout\ & ( \SW_0_7|saida[0]~4_combout\ ) ) ) # ( !\SW_0_7|saida[0]~5_combout\ & ( \RAM1|ram~547_combout\ ) ) # ( \SW_0_7|saida[0]~5_combout\ & ( !\RAM1|ram~547_combout\ & ( 
-- (\SW_0_7|saida[0]~4_combout\ & !\RAM1|dado_out~0_combout\) ) ) ) # ( !\SW_0_7|saida[0]~5_combout\ & ( !\RAM1|ram~547_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001100000011000011111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \SW_0_7|ALT_INV_saida[0]~4_combout\,
	datac => \RAM1|ALT_INV_dado_out~0_combout\,
	datae => \SW_0_7|ALT_INV_saida[0]~5_combout\,
	dataf => \RAM1|ALT_INV_ram~547_combout\,
	combout => \SW_0_7|saida[0]~8_combout\);

-- Location: LABCELL_X35_Y9_N6
\processador|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~5_sumout\ = SUM(( (!\processador|decoderInstru1|Equal11~3_combout\ & (((!\SW_8|saida[1]~9_combout\)))) # (\processador|decoderInstru1|Equal11~3_combout\ & (((!\ROM1|memROM~25_combout\)) # (\processador|PC|DOUT\(8)))) ) + ( 
-- \processador|REGA|DOUT\(1) ) + ( \processador|ULA1|Add1~2\ ))
-- \processador|ULA1|Add1~6\ = CARRY(( (!\processador|decoderInstru1|Equal11~3_combout\ & (((!\SW_8|saida[1]~9_combout\)))) # (\processador|decoderInstru1|Equal11~3_combout\ & (((!\ROM1|memROM~25_combout\)) # (\processador|PC|DOUT\(8)))) ) + ( 
-- \processador|REGA|DOUT\(1) ) + ( \processador|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111010110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~3_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \SW_8|ALT_INV_saida[1]~9_combout\,
	datad => \ROM1|ALT_INV_memROM~25_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(1),
	cin => \processador|ULA1|Add1~2\,
	sumout => \processador|ULA1|Add1~5_sumout\,
	cout => \processador|ULA1|Add1~6\);

-- Location: LABCELL_X36_Y9_N33
\processador|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~5_sumout\ = SUM(( (!\processador|decoderInstru1|Equal11~3_combout\ & (((\SW_8|saida[1]~9_combout\)))) # (\processador|decoderInstru1|Equal11~3_combout\ & (!\processador|PC|DOUT\(8) & ((\ROM1|memROM~25_combout\)))) ) + ( 
-- \processador|REGA|DOUT\(1) ) + ( \processador|ULA1|Add0~2\ ))
-- \processador|ULA1|Add0~6\ = CARRY(( (!\processador|decoderInstru1|Equal11~3_combout\ & (((\SW_8|saida[1]~9_combout\)))) # (\processador|decoderInstru1|Equal11~3_combout\ & (!\processador|PC|DOUT\(8) & ((\ROM1|memROM~25_combout\)))) ) + ( 
-- \processador|REGA|DOUT\(1) ) + ( \processador|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~3_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \SW_8|ALT_INV_saida[1]~9_combout\,
	datad => \ROM1|ALT_INV_memROM~25_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(1),
	cin => \processador|ULA1|Add0~2\,
	sumout => \processador|ULA1|Add0~5_sumout\,
	cout => \processador|ULA1|Add0~6\);

-- Location: LABCELL_X35_Y8_N42
\processador|ULA1|saida[1]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[1]~17_combout\ = ( !\processador|decoderInstru1|Equal11~3_combout\ & ( (!\processador|decoderInstru1|saida[4]~1_combout\ & ((!\processador|decoderInstru1|Equal11~2_combout\ & (\processador|ULA1|Add1~5_sumout\)) # 
-- (\processador|decoderInstru1|Equal11~2_combout\ & (((\processador|ULA1|Add0~5_sumout\)))))) # (\processador|decoderInstru1|saida[4]~1_combout\ & ((((\SW_8|saida[1]~9_combout\))))) ) ) # ( \processador|decoderInstru1|Equal11~3_combout\ & ( 
-- (!\processador|decoderInstru1|saida[4]~1_combout\ & ((!\processador|decoderInstru1|Equal11~2_combout\ & (\processador|ULA1|Add1~5_sumout\)) # (\processador|decoderInstru1|Equal11~2_combout\ & (((\processador|ULA1|Add0~5_sumout\)))))) # 
-- (\processador|decoderInstru1|saida[4]~1_combout\ & ((((\ROM1|memROM~17_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010001000001111001000100000111101110111000011110111011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~2_combout\,
	datab => \processador|ULA1|ALT_INV_Add1~5_sumout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	datae => \processador|decoderInstru1|ALT_INV_Equal11~3_combout\,
	dataf => \processador|ULA1|ALT_INV_Add0~5_sumout\,
	datag => \SW_8|ALT_INV_saida[1]~9_combout\,
	combout => \processador|ULA1|saida[1]~17_combout\);

-- Location: FF_X35_Y8_N44
\processador|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \processador|ULA1|saida[1]~17_combout\,
	ena => \processador|decoderInstru1|saida[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(1));

-- Location: FF_X36_Y7_N5
\RAM1|ram~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~168_q\);

-- Location: FF_X34_Y9_N52
\RAM1|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~40_q\);

-- Location: FF_X36_Y7_N7
\RAM1|ram~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~232_q\);

-- Location: FF_X34_Y8_N22
\RAM1|ram~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~104_q\);

-- Location: LABCELL_X36_Y7_N57
\RAM1|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~559_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~21_combout\ & ( \RAM1|ram~232_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~21_combout\ & ( \RAM1|ram~104_q\ ) ) ) # ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~21_combout\ & 
-- ( \RAM1|ram~168_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~21_combout\ & ( \RAM1|ram~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~168_q\,
	datab => \RAM1|ALT_INV_ram~40_q\,
	datac => \RAM1|ALT_INV_ram~232_q\,
	datad => \RAM1|ALT_INV_ram~104_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~559_combout\);

-- Location: FF_X35_Y11_N38
\RAM1|ram~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~256_q\);

-- Location: LABCELL_X35_Y10_N21
\RAM1|ram~128feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~128feeder_combout\ = ( \processador|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~128feeder_combout\);

-- Location: FF_X35_Y10_N22
\RAM1|ram~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~128feeder_combout\,
	ena => \RAM1|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~128_q\);

-- Location: FF_X41_Y9_N22
\RAM1|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~64_q\);

-- Location: FF_X39_Y10_N38
\RAM1|ram~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~192_q\);

-- Location: LABCELL_X35_Y11_N6
\RAM1|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~560_combout\ = ( \ROM1|memROM~21_combout\ & ( \ROM1|memROM~12_combout\ & ( \RAM1|ram~256_q\ ) ) ) # ( !\ROM1|memROM~21_combout\ & ( \ROM1|memROM~12_combout\ & ( \RAM1|ram~192_q\ ) ) ) # ( \ROM1|memROM~21_combout\ & ( !\ROM1|memROM~12_combout\ & 
-- ( \RAM1|ram~128_q\ ) ) ) # ( !\ROM1|memROM~21_combout\ & ( !\ROM1|memROM~12_combout\ & ( \RAM1|ram~64_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~256_q\,
	datab => \RAM1|ALT_INV_ram~128_q\,
	datac => \RAM1|ALT_INV_ram~64_q\,
	datad => \RAM1|ALT_INV_ram~192_q\,
	datae => \ROM1|ALT_INV_memROM~21_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~560_combout\);

-- Location: FF_X36_Y7_N46
\RAM1|ram~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~200_q\);

-- Location: FF_X35_Y8_N10
\RAM1|ram~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~136_q\);

-- Location: FF_X37_Y7_N8
\RAM1|ram~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~264_q\);

-- Location: FF_X40_Y10_N46
\RAM1|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~72_q\);

-- Location: MLABCELL_X37_Y7_N39
\RAM1|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~561_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~21_combout\ & ( \RAM1|ram~264_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~21_combout\ & ( \RAM1|ram~136_q\ ) ) ) # ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~21_combout\ & 
-- ( \RAM1|ram~200_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~21_combout\ & ( \RAM1|ram~72_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~200_q\,
	datab => \RAM1|ALT_INV_ram~136_q\,
	datac => \RAM1|ALT_INV_ram~264_q\,
	datad => \RAM1|ALT_INV_ram~72_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~561_combout\);

-- Location: LABCELL_X31_Y11_N33
\RAM1|ram~32feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~32feeder_combout\ = ( \processador|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~32feeder_combout\);

-- Location: FF_X31_Y11_N34
\RAM1|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~32feeder_combout\,
	ena => \RAM1|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~32_q\);

-- Location: FF_X32_Y11_N11
\RAM1|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~96_q\);

-- Location: FF_X32_Y11_N44
\RAM1|ram~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~224_q\);

-- Location: FF_X39_Y10_N20
\RAM1|ram~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~160_q\);

-- Location: LABCELL_X32_Y11_N45
\RAM1|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~558_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~21_combout\ & ( \RAM1|ram~224_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~21_combout\ & ( \RAM1|ram~96_q\ ) ) ) # ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~21_combout\ & ( 
-- \RAM1|ram~160_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~21_combout\ & ( \RAM1|ram~32_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~32_q\,
	datab => \RAM1|ALT_INV_ram~96_q\,
	datac => \RAM1|ALT_INV_ram~224_q\,
	datad => \RAM1|ALT_INV_ram~160_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~558_combout\);

-- Location: MLABCELL_X37_Y9_N54
\RAM1|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~562_combout\ = ( \RAM1|ram~561_combout\ & ( \RAM1|ram~558_combout\ & ( (!\ROM1|memROM~15_combout\ & (((!\ROM1|memROM~19_combout\) # (\RAM1|ram~560_combout\)))) # (\ROM1|memROM~15_combout\ & (((\ROM1|memROM~19_combout\)) # 
-- (\RAM1|ram~559_combout\))) ) ) ) # ( !\RAM1|ram~561_combout\ & ( \RAM1|ram~558_combout\ & ( (!\ROM1|memROM~15_combout\ & (((!\ROM1|memROM~19_combout\) # (\RAM1|ram~560_combout\)))) # (\ROM1|memROM~15_combout\ & (\RAM1|ram~559_combout\ & 
-- ((!\ROM1|memROM~19_combout\)))) ) ) ) # ( \RAM1|ram~561_combout\ & ( !\RAM1|ram~558_combout\ & ( (!\ROM1|memROM~15_combout\ & (((\RAM1|ram~560_combout\ & \ROM1|memROM~19_combout\)))) # (\ROM1|memROM~15_combout\ & (((\ROM1|memROM~19_combout\)) # 
-- (\RAM1|ram~559_combout\))) ) ) ) # ( !\RAM1|ram~561_combout\ & ( !\RAM1|ram~558_combout\ & ( (!\ROM1|memROM~15_combout\ & (((\RAM1|ram~560_combout\ & \ROM1|memROM~19_combout\)))) # (\ROM1|memROM~15_combout\ & (\RAM1|ram~559_combout\ & 
-- ((!\ROM1|memROM~19_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010011111111011101000011001101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~559_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \RAM1|ALT_INV_ram~560_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \RAM1|ALT_INV_ram~561_combout\,
	dataf => \RAM1|ALT_INV_ram~558_combout\,
	combout => \RAM1|ram~562_combout\);

-- Location: FF_X32_Y9_N2
\RAM1|ram~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~208_q\);

-- Location: FF_X32_Y9_N14
\RAM1|ram~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~216_q\);

-- Location: FF_X41_Y10_N7
\RAM1|ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~88_q\);

-- Location: FF_X32_Y9_N29
\RAM1|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~80_q\);

-- Location: LABCELL_X32_Y9_N15
\RAM1|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~550_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~12_combout\ & ( \RAM1|ram~216_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~12_combout\ & ( \RAM1|ram~208_q\ ) ) ) # ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~12_combout\ & 
-- ( \RAM1|ram~88_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~12_combout\ & ( \RAM1|ram~80_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~208_q\,
	datab => \RAM1|ALT_INV_ram~216_q\,
	datac => \RAM1|ALT_INV_ram~88_q\,
	datad => \RAM1|ALT_INV_ram~80_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~550_combout\);

-- Location: MLABCELL_X34_Y11_N42
\RAM1|ram~240feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~240feeder_combout\ = ( \processador|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~240feeder_combout\);

-- Location: FF_X34_Y11_N43
\RAM1|ram~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~240feeder_combout\,
	ena => \RAM1|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~240_q\);

-- Location: FF_X37_Y7_N52
\RAM1|ram~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~120_q\);

-- Location: MLABCELL_X37_Y9_N30
\RAM1|ram~248feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~248feeder_combout\ = ( \processador|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~248feeder_combout\);

-- Location: FF_X37_Y9_N32
\RAM1|ram~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~248feeder_combout\,
	ena => \RAM1|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~248_q\);

-- Location: FF_X35_Y10_N40
\RAM1|ram~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~112_q\);

-- Location: MLABCELL_X37_Y9_N21
\RAM1|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~551_combout\ = ( \RAM1|ram~112_q\ & ( \ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~12_combout\ & (\RAM1|ram~120_q\)) # (\ROM1|memROM~12_combout\ & ((\RAM1|ram~248_q\))) ) ) ) # ( !\RAM1|ram~112_q\ & ( \ROM1|memROM~15_combout\ & ( 
-- (!\ROM1|memROM~12_combout\ & (\RAM1|ram~120_q\)) # (\ROM1|memROM~12_combout\ & ((\RAM1|ram~248_q\))) ) ) ) # ( \RAM1|ram~112_q\ & ( !\ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~12_combout\) # (\RAM1|ram~240_q\) ) ) ) # ( !\RAM1|ram~112_q\ & ( 
-- !\ROM1|memROM~15_combout\ & ( (\RAM1|ram~240_q\ & \ROM1|memROM~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~240_q\,
	datab => \RAM1|ALT_INV_ram~120_q\,
	datac => \RAM1|ALT_INV_ram~248_q\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \RAM1|ALT_INV_ram~112_q\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~551_combout\);

-- Location: FF_X40_Y9_N43
\RAM1|ram~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~144_q\);

-- Location: LABCELL_X31_Y11_N12
\RAM1|ram~16feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~16feeder_combout\ = ( \processador|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~16feeder_combout\);

-- Location: FF_X31_Y11_N13
\RAM1|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~16feeder_combout\,
	ena => \RAM1|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~16_q\);

-- Location: LABCELL_X35_Y7_N48
\RAM1|ram~24feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~24feeder_combout\ = \processador|REGA|DOUT\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|REGA|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~24feeder_combout\);

-- Location: FF_X35_Y7_N49
\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~24feeder_combout\,
	ena => \RAM1|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

-- Location: FF_X40_Y9_N2
\RAM1|ram~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~152_q\);

-- Location: LABCELL_X40_Y9_N0
\RAM1|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~548_combout\ = ( \RAM1|ram~152_q\ & ( \ROM1|memROM~15_combout\ & ( (\ROM1|memROM~12_combout\) # (\RAM1|ram~24_q\) ) ) ) # ( !\RAM1|ram~152_q\ & ( \ROM1|memROM~15_combout\ & ( (\RAM1|ram~24_q\ & !\ROM1|memROM~12_combout\) ) ) ) # ( 
-- \RAM1|ram~152_q\ & ( !\ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~12_combout\ & ((\RAM1|ram~16_q\))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~144_q\)) ) ) ) # ( !\RAM1|ram~152_q\ & ( !\ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~12_combout\ & 
-- ((\RAM1|ram~16_q\))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~144_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~144_q\,
	datab => \RAM1|ALT_INV_ram~16_q\,
	datac => \RAM1|ALT_INV_ram~24_q\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \RAM1|ALT_INV_ram~152_q\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~548_combout\);

-- Location: FF_X39_Y9_N22
\RAM1|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~56_q\);

-- Location: FF_X39_Y9_N41
\RAM1|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~48_q\);

-- Location: FF_X37_Y13_N59
\RAM1|ram~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~176_q\);

-- Location: FF_X40_Y9_N32
\RAM1|ram~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~184_q\);

-- Location: LABCELL_X40_Y9_N24
\RAM1|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~549_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~184_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~56_q\ ) ) ) # ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~15_combout\ & ( 
-- \RAM1|ram~176_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM1|ram~48_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~56_q\,
	datab => \RAM1|ALT_INV_ram~48_q\,
	datac => \RAM1|ALT_INV_ram~176_q\,
	datad => \RAM1|ALT_INV_ram~184_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~549_combout\);

-- Location: MLABCELL_X37_Y9_N9
\RAM1|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~552_combout\ = ( \RAM1|ram~548_combout\ & ( \RAM1|ram~549_combout\ & ( (!\ROM1|memROM~21_combout\) # ((!\ROM1|memROM~19_combout\ & (\RAM1|ram~550_combout\)) # (\ROM1|memROM~19_combout\ & ((\RAM1|ram~551_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~548_combout\ & ( \RAM1|ram~549_combout\ & ( (!\ROM1|memROM~21_combout\ & (\ROM1|memROM~19_combout\)) # (\ROM1|memROM~21_combout\ & ((!\ROM1|memROM~19_combout\ & (\RAM1|ram~550_combout\)) # (\ROM1|memROM~19_combout\ & 
-- ((\RAM1|ram~551_combout\))))) ) ) ) # ( \RAM1|ram~548_combout\ & ( !\RAM1|ram~549_combout\ & ( (!\ROM1|memROM~21_combout\ & (!\ROM1|memROM~19_combout\)) # (\ROM1|memROM~21_combout\ & ((!\ROM1|memROM~19_combout\ & (\RAM1|ram~550_combout\)) # 
-- (\ROM1|memROM~19_combout\ & ((\RAM1|ram~551_combout\))))) ) ) ) # ( !\RAM1|ram~548_combout\ & ( !\RAM1|ram~549_combout\ & ( (\ROM1|memROM~21_combout\ & ((!\ROM1|memROM~19_combout\ & (\RAM1|ram~550_combout\)) # (\ROM1|memROM~19_combout\ & 
-- ((\RAM1|ram~551_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101100011001001110100100110001101111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~21_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \RAM1|ALT_INV_ram~550_combout\,
	datad => \RAM1|ALT_INV_ram~551_combout\,
	datae => \RAM1|ALT_INV_ram~548_combout\,
	dataf => \RAM1|ALT_INV_ram~549_combout\,
	combout => \RAM1|ram~552_combout\);

-- Location: FF_X40_Y12_N46
\RAM1|ram~472\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~472_q\);

-- Location: FF_X40_Y10_N58
\RAM1|ram~376\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~376_q\);

-- Location: FF_X40_Y12_N58
\RAM1|ram~344\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~344_q\);

-- Location: FF_X40_Y11_N26
\RAM1|ram~504\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~504_q\);

-- Location: LABCELL_X40_Y11_N21
\RAM1|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~556_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~504_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~376_q\ ) ) ) # ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~19_combout\ & 
-- ( \RAM1|ram~472_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~19_combout\ & ( \RAM1|ram~344_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~472_q\,
	datab => \RAM1|ALT_INV_ram~376_q\,
	datac => \RAM1|ALT_INV_ram~344_q\,
	datad => \RAM1|ALT_INV_ram~504_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~556_combout\);

-- Location: FF_X35_Y13_N2
\RAM1|ram~432\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~432_q\);

-- Location: FF_X32_Y10_N43
\RAM1|ram~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~304_q\);

-- Location: FF_X34_Y12_N31
\RAM1|ram~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~272_q\);

-- Location: FF_X39_Y11_N11
\RAM1|ram~400\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~400_q\);

-- Location: LABCELL_X35_Y13_N51
\RAM1|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~553_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~432_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~304_q\ ) ) ) # ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~19_combout\ & 
-- ( \RAM1|ram~400_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~19_combout\ & ( \RAM1|ram~272_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~432_q\,
	datab => \RAM1|ALT_INV_ram~304_q\,
	datac => \RAM1|ALT_INV_ram~272_q\,
	datad => \RAM1|ALT_INV_ram~400_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~553_combout\);

-- Location: MLABCELL_X37_Y8_N51
\RAM1|ram~280feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~280feeder_combout\ = \processador|REGA|DOUT\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|REGA|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~280feeder_combout\);

-- Location: FF_X37_Y8_N52
\RAM1|ram~280\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~280feeder_combout\,
	ena => \RAM1|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~280_q\);

-- Location: FF_X40_Y11_N13
\RAM1|ram~440\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~440_q\);

-- Location: FF_X36_Y14_N28
\RAM1|ram~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~312_q\);

-- Location: FF_X39_Y13_N44
\RAM1|ram~408\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~408_q\);

-- Location: LABCELL_X40_Y11_N15
\RAM1|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~554_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~440_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~312_q\ ) ) ) # ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~19_combout\ & 
-- ( \RAM1|ram~408_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~19_combout\ & ( \RAM1|ram~280_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~280_q\,
	datab => \RAM1|ALT_INV_ram~440_q\,
	datac => \RAM1|ALT_INV_ram~312_q\,
	datad => \RAM1|ALT_INV_ram~408_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~554_combout\);

-- Location: FF_X35_Y13_N29
\RAM1|ram~464\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~464_q\);

-- Location: FF_X35_Y14_N31
\RAM1|ram~368\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~368_q\);

-- Location: FF_X34_Y13_N19
\RAM1|ram~336\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~336_q\);

-- Location: FF_X35_Y13_N56
\RAM1|ram~496\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~496_q\);

-- Location: LABCELL_X35_Y13_N57
\RAM1|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~555_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~496_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~368_q\ ) ) ) # ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~19_combout\ & 
-- ( \RAM1|ram~464_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~19_combout\ & ( \RAM1|ram~336_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~464_q\,
	datab => \RAM1|ALT_INV_ram~368_q\,
	datac => \RAM1|ALT_INV_ram~336_q\,
	datad => \RAM1|ALT_INV_ram~496_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~555_combout\);

-- Location: MLABCELL_X37_Y9_N36
\RAM1|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~557_combout\ = ( \RAM1|ram~554_combout\ & ( \RAM1|ram~555_combout\ & ( (!\ROM1|memROM~21_combout\ & (((\RAM1|ram~553_combout\) # (\ROM1|memROM~15_combout\)))) # (\ROM1|memROM~21_combout\ & (((!\ROM1|memROM~15_combout\)) # 
-- (\RAM1|ram~556_combout\))) ) ) ) # ( !\RAM1|ram~554_combout\ & ( \RAM1|ram~555_combout\ & ( (!\ROM1|memROM~21_combout\ & (((!\ROM1|memROM~15_combout\ & \RAM1|ram~553_combout\)))) # (\ROM1|memROM~21_combout\ & (((!\ROM1|memROM~15_combout\)) # 
-- (\RAM1|ram~556_combout\))) ) ) ) # ( \RAM1|ram~554_combout\ & ( !\RAM1|ram~555_combout\ & ( (!\ROM1|memROM~21_combout\ & (((\RAM1|ram~553_combout\) # (\ROM1|memROM~15_combout\)))) # (\ROM1|memROM~21_combout\ & (\RAM1|ram~556_combout\ & 
-- (\ROM1|memROM~15_combout\))) ) ) ) # ( !\RAM1|ram~554_combout\ & ( !\RAM1|ram~555_combout\ & ( (!\ROM1|memROM~21_combout\ & (((!\ROM1|memROM~15_combout\ & \RAM1|ram~553_combout\)))) # (\ROM1|memROM~21_combout\ & (\RAM1|ram~556_combout\ & 
-- (\ROM1|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001000010111010101101010001111100010101101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~21_combout\,
	datab => \RAM1|ALT_INV_ram~556_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \RAM1|ALT_INV_ram~553_combout\,
	datae => \RAM1|ALT_INV_ram~554_combout\,
	dataf => \RAM1|ALT_INV_ram~555_combout\,
	combout => \RAM1|ram~557_combout\);

-- Location: FF_X35_Y14_N10
\RAM1|ram~384\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~384_q\);

-- Location: FF_X36_Y13_N22
\RAM1|ram~512\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~512_q\);

-- Location: FF_X36_Y13_N32
\RAM1|ram~520\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~520_q\);

-- Location: FF_X34_Y12_N47
\RAM1|ram~392\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~392_q\);

-- Location: LABCELL_X36_Y13_N33
\RAM1|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~566_combout\ = ( \RAM1|ram~392_q\ & ( \ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~15_combout\ & (\RAM1|ram~512_q\)) # (\ROM1|memROM~15_combout\ & ((\RAM1|ram~520_q\))) ) ) ) # ( !\RAM1|ram~392_q\ & ( \ROM1|memROM~12_combout\ & ( 
-- (!\ROM1|memROM~15_combout\ & (\RAM1|ram~512_q\)) # (\ROM1|memROM~15_combout\ & ((\RAM1|ram~520_q\))) ) ) ) # ( \RAM1|ram~392_q\ & ( !\ROM1|memROM~12_combout\ & ( (\ROM1|memROM~15_combout\) # (\RAM1|ram~384_q\) ) ) ) # ( !\RAM1|ram~392_q\ & ( 
-- !\ROM1|memROM~12_combout\ & ( (\RAM1|ram~384_q\ & !\ROM1|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~384_q\,
	datab => \RAM1|ALT_INV_ram~512_q\,
	datac => \RAM1|ALT_INV_ram~520_q\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \RAM1|ALT_INV_ram~392_q\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~566_combout\);

-- Location: FF_X36_Y8_N58
\RAM1|ram~288\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~288_q\);

-- Location: FF_X34_Y9_N10
\RAM1|ram~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~296_q\);

-- Location: FF_X39_Y11_N29
\RAM1|ram~416\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~416_q\);

-- Location: FF_X39_Y13_N38
\RAM1|ram~424\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~424_q\);

-- Location: LABCELL_X36_Y13_N42
\RAM1|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~563_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~424_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~296_q\ ) ) ) # ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM1|ram~416_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM1|ram~288_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~288_q\,
	datab => \RAM1|ALT_INV_ram~296_q\,
	datac => \RAM1|ALT_INV_ram~416_q\,
	datad => \RAM1|ALT_INV_ram~424_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~563_combout\);

-- Location: FF_X35_Y12_N19
\RAM1|ram~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~328_q\);

-- Location: FF_X36_Y8_N52
\RAM1|ram~448\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~448_q\);

-- Location: FF_X35_Y12_N46
\RAM1|ram~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~320_q\);

-- Location: FF_X36_Y13_N38
\RAM1|ram~456\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~456_q\);

-- Location: LABCELL_X36_Y13_N36
\RAM1|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~564_combout\ = ( \RAM1|ram~456_q\ & ( \ROM1|memROM~12_combout\ & ( (\ROM1|memROM~15_combout\) # (\RAM1|ram~448_q\) ) ) ) # ( !\RAM1|ram~456_q\ & ( \ROM1|memROM~12_combout\ & ( (\RAM1|ram~448_q\ & !\ROM1|memROM~15_combout\) ) ) ) # ( 
-- \RAM1|ram~456_q\ & ( !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~15_combout\ & ((\RAM1|ram~320_q\))) # (\ROM1|memROM~15_combout\ & (\RAM1|ram~328_q\)) ) ) ) # ( !\RAM1|ram~456_q\ & ( !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~15_combout\ & 
-- ((\RAM1|ram~320_q\))) # (\ROM1|memROM~15_combout\ & (\RAM1|ram~328_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~328_q\,
	datab => \RAM1|ALT_INV_ram~448_q\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \RAM1|ALT_INV_ram~320_q\,
	datae => \RAM1|ALT_INV_ram~456_q\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~564_combout\);

-- Location: LABCELL_X36_Y15_N54
\RAM1|ram~488feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~488feeder_combout\ = ( \processador|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~488feeder_combout\);

-- Location: FF_X36_Y15_N56
\RAM1|ram~488\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~488feeder_combout\,
	ena => \RAM1|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~488_q\);

-- Location: LABCELL_X36_Y15_N45
\RAM1|ram~480feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~480feeder_combout\ = ( \processador|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~480feeder_combout\);

-- Location: FF_X36_Y15_N47
\RAM1|ram~480\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~480feeder_combout\,
	ena => \RAM1|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~480_q\);

-- Location: FF_X35_Y11_N13
\RAM1|ram~352\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~352_q\);

-- Location: LABCELL_X36_Y15_N15
\RAM1|ram~360feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~360feeder_combout\ = ( \processador|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~360feeder_combout\);

-- Location: FF_X36_Y15_N17
\RAM1|ram~360\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~360feeder_combout\,
	ena => \RAM1|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~360_q\);

-- Location: LABCELL_X36_Y15_N18
\RAM1|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~565_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~488_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~360_q\ ) ) ) # ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM1|ram~480_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM1|ram~352_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~488_q\,
	datab => \RAM1|ALT_INV_ram~480_q\,
	datac => \RAM1|ALT_INV_ram~352_q\,
	datad => \RAM1|ALT_INV_ram~360_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~565_combout\);

-- Location: LABCELL_X36_Y13_N18
\RAM1|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~567_combout\ = ( \RAM1|ram~564_combout\ & ( \RAM1|ram~565_combout\ & ( (!\ROM1|memROM~19_combout\ & (((\RAM1|ram~563_combout\)) # (\ROM1|memROM~21_combout\))) # (\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~21_combout\) # 
-- ((\RAM1|ram~566_combout\)))) ) ) ) # ( !\RAM1|ram~564_combout\ & ( \RAM1|ram~565_combout\ & ( (!\ROM1|memROM~19_combout\ & (((\RAM1|ram~563_combout\)) # (\ROM1|memROM~21_combout\))) # (\ROM1|memROM~19_combout\ & (\ROM1|memROM~21_combout\ & 
-- (\RAM1|ram~566_combout\))) ) ) ) # ( \RAM1|ram~564_combout\ & ( !\RAM1|ram~565_combout\ & ( (!\ROM1|memROM~19_combout\ & (!\ROM1|memROM~21_combout\ & ((\RAM1|ram~563_combout\)))) # (\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~21_combout\) # 
-- ((\RAM1|ram~566_combout\)))) ) ) ) # ( !\RAM1|ram~564_combout\ & ( !\RAM1|ram~565_combout\ & ( (!\ROM1|memROM~19_combout\ & (!\ROM1|memROM~21_combout\ & ((\RAM1|ram~563_combout\)))) # (\ROM1|memROM~19_combout\ & (\ROM1|memROM~21_combout\ & 
-- (\RAM1|ram~566_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001010001011100110100100011101010110110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \RAM1|ALT_INV_ram~566_combout\,
	datad => \RAM1|ALT_INV_ram~563_combout\,
	datae => \RAM1|ALT_INV_ram~564_combout\,
	dataf => \RAM1|ALT_INV_ram~565_combout\,
	combout => \RAM1|ram~567_combout\);

-- Location: MLABCELL_X37_Y9_N48
\RAM1|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~568_combout\ = ( \RAM1|ram~557_combout\ & ( \RAM1|ram~567_combout\ & ( ((!\ROM1|memROM~17_combout\ & ((\RAM1|ram~552_combout\))) # (\ROM1|memROM~17_combout\ & (\RAM1|ram~562_combout\))) # (\ROM1|memROM~23_combout\) ) ) ) # ( 
-- !\RAM1|ram~557_combout\ & ( \RAM1|ram~567_combout\ & ( (!\ROM1|memROM~17_combout\ & (((!\ROM1|memROM~23_combout\ & \RAM1|ram~552_combout\)))) # (\ROM1|memROM~17_combout\ & (((\ROM1|memROM~23_combout\)) # (\RAM1|ram~562_combout\))) ) ) ) # ( 
-- \RAM1|ram~557_combout\ & ( !\RAM1|ram~567_combout\ & ( (!\ROM1|memROM~17_combout\ & (((\RAM1|ram~552_combout\) # (\ROM1|memROM~23_combout\)))) # (\ROM1|memROM~17_combout\ & (\RAM1|ram~562_combout\ & (!\ROM1|memROM~23_combout\))) ) ) ) # ( 
-- !\RAM1|ram~557_combout\ & ( !\RAM1|ram~567_combout\ & ( (!\ROM1|memROM~23_combout\ & ((!\ROM1|memROM~17_combout\ & ((\RAM1|ram~552_combout\))) # (\ROM1|memROM~17_combout\ & (\RAM1|ram~562_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111001101110000010011110100110001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~562_combout\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \ROM1|ALT_INV_memROM~23_combout\,
	datad => \RAM1|ALT_INV_ram~552_combout\,
	datae => \RAM1|ALT_INV_ram~557_combout\,
	dataf => \RAM1|ALT_INV_ram~567_combout\,
	combout => \RAM1|ram~568_combout\);

-- Location: MLABCELL_X37_Y9_N24
\SW_8|saida[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_8|saida[1]~9_combout\ = ( !\SW_8|saida[1]~8_combout\ & ( \RAM1|ram~568_combout\ & ( (!\comb~6_combout\) # (\SW[1]~input_o\) ) ) ) # ( !\SW_8|saida[1]~8_combout\ & ( !\RAM1|ram~568_combout\ & ( (!\RAM1|dado_out~0_combout\ & ((!\comb~6_combout\) # 
-- (\SW[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000001010000000000000000011111111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~0_combout\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_comb~6_combout\,
	datae => \SW_8|ALT_INV_saida[1]~8_combout\,
	dataf => \RAM1|ALT_INV_ram~568_combout\,
	combout => \SW_8|saida[1]~9_combout\);

-- Location: LABCELL_X35_Y9_N9
\processador|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~9_sumout\ = SUM(( \processador|REGA|DOUT\(2) ) + ( (!\processador|decoderInstru1|Equal11~3_combout\ & (((!\SW_8|saida[2]~10_combout\)))) # (\processador|decoderInstru1|Equal11~3_combout\ & (((!\ROM1|memROM~26_combout\)) # 
-- (\processador|PC|DOUT\(8)))) ) + ( \processador|ULA1|Add1~6\ ))
-- \processador|ULA1|Add1~10\ = CARRY(( \processador|REGA|DOUT\(2) ) + ( (!\processador|decoderInstru1|Equal11~3_combout\ & (((!\SW_8|saida[2]~10_combout\)))) # (\processador|decoderInstru1|Equal11~3_combout\ & (((!\ROM1|memROM~26_combout\)) # 
-- (\processador|PC|DOUT\(8)))) ) + ( \processador|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~3_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \SW_8|ALT_INV_saida[2]~10_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(2),
	dataf => \ROM1|ALT_INV_memROM~26_combout\,
	cin => \processador|ULA1|Add1~6\,
	sumout => \processador|ULA1|Add1~9_sumout\,
	cout => \processador|ULA1|Add1~10\);

-- Location: LABCELL_X36_Y9_N36
\processador|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~9_sumout\ = SUM(( (!\processador|decoderInstru1|Equal11~3_combout\ & (((\SW_8|saida[2]~10_combout\)))) # (\processador|decoderInstru1|Equal11~3_combout\ & (!\processador|PC|DOUT\(8) & ((\ROM1|memROM~26_combout\)))) ) + ( 
-- \processador|REGA|DOUT\(2) ) + ( \processador|ULA1|Add0~6\ ))
-- \processador|ULA1|Add0~10\ = CARRY(( (!\processador|decoderInstru1|Equal11~3_combout\ & (((\SW_8|saida[2]~10_combout\)))) # (\processador|decoderInstru1|Equal11~3_combout\ & (!\processador|PC|DOUT\(8) & ((\ROM1|memROM~26_combout\)))) ) + ( 
-- \processador|REGA|DOUT\(2) ) + ( \processador|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~3_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \SW_8|ALT_INV_saida[2]~10_combout\,
	datad => \ROM1|ALT_INV_memROM~26_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(2),
	cin => \processador|ULA1|Add0~6\,
	sumout => \processador|ULA1|Add0~9_sumout\,
	cout => \processador|ULA1|Add0~10\);

-- Location: LABCELL_X35_Y8_N24
\processador|ULA1|saida[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[2]~13_combout\ = ( !\processador|decoderInstru1|Equal11~3_combout\ & ( (!\processador|decoderInstru1|saida[4]~1_combout\ & ((!\processador|decoderInstru1|Equal11~2_combout\ & (\processador|ULA1|Add1~9_sumout\)) # 
-- (\processador|decoderInstru1|Equal11~2_combout\ & (((\processador|ULA1|Add0~9_sumout\)))))) # (\processador|decoderInstru1|saida[4]~1_combout\ & ((((\SW_8|saida[2]~10_combout\))))) ) ) # ( \processador|decoderInstru1|Equal11~3_combout\ & ( 
-- (!\processador|decoderInstru1|saida[4]~1_combout\ & ((!\processador|decoderInstru1|Equal11~2_combout\ & (\processador|ULA1|Add1~9_sumout\)) # (\processador|decoderInstru1|Equal11~2_combout\ & (((\processador|ULA1|Add0~9_sumout\)))))) # 
-- (\processador|decoderInstru1|saida[4]~1_combout\ & ((((\ROM1|memROM~19_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010001000001111001000100000111101110111000011110111011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~2_combout\,
	datab => \processador|ULA1|ALT_INV_Add1~9_sumout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	datae => \processador|decoderInstru1|ALT_INV_Equal11~3_combout\,
	dataf => \processador|ULA1|ALT_INV_Add0~9_sumout\,
	datag => \SW_8|ALT_INV_saida[2]~10_combout\,
	combout => \processador|ULA1|saida[2]~13_combout\);

-- Location: FF_X35_Y8_N26
\processador|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \processador|ULA1|saida[2]~13_combout\,
	ena => \processador|decoderInstru1|saida[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(2));

-- Location: FF_X34_Y8_N19
\RAM1|ram~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~105_q\);

-- Location: FF_X41_Y10_N29
\RAM1|ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~89_q\);

-- Location: FF_X37_Y9_N19
\RAM1|ram~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~217_q\);

-- Location: FF_X34_Y10_N2
\RAM1|ram~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~233_q\);

-- Location: MLABCELL_X34_Y10_N0
\RAM1|ram~572\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~572_combout\ = ( \RAM1|ram~233_q\ & ( \ROM1|memROM~17_combout\ & ( (\ROM1|memROM~12_combout\) # (\RAM1|ram~105_q\) ) ) ) # ( !\RAM1|ram~233_q\ & ( \ROM1|memROM~17_combout\ & ( (\RAM1|ram~105_q\ & !\ROM1|memROM~12_combout\) ) ) ) # ( 
-- \RAM1|ram~233_q\ & ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~12_combout\ & (\RAM1|ram~89_q\)) # (\ROM1|memROM~12_combout\ & ((\RAM1|ram~217_q\))) ) ) ) # ( !\RAM1|ram~233_q\ & ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~12_combout\ & 
-- (\RAM1|ram~89_q\)) # (\ROM1|memROM~12_combout\ & ((\RAM1|ram~217_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~105_q\,
	datab => \RAM1|ALT_INV_ram~89_q\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \RAM1|ALT_INV_ram~217_q\,
	datae => \RAM1|ALT_INV_ram~233_q\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~572_combout\);

-- Location: FF_X40_Y9_N11
\RAM1|ram~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~153_q\);

-- Location: FF_X36_Y7_N14
\RAM1|ram~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~169_q\);

-- Location: MLABCELL_X34_Y7_N0
\RAM1|ram~25feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~25feeder_combout\ = \processador|REGA|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|REGA|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~25feeder_combout\);

-- Location: FF_X34_Y7_N1
\RAM1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~25feeder_combout\,
	ena => \RAM1|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~25_q\);

-- Location: FF_X34_Y9_N55
\RAM1|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~41_q\);

-- Location: MLABCELL_X34_Y9_N54
\RAM1|ram~570\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~570_combout\ = ( \RAM1|ram~41_q\ & ( \ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~12_combout\) # (\RAM1|ram~169_q\) ) ) ) # ( !\RAM1|ram~41_q\ & ( \ROM1|memROM~17_combout\ & ( (\RAM1|ram~169_q\ & \ROM1|memROM~12_combout\) ) ) ) # ( 
-- \RAM1|ram~41_q\ & ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~12_combout\ & ((\RAM1|ram~25_q\))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~153_q\)) ) ) ) # ( !\RAM1|ram~41_q\ & ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~12_combout\ & 
-- ((\RAM1|ram~25_q\))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~153_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~153_q\,
	datab => \RAM1|ALT_INV_ram~169_q\,
	datac => \RAM1|ALT_INV_ram~25_q\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \RAM1|ALT_INV_ram~41_q\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~570_combout\);

-- Location: FF_X32_Y11_N56
\RAM1|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~97_q\);

-- Location: FF_X32_Y9_N49
\RAM1|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~81_q\);

-- Location: FF_X31_Y10_N49
\RAM1|ram~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~209_q\);

-- Location: FF_X32_Y11_N14
\RAM1|ram~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~225_q\);

-- Location: LABCELL_X32_Y11_N0
\RAM1|ram~571\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~571_combout\ = ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~12_combout\ & ( \RAM1|ram~225_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( \ROM1|memROM~12_combout\ & ( \RAM1|ram~209_q\ ) ) ) # ( \ROM1|memROM~17_combout\ & ( !\ROM1|memROM~12_combout\ & 
-- ( \RAM1|ram~97_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~12_combout\ & ( \RAM1|ram~81_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~97_q\,
	datab => \RAM1|ALT_INV_ram~81_q\,
	datac => \RAM1|ALT_INV_ram~209_q\,
	datad => \RAM1|ALT_INV_ram~225_q\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~571_combout\);

-- Location: FF_X31_Y10_N19
\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

-- Location: FF_X40_Y9_N13
\RAM1|ram~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~145_q\);

-- Location: FF_X39_Y10_N4
\RAM1|ram~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~161_q\);

-- Location: FF_X35_Y8_N49
\RAM1|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~33_q\);

-- Location: LABCELL_X40_Y10_N21
\RAM1|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~569_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~17_combout\ & ( \RAM1|ram~161_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~17_combout\ & ( \RAM1|ram~33_q\ ) ) ) # ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~17_combout\ & ( 
-- \RAM1|ram~145_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~17_combout\ & ( \RAM1|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~17_q\,
	datab => \RAM1|ALT_INV_ram~145_q\,
	datac => \RAM1|ALT_INV_ram~161_q\,
	datad => \RAM1|ALT_INV_ram~33_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~569_combout\);

-- Location: MLABCELL_X34_Y10_N24
\RAM1|ram~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~573_combout\ = ( \RAM1|ram~571_combout\ & ( \RAM1|ram~569_combout\ & ( (!\ROM1|memROM~15_combout\) # ((!\ROM1|memROM~21_combout\ & ((\RAM1|ram~570_combout\))) # (\ROM1|memROM~21_combout\ & (\RAM1|ram~572_combout\))) ) ) ) # ( 
-- !\RAM1|ram~571_combout\ & ( \RAM1|ram~569_combout\ & ( (!\ROM1|memROM~21_combout\ & ((!\ROM1|memROM~15_combout\) # ((\RAM1|ram~570_combout\)))) # (\ROM1|memROM~21_combout\ & (\ROM1|memROM~15_combout\ & (\RAM1|ram~572_combout\))) ) ) ) # ( 
-- \RAM1|ram~571_combout\ & ( !\RAM1|ram~569_combout\ & ( (!\ROM1|memROM~21_combout\ & (\ROM1|memROM~15_combout\ & ((\RAM1|ram~570_combout\)))) # (\ROM1|memROM~21_combout\ & ((!\ROM1|memROM~15_combout\) # ((\RAM1|ram~572_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~571_combout\ & ( !\RAM1|ram~569_combout\ & ( (\ROM1|memROM~15_combout\ & ((!\ROM1|memROM~21_combout\ & ((\RAM1|ram~570_combout\))) # (\ROM1|memROM~21_combout\ & (\RAM1|ram~572_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~21_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \RAM1|ALT_INV_ram~572_combout\,
	datad => \RAM1|ALT_INV_ram~570_combout\,
	datae => \RAM1|ALT_INV_ram~571_combout\,
	dataf => \RAM1|ALT_INV_ram~569_combout\,
	combout => \RAM1|ram~573_combout\);

-- Location: FF_X35_Y13_N25
\RAM1|ram~465\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~465_q\);

-- Location: FF_X34_Y10_N32
\RAM1|ram~481\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~481_q\);

-- Location: FF_X39_Y11_N50
\RAM1|ram~401\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~401_q\);

-- Location: FF_X39_Y11_N46
\RAM1|ram~417\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~417_q\);

-- Location: MLABCELL_X34_Y10_N33
\RAM1|ram~576\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~576_combout\ = ( \ROM1|memROM~21_combout\ & ( \ROM1|memROM~17_combout\ & ( \RAM1|ram~481_q\ ) ) ) # ( !\ROM1|memROM~21_combout\ & ( \ROM1|memROM~17_combout\ & ( \RAM1|ram~417_q\ ) ) ) # ( \ROM1|memROM~21_combout\ & ( !\ROM1|memROM~17_combout\ & 
-- ( \RAM1|ram~465_q\ ) ) ) # ( !\ROM1|memROM~21_combout\ & ( !\ROM1|memROM~17_combout\ & ( \RAM1|ram~401_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~465_q\,
	datab => \RAM1|ALT_INV_ram~481_q\,
	datac => \RAM1|ALT_INV_ram~401_q\,
	datad => \RAM1|ALT_INV_ram~417_q\,
	datae => \ROM1|ALT_INV_memROM~21_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~576_combout\);

-- Location: FF_X34_Y10_N20
\RAM1|ram~353\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~353_q\);

-- Location: FF_X34_Y13_N26
\RAM1|ram~337\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~337_q\);

-- Location: FF_X32_Y10_N29
\RAM1|ram~289\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~289_q\);

-- Location: FF_X34_Y12_N8
\RAM1|ram~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~273_q\);

-- Location: MLABCELL_X34_Y10_N21
\RAM1|ram~574\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~574_combout\ = ( \ROM1|memROM~21_combout\ & ( \ROM1|memROM~17_combout\ & ( \RAM1|ram~353_q\ ) ) ) # ( !\ROM1|memROM~21_combout\ & ( \ROM1|memROM~17_combout\ & ( \RAM1|ram~289_q\ ) ) ) # ( \ROM1|memROM~21_combout\ & ( !\ROM1|memROM~17_combout\ & 
-- ( \RAM1|ram~337_q\ ) ) ) # ( !\ROM1|memROM~21_combout\ & ( !\ROM1|memROM~17_combout\ & ( \RAM1|ram~273_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~353_q\,
	datab => \RAM1|ALT_INV_ram~337_q\,
	datac => \RAM1|ALT_INV_ram~289_q\,
	datad => \RAM1|ALT_INV_ram~273_q\,
	datae => \ROM1|ALT_INV_memROM~21_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~574_combout\);

-- Location: FF_X40_Y12_N16
\RAM1|ram~473\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~473_q\);

-- Location: FF_X39_Y13_N20
\RAM1|ram~489\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~489_q\);

-- Location: FF_X39_Y13_N2
\RAM1|ram~425\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~425_q\);

-- Location: FF_X39_Y13_N55
\RAM1|ram~409\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~409_q\);

-- Location: MLABCELL_X37_Y13_N30
\RAM1|ram~577\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~577_combout\ = ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~21_combout\ & ( \RAM1|ram~489_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( \ROM1|memROM~21_combout\ & ( \RAM1|ram~473_q\ ) ) ) # ( \ROM1|memROM~17_combout\ & ( !\ROM1|memROM~21_combout\ & 
-- ( \RAM1|ram~425_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~21_combout\ & ( \RAM1|ram~409_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~473_q\,
	datab => \RAM1|ALT_INV_ram~489_q\,
	datac => \RAM1|ALT_INV_ram~425_q\,
	datad => \RAM1|ALT_INV_ram~409_q\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~577_combout\);

-- Location: FF_X34_Y13_N38
\RAM1|ram~361\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~361_q\);

-- Location: FF_X34_Y12_N38
\RAM1|ram~281\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~281_q\);

-- Location: FF_X34_Y9_N41
\RAM1|ram~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~297_q\);

-- Location: LABCELL_X40_Y12_N36
\RAM1|ram~345feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~345feeder_combout\ = \processador|REGA|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|REGA|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~345feeder_combout\);

-- Location: FF_X40_Y12_N38
\RAM1|ram~345\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~345feeder_combout\,
	ena => \RAM1|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~345_q\);

-- Location: MLABCELL_X34_Y13_N48
\RAM1|ram~575\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~575_combout\ = ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~21_combout\ & ( \RAM1|ram~361_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( \ROM1|memROM~21_combout\ & ( \RAM1|ram~345_q\ ) ) ) # ( \ROM1|memROM~17_combout\ & ( !\ROM1|memROM~21_combout\ & 
-- ( \RAM1|ram~297_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~21_combout\ & ( \RAM1|ram~281_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~361_q\,
	datab => \RAM1|ALT_INV_ram~281_q\,
	datac => \RAM1|ALT_INV_ram~297_q\,
	datad => \RAM1|ALT_INV_ram~345_q\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~575_combout\);

-- Location: MLABCELL_X34_Y10_N54
\RAM1|ram~578\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~578_combout\ = ( \RAM1|ram~577_combout\ & ( \RAM1|ram~575_combout\ & ( ((!\ROM1|memROM~12_combout\ & ((\RAM1|ram~574_combout\))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~576_combout\))) # (\ROM1|memROM~15_combout\) ) ) ) # ( 
-- !\RAM1|ram~577_combout\ & ( \RAM1|ram~575_combout\ & ( (!\ROM1|memROM~15_combout\ & ((!\ROM1|memROM~12_combout\ & ((\RAM1|ram~574_combout\))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~576_combout\)))) # (\ROM1|memROM~15_combout\ & 
-- (((!\ROM1|memROM~12_combout\)))) ) ) ) # ( \RAM1|ram~577_combout\ & ( !\RAM1|ram~575_combout\ & ( (!\ROM1|memROM~15_combout\ & ((!\ROM1|memROM~12_combout\ & ((\RAM1|ram~574_combout\))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~576_combout\)))) # 
-- (\ROM1|memROM~15_combout\ & (((\ROM1|memROM~12_combout\)))) ) ) ) # ( !\RAM1|ram~577_combout\ & ( !\RAM1|ram~575_combout\ & ( (!\ROM1|memROM~15_combout\ & ((!\ROM1|memROM~12_combout\ & ((\RAM1|ram~574_combout\))) # (\ROM1|memROM~12_combout\ & 
-- (\RAM1|ram~576_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000111011100111111010001000011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~576_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \RAM1|ALT_INV_ram~574_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \RAM1|ALT_INV_ram~577_combout\,
	dataf => \RAM1|ALT_INV_ram~575_combout\,
	combout => \RAM1|ram~578_combout\);

-- Location: FF_X34_Y11_N50
\RAM1|ram~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~265_q\);

-- Location: FF_X34_Y8_N37
\RAM1|ram~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~137_q\);

-- Location: FF_X37_Y9_N35
\RAM1|ram~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~249_q\);

-- Location: MLABCELL_X34_Y7_N12
\RAM1|ram~121feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~121feeder_combout\ = \processador|REGA|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|REGA|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~121feeder_combout\);

-- Location: FF_X34_Y7_N14
\RAM1|ram~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~121feeder_combout\,
	ena => \RAM1|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~121_q\);

-- Location: MLABCELL_X34_Y11_N6
\RAM1|ram~582\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~582_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~17_combout\ & ( \RAM1|ram~265_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~17_combout\ & ( \RAM1|ram~137_q\ ) ) ) # ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~17_combout\ & 
-- ( \RAM1|ram~249_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~17_combout\ & ( \RAM1|ram~121_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~265_q\,
	datab => \RAM1|ALT_INV_ram~137_q\,
	datac => \RAM1|ALT_INV_ram~249_q\,
	datad => \RAM1|ALT_INV_ram~121_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~582_combout\);

-- Location: FF_X34_Y11_N26
\RAM1|ram~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~241_q\);

-- Location: FF_X35_Y10_N35
\RAM1|ram~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~129_q\);

-- Location: FF_X34_Y11_N2
\RAM1|ram~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~257_q\);

-- Location: FF_X35_Y10_N28
\RAM1|ram~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~113_q\);

-- Location: MLABCELL_X34_Y11_N54
\RAM1|ram~581\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~581_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~17_combout\ & ( \RAM1|ram~257_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~17_combout\ & ( \RAM1|ram~129_q\ ) ) ) # ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~17_combout\ & 
-- ( \RAM1|ram~241_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~17_combout\ & ( \RAM1|ram~113_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~241_q\,
	datab => \RAM1|ALT_INV_ram~129_q\,
	datac => \RAM1|ALT_INV_ram~257_q\,
	datad => \RAM1|ALT_INV_ram~113_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~581_combout\);

-- Location: LABCELL_X40_Y8_N15
\RAM1|ram~65feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~65feeder_combout\ = \processador|REGA|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|REGA|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~65feeder_combout\);

-- Location: FF_X40_Y8_N16
\RAM1|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~65feeder_combout\,
	ena => \RAM1|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~65_q\);

-- Location: FF_X39_Y10_N59
\RAM1|ram~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~177_q\);

-- Location: FF_X39_Y9_N29
\RAM1|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~49_q\);

-- Location: FF_X39_Y10_N50
\RAM1|ram~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~193_q\);

-- Location: LABCELL_X39_Y10_N3
\RAM1|ram~579\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~579_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~17_combout\ & ( \RAM1|ram~193_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~17_combout\ & ( \RAM1|ram~65_q\ ) ) ) # ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~17_combout\ & ( 
-- \RAM1|ram~177_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~17_combout\ & ( \RAM1|ram~49_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~65_q\,
	datab => \RAM1|ALT_INV_ram~177_q\,
	datac => \RAM1|ALT_INV_ram~49_q\,
	datad => \RAM1|ALT_INV_ram~193_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~579_combout\);

-- Location: FF_X39_Y9_N11
\RAM1|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~57_q\);

-- Location: FF_X36_Y7_N44
\RAM1|ram~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~201_q\);

-- Location: FF_X40_Y10_N1
\RAM1|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~73_q\);

-- Location: FF_X37_Y9_N29
\RAM1|ram~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~185_q\);

-- Location: LABCELL_X36_Y7_N30
\RAM1|ram~580\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~580_combout\ = ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~12_combout\ & ( \RAM1|ram~201_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( \ROM1|memROM~12_combout\ & ( \RAM1|ram~185_q\ ) ) ) # ( \ROM1|memROM~17_combout\ & ( !\ROM1|memROM~12_combout\ & 
-- ( \RAM1|ram~73_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~12_combout\ & ( \RAM1|ram~57_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~57_q\,
	datab => \RAM1|ALT_INV_ram~201_q\,
	datac => \RAM1|ALT_INV_ram~73_q\,
	datad => \RAM1|ALT_INV_ram~185_q\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~580_combout\);

-- Location: MLABCELL_X34_Y10_N36
\RAM1|ram~583\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~583_combout\ = ( \RAM1|ram~579_combout\ & ( \RAM1|ram~580_combout\ & ( (!\ROM1|memROM~21_combout\) # ((!\ROM1|memROM~15_combout\ & ((\RAM1|ram~581_combout\))) # (\ROM1|memROM~15_combout\ & (\RAM1|ram~582_combout\))) ) ) ) # ( 
-- !\RAM1|ram~579_combout\ & ( \RAM1|ram~580_combout\ & ( (!\ROM1|memROM~15_combout\ & (\ROM1|memROM~21_combout\ & ((\RAM1|ram~581_combout\)))) # (\ROM1|memROM~15_combout\ & ((!\ROM1|memROM~21_combout\) # ((\RAM1|ram~582_combout\)))) ) ) ) # ( 
-- \RAM1|ram~579_combout\ & ( !\RAM1|ram~580_combout\ & ( (!\ROM1|memROM~15_combout\ & ((!\ROM1|memROM~21_combout\) # ((\RAM1|ram~581_combout\)))) # (\ROM1|memROM~15_combout\ & (\ROM1|memROM~21_combout\ & (\RAM1|ram~582_combout\))) ) ) ) # ( 
-- !\RAM1|ram~579_combout\ & ( !\RAM1|ram~580_combout\ & ( (\ROM1|memROM~21_combout\ & ((!\ROM1|memROM~15_combout\ & ((\RAM1|ram~581_combout\))) # (\ROM1|memROM~15_combout\ & (\RAM1|ram~582_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \RAM1|ALT_INV_ram~582_combout\,
	datad => \RAM1|ALT_INV_ram~581_combout\,
	datae => \RAM1|ALT_INV_ram~579_combout\,
	dataf => \RAM1|ALT_INV_ram~580_combout\,
	combout => \RAM1|ram~583_combout\);

-- Location: FF_X35_Y12_N2
\RAM1|ram~457\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~457_q\);

-- Location: FF_X36_Y8_N23
\RAM1|ram~449\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~449_q\);

-- Location: FF_X35_Y12_N32
\RAM1|ram~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~321_q\);

-- Location: FF_X35_Y12_N50
\RAM1|ram~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~329_q\);

-- Location: LABCELL_X35_Y12_N3
\RAM1|ram~585\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~585_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~12_combout\ & ( \RAM1|ram~457_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~12_combout\ & ( \RAM1|ram~449_q\ ) ) ) # ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~12_combout\ & 
-- ( \RAM1|ram~329_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~12_combout\ & ( \RAM1|ram~321_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~457_q\,
	datab => \RAM1|ALT_INV_ram~449_q\,
	datac => \RAM1|ALT_INV_ram~321_q\,
	datad => \RAM1|ALT_INV_ram~329_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~585_combout\);

-- Location: FF_X36_Y13_N2
\RAM1|ram~513\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~513_q\);

-- Location: FF_X36_Y13_N55
\RAM1|ram~521\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~521_q\);

-- Location: FF_X35_Y14_N7
\RAM1|ram~385\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~385_q\);

-- Location: FF_X34_Y12_N52
\RAM1|ram~393\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~393_q\);

-- Location: LABCELL_X36_Y13_N57
\RAM1|ram~587\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~587_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~521_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~393_q\ ) ) ) # ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM1|ram~513_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM1|ram~385_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~513_q\,
	datab => \RAM1|ALT_INV_ram~521_q\,
	datac => \RAM1|ALT_INV_ram~385_q\,
	datad => \RAM1|ALT_INV_ram~393_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~587_combout\);

-- Location: LABCELL_X40_Y13_N3
\RAM1|ram~369feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~369feeder_combout\ = ( \processador|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~369feeder_combout\);

-- Location: FF_X40_Y13_N4
\RAM1|ram~369\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~369feeder_combout\,
	ena => \RAM1|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~369_q\);

-- Location: LABCELL_X40_Y10_N27
\RAM1|ram~377feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~377feeder_combout\ = ( \processador|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~377feeder_combout\);

-- Location: FF_X40_Y10_N28
\RAM1|ram~377\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~377feeder_combout\,
	ena => \RAM1|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~377_q\);

-- Location: FF_X40_Y11_N8
\RAM1|ram~505\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~505_q\);

-- Location: FF_X37_Y12_N52
\RAM1|ram~497\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~497_q\);

-- Location: LABCELL_X40_Y11_N9
\RAM1|ram~586\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~586_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~505_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~377_q\ ) ) ) # ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM1|ram~497_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM1|ram~369_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~369_q\,
	datab => \RAM1|ALT_INV_ram~377_q\,
	datac => \RAM1|ALT_INV_ram~505_q\,
	datad => \RAM1|ALT_INV_ram~497_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~586_combout\);

-- Location: FF_X36_Y14_N2
\RAM1|ram~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~313_q\);

-- Location: FF_X32_Y10_N52
\RAM1|ram~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~305_q\);

-- Location: LABCELL_X35_Y13_N33
\RAM1|ram~433feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~433feeder_combout\ = ( \processador|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~433feeder_combout\);

-- Location: FF_X35_Y13_N34
\RAM1|ram~433\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~433feeder_combout\,
	ena => \RAM1|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~433_q\);

-- Location: FF_X36_Y14_N56
\RAM1|ram~441\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~441_q\);

-- Location: LABCELL_X36_Y14_N57
\RAM1|ram~584\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~584_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~441_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~313_q\ ) ) ) # ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM1|ram~433_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM1|ram~305_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~313_q\,
	datab => \RAM1|ALT_INV_ram~305_q\,
	datac => \RAM1|ALT_INV_ram~433_q\,
	datad => \RAM1|ALT_INV_ram~441_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~584_combout\);

-- Location: MLABCELL_X34_Y10_N48
\RAM1|ram~588\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~588_combout\ = ( \RAM1|ram~586_combout\ & ( \RAM1|ram~584_combout\ & ( (!\ROM1|memROM~17_combout\) # ((!\ROM1|memROM~21_combout\ & (\RAM1|ram~585_combout\)) # (\ROM1|memROM~21_combout\ & ((\RAM1|ram~587_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~586_combout\ & ( \RAM1|ram~584_combout\ & ( (!\ROM1|memROM~17_combout\ & (!\ROM1|memROM~21_combout\)) # (\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~21_combout\ & (\RAM1|ram~585_combout\)) # (\ROM1|memROM~21_combout\ & 
-- ((\RAM1|ram~587_combout\))))) ) ) ) # ( \RAM1|ram~586_combout\ & ( !\RAM1|ram~584_combout\ & ( (!\ROM1|memROM~17_combout\ & (\ROM1|memROM~21_combout\)) # (\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~21_combout\ & (\RAM1|ram~585_combout\)) # 
-- (\ROM1|memROM~21_combout\ & ((\RAM1|ram~587_combout\))))) ) ) ) # ( !\RAM1|ram~586_combout\ & ( !\RAM1|ram~584_combout\ & ( (\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~21_combout\ & (\RAM1|ram~585_combout\)) # (\ROM1|memROM~21_combout\ & 
-- ((\RAM1|ram~587_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \RAM1|ALT_INV_ram~585_combout\,
	datad => \RAM1|ALT_INV_ram~587_combout\,
	datae => \RAM1|ALT_INV_ram~586_combout\,
	dataf => \RAM1|ALT_INV_ram~584_combout\,
	combout => \RAM1|ram~588_combout\);

-- Location: MLABCELL_X34_Y10_N6
\RAM1|ram~589\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~589_combout\ = ( \RAM1|ram~583_combout\ & ( \RAM1|ram~588_combout\ & ( ((!\ROM1|memROM~23_combout\ & (\RAM1|ram~573_combout\)) # (\ROM1|memROM~23_combout\ & ((\RAM1|ram~578_combout\)))) # (\ROM1|memROM~19_combout\) ) ) ) # ( 
-- !\RAM1|ram~583_combout\ & ( \RAM1|ram~588_combout\ & ( (!\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~23_combout\ & (\RAM1|ram~573_combout\)) # (\ROM1|memROM~23_combout\ & ((\RAM1|ram~578_combout\))))) # (\ROM1|memROM~19_combout\ & 
-- (((\ROM1|memROM~23_combout\)))) ) ) ) # ( \RAM1|ram~583_combout\ & ( !\RAM1|ram~588_combout\ & ( (!\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~23_combout\ & (\RAM1|ram~573_combout\)) # (\ROM1|memROM~23_combout\ & ((\RAM1|ram~578_combout\))))) # 
-- (\ROM1|memROM~19_combout\ & (((!\ROM1|memROM~23_combout\)))) ) ) ) # ( !\RAM1|ram~583_combout\ & ( !\RAM1|ram~588_combout\ & ( (!\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~23_combout\ & (\RAM1|ram~573_combout\)) # (\ROM1|memROM~23_combout\ & 
-- ((\RAM1|ram~578_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100011101110000110001000100001111110111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~573_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \RAM1|ALT_INV_ram~578_combout\,
	datad => \ROM1|ALT_INV_memROM~23_combout\,
	datae => \RAM1|ALT_INV_ram~583_combout\,
	dataf => \RAM1|ALT_INV_ram~588_combout\,
	combout => \RAM1|ram~589_combout\);

-- Location: MLABCELL_X34_Y10_N42
\SW_8|saida[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_8|saida[2]~10_combout\ = ( \comb~6_combout\ & ( \RAM1|ram~589_combout\ & ( (\SW[2]~input_o\ & !\SW_8|saida[1]~8_combout\) ) ) ) # ( !\comb~6_combout\ & ( \RAM1|ram~589_combout\ & ( !\SW_8|saida[1]~8_combout\ ) ) ) # ( \comb~6_combout\ & ( 
-- !\RAM1|ram~589_combout\ & ( (\SW[2]~input_o\ & (!\SW_8|saida[1]~8_combout\ & !\RAM1|dado_out~0_combout\)) ) ) ) # ( !\comb~6_combout\ & ( !\RAM1|ram~589_combout\ & ( (!\SW_8|saida[1]~8_combout\ & !\RAM1|dado_out~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000010100000000000011110000111100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datac => \SW_8|ALT_INV_saida[1]~8_combout\,
	datad => \RAM1|ALT_INV_dado_out~0_combout\,
	datae => \ALT_INV_comb~6_combout\,
	dataf => \RAM1|ALT_INV_ram~589_combout\,
	combout => \SW_8|saida[2]~10_combout\);

-- Location: LABCELL_X36_Y9_N39
\processador|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~13_sumout\ = SUM(( (!\processador|decoderInstru1|Equal11~3_combout\ & (((\SW_8|saida[3]~11_combout\)))) # (\processador|decoderInstru1|Equal11~3_combout\ & (!\processador|PC|DOUT\(8) & ((\ROM1|memROM~27_combout\)))) ) + ( 
-- \processador|REGA|DOUT\(3) ) + ( \processador|ULA1|Add0~10\ ))
-- \processador|ULA1|Add0~14\ = CARRY(( (!\processador|decoderInstru1|Equal11~3_combout\ & (((\SW_8|saida[3]~11_combout\)))) # (\processador|decoderInstru1|Equal11~3_combout\ & (!\processador|PC|DOUT\(8) & ((\ROM1|memROM~27_combout\)))) ) + ( 
-- \processador|REGA|DOUT\(3) ) + ( \processador|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~3_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \SW_8|ALT_INV_saida[3]~11_combout\,
	datad => \ROM1|ALT_INV_memROM~27_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(3),
	cin => \processador|ULA1|Add0~10\,
	sumout => \processador|ULA1|Add0~13_sumout\,
	cout => \processador|ULA1|Add0~14\);

-- Location: LABCELL_X35_Y9_N12
\processador|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~13_sumout\ = SUM(( (!\processador|decoderInstru1|Equal11~3_combout\ & (((!\SW_8|saida[3]~11_combout\)))) # (\processador|decoderInstru1|Equal11~3_combout\ & (((!\ROM1|memROM~27_combout\)) # (\processador|PC|DOUT\(8)))) ) + ( 
-- \processador|REGA|DOUT\(3) ) + ( \processador|ULA1|Add1~10\ ))
-- \processador|ULA1|Add1~14\ = CARRY(( (!\processador|decoderInstru1|Equal11~3_combout\ & (((!\SW_8|saida[3]~11_combout\)))) # (\processador|decoderInstru1|Equal11~3_combout\ & (((!\ROM1|memROM~27_combout\)) # (\processador|PC|DOUT\(8)))) ) + ( 
-- \processador|REGA|DOUT\(3) ) + ( \processador|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111010110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~3_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \SW_8|ALT_INV_saida[3]~11_combout\,
	datad => \ROM1|ALT_INV_memROM~27_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(3),
	cin => \processador|ULA1|Add1~10\,
	sumout => \processador|ULA1|Add1~13_sumout\,
	cout => \processador|ULA1|Add1~14\);

-- Location: LABCELL_X35_Y8_N21
\processador|ULA1|saida[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[3]~9_combout\ = ( !\processador|decoderInstru1|Equal11~3_combout\ & ( (!\processador|decoderInstru1|saida[4]~1_combout\ & (((!\processador|decoderInstru1|Equal11~2_combout\ & ((\processador|ULA1|Add1~13_sumout\))) # 
-- (\processador|decoderInstru1|Equal11~2_combout\ & (\processador|ULA1|Add0~13_sumout\))))) # (\processador|decoderInstru1|saida[4]~1_combout\ & (((\SW_8|saida[3]~11_combout\)))) ) ) # ( \processador|decoderInstru1|Equal11~3_combout\ & ( 
-- (!\processador|decoderInstru1|saida[4]~1_combout\ & (((!\processador|decoderInstru1|Equal11~2_combout\ & ((\processador|ULA1|Add1~13_sumout\))) # (\processador|decoderInstru1|Equal11~2_combout\ & (\processador|ULA1|Add0~13_sumout\))))) # 
-- (\processador|decoderInstru1|saida[4]~1_combout\ & (((\ROM1|memROM~21_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001101000111000000110100011111001111010001111100111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA1|ALT_INV_Add0~13_sumout\,
	datab => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datad => \processador|decoderInstru1|ALT_INV_Equal11~2_combout\,
	datae => \processador|decoderInstru1|ALT_INV_Equal11~3_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~13_sumout\,
	datag => \SW_8|ALT_INV_saida[3]~11_combout\,
	combout => \processador|ULA1|saida[3]~9_combout\);

-- Location: FF_X35_Y8_N23
\processador|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \processador|ULA1|saida[3]~9_combout\,
	ena => \processador|decoderInstru1|saida[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(3));

-- Location: FF_X35_Y10_N11
\RAM1|ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~98_q\);

-- Location: FF_X32_Y9_N56
\RAM1|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~82_q\);

-- Location: FF_X35_Y10_N5
\RAM1|ram~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~130_q\);

-- Location: FF_X35_Y10_N53
\RAM1|ram~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~114_q\);

-- Location: LABCELL_X35_Y10_N3
\RAM1|ram~592\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~592_combout\ = ( \RAM1|ram~130_q\ & ( \RAM1|ram~114_q\ & ( ((!\ROM1|memROM~17_combout\ & ((\RAM1|ram~82_q\))) # (\ROM1|memROM~17_combout\ & (\RAM1|ram~98_q\))) # (\ROM1|memROM~19_combout\) ) ) ) # ( !\RAM1|ram~130_q\ & ( \RAM1|ram~114_q\ & ( 
-- (!\ROM1|memROM~17_combout\ & (((\RAM1|ram~82_q\) # (\ROM1|memROM~19_combout\)))) # (\ROM1|memROM~17_combout\ & (\RAM1|ram~98_q\ & (!\ROM1|memROM~19_combout\))) ) ) ) # ( \RAM1|ram~130_q\ & ( !\RAM1|ram~114_q\ & ( (!\ROM1|memROM~17_combout\ & 
-- (((!\ROM1|memROM~19_combout\ & \RAM1|ram~82_q\)))) # (\ROM1|memROM~17_combout\ & (((\ROM1|memROM~19_combout\)) # (\RAM1|ram~98_q\))) ) ) ) # ( !\RAM1|ram~130_q\ & ( !\RAM1|ram~114_q\ & ( (!\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~17_combout\ & 
-- ((\RAM1|ram~82_q\))) # (\ROM1|memROM~17_combout\ & (\RAM1|ram~98_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000101011011010100011010101110100001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \RAM1|ALT_INV_ram~98_q\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \RAM1|ALT_INV_ram~82_q\,
	datae => \RAM1|ALT_INV_ram~130_q\,
	dataf => \RAM1|ALT_INV_ram~114_q\,
	combout => \RAM1|ram~592_combout\);

-- Location: FF_X39_Y10_N29
\RAM1|ram~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~162_q\);

-- Location: FF_X39_Y10_N41
\RAM1|ram~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~194_q\);

-- Location: FF_X39_Y10_N17
\RAM1|ram~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~178_q\);

-- Location: FF_X40_Y9_N53
\RAM1|ram~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~146_q\);

-- Location: LABCELL_X39_Y10_N45
\RAM1|ram~591\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~591_combout\ = ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~194_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~178_q\ ) ) ) # ( \ROM1|memROM~17_combout\ & ( !\ROM1|memROM~19_combout\ & 
-- ( \RAM1|ram~162_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~19_combout\ & ( \RAM1|ram~146_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~162_q\,
	datab => \RAM1|ALT_INV_ram~194_q\,
	datac => \RAM1|ALT_INV_ram~178_q\,
	datad => \RAM1|ALT_INV_ram~146_q\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~591_combout\);

-- Location: LABCELL_X31_Y11_N48
\RAM1|ram~34feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~34feeder_combout\ = ( \processador|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~34feeder_combout\);

-- Location: FF_X31_Y11_N49
\RAM1|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~34feeder_combout\,
	ena => \RAM1|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~34_q\);

-- Location: LABCELL_X31_Y10_N24
\RAM1|ram~66feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~66feeder_combout\ = ( \processador|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~66feeder_combout\);

-- Location: FF_X31_Y10_N25
\RAM1|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~66feeder_combout\,
	ena => \RAM1|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~66_q\);

-- Location: LABCELL_X31_Y10_N54
\RAM1|ram~18feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~18feeder_combout\ = ( \processador|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~18feeder_combout\);

-- Location: FF_X31_Y10_N55
\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~18feeder_combout\,
	ena => \RAM1|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

-- Location: FF_X32_Y10_N56
\RAM1|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~50_q\);

-- Location: LABCELL_X32_Y10_N54
\RAM1|ram~590\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~590_combout\ = ( \RAM1|ram~50_q\ & ( \ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~17_combout\) # (\RAM1|ram~66_q\) ) ) ) # ( !\RAM1|ram~50_q\ & ( \ROM1|memROM~19_combout\ & ( (\RAM1|ram~66_q\ & \ROM1|memROM~17_combout\) ) ) ) # ( \RAM1|ram~50_q\ 
-- & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~17_combout\ & ((\RAM1|ram~18_q\))) # (\ROM1|memROM~17_combout\ & (\RAM1|ram~34_q\)) ) ) ) # ( !\RAM1|ram~50_q\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~17_combout\ & ((\RAM1|ram~18_q\))) # 
-- (\ROM1|memROM~17_combout\ & (\RAM1|ram~34_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~34_q\,
	datab => \RAM1|ALT_INV_ram~66_q\,
	datac => \RAM1|ALT_INV_ram~18_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \RAM1|ALT_INV_ram~50_q\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~590_combout\);

-- Location: FF_X36_Y10_N53
\RAM1|ram~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~226_q\);

-- Location: FF_X34_Y11_N11
\RAM1|ram~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~242_q\);

-- Location: FF_X32_Y9_N31
\RAM1|ram~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~210_q\);

-- Location: FF_X34_Y11_N38
\RAM1|ram~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~258_q\);

-- Location: MLABCELL_X34_Y11_N39
\RAM1|ram~593\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~593_combout\ = ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~258_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~242_q\ ) ) ) # ( \ROM1|memROM~17_combout\ & ( !\ROM1|memROM~19_combout\ & 
-- ( \RAM1|ram~226_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~19_combout\ & ( \RAM1|ram~210_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~226_q\,
	datab => \RAM1|ALT_INV_ram~242_q\,
	datac => \RAM1|ALT_INV_ram~210_q\,
	datad => \RAM1|ALT_INV_ram~258_q\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~593_combout\);

-- Location: LABCELL_X35_Y10_N57
\RAM1|ram~594\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~594_combout\ = ( \RAM1|ram~590_combout\ & ( \RAM1|ram~593_combout\ & ( (!\ROM1|memROM~21_combout\ & (((!\ROM1|memROM~12_combout\) # (\RAM1|ram~591_combout\)))) # (\ROM1|memROM~21_combout\ & (((\ROM1|memROM~12_combout\)) # 
-- (\RAM1|ram~592_combout\))) ) ) ) # ( !\RAM1|ram~590_combout\ & ( \RAM1|ram~593_combout\ & ( (!\ROM1|memROM~21_combout\ & (((\RAM1|ram~591_combout\ & \ROM1|memROM~12_combout\)))) # (\ROM1|memROM~21_combout\ & (((\ROM1|memROM~12_combout\)) # 
-- (\RAM1|ram~592_combout\))) ) ) ) # ( \RAM1|ram~590_combout\ & ( !\RAM1|ram~593_combout\ & ( (!\ROM1|memROM~21_combout\ & (((!\ROM1|memROM~12_combout\) # (\RAM1|ram~591_combout\)))) # (\ROM1|memROM~21_combout\ & (\RAM1|ram~592_combout\ & 
-- ((!\ROM1|memROM~12_combout\)))) ) ) ) # ( !\RAM1|ram~590_combout\ & ( !\RAM1|ram~593_combout\ & ( (!\ROM1|memROM~21_combout\ & (((\RAM1|ram~591_combout\ & \ROM1|memROM~12_combout\)))) # (\ROM1|memROM~21_combout\ & (\RAM1|ram~592_combout\ & 
-- ((!\ROM1|memROM~12_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100110111010000110000010001001111111101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~592_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \RAM1|ALT_INV_ram~591_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \RAM1|ALT_INV_ram~590_combout\,
	dataf => \RAM1|ALT_INV_ram~593_combout\,
	combout => \RAM1|ram~594_combout\);

-- Location: LABCELL_X40_Y10_N9
\RAM1|ram~74feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~74feeder_combout\ = ( \processador|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~74feeder_combout\);

-- Location: FF_X40_Y10_N10
\RAM1|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~74feeder_combout\,
	ena => \RAM1|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~74_q\);

-- Location: FF_X35_Y8_N41
\RAM1|ram~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~138_q\);

-- Location: MLABCELL_X34_Y9_N48
\RAM1|ram~42feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~42feeder_combout\ = ( \processador|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~42feeder_combout\);

-- Location: FF_X34_Y9_N49
\RAM1|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~42feeder_combout\,
	ena => \RAM1|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~42_q\);

-- Location: FF_X34_Y8_N58
\RAM1|ram~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~106_q\);

-- Location: LABCELL_X35_Y8_N0
\RAM1|ram~602\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~602_combout\ = ( \ROM1|memROM~19_combout\ & ( \ROM1|memROM~21_combout\ & ( \RAM1|ram~138_q\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( \ROM1|memROM~21_combout\ & ( \RAM1|ram~106_q\ ) ) ) # ( \ROM1|memROM~19_combout\ & ( !\ROM1|memROM~21_combout\ & 
-- ( \RAM1|ram~74_q\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( !\ROM1|memROM~21_combout\ & ( \RAM1|ram~42_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~74_q\,
	datab => \RAM1|ALT_INV_ram~138_q\,
	datac => \RAM1|ALT_INV_ram~42_q\,
	datad => \RAM1|ALT_INV_ram~106_q\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~602_combout\);

-- Location: FF_X36_Y7_N20
\RAM1|ram~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~202_q\);

-- Location: MLABCELL_X34_Y7_N48
\RAM1|ram~266feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~266feeder_combout\ = ( \processador|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~266feeder_combout\);

-- Location: FF_X34_Y7_N50
\RAM1|ram~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~266feeder_combout\,
	ena => \RAM1|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~266_q\);

-- Location: FF_X36_Y7_N26
\RAM1|ram~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~234_q\);

-- Location: FF_X36_Y7_N49
\RAM1|ram~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~170_q\);

-- Location: MLABCELL_X34_Y8_N9
\RAM1|ram~603\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~603_combout\ = ( \ROM1|memROM~19_combout\ & ( \ROM1|memROM~21_combout\ & ( \RAM1|ram~266_q\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( \ROM1|memROM~21_combout\ & ( \RAM1|ram~234_q\ ) ) ) # ( \ROM1|memROM~19_combout\ & ( !\ROM1|memROM~21_combout\ & 
-- ( \RAM1|ram~202_q\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( !\ROM1|memROM~21_combout\ & ( \RAM1|ram~170_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~202_q\,
	datab => \RAM1|ALT_INV_ram~266_q\,
	datac => \RAM1|ALT_INV_ram~234_q\,
	datad => \RAM1|ALT_INV_ram~170_q\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~603_combout\);

-- Location: FF_X41_Y10_N2
\RAM1|ram~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~250_q\);

-- Location: MLABCELL_X42_Y10_N0
\RAM1|ram~218feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~218feeder_combout\ = ( \processador|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~218feeder_combout\);

-- Location: FF_X42_Y10_N1
\RAM1|ram~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~218feeder_combout\,
	ena => \RAM1|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~218_q\);

-- Location: FF_X40_Y9_N22
\RAM1|ram~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~186_q\);

-- Location: FF_X40_Y9_N7
\RAM1|ram~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~154_q\);

-- Location: LABCELL_X41_Y10_N3
\RAM1|ram~601\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~601_combout\ = ( \ROM1|memROM~19_combout\ & ( \ROM1|memROM~21_combout\ & ( \RAM1|ram~250_q\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( \ROM1|memROM~21_combout\ & ( \RAM1|ram~218_q\ ) ) ) # ( \ROM1|memROM~19_combout\ & ( !\ROM1|memROM~21_combout\ & 
-- ( \RAM1|ram~186_q\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( !\ROM1|memROM~21_combout\ & ( \RAM1|ram~154_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~250_q\,
	datab => \RAM1|ALT_INV_ram~218_q\,
	datac => \RAM1|ALT_INV_ram~186_q\,
	datad => \RAM1|ALT_INV_ram~154_q\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~601_combout\);

-- Location: FF_X41_Y10_N56
\RAM1|ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~90_q\);

-- Location: FF_X35_Y7_N32
\RAM1|ram~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~122_q\);

-- Location: FF_X35_Y7_N8
\RAM1|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~58_q\);

-- Location: FF_X35_Y7_N56
\RAM1|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

-- Location: LABCELL_X35_Y7_N39
\RAM1|ram~600\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~600_combout\ = ( \ROM1|memROM~21_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~122_q\ ) ) ) # ( !\ROM1|memROM~21_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~58_q\ ) ) ) # ( \ROM1|memROM~21_combout\ & ( !\ROM1|memROM~19_combout\ & ( 
-- \RAM1|ram~90_q\ ) ) ) # ( !\ROM1|memROM~21_combout\ & ( !\ROM1|memROM~19_combout\ & ( \RAM1|ram~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~90_q\,
	datab => \RAM1|ALT_INV_ram~122_q\,
	datac => \RAM1|ALT_INV_ram~58_q\,
	datad => \RAM1|ALT_INV_ram~26_q\,
	datae => \ROM1|ALT_INV_memROM~21_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~600_combout\);

-- Location: LABCELL_X35_Y10_N6
\RAM1|ram~604\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~604_combout\ = ( \RAM1|ram~601_combout\ & ( \RAM1|ram~600_combout\ & ( (!\ROM1|memROM~17_combout\) # ((!\ROM1|memROM~12_combout\ & (\RAM1|ram~602_combout\)) # (\ROM1|memROM~12_combout\ & ((\RAM1|ram~603_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~601_combout\ & ( \RAM1|ram~600_combout\ & ( (!\ROM1|memROM~17_combout\ & (((!\ROM1|memROM~12_combout\)))) # (\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~12_combout\ & (\RAM1|ram~602_combout\)) # (\ROM1|memROM~12_combout\ & 
-- ((\RAM1|ram~603_combout\))))) ) ) ) # ( \RAM1|ram~601_combout\ & ( !\RAM1|ram~600_combout\ & ( (!\ROM1|memROM~17_combout\ & (((\ROM1|memROM~12_combout\)))) # (\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~12_combout\ & (\RAM1|ram~602_combout\)) # 
-- (\ROM1|memROM~12_combout\ & ((\RAM1|ram~603_combout\))))) ) ) ) # ( !\RAM1|ram~601_combout\ & ( !\RAM1|ram~600_combout\ & ( (\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~12_combout\ & (\RAM1|ram~602_combout\)) # (\ROM1|memROM~12_combout\ & 
-- ((\RAM1|ram~603_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000110100001111110110000101101011011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \RAM1|ALT_INV_ram~602_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \RAM1|ALT_INV_ram~603_combout\,
	datae => \RAM1|ALT_INV_ram~601_combout\,
	dataf => \RAM1|ALT_INV_ram~600_combout\,
	combout => \RAM1|ram~604_combout\);

-- Location: MLABCELL_X37_Y12_N33
\RAM1|ram~498feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~498feeder_combout\ = ( \processador|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~498feeder_combout\);

-- Location: FF_X37_Y12_N34
\RAM1|ram~498\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~498feeder_combout\,
	ena => \RAM1|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~498_q\);

-- Location: FF_X37_Y11_N44
\RAM1|ram~482\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~482_q\);

-- Location: FF_X35_Y13_N10
\RAM1|ram~466\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~466_q\);

-- Location: FF_X36_Y13_N26
\RAM1|ram~514\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~514_q\);

-- Location: LABCELL_X36_Y13_N3
\RAM1|ram~598\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~598_combout\ = ( \ROM1|memROM~19_combout\ & ( \ROM1|memROM~17_combout\ & ( \RAM1|ram~514_q\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( \ROM1|memROM~17_combout\ & ( \RAM1|ram~482_q\ ) ) ) # ( \ROM1|memROM~19_combout\ & ( !\ROM1|memROM~17_combout\ & 
-- ( \RAM1|ram~498_q\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( !\ROM1|memROM~17_combout\ & ( \RAM1|ram~466_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~498_q\,
	datab => \RAM1|ALT_INV_ram~482_q\,
	datac => \RAM1|ALT_INV_ram~466_q\,
	datad => \RAM1|ALT_INV_ram~514_q\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~598_combout\);

-- Location: FF_X32_Y10_N31
\RAM1|ram~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~290_q\);

-- Location: FF_X32_Y10_N13
\RAM1|ram~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~306_q\);

-- Location: FF_X34_Y12_N34
\RAM1|ram~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~274_q\);

-- Location: FF_X35_Y12_N35
\RAM1|ram~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~322_q\);

-- Location: LABCELL_X35_Y12_N33
\RAM1|ram~595\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~595_combout\ = ( \RAM1|ram~322_q\ & ( \ROM1|memROM~19_combout\ & ( (\ROM1|memROM~17_combout\) # (\RAM1|ram~306_q\) ) ) ) # ( !\RAM1|ram~322_q\ & ( \ROM1|memROM~19_combout\ & ( (\RAM1|ram~306_q\ & !\ROM1|memROM~17_combout\) ) ) ) # ( 
-- \RAM1|ram~322_q\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~17_combout\ & ((\RAM1|ram~274_q\))) # (\ROM1|memROM~17_combout\ & (\RAM1|ram~290_q\)) ) ) ) # ( !\RAM1|ram~322_q\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~17_combout\ & 
-- ((\RAM1|ram~274_q\))) # (\ROM1|memROM~17_combout\ & (\RAM1|ram~290_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~290_q\,
	datab => \RAM1|ALT_INV_ram~306_q\,
	datac => \RAM1|ALT_INV_ram~274_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \RAM1|ALT_INV_ram~322_q\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~595_combout\);

-- Location: FF_X36_Y10_N13
\RAM1|ram~402\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~402_q\);

-- Location: FF_X35_Y13_N23
\RAM1|ram~434\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~434_q\);

-- Location: LABCELL_X41_Y11_N54
\RAM1|ram~418feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~418feeder_combout\ = ( \processador|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~418feeder_combout\);

-- Location: FF_X41_Y11_N56
\RAM1|ram~418\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~418feeder_combout\,
	ena => \RAM1|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~418_q\);

-- Location: FF_X37_Y13_N2
\RAM1|ram~450\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~450_q\);

-- Location: MLABCELL_X37_Y13_N18
\RAM1|ram~596\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~596_combout\ = ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~450_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~434_q\ ) ) ) # ( \ROM1|memROM~17_combout\ & ( !\ROM1|memROM~19_combout\ & 
-- ( \RAM1|ram~418_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~19_combout\ & ( \RAM1|ram~402_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~402_q\,
	datab => \RAM1|ALT_INV_ram~434_q\,
	datac => \RAM1|ALT_INV_ram~418_q\,
	datad => \RAM1|ALT_INV_ram~450_q\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~596_combout\);

-- Location: FF_X34_Y10_N16
\RAM1|ram~354\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~354_q\);

-- Location: FF_X35_Y14_N56
\RAM1|ram~386\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~386_q\);

-- Location: FF_X35_Y14_N44
\RAM1|ram~338\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~338_q\);

-- Location: FF_X35_Y14_N26
\RAM1|ram~370\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~370_q\);

-- Location: LABCELL_X35_Y14_N21
\RAM1|ram~597\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~597_combout\ = ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~386_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~370_q\ ) ) ) # ( \ROM1|memROM~17_combout\ & ( !\ROM1|memROM~19_combout\ & 
-- ( \RAM1|ram~354_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~19_combout\ & ( \RAM1|ram~338_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~354_q\,
	datab => \RAM1|ALT_INV_ram~386_q\,
	datac => \RAM1|ALT_INV_ram~338_q\,
	datad => \RAM1|ALT_INV_ram~370_q\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~597_combout\);

-- Location: LABCELL_X36_Y12_N3
\RAM1|ram~599\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~599_combout\ = ( \RAM1|ram~596_combout\ & ( \RAM1|ram~597_combout\ & ( (!\ROM1|memROM~12_combout\ & (((\ROM1|memROM~21_combout\) # (\RAM1|ram~595_combout\)))) # (\ROM1|memROM~12_combout\ & (((!\ROM1|memROM~21_combout\)) # 
-- (\RAM1|ram~598_combout\))) ) ) ) # ( !\RAM1|ram~596_combout\ & ( \RAM1|ram~597_combout\ & ( (!\ROM1|memROM~12_combout\ & (((\ROM1|memROM~21_combout\) # (\RAM1|ram~595_combout\)))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~598_combout\ & 
-- ((\ROM1|memROM~21_combout\)))) ) ) ) # ( \RAM1|ram~596_combout\ & ( !\RAM1|ram~597_combout\ & ( (!\ROM1|memROM~12_combout\ & (((\RAM1|ram~595_combout\ & !\ROM1|memROM~21_combout\)))) # (\ROM1|memROM~12_combout\ & (((!\ROM1|memROM~21_combout\)) # 
-- (\RAM1|ram~598_combout\))) ) ) ) # ( !\RAM1|ram~596_combout\ & ( !\RAM1|ram~597_combout\ & ( (!\ROM1|memROM~12_combout\ & (((\RAM1|ram~595_combout\ & !\ROM1|memROM~21_combout\)))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~598_combout\ & 
-- ((\ROM1|memROM~21_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001001111110001000100001100110111010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~598_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \RAM1|ALT_INV_ram~595_combout\,
	datad => \ROM1|ALT_INV_memROM~21_combout\,
	datae => \RAM1|ALT_INV_ram~596_combout\,
	dataf => \RAM1|ALT_INV_ram~597_combout\,
	combout => \RAM1|ram~599_combout\);

-- Location: FF_X35_Y12_N53
\RAM1|ram~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~330_q\);

-- Location: FF_X35_Y12_N8
\RAM1|ram~458\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~458_q\);

-- Location: MLABCELL_X34_Y9_N18
\RAM1|ram~298feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~298feeder_combout\ = ( \processador|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~298feeder_combout\);

-- Location: FF_X34_Y9_N20
\RAM1|ram~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~298feeder_combout\,
	ena => \RAM1|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~298_q\);

-- Location: FF_X39_Y13_N14
\RAM1|ram~426\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~426_q\);

-- Location: LABCELL_X35_Y12_N9
\RAM1|ram~606\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~606_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~458_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~330_q\ ) ) ) # ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~19_combout\ & 
-- ( \RAM1|ram~426_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~19_combout\ & ( \RAM1|ram~298_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~330_q\,
	datab => \RAM1|ALT_INV_ram~458_q\,
	datac => \RAM1|ALT_INV_ram~298_q\,
	datad => \RAM1|ALT_INV_ram~426_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~606_combout\);

-- Location: FF_X36_Y13_N50
\RAM1|ram~522\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~522_q\);

-- Location: FF_X34_Y12_N19
\RAM1|ram~394\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~394_q\);

-- Location: LABCELL_X36_Y12_N21
\RAM1|ram~490feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~490feeder_combout\ = ( \processador|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~490feeder_combout\);

-- Location: FF_X36_Y12_N22
\RAM1|ram~490\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~490feeder_combout\,
	ena => \RAM1|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~490_q\);

-- Location: LABCELL_X36_Y12_N15
\RAM1|ram~362feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~362feeder_combout\ = ( \processador|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~362feeder_combout\);

-- Location: FF_X36_Y12_N16
\RAM1|ram~362\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~362feeder_combout\,
	ena => \RAM1|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~362_q\);

-- Location: LABCELL_X36_Y13_N51
\RAM1|ram~608\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~608_combout\ = ( \ROM1|memROM~19_combout\ & ( \ROM1|memROM~12_combout\ & ( \RAM1|ram~522_q\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( \ROM1|memROM~12_combout\ & ( \RAM1|ram~490_q\ ) ) ) # ( \ROM1|memROM~19_combout\ & ( !\ROM1|memROM~12_combout\ & 
-- ( \RAM1|ram~394_q\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( !\ROM1|memROM~12_combout\ & ( \RAM1|ram~362_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~522_q\,
	datab => \RAM1|ALT_INV_ram~394_q\,
	datac => \RAM1|ALT_INV_ram~490_q\,
	datad => \RAM1|ALT_INV_ram~362_q\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~608_combout\);

-- Location: FF_X40_Y12_N14
\RAM1|ram~474\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~474_q\);

-- Location: LABCELL_X40_Y10_N24
\RAM1|ram~378feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~378feeder_combout\ = ( \processador|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~378feeder_combout\);

-- Location: FF_X40_Y10_N26
\RAM1|ram~378\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~378feeder_combout\,
	ena => \RAM1|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~378_q\);

-- Location: FF_X40_Y12_N40
\RAM1|ram~346\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~346_q\);

-- Location: FF_X40_Y11_N50
\RAM1|ram~506\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~506_q\);

-- Location: LABCELL_X40_Y11_N39
\RAM1|ram~607\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~607_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~506_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~378_q\ ) ) ) # ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~19_combout\ & 
-- ( \RAM1|ram~474_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~19_combout\ & ( \RAM1|ram~346_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~474_q\,
	datab => \RAM1|ALT_INV_ram~378_q\,
	datac => \RAM1|ALT_INV_ram~346_q\,
	datad => \RAM1|ALT_INV_ram~506_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~607_combout\);

-- Location: FF_X34_Y12_N16
\RAM1|ram~282\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~282_q\);

-- Location: FF_X36_Y14_N47
\RAM1|ram~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~314_q\);

-- Location: FF_X36_Y14_N32
\RAM1|ram~442\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~442_q\);

-- Location: LABCELL_X39_Y14_N51
\RAM1|ram~410feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~410feeder_combout\ = ( \processador|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~410feeder_combout\);

-- Location: FF_X39_Y14_N53
\RAM1|ram~410\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~410feeder_combout\,
	ena => \RAM1|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~410_q\);

-- Location: LABCELL_X36_Y14_N51
\RAM1|ram~605\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~605_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~442_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~314_q\ ) ) ) # ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~19_combout\ & 
-- ( \RAM1|ram~410_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~19_combout\ & ( \RAM1|ram~282_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~282_q\,
	datab => \RAM1|ALT_INV_ram~314_q\,
	datac => \RAM1|ALT_INV_ram~442_q\,
	datad => \RAM1|ALT_INV_ram~410_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~605_combout\);

-- Location: LABCELL_X35_Y10_N12
\RAM1|ram~609\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~609_combout\ = ( \RAM1|ram~607_combout\ & ( \RAM1|ram~605_combout\ & ( (!\ROM1|memROM~17_combout\) # ((!\ROM1|memROM~21_combout\ & (\RAM1|ram~606_combout\)) # (\ROM1|memROM~21_combout\ & ((\RAM1|ram~608_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~607_combout\ & ( \RAM1|ram~605_combout\ & ( (!\ROM1|memROM~21_combout\ & (((!\ROM1|memROM~17_combout\)) # (\RAM1|ram~606_combout\))) # (\ROM1|memROM~21_combout\ & (((\RAM1|ram~608_combout\ & \ROM1|memROM~17_combout\)))) ) ) ) # ( 
-- \RAM1|ram~607_combout\ & ( !\RAM1|ram~605_combout\ & ( (!\ROM1|memROM~21_combout\ & (\RAM1|ram~606_combout\ & ((\ROM1|memROM~17_combout\)))) # (\ROM1|memROM~21_combout\ & (((!\ROM1|memROM~17_combout\) # (\RAM1|ram~608_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~607_combout\ & ( !\RAM1|ram~605_combout\ & ( (\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~21_combout\ & (\RAM1|ram~606_combout\)) # (\ROM1|memROM~21_combout\ & ((\RAM1|ram~608_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111001100110100011111001100010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~606_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \RAM1|ALT_INV_ram~608_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \RAM1|ALT_INV_ram~607_combout\,
	dataf => \RAM1|ALT_INV_ram~605_combout\,
	combout => \RAM1|ram~609_combout\);

-- Location: LABCELL_X35_Y10_N48
\RAM1|ram~610\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~610_combout\ = ( \RAM1|ram~599_combout\ & ( \RAM1|ram~609_combout\ & ( ((!\ROM1|memROM~15_combout\ & (\RAM1|ram~594_combout\)) # (\ROM1|memROM~15_combout\ & ((\RAM1|ram~604_combout\)))) # (\ROM1|memROM~23_combout\) ) ) ) # ( 
-- !\RAM1|ram~599_combout\ & ( \RAM1|ram~609_combout\ & ( (!\ROM1|memROM~15_combout\ & (\RAM1|ram~594_combout\ & (!\ROM1|memROM~23_combout\))) # (\ROM1|memROM~15_combout\ & (((\RAM1|ram~604_combout\) # (\ROM1|memROM~23_combout\)))) ) ) ) # ( 
-- \RAM1|ram~599_combout\ & ( !\RAM1|ram~609_combout\ & ( (!\ROM1|memROM~15_combout\ & (((\ROM1|memROM~23_combout\)) # (\RAM1|ram~594_combout\))) # (\ROM1|memROM~15_combout\ & (((!\ROM1|memROM~23_combout\ & \RAM1|ram~604_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~599_combout\ & ( !\RAM1|ram~609_combout\ & ( (!\ROM1|memROM~23_combout\ & ((!\ROM1|memROM~15_combout\ & (\RAM1|ram~594_combout\)) # (\ROM1|memROM~15_combout\ & ((\RAM1|ram~604_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001010100111101000100101011101010010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \RAM1|ALT_INV_ram~594_combout\,
	datac => \ROM1|ALT_INV_memROM~23_combout\,
	datad => \RAM1|ALT_INV_ram~604_combout\,
	datae => \RAM1|ALT_INV_ram~599_combout\,
	dataf => \RAM1|ALT_INV_ram~609_combout\,
	combout => \RAM1|ram~610_combout\);

-- Location: LABCELL_X35_Y10_N42
\SW_8|saida[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_8|saida[3]~11_combout\ = ( !\SW_8|saida[1]~8_combout\ & ( \RAM1|ram~610_combout\ & ( (!\comb~6_combout\) # (\SW[3]~input_o\) ) ) ) # ( !\SW_8|saida[1]~8_combout\ & ( !\RAM1|ram~610_combout\ & ( (!\RAM1|dado_out~0_combout\ & ((!\comb~6_combout\) # 
-- (\SW[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001010000000000000000000011111111010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datac => \RAM1|ALT_INV_dado_out~0_combout\,
	datad => \ALT_INV_comb~6_combout\,
	datae => \SW_8|ALT_INV_saida[1]~8_combout\,
	dataf => \RAM1|ALT_INV_ram~610_combout\,
	combout => \SW_8|saida[3]~11_combout\);

-- Location: LABCELL_X35_Y9_N15
\processador|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~17_sumout\ = SUM(( (!\processador|decoderInstru1|Equal11~3_combout\ & ((!\SW_8|saida[4]~12_combout\))) # (\processador|decoderInstru1|Equal11~3_combout\ & (!\ROM1|memROM~12_combout\)) ) + ( \processador|REGA|DOUT\(4) ) + ( 
-- \processador|ULA1|Add1~14\ ))
-- \processador|ULA1|Add1~18\ = CARRY(( (!\processador|decoderInstru1|Equal11~3_combout\ & ((!\SW_8|saida[4]~12_combout\))) # (\processador|decoderInstru1|Equal11~3_combout\ & (!\ROM1|memROM~12_combout\)) ) + ( \processador|REGA|DOUT\(4) ) + ( 
-- \processador|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~3_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \SW_8|ALT_INV_saida[4]~12_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(4),
	cin => \processador|ULA1|Add1~14\,
	sumout => \processador|ULA1|Add1~17_sumout\,
	cout => \processador|ULA1|Add1~18\);

-- Location: LABCELL_X36_Y9_N42
\processador|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~17_sumout\ = SUM(( (!\processador|decoderInstru1|Equal11~3_combout\ & ((\SW_8|saida[4]~12_combout\))) # (\processador|decoderInstru1|Equal11~3_combout\ & (\ROM1|memROM~12_combout\)) ) + ( \processador|REGA|DOUT\(4) ) + ( 
-- \processador|ULA1|Add0~14\ ))
-- \processador|ULA1|Add0~18\ = CARRY(( (!\processador|decoderInstru1|Equal11~3_combout\ & ((\SW_8|saida[4]~12_combout\))) # (\processador|decoderInstru1|Equal11~3_combout\ & (\ROM1|memROM~12_combout\)) ) + ( \processador|REGA|DOUT\(4) ) + ( 
-- \processador|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~3_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \SW_8|ALT_INV_saida[4]~12_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(4),
	cin => \processador|ULA1|Add0~14\,
	sumout => \processador|ULA1|Add0~17_sumout\,
	cout => \processador|ULA1|Add0~18\);

-- Location: LABCELL_X35_Y8_N12
\processador|ULA1|saida[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[4]~2_combout\ = ( \processador|decoderInstru1|Equal11~3_combout\ & ( \SW_8|saida[4]~12_combout\ & ( (!\processador|decoderInstru1|saida[4]~1_combout\ & ((!\processador|decoderInstru1|Equal11~2_combout\ & 
-- (\processador|ULA1|Add1~17_sumout\)) # (\processador|decoderInstru1|Equal11~2_combout\ & ((\processador|ULA1|Add0~17_sumout\))))) ) ) ) # ( !\processador|decoderInstru1|Equal11~3_combout\ & ( \SW_8|saida[4]~12_combout\ & ( 
-- ((!\processador|decoderInstru1|Equal11~2_combout\ & (\processador|ULA1|Add1~17_sumout\)) # (\processador|decoderInstru1|Equal11~2_combout\ & ((\processador|ULA1|Add0~17_sumout\)))) # (\processador|decoderInstru1|saida[4]~1_combout\) ) ) ) # ( 
-- \processador|decoderInstru1|Equal11~3_combout\ & ( !\SW_8|saida[4]~12_combout\ & ( (!\processador|decoderInstru1|saida[4]~1_combout\ & ((!\processador|decoderInstru1|Equal11~2_combout\ & (\processador|ULA1|Add1~17_sumout\)) # 
-- (\processador|decoderInstru1|Equal11~2_combout\ & ((\processador|ULA1|Add0~17_sumout\))))) ) ) ) # ( !\processador|decoderInstru1|Equal11~3_combout\ & ( !\SW_8|saida[4]~12_combout\ & ( (!\processador|decoderInstru1|saida[4]~1_combout\ & 
-- ((!\processador|decoderInstru1|Equal11~2_combout\ & (\processador|ULA1|Add1~17_sumout\)) # (\processador|decoderInstru1|Equal11~2_combout\ & ((\processador|ULA1|Add0~17_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000000001010011111111110101001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA1|ALT_INV_Add1~17_sumout\,
	datab => \processador|ULA1|ALT_INV_Add0~17_sumout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal11~2_combout\,
	datad => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	datae => \processador|decoderInstru1|ALT_INV_Equal11~3_combout\,
	dataf => \SW_8|ALT_INV_saida[4]~12_combout\,
	combout => \processador|ULA1|saida[4]~2_combout\);

-- Location: FF_X35_Y8_N14
\processador|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \processador|ULA1|saida[4]~2_combout\,
	ena => \processador|decoderInstru1|saida[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(4));

-- Location: FF_X31_Y11_N10
\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

-- Location: FF_X41_Y10_N25
\RAM1|ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~91_q\);

-- Location: FF_X41_Y9_N13
\RAM1|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~27_q\);

-- Location: LABCELL_X32_Y9_N39
\RAM1|ram~83feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~83feeder_combout\ = ( \processador|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(4),
	combout => \RAM1|ram~83feeder_combout\);

-- Location: FF_X32_Y9_N40
\RAM1|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~83feeder_combout\,
	ena => \RAM1|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~83_q\);

-- Location: LABCELL_X39_Y9_N12
\RAM1|ram~611\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~611_combout\ = ( \RAM1|ram~83_q\ & ( \ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~15_combout\) # (\RAM1|ram~91_q\) ) ) ) # ( !\RAM1|ram~83_q\ & ( \ROM1|memROM~21_combout\ & ( (\RAM1|ram~91_q\ & \ROM1|memROM~15_combout\) ) ) ) # ( \RAM1|ram~83_q\ 
-- & ( !\ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~15_combout\ & (\RAM1|ram~19_q\)) # (\ROM1|memROM~15_combout\ & ((\RAM1|ram~27_q\))) ) ) ) # ( !\RAM1|ram~83_q\ & ( !\ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~15_combout\ & (\RAM1|ram~19_q\)) # 
-- (\ROM1|memROM~15_combout\ & ((\RAM1|ram~27_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~19_q\,
	datab => \RAM1|ALT_INV_ram~91_q\,
	datac => \RAM1|ALT_INV_ram~27_q\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \RAM1|ALT_INV_ram~83_q\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~611_combout\);

-- Location: FF_X41_Y10_N50
\RAM1|ram~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~115_q\);

-- Location: FF_X34_Y8_N25
\RAM1|ram~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~123_q\);

-- Location: FF_X39_Y9_N2
\RAM1|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~59_q\);

-- Location: FF_X39_Y9_N13
\RAM1|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~51_q\);

-- Location: LABCELL_X39_Y9_N0
\RAM1|ram~612\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~612_combout\ = ( \RAM1|ram~59_q\ & ( \RAM1|ram~51_q\ & ( (!\ROM1|memROM~21_combout\) # ((!\ROM1|memROM~15_combout\ & (\RAM1|ram~115_q\)) # (\ROM1|memROM~15_combout\ & ((\RAM1|ram~123_q\)))) ) ) ) # ( !\RAM1|ram~59_q\ & ( \RAM1|ram~51_q\ & ( 
-- (!\ROM1|memROM~21_combout\ & (((!\ROM1|memROM~15_combout\)))) # (\ROM1|memROM~21_combout\ & ((!\ROM1|memROM~15_combout\ & (\RAM1|ram~115_q\)) # (\ROM1|memROM~15_combout\ & ((\RAM1|ram~123_q\))))) ) ) ) # ( \RAM1|ram~59_q\ & ( !\RAM1|ram~51_q\ & ( 
-- (!\ROM1|memROM~21_combout\ & (((\ROM1|memROM~15_combout\)))) # (\ROM1|memROM~21_combout\ & ((!\ROM1|memROM~15_combout\ & (\RAM1|ram~115_q\)) # (\ROM1|memROM~15_combout\ & ((\RAM1|ram~123_q\))))) ) ) ) # ( !\RAM1|ram~59_q\ & ( !\RAM1|ram~51_q\ & ( 
-- (\ROM1|memROM~21_combout\ & ((!\ROM1|memROM~15_combout\ & (\RAM1|ram~115_q\)) # (\ROM1|memROM~15_combout\ & ((\RAM1|ram~123_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011000001011111001111110101000000111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~115_q\,
	datab => \RAM1|ALT_INV_ram~123_q\,
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \RAM1|ALT_INV_ram~59_q\,
	dataf => \RAM1|ALT_INV_ram~51_q\,
	combout => \RAM1|ram~612_combout\);

-- Location: LABCELL_X40_Y10_N12
\RAM1|ram~75feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~75feeder_combout\ = \processador|REGA|DOUT\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|REGA|ALT_INV_DOUT\(4),
	combout => \RAM1|ram~75feeder_combout\);

-- Location: FF_X40_Y10_N13
\RAM1|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~75feeder_combout\,
	ena => \RAM1|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~75_q\);

-- Location: FF_X41_Y9_N4
\RAM1|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~67_q\);

-- Location: FF_X35_Y10_N2
\RAM1|ram~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~131_q\);

-- Location: FF_X35_Y8_N59
\RAM1|ram~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~139_q\);

-- Location: LABCELL_X35_Y8_N54
\RAM1|ram~614\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~614_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~21_combout\ & ( \RAM1|ram~139_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~21_combout\ & ( \RAM1|ram~131_q\ ) ) ) # ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~21_combout\ & 
-- ( \RAM1|ram~75_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~21_combout\ & ( \RAM1|ram~67_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~75_q\,
	datab => \RAM1|ALT_INV_ram~67_q\,
	datac => \RAM1|ALT_INV_ram~131_q\,
	datad => \RAM1|ALT_INV_ram~139_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~614_combout\);

-- Location: FF_X39_Y8_N29
\RAM1|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~35_q\);

-- Location: FF_X34_Y9_N59
\RAM1|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~43_q\);

-- Location: FF_X32_Y11_N28
\RAM1|ram~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~99_q\);

-- Location: FF_X39_Y8_N59
\RAM1|ram~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~107_q\);

-- Location: LABCELL_X39_Y8_N57
\RAM1|ram~613\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~613_combout\ = ( \RAM1|ram~107_q\ & ( \ROM1|memROM~15_combout\ & ( (\ROM1|memROM~21_combout\) # (\RAM1|ram~43_q\) ) ) ) # ( !\RAM1|ram~107_q\ & ( \ROM1|memROM~15_combout\ & ( (\RAM1|ram~43_q\ & !\ROM1|memROM~21_combout\) ) ) ) # ( 
-- \RAM1|ram~107_q\ & ( !\ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~21_combout\ & (\RAM1|ram~35_q\)) # (\ROM1|memROM~21_combout\ & ((\RAM1|ram~99_q\))) ) ) ) # ( !\RAM1|ram~107_q\ & ( !\ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~21_combout\ & 
-- (\RAM1|ram~35_q\)) # (\ROM1|memROM~21_combout\ & ((\RAM1|ram~99_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~35_q\,
	datab => \RAM1|ALT_INV_ram~43_q\,
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datad => \RAM1|ALT_INV_ram~99_q\,
	datae => \RAM1|ALT_INV_ram~107_q\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~613_combout\);

-- Location: LABCELL_X39_Y9_N57
\RAM1|ram~615\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~615_combout\ = ( \RAM1|ram~614_combout\ & ( \RAM1|ram~613_combout\ & ( ((!\ROM1|memROM~19_combout\ & (\RAM1|ram~611_combout\)) # (\ROM1|memROM~19_combout\ & ((\RAM1|ram~612_combout\)))) # (\ROM1|memROM~17_combout\) ) ) ) # ( 
-- !\RAM1|ram~614_combout\ & ( \RAM1|ram~613_combout\ & ( (!\ROM1|memROM~19_combout\ & (((\RAM1|ram~611_combout\)) # (\ROM1|memROM~17_combout\))) # (\ROM1|memROM~19_combout\ & (!\ROM1|memROM~17_combout\ & ((\RAM1|ram~612_combout\)))) ) ) ) # ( 
-- \RAM1|ram~614_combout\ & ( !\RAM1|ram~613_combout\ & ( (!\ROM1|memROM~19_combout\ & (!\ROM1|memROM~17_combout\ & (\RAM1|ram~611_combout\))) # (\ROM1|memROM~19_combout\ & (((\RAM1|ram~612_combout\)) # (\ROM1|memROM~17_combout\))) ) ) ) # ( 
-- !\RAM1|ram~614_combout\ & ( !\RAM1|ram~613_combout\ & ( (!\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~19_combout\ & (\RAM1|ram~611_combout\)) # (\ROM1|memROM~19_combout\ & ((\RAM1|ram~612_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \RAM1|ALT_INV_ram~611_combout\,
	datad => \RAM1|ALT_INV_ram~612_combout\,
	datae => \RAM1|ALT_INV_ram~614_combout\,
	dataf => \RAM1|ALT_INV_ram~613_combout\,
	combout => \RAM1|ram~615_combout\);

-- Location: FF_X40_Y11_N19
\RAM1|ram~507\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~507_q\);

-- Location: FF_X37_Y12_N10
\RAM1|ram~499\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~499_q\);

-- Location: FF_X40_Y11_N38
\RAM1|ram~443\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~443_q\);

-- Location: MLABCELL_X37_Y12_N15
\RAM1|ram~435feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~435feeder_combout\ = ( \processador|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(4),
	combout => \RAM1|ram~435feeder_combout\);

-- Location: FF_X37_Y12_N17
\RAM1|ram~435\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~435feeder_combout\,
	ena => \RAM1|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~435_q\);

-- Location: LABCELL_X40_Y11_N30
\RAM1|ram~627\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~627_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~21_combout\ & ( \RAM1|ram~507_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~21_combout\ & ( \RAM1|ram~499_q\ ) ) ) # ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~21_combout\ & 
-- ( \RAM1|ram~443_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~21_combout\ & ( \RAM1|ram~435_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~507_q\,
	datab => \RAM1|ALT_INV_ram~499_q\,
	datac => \RAM1|ALT_INV_ram~443_q\,
	datad => \RAM1|ALT_INV_ram~435_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~627_combout\);

-- Location: FF_X36_Y13_N5
\RAM1|ram~515\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~515_q\);

-- Location: FF_X36_Y13_N41
\RAM1|ram~459\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~459_q\);

-- Location: FF_X36_Y13_N8
\RAM1|ram~523\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~523_q\);

-- Location: FF_X36_Y8_N35
\RAM1|ram~451\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~451_q\);

-- Location: LABCELL_X36_Y13_N9
\RAM1|ram~629\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~629_combout\ = ( \RAM1|ram~451_q\ & ( \ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~15_combout\ & (\RAM1|ram~515_q\)) # (\ROM1|memROM~15_combout\ & ((\RAM1|ram~523_q\))) ) ) ) # ( !\RAM1|ram~451_q\ & ( \ROM1|memROM~21_combout\ & ( 
-- (!\ROM1|memROM~15_combout\ & (\RAM1|ram~515_q\)) # (\ROM1|memROM~15_combout\ & ((\RAM1|ram~523_q\))) ) ) ) # ( \RAM1|ram~451_q\ & ( !\ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~15_combout\) # (\RAM1|ram~459_q\) ) ) ) # ( !\RAM1|ram~451_q\ & ( 
-- !\ROM1|memROM~21_combout\ & ( (\RAM1|ram~459_q\ & \ROM1|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~515_q\,
	datab => \RAM1|ALT_INV_ram~459_q\,
	datac => \RAM1|ALT_INV_ram~523_q\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \RAM1|ALT_INV_ram~451_q\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~629_combout\);

-- Location: FF_X40_Y11_N2
\RAM1|ram~491\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~491_q\);

-- Location: FF_X37_Y8_N46
\RAM1|ram~427\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~427_q\);

-- Location: FF_X39_Y11_N40
\RAM1|ram~419\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~419_q\);

-- Location: LABCELL_X39_Y12_N3
\RAM1|ram~483feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~483feeder_combout\ = ( \processador|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(4),
	combout => \RAM1|ram~483feeder_combout\);

-- Location: FF_X39_Y12_N4
\RAM1|ram~483\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~483feeder_combout\,
	ena => \RAM1|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~483_q\);

-- Location: LABCELL_X40_Y11_N3
\RAM1|ram~628\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~628_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~21_combout\ & ( \RAM1|ram~491_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~21_combout\ & ( \RAM1|ram~483_q\ ) ) ) # ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~21_combout\ & 
-- ( \RAM1|ram~427_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~21_combout\ & ( \RAM1|ram~419_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~491_q\,
	datab => \RAM1|ALT_INV_ram~427_q\,
	datac => \RAM1|ALT_INV_ram~419_q\,
	datad => \RAM1|ALT_INV_ram~483_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~628_combout\);

-- Location: FF_X39_Y8_N41
\RAM1|ram~411\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~411_q\);

-- Location: FF_X40_Y12_N44
\RAM1|ram~475\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~475_q\);

-- Location: FF_X36_Y11_N35
\RAM1|ram~403\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~403_q\);

-- Location: FF_X35_Y13_N14
\RAM1|ram~467\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~467_q\);

-- Location: LABCELL_X40_Y12_N21
\RAM1|ram~626\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~626_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~21_combout\ & ( \RAM1|ram~475_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~21_combout\ & ( \RAM1|ram~467_q\ ) ) ) # ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~21_combout\ & 
-- ( \RAM1|ram~411_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~21_combout\ & ( \RAM1|ram~403_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~411_q\,
	datab => \RAM1|ALT_INV_ram~475_q\,
	datac => \RAM1|ALT_INV_ram~403_q\,
	datad => \RAM1|ALT_INV_ram~467_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~626_combout\);

-- Location: LABCELL_X39_Y9_N48
\RAM1|ram~630\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~630_combout\ = ( \RAM1|ram~628_combout\ & ( \RAM1|ram~626_combout\ & ( (!\ROM1|memROM~19_combout\) # ((!\ROM1|memROM~17_combout\ & (\RAM1|ram~627_combout\)) # (\ROM1|memROM~17_combout\ & ((\RAM1|ram~629_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~628_combout\ & ( \RAM1|ram~626_combout\ & ( (!\ROM1|memROM~19_combout\ & (!\ROM1|memROM~17_combout\)) # (\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~17_combout\ & (\RAM1|ram~627_combout\)) # (\ROM1|memROM~17_combout\ & 
-- ((\RAM1|ram~629_combout\))))) ) ) ) # ( \RAM1|ram~628_combout\ & ( !\RAM1|ram~626_combout\ & ( (!\ROM1|memROM~19_combout\ & (\ROM1|memROM~17_combout\)) # (\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~17_combout\ & (\RAM1|ram~627_combout\)) # 
-- (\ROM1|memROM~17_combout\ & ((\RAM1|ram~629_combout\))))) ) ) ) # ( !\RAM1|ram~628_combout\ & ( !\RAM1|ram~626_combout\ & ( (\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~17_combout\ & (\RAM1|ram~627_combout\)) # (\ROM1|memROM~17_combout\ & 
-- ((\RAM1|ram~629_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \RAM1|ALT_INV_ram~627_combout\,
	datad => \RAM1|ALT_INV_ram~629_combout\,
	datae => \RAM1|ALT_INV_ram~628_combout\,
	dataf => \RAM1|ALT_INV_ram~626_combout\,
	combout => \RAM1|ram~630_combout\);

-- Location: LABCELL_X39_Y7_N36
\RAM1|ram~203feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~203feeder_combout\ = ( \processador|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(4),
	combout => \RAM1|ram~203feeder_combout\);

-- Location: FF_X39_Y7_N38
\RAM1|ram~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~203feeder_combout\,
	ena => \RAM1|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~203_q\);

-- Location: FF_X39_Y10_N35
\RAM1|ram~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~163_q\);

-- Location: FF_X39_Y10_N7
\RAM1|ram~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~195_q\);

-- Location: FF_X36_Y7_N53
\RAM1|ram~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~171_q\);

-- Location: LABCELL_X39_Y7_N6
\RAM1|ram~622\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~622_combout\ = ( \ROM1|memROM~19_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~203_q\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~171_q\ ) ) ) # ( \ROM1|memROM~19_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM1|ram~195_q\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM1|ram~163_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~203_q\,
	datab => \RAM1|ALT_INV_ram~163_q\,
	datac => \RAM1|ALT_INV_ram~195_q\,
	datad => \RAM1|ALT_INV_ram~171_q\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~622_combout\);

-- Location: FF_X40_Y9_N26
\RAM1|ram~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~155_q\);

-- Location: FF_X37_Y13_N52
\RAM1|ram~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~179_q\);

-- Location: FF_X40_Y9_N20
\RAM1|ram~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~187_q\);

-- Location: FF_X40_Y9_N41
\RAM1|ram~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~147_q\);

-- Location: LABCELL_X40_Y9_N18
\RAM1|ram~621\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~621_combout\ = ( \RAM1|ram~187_q\ & ( \RAM1|ram~147_q\ & ( (!\ROM1|memROM~15_combout\ & (((!\ROM1|memROM~19_combout\) # (\RAM1|ram~179_q\)))) # (\ROM1|memROM~15_combout\ & (((\ROM1|memROM~19_combout\)) # (\RAM1|ram~155_q\))) ) ) ) # ( 
-- !\RAM1|ram~187_q\ & ( \RAM1|ram~147_q\ & ( (!\ROM1|memROM~15_combout\ & (((!\ROM1|memROM~19_combout\) # (\RAM1|ram~179_q\)))) # (\ROM1|memROM~15_combout\ & (\RAM1|ram~155_q\ & ((!\ROM1|memROM~19_combout\)))) ) ) ) # ( \RAM1|ram~187_q\ & ( 
-- !\RAM1|ram~147_q\ & ( (!\ROM1|memROM~15_combout\ & (((\RAM1|ram~179_q\ & \ROM1|memROM~19_combout\)))) # (\ROM1|memROM~15_combout\ & (((\ROM1|memROM~19_combout\)) # (\RAM1|ram~155_q\))) ) ) ) # ( !\RAM1|ram~187_q\ & ( !\RAM1|ram~147_q\ & ( 
-- (!\ROM1|memROM~15_combout\ & (((\RAM1|ram~179_q\ & \ROM1|memROM~19_combout\)))) # (\ROM1|memROM~15_combout\ & (\RAM1|ram~155_q\ & ((!\ROM1|memROM~19_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000000001010011111111110101001100001111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~155_q\,
	datab => \RAM1|ALT_INV_ram~179_q\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \RAM1|ALT_INV_ram~187_q\,
	dataf => \RAM1|ALT_INV_ram~147_q\,
	combout => \RAM1|ram~621_combout\);

-- Location: LABCELL_X32_Y9_N21
\RAM1|ram~211feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~211feeder_combout\ = ( \processador|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(4),
	combout => \RAM1|ram~211feeder_combout\);

-- Location: FF_X32_Y9_N22
\RAM1|ram~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~211feeder_combout\,
	ena => \RAM1|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~211_q\);

-- Location: FF_X42_Y9_N17
\RAM1|ram~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~219_q\);

-- Location: FF_X34_Y11_N31
\RAM1|ram~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~243_q\);

-- Location: FF_X42_Y9_N59
\RAM1|ram~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~251_q\);

-- Location: MLABCELL_X42_Y9_N57
\RAM1|ram~623\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~623_combout\ = ( \RAM1|ram~251_q\ & ( \ROM1|memROM~15_combout\ & ( (\ROM1|memROM~19_combout\) # (\RAM1|ram~219_q\) ) ) ) # ( !\RAM1|ram~251_q\ & ( \ROM1|memROM~15_combout\ & ( (\RAM1|ram~219_q\ & !\ROM1|memROM~19_combout\) ) ) ) # ( 
-- \RAM1|ram~251_q\ & ( !\ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~19_combout\ & (\RAM1|ram~211_q\)) # (\ROM1|memROM~19_combout\ & ((\RAM1|ram~243_q\))) ) ) ) # ( !\RAM1|ram~251_q\ & ( !\ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~19_combout\ & 
-- (\RAM1|ram~211_q\)) # (\ROM1|memROM~19_combout\ & ((\RAM1|ram~243_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~211_q\,
	datab => \RAM1|ALT_INV_ram~219_q\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \RAM1|ALT_INV_ram~243_q\,
	datae => \RAM1|ALT_INV_ram~251_q\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~623_combout\);

-- Location: FF_X36_Y8_N17
\RAM1|ram~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~259_q\);

-- Location: FF_X36_Y7_N28
\RAM1|ram~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~235_q\);

-- Location: FF_X32_Y11_N4
\RAM1|ram~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~227_q\);

-- Location: MLABCELL_X34_Y7_N57
\RAM1|ram~267feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~267feeder_combout\ = ( \processador|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(4),
	combout => \RAM1|ram~267feeder_combout\);

-- Location: FF_X34_Y7_N59
\RAM1|ram~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~267feeder_combout\,
	ena => \RAM1|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~267_q\);

-- Location: MLABCELL_X34_Y7_N24
\RAM1|ram~624\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~624_combout\ = ( \ROM1|memROM~19_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~267_q\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~235_q\ ) ) ) # ( \ROM1|memROM~19_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM1|ram~259_q\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM1|ram~227_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~259_q\,
	datab => \RAM1|ALT_INV_ram~235_q\,
	datac => \RAM1|ALT_INV_ram~227_q\,
	datad => \RAM1|ALT_INV_ram~267_q\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~624_combout\);

-- Location: LABCELL_X39_Y9_N36
\RAM1|ram~625\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~625_combout\ = ( \RAM1|ram~623_combout\ & ( \RAM1|ram~624_combout\ & ( ((!\ROM1|memROM~17_combout\ & ((\RAM1|ram~621_combout\))) # (\ROM1|memROM~17_combout\ & (\RAM1|ram~622_combout\))) # (\ROM1|memROM~21_combout\) ) ) ) # ( 
-- !\RAM1|ram~623_combout\ & ( \RAM1|ram~624_combout\ & ( (!\ROM1|memROM~21_combout\ & ((!\ROM1|memROM~17_combout\ & ((\RAM1|ram~621_combout\))) # (\ROM1|memROM~17_combout\ & (\RAM1|ram~622_combout\)))) # (\ROM1|memROM~21_combout\ & 
-- (\ROM1|memROM~17_combout\)) ) ) ) # ( \RAM1|ram~623_combout\ & ( !\RAM1|ram~624_combout\ & ( (!\ROM1|memROM~21_combout\ & ((!\ROM1|memROM~17_combout\ & ((\RAM1|ram~621_combout\))) # (\ROM1|memROM~17_combout\ & (\RAM1|ram~622_combout\)))) # 
-- (\ROM1|memROM~21_combout\ & (!\ROM1|memROM~17_combout\)) ) ) ) # ( !\RAM1|ram~623_combout\ & ( !\RAM1|ram~624_combout\ & ( (!\ROM1|memROM~21_combout\ & ((!\ROM1|memROM~17_combout\ & ((\RAM1|ram~621_combout\))) # (\ROM1|memROM~17_combout\ & 
-- (\RAM1|ram~622_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000010011100110110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~21_combout\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \RAM1|ALT_INV_ram~622_combout\,
	datad => \RAM1|ALT_INV_ram~621_combout\,
	datae => \RAM1|ALT_INV_ram~623_combout\,
	dataf => \RAM1|ALT_INV_ram~624_combout\,
	combout => \RAM1|ram~625_combout\);

-- Location: FF_X32_Y10_N19
\RAM1|ram~291\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~291_q\);

-- Location: FF_X34_Y9_N4
\RAM1|ram~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~299_q\);

-- Location: FF_X34_Y12_N25
\RAM1|ram~283\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~283_q\);

-- Location: FF_X34_Y12_N56
\RAM1|ram~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~275_q\);

-- Location: MLABCELL_X34_Y12_N27
\RAM1|ram~616\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~616_combout\ = ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~299_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~283_q\ ) ) ) # ( \ROM1|memROM~17_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM1|ram~291_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM1|ram~275_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~291_q\,
	datab => \RAM1|ALT_INV_ram~299_q\,
	datac => \RAM1|ALT_INV_ram~283_q\,
	datad => \RAM1|ALT_INV_ram~275_q\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~616_combout\);

-- Location: FF_X35_Y12_N26
\RAM1|ram~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~323_q\);

-- Location: FF_X32_Y10_N40
\RAM1|ram~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~307_q\);

-- Location: LABCELL_X36_Y14_N15
\RAM1|ram~315feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~315feeder_combout\ = ( \processador|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(4),
	combout => \RAM1|ram~315feeder_combout\);

-- Location: FF_X36_Y14_N17
\RAM1|ram~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~315feeder_combout\,
	ena => \RAM1|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~315_q\);

-- Location: FF_X35_Y12_N56
\RAM1|ram~331\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~331_q\);

-- Location: LABCELL_X35_Y12_N54
\RAM1|ram~617\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~617_combout\ = ( \RAM1|ram~331_q\ & ( \ROM1|memROM~15_combout\ & ( (\RAM1|ram~315_q\) # (\ROM1|memROM~17_combout\) ) ) ) # ( !\RAM1|ram~331_q\ & ( \ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~17_combout\ & \RAM1|ram~315_q\) ) ) ) # ( 
-- \RAM1|ram~331_q\ & ( !\ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~17_combout\ & ((\RAM1|ram~307_q\))) # (\ROM1|memROM~17_combout\ & (\RAM1|ram~323_q\)) ) ) ) # ( !\RAM1|ram~331_q\ & ( !\ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~17_combout\ & 
-- ((\RAM1|ram~307_q\))) # (\ROM1|memROM~17_combout\ & (\RAM1|ram~323_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~323_q\,
	datab => \RAM1|ALT_INV_ram~307_q\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \RAM1|ALT_INV_ram~315_q\,
	datae => \RAM1|ALT_INV_ram~331_q\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~617_combout\);

-- Location: LABCELL_X35_Y14_N39
\RAM1|ram~371feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~371feeder_combout\ = ( \processador|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(4),
	combout => \RAM1|ram~371feeder_combout\);

-- Location: FF_X35_Y14_N40
\RAM1|ram~371\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~371feeder_combout\,
	ena => \RAM1|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~371_q\);

-- Location: FF_X35_Y14_N20
\RAM1|ram~387\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~387_q\);

-- Location: FF_X40_Y10_N40
\RAM1|ram~379\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~379_q\);

-- Location: MLABCELL_X34_Y12_N42
\RAM1|ram~395feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~395feeder_combout\ = ( \processador|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(4),
	combout => \RAM1|ram~395feeder_combout\);

-- Location: FF_X34_Y12_N44
\RAM1|ram~395\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~395feeder_combout\,
	ena => \RAM1|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~395_q\);

-- Location: MLABCELL_X34_Y12_N0
\RAM1|ram~619\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~619_combout\ = ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~395_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~379_q\ ) ) ) # ( \ROM1|memROM~17_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM1|ram~387_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM1|ram~371_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~371_q\,
	datab => \RAM1|ALT_INV_ram~387_q\,
	datac => \RAM1|ALT_INV_ram~379_q\,
	datad => \RAM1|ALT_INV_ram~395_q\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~619_combout\);

-- Location: FF_X34_Y13_N53
\RAM1|ram~355\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~355_q\);

-- Location: FF_X34_Y13_N11
\RAM1|ram~339\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~339_q\);

-- Location: FF_X34_Y13_N1
\RAM1|ram~363\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~363_q\);

-- Location: FF_X40_Y12_N55
\RAM1|ram~347\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~347_q\);

-- Location: MLABCELL_X34_Y13_N3
\RAM1|ram~618\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~618_combout\ = ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~363_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~347_q\ ) ) ) # ( \ROM1|memROM~17_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM1|ram~355_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM1|ram~339_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~355_q\,
	datab => \RAM1|ALT_INV_ram~339_q\,
	datac => \RAM1|ALT_INV_ram~363_q\,
	datad => \RAM1|ALT_INV_ram~347_q\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~618_combout\);

-- Location: MLABCELL_X34_Y12_N54
\RAM1|ram~620\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~620_combout\ = ( \RAM1|ram~619_combout\ & ( \RAM1|ram~618_combout\ & ( ((!\ROM1|memROM~19_combout\ & (\RAM1|ram~616_combout\)) # (\ROM1|memROM~19_combout\ & ((\RAM1|ram~617_combout\)))) # (\ROM1|memROM~21_combout\) ) ) ) # ( 
-- !\RAM1|ram~619_combout\ & ( \RAM1|ram~618_combout\ & ( (!\ROM1|memROM~19_combout\ & (((\RAM1|ram~616_combout\)) # (\ROM1|memROM~21_combout\))) # (\ROM1|memROM~19_combout\ & (!\ROM1|memROM~21_combout\ & ((\RAM1|ram~617_combout\)))) ) ) ) # ( 
-- \RAM1|ram~619_combout\ & ( !\RAM1|ram~618_combout\ & ( (!\ROM1|memROM~19_combout\ & (!\ROM1|memROM~21_combout\ & (\RAM1|ram~616_combout\))) # (\ROM1|memROM~19_combout\ & (((\RAM1|ram~617_combout\)) # (\ROM1|memROM~21_combout\))) ) ) ) # ( 
-- !\RAM1|ram~619_combout\ & ( !\RAM1|ram~618_combout\ & ( (!\ROM1|memROM~21_combout\ & ((!\ROM1|memROM~19_combout\ & (\RAM1|ram~616_combout\)) # (\ROM1|memROM~19_combout\ & ((\RAM1|ram~617_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \RAM1|ALT_INV_ram~616_combout\,
	datad => \RAM1|ALT_INV_ram~617_combout\,
	datae => \RAM1|ALT_INV_ram~619_combout\,
	dataf => \RAM1|ALT_INV_ram~618_combout\,
	combout => \RAM1|ram~620_combout\);

-- Location: LABCELL_X39_Y9_N45
\RAM1|ram~631\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~631_combout\ = ( \RAM1|ram~625_combout\ & ( \RAM1|ram~620_combout\ & ( (!\ROM1|memROM~12_combout\ & (((\RAM1|ram~615_combout\)) # (\ROM1|memROM~23_combout\))) # (\ROM1|memROM~12_combout\ & ((!\ROM1|memROM~23_combout\) # 
-- ((\RAM1|ram~630_combout\)))) ) ) ) # ( !\RAM1|ram~625_combout\ & ( \RAM1|ram~620_combout\ & ( (!\ROM1|memROM~12_combout\ & (((\RAM1|ram~615_combout\)) # (\ROM1|memROM~23_combout\))) # (\ROM1|memROM~12_combout\ & (\ROM1|memROM~23_combout\ & 
-- ((\RAM1|ram~630_combout\)))) ) ) ) # ( \RAM1|ram~625_combout\ & ( !\RAM1|ram~620_combout\ & ( (!\ROM1|memROM~12_combout\ & (!\ROM1|memROM~23_combout\ & (\RAM1|ram~615_combout\))) # (\ROM1|memROM~12_combout\ & ((!\ROM1|memROM~23_combout\) # 
-- ((\RAM1|ram~630_combout\)))) ) ) ) # ( !\RAM1|ram~625_combout\ & ( !\RAM1|ram~620_combout\ & ( (!\ROM1|memROM~12_combout\ & (!\ROM1|memROM~23_combout\ & (\RAM1|ram~615_combout\))) # (\ROM1|memROM~12_combout\ & (\ROM1|memROM~23_combout\ & 
-- ((\RAM1|ram~630_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~23_combout\,
	datac => \RAM1|ALT_INV_ram~615_combout\,
	datad => \RAM1|ALT_INV_ram~630_combout\,
	datae => \RAM1|ALT_INV_ram~625_combout\,
	dataf => \RAM1|ALT_INV_ram~620_combout\,
	combout => \RAM1|ram~631_combout\);

-- Location: LABCELL_X39_Y9_N18
\SW_8|saida[4]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_8|saida[4]~12_combout\ = ( \RAM1|ram~631_combout\ & ( (!\SW_8|saida[1]~8_combout\ & ((!\comb~6_combout\) # (\SW[4]~input_o\))) ) ) # ( !\RAM1|ram~631_combout\ & ( (!\SW_8|saida[1]~8_combout\ & (!\RAM1|dado_out~0_combout\ & ((!\comb~6_combout\) # 
-- (\SW[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000000000101000101010001010100010000000001010001010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SW_8|ALT_INV_saida[1]~8_combout\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_comb~6_combout\,
	datad => \RAM1|ALT_INV_dado_out~0_combout\,
	datae => \RAM1|ALT_INV_ram~631_combout\,
	combout => \SW_8|saida[4]~12_combout\);

-- Location: LABCELL_X35_Y9_N18
\processador|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~21_sumout\ = SUM(( (!\processador|decoderInstru1|Equal11~3_combout\ & (((!\SW_8|saida[5]~13_combout\)))) # (\processador|decoderInstru1|Equal11~3_combout\ & (((!\ROM1|memROM~28_combout\)) # (\processador|PC|DOUT\(8)))) ) + ( 
-- \processador|REGA|DOUT\(5) ) + ( \processador|ULA1|Add1~18\ ))
-- \processador|ULA1|Add1~22\ = CARRY(( (!\processador|decoderInstru1|Equal11~3_combout\ & (((!\SW_8|saida[5]~13_combout\)))) # (\processador|decoderInstru1|Equal11~3_combout\ & (((!\ROM1|memROM~28_combout\)) # (\processador|PC|DOUT\(8)))) ) + ( 
-- \processador|REGA|DOUT\(5) ) + ( \processador|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111010110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~3_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \SW_8|ALT_INV_saida[5]~13_combout\,
	datad => \ROM1|ALT_INV_memROM~28_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(5),
	cin => \processador|ULA1|Add1~18\,
	sumout => \processador|ULA1|Add1~21_sumout\,
	cout => \processador|ULA1|Add1~22\);

-- Location: LABCELL_X36_Y9_N45
\processador|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~21_sumout\ = SUM(( (!\processador|decoderInstru1|Equal11~3_combout\ & (((\SW_8|saida[5]~13_combout\)))) # (\processador|decoderInstru1|Equal11~3_combout\ & (!\processador|PC|DOUT\(8) & ((\ROM1|memROM~28_combout\)))) ) + ( 
-- \processador|REGA|DOUT\(5) ) + ( \processador|ULA1|Add0~18\ ))
-- \processador|ULA1|Add0~22\ = CARRY(( (!\processador|decoderInstru1|Equal11~3_combout\ & (((\SW_8|saida[5]~13_combout\)))) # (\processador|decoderInstru1|Equal11~3_combout\ & (!\processador|PC|DOUT\(8) & ((\ROM1|memROM~28_combout\)))) ) + ( 
-- \processador|REGA|DOUT\(5) ) + ( \processador|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~3_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \SW_8|ALT_INV_saida[5]~13_combout\,
	datad => \ROM1|ALT_INV_memROM~28_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(5),
	cin => \processador|ULA1|Add0~18\,
	sumout => \processador|ULA1|Add0~21_sumout\,
	cout => \processador|ULA1|Add0~22\);

-- Location: LABCELL_X36_Y9_N18
\processador|ULA1|saida[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[5]~3_combout\ = ( \processador|decoderInstru1|Equal11~3_combout\ & ( \SW_8|saida[5]~13_combout\ & ( (!\processador|decoderInstru1|saida[4]~1_combout\ & ((!\processador|decoderInstru1|Equal11~2_combout\ & 
-- (\processador|ULA1|Add1~21_sumout\)) # (\processador|decoderInstru1|Equal11~2_combout\ & ((\processador|ULA1|Add0~21_sumout\))))) ) ) ) # ( !\processador|decoderInstru1|Equal11~3_combout\ & ( \SW_8|saida[5]~13_combout\ & ( 
-- ((!\processador|decoderInstru1|Equal11~2_combout\ & (\processador|ULA1|Add1~21_sumout\)) # (\processador|decoderInstru1|Equal11~2_combout\ & ((\processador|ULA1|Add0~21_sumout\)))) # (\processador|decoderInstru1|saida[4]~1_combout\) ) ) ) # ( 
-- \processador|decoderInstru1|Equal11~3_combout\ & ( !\SW_8|saida[5]~13_combout\ & ( (!\processador|decoderInstru1|saida[4]~1_combout\ & ((!\processador|decoderInstru1|Equal11~2_combout\ & (\processador|ULA1|Add1~21_sumout\)) # 
-- (\processador|decoderInstru1|Equal11~2_combout\ & ((\processador|ULA1|Add0~21_sumout\))))) ) ) ) # ( !\processador|decoderInstru1|Equal11~3_combout\ & ( !\SW_8|saida[5]~13_combout\ & ( (!\processador|decoderInstru1|saida[4]~1_combout\ & 
-- ((!\processador|decoderInstru1|Equal11~2_combout\ & (\processador|ULA1|Add1~21_sumout\)) # (\processador|decoderInstru1|Equal11~2_combout\ & ((\processador|ULA1|Add0~21_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000000001010011111111110101001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA1|ALT_INV_Add1~21_sumout\,
	datab => \processador|ULA1|ALT_INV_Add0~21_sumout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal11~2_combout\,
	datad => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	datae => \processador|decoderInstru1|ALT_INV_Equal11~3_combout\,
	dataf => \SW_8|ALT_INV_saida[5]~13_combout\,
	combout => \processador|ULA1|saida[5]~3_combout\);

-- Location: FF_X36_Y9_N20
\processador|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \processador|ULA1|saida[5]~3_combout\,
	ena => \processador|decoderInstru1|saida[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(5));

-- Location: FF_X34_Y11_N58
\RAM1|ram~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~244_q\);

-- Location: LABCELL_X41_Y10_N51
\RAM1|ram~116feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~116feeder_combout\ = ( \processador|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(5),
	combout => \RAM1|ram~116feeder_combout\);

-- Location: FF_X41_Y10_N52
\RAM1|ram~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~116feeder_combout\,
	ena => \RAM1|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~116_q\);

-- Location: FF_X35_Y14_N37
\RAM1|ram~372\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~372_q\);

-- Location: FF_X37_Y12_N20
\RAM1|ram~500\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~500_q\);

-- Location: MLABCELL_X37_Y12_N21
\RAM1|ram~644\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~644_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~23_combout\ & ( \RAM1|ram~500_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~23_combout\ & ( \RAM1|ram~372_q\ ) ) ) # ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~23_combout\ & 
-- ( \RAM1|ram~244_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~23_combout\ & ( \RAM1|ram~116_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~244_q\,
	datab => \RAM1|ALT_INV_ram~116_q\,
	datac => \RAM1|ALT_INV_ram~372_q\,
	datad => \RAM1|ALT_INV_ram~500_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~644_combout\);

-- Location: LABCELL_X32_Y10_N48
\RAM1|ram~308feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~308feeder_combout\ = ( \processador|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(5),
	combout => \RAM1|ram~308feeder_combout\);

-- Location: FF_X32_Y10_N49
\RAM1|ram~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~308feeder_combout\,
	ena => \RAM1|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~308_q\);

-- Location: LABCELL_X32_Y10_N6
\RAM1|ram~52feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~52feeder_combout\ = ( \processador|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(5),
	combout => \RAM1|ram~52feeder_combout\);

-- Location: FF_X32_Y10_N7
\RAM1|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~52feeder_combout\,
	ena => \RAM1|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~52_q\);

-- Location: FF_X37_Y13_N28
\RAM1|ram~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~180_q\);

-- Location: FF_X37_Y12_N44
\RAM1|ram~436\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~436_q\);

-- Location: MLABCELL_X37_Y12_N42
\RAM1|ram~642\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~642_combout\ = ( \RAM1|ram~436_q\ & ( \ROM1|memROM~23_combout\ & ( (\ROM1|memROM~12_combout\) # (\RAM1|ram~308_q\) ) ) ) # ( !\RAM1|ram~436_q\ & ( \ROM1|memROM~23_combout\ & ( (\RAM1|ram~308_q\ & !\ROM1|memROM~12_combout\) ) ) ) # ( 
-- \RAM1|ram~436_q\ & ( !\ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~12_combout\ & (\RAM1|ram~52_q\)) # (\ROM1|memROM~12_combout\ & ((\RAM1|ram~180_q\))) ) ) ) # ( !\RAM1|ram~436_q\ & ( !\ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~12_combout\ & 
-- (\RAM1|ram~52_q\)) # (\ROM1|memROM~12_combout\ & ((\RAM1|ram~180_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~308_q\,
	datab => \RAM1|ALT_INV_ram~52_q\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \RAM1|ALT_INV_ram~180_q\,
	datae => \RAM1|ALT_INV_ram~436_q\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~642_combout\);

-- Location: FF_X37_Y12_N5
\RAM1|ram~508\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~508_q\);

-- Location: FF_X40_Y10_N53
\RAM1|ram~380\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~380_q\);

-- Location: FF_X37_Y7_N34
\RAM1|ram~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~124_q\);

-- Location: FF_X37_Y9_N58
\RAM1|ram~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~252_q\);

-- Location: MLABCELL_X37_Y12_N0
\RAM1|ram~645\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~645_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~23_combout\ & ( \RAM1|ram~508_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~23_combout\ & ( \RAM1|ram~380_q\ ) ) ) # ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~23_combout\ & 
-- ( \RAM1|ram~252_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~23_combout\ & ( \RAM1|ram~124_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~508_q\,
	datab => \RAM1|ALT_INV_ram~380_q\,
	datac => \RAM1|ALT_INV_ram~124_q\,
	datad => \RAM1|ALT_INV_ram~252_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~645_combout\);

-- Location: FF_X36_Y14_N38
\RAM1|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~60_q\);

-- Location: FF_X36_Y14_N44
\RAM1|ram~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~316_q\);

-- Location: FF_X37_Y9_N40
\RAM1|ram~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~188_q\);

-- Location: FF_X36_Y14_N20
\RAM1|ram~444\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~444_q\);

-- Location: LABCELL_X36_Y14_N21
\RAM1|ram~643\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~643_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~23_combout\ & ( \RAM1|ram~444_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~23_combout\ & ( \RAM1|ram~316_q\ ) ) ) # ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~23_combout\ & 
-- ( \RAM1|ram~188_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~23_combout\ & ( \RAM1|ram~60_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~60_q\,
	datab => \RAM1|ALT_INV_ram~316_q\,
	datac => \RAM1|ALT_INV_ram~188_q\,
	datad => \RAM1|ALT_INV_ram~444_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~643_combout\);

-- Location: MLABCELL_X37_Y12_N36
\RAM1|ram~646\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~646_combout\ = ( \RAM1|ram~645_combout\ & ( \RAM1|ram~643_combout\ & ( ((!\ROM1|memROM~21_combout\ & ((\RAM1|ram~642_combout\))) # (\ROM1|memROM~21_combout\ & (\RAM1|ram~644_combout\))) # (\ROM1|memROM~15_combout\) ) ) ) # ( 
-- !\RAM1|ram~645_combout\ & ( \RAM1|ram~643_combout\ & ( (!\ROM1|memROM~15_combout\ & ((!\ROM1|memROM~21_combout\ & ((\RAM1|ram~642_combout\))) # (\ROM1|memROM~21_combout\ & (\RAM1|ram~644_combout\)))) # (\ROM1|memROM~15_combout\ & 
-- (!\ROM1|memROM~21_combout\)) ) ) ) # ( \RAM1|ram~645_combout\ & ( !\RAM1|ram~643_combout\ & ( (!\ROM1|memROM~15_combout\ & ((!\ROM1|memROM~21_combout\ & ((\RAM1|ram~642_combout\))) # (\ROM1|memROM~21_combout\ & (\RAM1|ram~644_combout\)))) # 
-- (\ROM1|memROM~15_combout\ & (\ROM1|memROM~21_combout\)) ) ) ) # ( !\RAM1|ram~645_combout\ & ( !\RAM1|ram~643_combout\ & ( (!\ROM1|memROM~15_combout\ & ((!\ROM1|memROM~21_combout\ & ((\RAM1|ram~642_combout\))) # (\ROM1|memROM~21_combout\ & 
-- (\RAM1|ram~644_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \RAM1|ALT_INV_ram~644_combout\,
	datad => \RAM1|ALT_INV_ram~642_combout\,
	datae => \RAM1|ALT_INV_ram~645_combout\,
	dataf => \RAM1|ALT_INV_ram~643_combout\,
	combout => \RAM1|ram~646_combout\);

-- Location: FF_X36_Y12_N50
\RAM1|ram~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~236_q\);

-- Location: FF_X36_Y12_N11
\RAM1|ram~364\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~364_q\);

-- Location: MLABCELL_X34_Y8_N45
\RAM1|ram~108feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~108feeder_combout\ = ( \processador|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(5),
	combout => \RAM1|ram~108feeder_combout\);

-- Location: FF_X34_Y8_N47
\RAM1|ram~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~108feeder_combout\,
	ena => \RAM1|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~108_q\);

-- Location: FF_X36_Y12_N44
\RAM1|ram~492\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~492_q\);

-- Location: LABCELL_X36_Y12_N42
\RAM1|ram~640\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~640_combout\ = ( \RAM1|ram~492_q\ & ( \ROM1|memROM~23_combout\ & ( (\ROM1|memROM~12_combout\) # (\RAM1|ram~364_q\) ) ) ) # ( !\RAM1|ram~492_q\ & ( \ROM1|memROM~23_combout\ & ( (\RAM1|ram~364_q\ & !\ROM1|memROM~12_combout\) ) ) ) # ( 
-- \RAM1|ram~492_q\ & ( !\ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~12_combout\ & ((\RAM1|ram~108_q\))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~236_q\)) ) ) ) # ( !\RAM1|ram~492_q\ & ( !\ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~12_combout\ & 
-- ((\RAM1|ram~108_q\))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~236_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~236_q\,
	datab => \RAM1|ALT_INV_ram~364_q\,
	datac => \RAM1|ALT_INV_ram~108_q\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \RAM1|ALT_INV_ram~492_q\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~640_combout\);

-- Location: FF_X32_Y11_N16
\RAM1|ram~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~228_q\);

-- Location: FF_X35_Y11_N44
\RAM1|ram~356\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~356_q\);

-- Location: FF_X32_Y11_N34
\RAM1|ram~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~100_q\);

-- Location: LABCELL_X36_Y15_N36
\RAM1|ram~484feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~484feeder_combout\ = ( \processador|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(5),
	combout => \RAM1|ram~484feeder_combout\);

-- Location: FF_X36_Y15_N38
\RAM1|ram~484\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~484feeder_combout\,
	ena => \RAM1|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~484_q\);

-- Location: LABCELL_X36_Y15_N51
\RAM1|ram~639\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~639_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~23_combout\ & ( \RAM1|ram~484_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~23_combout\ & ( \RAM1|ram~356_q\ ) ) ) # ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~23_combout\ & 
-- ( \RAM1|ram~228_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~23_combout\ & ( \RAM1|ram~100_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~228_q\,
	datab => \RAM1|ALT_INV_ram~356_q\,
	datac => \RAM1|ALT_INV_ram~100_q\,
	datad => \RAM1|ALT_INV_ram~484_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~639_combout\);

-- Location: FF_X41_Y11_N22
\RAM1|ram~420\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~420_q\);

-- Location: FF_X39_Y10_N31
\RAM1|ram~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~164_q\);

-- Location: LABCELL_X41_Y12_N36
\RAM1|ram~36feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~36feeder_combout\ = ( \processador|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(5),
	combout => \RAM1|ram~36feeder_combout\);

-- Location: FF_X41_Y12_N38
\RAM1|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~36feeder_combout\,
	ena => \RAM1|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~36_q\);

-- Location: LABCELL_X41_Y12_N45
\RAM1|ram~292feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~292feeder_combout\ = ( \processador|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(5),
	combout => \RAM1|ram~292feeder_combout\);

-- Location: FF_X41_Y12_N47
\RAM1|ram~292\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~292feeder_combout\,
	ena => \RAM1|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~292_q\);

-- Location: LABCELL_X41_Y12_N54
\RAM1|ram~637\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~637_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~23_combout\ & ( \RAM1|ram~420_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~23_combout\ & ( \RAM1|ram~292_q\ ) ) ) # ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~23_combout\ & 
-- ( \RAM1|ram~164_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~23_combout\ & ( \RAM1|ram~36_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~420_q\,
	datab => \RAM1|ALT_INV_ram~164_q\,
	datac => \RAM1|ALT_INV_ram~36_q\,
	datad => \RAM1|ALT_INV_ram~292_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~637_combout\);

-- Location: FF_X34_Y9_N14
\RAM1|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~44_q\);

-- Location: FF_X37_Y10_N47
\RAM1|ram~428\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~428_q\);

-- Location: FF_X37_Y10_N41
\RAM1|ram~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~172_q\);

-- Location: FF_X34_Y9_N32
\RAM1|ram~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~300_q\);

-- Location: MLABCELL_X34_Y9_N30
\RAM1|ram~638\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~638_combout\ = ( \RAM1|ram~300_q\ & ( \ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~12_combout\) # (\RAM1|ram~428_q\) ) ) ) # ( !\RAM1|ram~300_q\ & ( \ROM1|memROM~23_combout\ & ( (\RAM1|ram~428_q\ & \ROM1|memROM~12_combout\) ) ) ) # ( 
-- \RAM1|ram~300_q\ & ( !\ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~12_combout\ & (\RAM1|ram~44_q\)) # (\ROM1|memROM~12_combout\ & ((\RAM1|ram~172_q\))) ) ) ) # ( !\RAM1|ram~300_q\ & ( !\ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~12_combout\ & 
-- (\RAM1|ram~44_q\)) # (\ROM1|memROM~12_combout\ & ((\RAM1|ram~172_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~44_q\,
	datab => \RAM1|ALT_INV_ram~428_q\,
	datac => \RAM1|ALT_INV_ram~172_q\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \RAM1|ALT_INV_ram~300_q\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~638_combout\);

-- Location: MLABCELL_X37_Y12_N24
\RAM1|ram~641\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~641_combout\ = ( \RAM1|ram~637_combout\ & ( \RAM1|ram~638_combout\ & ( (!\ROM1|memROM~21_combout\) # ((!\ROM1|memROM~15_combout\ & ((\RAM1|ram~639_combout\))) # (\ROM1|memROM~15_combout\ & (\RAM1|ram~640_combout\))) ) ) ) # ( 
-- !\RAM1|ram~637_combout\ & ( \RAM1|ram~638_combout\ & ( (!\ROM1|memROM~21_combout\ & (((\ROM1|memROM~15_combout\)))) # (\ROM1|memROM~21_combout\ & ((!\ROM1|memROM~15_combout\ & ((\RAM1|ram~639_combout\))) # (\ROM1|memROM~15_combout\ & 
-- (\RAM1|ram~640_combout\)))) ) ) ) # ( \RAM1|ram~637_combout\ & ( !\RAM1|ram~638_combout\ & ( (!\ROM1|memROM~21_combout\ & (((!\ROM1|memROM~15_combout\)))) # (\ROM1|memROM~21_combout\ & ((!\ROM1|memROM~15_combout\ & ((\RAM1|ram~639_combout\))) # 
-- (\ROM1|memROM~15_combout\ & (\RAM1|ram~640_combout\)))) ) ) ) # ( !\RAM1|ram~637_combout\ & ( !\RAM1|ram~638_combout\ & ( (\ROM1|memROM~21_combout\ & ((!\ROM1|memROM~15_combout\ & ((\RAM1|ram~639_combout\))) # (\ROM1|memROM~15_combout\ & 
-- (\RAM1|ram~640_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001101000011111000100001011010110111010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~21_combout\,
	datab => \RAM1|ALT_INV_ram~640_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \RAM1|ALT_INV_ram~639_combout\,
	datae => \RAM1|ALT_INV_ram~637_combout\,
	dataf => \RAM1|ALT_INV_ram~638_combout\,
	combout => \RAM1|ram~641_combout\);

-- Location: FF_X37_Y8_N38
\RAM1|ram~284\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~284_q\);

-- Location: FF_X39_Y8_N43
\RAM1|ram~412\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~412_q\);

-- Location: FF_X40_Y9_N55
\RAM1|ram~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~156_q\);

-- Location: FF_X37_Y7_N19
\RAM1|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~28_q\);

-- Location: MLABCELL_X37_Y8_N33
\RAM1|ram~633\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~633_combout\ = ( \ROM1|memROM~23_combout\ & ( \ROM1|memROM~12_combout\ & ( \RAM1|ram~412_q\ ) ) ) # ( !\ROM1|memROM~23_combout\ & ( \ROM1|memROM~12_combout\ & ( \RAM1|ram~156_q\ ) ) ) # ( \ROM1|memROM~23_combout\ & ( !\ROM1|memROM~12_combout\ & 
-- ( \RAM1|ram~284_q\ ) ) ) # ( !\ROM1|memROM~23_combout\ & ( !\ROM1|memROM~12_combout\ & ( \RAM1|ram~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~284_q\,
	datab => \RAM1|ALT_INV_ram~412_q\,
	datac => \RAM1|ALT_INV_ram~156_q\,
	datad => \RAM1|ALT_INV_ram~28_q\,
	datae => \ROM1|ALT_INV_memROM~23_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~633_combout\);

-- Location: FF_X39_Y11_N19
\RAM1|ram~404\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~404_q\);

-- Location: FF_X34_Y12_N58
\RAM1|ram~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~276_q\);

-- Location: LABCELL_X31_Y12_N0
\RAM1|ram~20feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~20feeder_combout\ = ( \processador|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(5),
	combout => \RAM1|ram~20feeder_combout\);

-- Location: FF_X31_Y12_N1
\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~20feeder_combout\,
	ena => \RAM1|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

-- Location: FF_X40_Y9_N37
\RAM1|ram~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~148_q\);

-- Location: LABCELL_X35_Y12_N27
\RAM1|ram~632\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~632_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~23_combout\ & ( \RAM1|ram~404_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~23_combout\ & ( \RAM1|ram~276_q\ ) ) ) # ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~23_combout\ & 
-- ( \RAM1|ram~148_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~23_combout\ & ( \RAM1|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~404_q\,
	datab => \RAM1|ALT_INV_ram~276_q\,
	datac => \RAM1|ALT_INV_ram~20_q\,
	datad => \RAM1|ALT_INV_ram~148_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~632_combout\);

-- Location: FF_X40_Y12_N7
\RAM1|ram~476\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~476_q\);

-- Location: FF_X40_Y12_N32
\RAM1|ram~348\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~348_q\);

-- Location: FF_X37_Y9_N53
\RAM1|ram~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~220_q\);

-- Location: FF_X40_Y12_N26
\RAM1|ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~92_q\);

-- Location: LABCELL_X40_Y12_N9
\RAM1|ram~635\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~635_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~23_combout\ & ( \RAM1|ram~476_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~23_combout\ & ( \RAM1|ram~348_q\ ) ) ) # ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~23_combout\ & 
-- ( \RAM1|ram~220_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~23_combout\ & ( \RAM1|ram~92_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~476_q\,
	datab => \RAM1|ALT_INV_ram~348_q\,
	datac => \RAM1|ALT_INV_ram~220_q\,
	datad => \RAM1|ALT_INV_ram~92_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~635_combout\);

-- Location: FF_X31_Y10_N34
\RAM1|ram~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~212_q\);

-- Location: FF_X32_Y9_N10
\RAM1|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~84_q\);

-- Location: LABCELL_X35_Y13_N45
\RAM1|ram~468feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~468feeder_combout\ = ( \processador|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(5),
	combout => \RAM1|ram~468feeder_combout\);

-- Location: FF_X35_Y13_N47
\RAM1|ram~468\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~468feeder_combout\,
	ena => \RAM1|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~468_q\);

-- Location: FF_X37_Y11_N16
\RAM1|ram~340\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~340_q\);

-- Location: LABCELL_X35_Y13_N15
\RAM1|ram~634\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~634_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~23_combout\ & ( \RAM1|ram~468_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~23_combout\ & ( \RAM1|ram~340_q\ ) ) ) # ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~23_combout\ & 
-- ( \RAM1|ram~212_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~23_combout\ & ( \RAM1|ram~84_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~212_q\,
	datab => \RAM1|ALT_INV_ram~84_q\,
	datac => \RAM1|ALT_INV_ram~468_q\,
	datad => \RAM1|ALT_INV_ram~340_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~634_combout\);

-- Location: MLABCELL_X37_Y12_N54
\RAM1|ram~636\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~636_combout\ = ( \RAM1|ram~635_combout\ & ( \RAM1|ram~634_combout\ & ( ((!\ROM1|memROM~15_combout\ & ((\RAM1|ram~632_combout\))) # (\ROM1|memROM~15_combout\ & (\RAM1|ram~633_combout\))) # (\ROM1|memROM~21_combout\) ) ) ) # ( 
-- !\RAM1|ram~635_combout\ & ( \RAM1|ram~634_combout\ & ( (!\ROM1|memROM~15_combout\ & (((\RAM1|ram~632_combout\)) # (\ROM1|memROM~21_combout\))) # (\ROM1|memROM~15_combout\ & (!\ROM1|memROM~21_combout\ & (\RAM1|ram~633_combout\))) ) ) ) # ( 
-- \RAM1|ram~635_combout\ & ( !\RAM1|ram~634_combout\ & ( (!\ROM1|memROM~15_combout\ & (!\ROM1|memROM~21_combout\ & ((\RAM1|ram~632_combout\)))) # (\ROM1|memROM~15_combout\ & (((\RAM1|ram~633_combout\)) # (\ROM1|memROM~21_combout\))) ) ) ) # ( 
-- !\RAM1|ram~635_combout\ & ( !\RAM1|ram~634_combout\ & ( (!\ROM1|memROM~21_combout\ & ((!\ROM1|memROM~15_combout\ & ((\RAM1|ram~632_combout\))) # (\ROM1|memROM~15_combout\ & (\RAM1|ram~633_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \RAM1|ALT_INV_ram~633_combout\,
	datad => \RAM1|ALT_INV_ram~632_combout\,
	datae => \RAM1|ALT_INV_ram~635_combout\,
	dataf => \RAM1|ALT_INV_ram~634_combout\,
	combout => \RAM1|ram~636_combout\);

-- Location: FF_X41_Y9_N10
\RAM1|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~68_q\);

-- Location: FF_X40_Y10_N19
\RAM1|ram~332\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~332_q\);

-- Location: FF_X35_Y12_N37
\RAM1|ram~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~324_q\);

-- Location: FF_X40_Y10_N16
\RAM1|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~76_q\);

-- Location: LABCELL_X39_Y11_N15
\RAM1|ram~647\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~647_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~23_combout\ & ( \RAM1|ram~332_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~23_combout\ & ( \RAM1|ram~324_q\ ) ) ) # ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~23_combout\ & 
-- ( \RAM1|ram~76_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~23_combout\ & ( \RAM1|ram~68_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~68_q\,
	datab => \RAM1|ALT_INV_ram~332_q\,
	datac => \RAM1|ALT_INV_ram~324_q\,
	datad => \RAM1|ALT_INV_ram~76_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~647_combout\);

-- Location: FF_X39_Y12_N35
\RAM1|ram~516\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~516_q\);

-- Location: FF_X39_Y12_N14
\RAM1|ram~524\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~524_q\);

-- Location: FF_X34_Y11_N52
\RAM1|ram~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~268_q\);

-- Location: LABCELL_X36_Y8_N9
\RAM1|ram~260feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~260feeder_combout\ = ( \processador|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(5),
	combout => \RAM1|ram~260feeder_combout\);

-- Location: FF_X36_Y8_N10
\RAM1|ram~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~260feeder_combout\,
	ena => \RAM1|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~260_q\);

-- Location: LABCELL_X39_Y12_N36
\RAM1|ram~650\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~650_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~23_combout\ & ( \RAM1|ram~524_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~23_combout\ & ( \RAM1|ram~516_q\ ) ) ) # ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~23_combout\ & 
-- ( \RAM1|ram~268_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~23_combout\ & ( \RAM1|ram~260_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~516_q\,
	datab => \RAM1|ALT_INV_ram~524_q\,
	datac => \RAM1|ALT_INV_ram~268_q\,
	datad => \RAM1|ALT_INV_ram~260_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~650_combout\);

-- Location: FF_X37_Y8_N5
\RAM1|ram~460\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~460_q\);

-- Location: FF_X36_Y7_N40
\RAM1|ram~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~204_q\);

-- Location: FF_X39_Y10_N53
\RAM1|ram~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~196_q\);

-- Location: FF_X36_Y8_N28
\RAM1|ram~452\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~452_q\);

-- Location: MLABCELL_X37_Y8_N15
\RAM1|ram~648\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~648_combout\ = ( \ROM1|memROM~23_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~460_q\ ) ) ) # ( !\ROM1|memROM~23_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~204_q\ ) ) ) # ( \ROM1|memROM~23_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM1|ram~452_q\ ) ) ) # ( !\ROM1|memROM~23_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM1|ram~196_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~460_q\,
	datab => \RAM1|ALT_INV_ram~204_q\,
	datac => \RAM1|ALT_INV_ram~196_q\,
	datad => \RAM1|ALT_INV_ram~452_q\,
	datae => \ROM1|ALT_INV_memROM~23_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~648_combout\);

-- Location: FF_X35_Y14_N17
\RAM1|ram~388\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~388_q\);

-- Location: MLABCELL_X34_Y8_N3
\RAM1|ram~140feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~140feeder_combout\ = ( \processador|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(5),
	combout => \RAM1|ram~140feeder_combout\);

-- Location: FF_X34_Y8_N4
\RAM1|ram~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~140feeder_combout\,
	ena => \RAM1|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~140_q\);

-- Location: MLABCELL_X34_Y14_N0
\RAM1|ram~396feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~396feeder_combout\ = ( \processador|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(5),
	combout => \RAM1|ram~396feeder_combout\);

-- Location: FF_X34_Y14_N2
\RAM1|ram~396\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~396feeder_combout\,
	ena => \RAM1|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~396_q\);

-- Location: FF_X35_Y10_N16
\RAM1|ram~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~132_q\);

-- Location: MLABCELL_X34_Y14_N6
\RAM1|ram~649\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~649_combout\ = ( \ROM1|memROM~23_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~396_q\ ) ) ) # ( !\ROM1|memROM~23_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM1|ram~140_q\ ) ) ) # ( \ROM1|memROM~23_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM1|ram~388_q\ ) ) ) # ( !\ROM1|memROM~23_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM1|ram~132_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~388_q\,
	datab => \RAM1|ALT_INV_ram~140_q\,
	datac => \RAM1|ALT_INV_ram~396_q\,
	datad => \RAM1|ALT_INV_ram~132_q\,
	datae => \ROM1|ALT_INV_memROM~23_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~649_combout\);

-- Location: MLABCELL_X37_Y12_N48
\RAM1|ram~651\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~651_combout\ = ( \RAM1|ram~648_combout\ & ( \RAM1|ram~649_combout\ & ( (!\ROM1|memROM~12_combout\ & (((\RAM1|ram~647_combout\)) # (\ROM1|memROM~21_combout\))) # (\ROM1|memROM~12_combout\ & ((!\ROM1|memROM~21_combout\) # 
-- ((\RAM1|ram~650_combout\)))) ) ) ) # ( !\RAM1|ram~648_combout\ & ( \RAM1|ram~649_combout\ & ( (!\ROM1|memROM~12_combout\ & (((\RAM1|ram~647_combout\)) # (\ROM1|memROM~21_combout\))) # (\ROM1|memROM~12_combout\ & (\ROM1|memROM~21_combout\ & 
-- ((\RAM1|ram~650_combout\)))) ) ) ) # ( \RAM1|ram~648_combout\ & ( !\RAM1|ram~649_combout\ & ( (!\ROM1|memROM~12_combout\ & (!\ROM1|memROM~21_combout\ & (\RAM1|ram~647_combout\))) # (\ROM1|memROM~12_combout\ & ((!\ROM1|memROM~21_combout\) # 
-- ((\RAM1|ram~650_combout\)))) ) ) ) # ( !\RAM1|ram~648_combout\ & ( !\RAM1|ram~649_combout\ & ( (!\ROM1|memROM~12_combout\ & (!\ROM1|memROM~21_combout\ & (\RAM1|ram~647_combout\))) # (\ROM1|memROM~12_combout\ & (\ROM1|memROM~21_combout\ & 
-- ((\RAM1|ram~650_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \RAM1|ALT_INV_ram~647_combout\,
	datad => \RAM1|ALT_INV_ram~650_combout\,
	datae => \RAM1|ALT_INV_ram~648_combout\,
	dataf => \RAM1|ALT_INV_ram~649_combout\,
	combout => \RAM1|ram~651_combout\);

-- Location: MLABCELL_X37_Y12_N6
\RAM1|ram~652\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~652_combout\ = ( \RAM1|ram~636_combout\ & ( \RAM1|ram~651_combout\ & ( (!\ROM1|memROM~17_combout\ & (((!\ROM1|memROM~19_combout\)) # (\RAM1|ram~646_combout\))) # (\ROM1|memROM~17_combout\ & (((\ROM1|memROM~19_combout\) # 
-- (\RAM1|ram~641_combout\)))) ) ) ) # ( !\RAM1|ram~636_combout\ & ( \RAM1|ram~651_combout\ & ( (!\ROM1|memROM~17_combout\ & (\RAM1|ram~646_combout\ & ((\ROM1|memROM~19_combout\)))) # (\ROM1|memROM~17_combout\ & (((\ROM1|memROM~19_combout\) # 
-- (\RAM1|ram~641_combout\)))) ) ) ) # ( \RAM1|ram~636_combout\ & ( !\RAM1|ram~651_combout\ & ( (!\ROM1|memROM~17_combout\ & (((!\ROM1|memROM~19_combout\)) # (\RAM1|ram~646_combout\))) # (\ROM1|memROM~17_combout\ & (((\RAM1|ram~641_combout\ & 
-- !\ROM1|memROM~19_combout\)))) ) ) ) # ( !\RAM1|ram~636_combout\ & ( !\RAM1|ram~651_combout\ & ( (!\ROM1|memROM~17_combout\ & (\RAM1|ram~646_combout\ & ((\ROM1|memROM~19_combout\)))) # (\ROM1|memROM~17_combout\ & (((\RAM1|ram~641_combout\ & 
-- !\ROM1|memROM~19_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100110011110100010000000011011101111100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~646_combout\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \RAM1|ALT_INV_ram~641_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \RAM1|ALT_INV_ram~636_combout\,
	dataf => \RAM1|ALT_INV_ram~651_combout\,
	combout => \RAM1|ram~652_combout\);

-- Location: LABCELL_X36_Y9_N6
\SW_8|saida[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_8|saida[5]~13_combout\ = ( \comb~6_combout\ & ( \RAM1|ram~652_combout\ & ( (\SW[5]~input_o\ & !\SW_8|saida[1]~8_combout\) ) ) ) # ( !\comb~6_combout\ & ( \RAM1|ram~652_combout\ & ( !\SW_8|saida[1]~8_combout\ ) ) ) # ( \comb~6_combout\ & ( 
-- !\RAM1|ram~652_combout\ & ( (!\RAM1|dado_out~0_combout\ & (\SW[5]~input_o\ & !\SW_8|saida[1]~8_combout\)) ) ) ) # ( !\comb~6_combout\ & ( !\RAM1|ram~652_combout\ & ( (!\RAM1|dado_out~0_combout\ & !\SW_8|saida[1]~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000001000000010000011110000111100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~0_combout\,
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \SW_8|ALT_INV_saida[1]~8_combout\,
	datae => \ALT_INV_comb~6_combout\,
	dataf => \RAM1|ALT_INV_ram~652_combout\,
	combout => \SW_8|saida[5]~13_combout\);

-- Location: LABCELL_X36_Y9_N48
\processador|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~25_sumout\ = SUM(( \processador|REGA|DOUT\(6) ) + ( (!\processador|decoderInstru1|Equal11~3_combout\ & (\SW_8|saida[6]~14_combout\)) # (\processador|decoderInstru1|Equal11~3_combout\ & (((!\processador|PC|DOUT\(8) & 
-- \ROM1|memROM~29_combout\)))) ) + ( \processador|ULA1|Add0~22\ ))
-- \processador|ULA1|Add0~26\ = CARRY(( \processador|REGA|DOUT\(6) ) + ( (!\processador|decoderInstru1|Equal11~3_combout\ & (\SW_8|saida[6]~14_combout\)) # (\processador|decoderInstru1|Equal11~3_combout\ & (((!\processador|PC|DOUT\(8) & 
-- \ROM1|memROM~29_combout\)))) ) + ( \processador|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110111011000110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~3_combout\,
	datab => \SW_8|ALT_INV_saida[6]~14_combout\,
	datac => \processador|PC|ALT_INV_DOUT\(8),
	datad => \processador|REGA|ALT_INV_DOUT\(6),
	dataf => \ROM1|ALT_INV_memROM~29_combout\,
	cin => \processador|ULA1|Add0~22\,
	sumout => \processador|ULA1|Add0~25_sumout\,
	cout => \processador|ULA1|Add0~26\);

-- Location: LABCELL_X36_Y9_N54
\processador|ULA1|saida[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[6]~5_combout\ = ( !\processador|decoderInstru1|Equal11~3_combout\ & ( (!\processador|decoderInstru1|saida[4]~1_combout\ & ((!\processador|decoderInstru1|Equal11~2_combout\ & (\processador|ULA1|Add1~25_sumout\)) # 
-- (\processador|decoderInstru1|Equal11~2_combout\ & (((\processador|ULA1|Add0~25_sumout\)))))) # (\processador|decoderInstru1|saida[4]~1_combout\ & ((((\SW_8|saida[6]~14_combout\))))) ) ) # ( \processador|decoderInstru1|Equal11~3_combout\ & ( 
-- (!\processador|decoderInstru1|saida[4]~1_combout\ & ((!\processador|decoderInstru1|Equal11~2_combout\ & (\processador|ULA1|Add1~25_sumout\)) # (\processador|decoderInstru1|Equal11~2_combout\ & (((\processador|ULA1|Add0~25_sumout\)))))) # 
-- (\processador|decoderInstru1|saida[4]~1_combout\ & ((((\ROM1|memROM~11_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100010000001111010001000000111101110111000011110111011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA1|ALT_INV_Add1~25_sumout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal11~2_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	datae => \processador|decoderInstru1|ALT_INV_Equal11~3_combout\,
	dataf => \processador|ULA1|ALT_INV_Add0~25_sumout\,
	datag => \SW_8|ALT_INV_saida[6]~14_combout\,
	combout => \processador|ULA1|saida[6]~5_combout\);

-- Location: FF_X36_Y9_N56
\processador|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \processador|ULA1|saida[6]~5_combout\,
	ena => \processador|decoderInstru1|saida[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(6));

-- Location: LABCELL_X40_Y10_N42
\RAM1|ram~77feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~77feeder_combout\ = \processador|REGA|DOUT\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|REGA|ALT_INV_DOUT\(6),
	combout => \RAM1|ram~77feeder_combout\);

-- Location: FF_X40_Y10_N43
\RAM1|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~77feeder_combout\,
	ena => \RAM1|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~77_q\);

-- Location: FF_X34_Y9_N16
\RAM1|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~45_q\);

-- Location: MLABCELL_X34_Y8_N42
\RAM1|ram~109feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~109feeder_combout\ = \processador|REGA|DOUT\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|REGA|ALT_INV_DOUT\(6),
	combout => \RAM1|ram~109feeder_combout\);

-- Location: FF_X34_Y8_N44
\RAM1|ram~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~109feeder_combout\,
	ena => \RAM1|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~109_q\);

-- Location: FF_X34_Y8_N32
\RAM1|ram~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~141_q\);

-- Location: MLABCELL_X34_Y8_N30
\RAM1|ram~665\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~665_combout\ = ( \RAM1|ram~141_q\ & ( \ROM1|memROM~21_combout\ & ( (\RAM1|ram~109_q\) # (\ROM1|memROM~19_combout\) ) ) ) # ( !\RAM1|ram~141_q\ & ( \ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~19_combout\ & \RAM1|ram~109_q\) ) ) ) # ( 
-- \RAM1|ram~141_q\ & ( !\ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~19_combout\ & ((\RAM1|ram~45_q\))) # (\ROM1|memROM~19_combout\ & (\RAM1|ram~77_q\)) ) ) ) # ( !\RAM1|ram~141_q\ & ( !\ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~19_combout\ & 
-- ((\RAM1|ram~45_q\))) # (\ROM1|memROM~19_combout\ & (\RAM1|ram~77_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~77_q\,
	datab => \RAM1|ALT_INV_ram~45_q\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \RAM1|ALT_INV_ram~109_q\,
	datae => \RAM1|ALT_INV_ram~141_q\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~665_combout\);

-- Location: FF_X40_Y9_N28
\RAM1|ram~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~157_q\);

-- Location: FF_X37_Y9_N14
\RAM1|ram~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~189_q\);

-- Location: FF_X37_Y9_N44
\RAM1|ram~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~221_q\);

-- Location: FF_X37_Y9_N2
\RAM1|ram~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~253_q\);

-- Location: MLABCELL_X37_Y9_N0
\RAM1|ram~664\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~664_combout\ = ( \RAM1|ram~253_q\ & ( \ROM1|memROM~21_combout\ & ( (\RAM1|ram~221_q\) # (\ROM1|memROM~19_combout\) ) ) ) # ( !\RAM1|ram~253_q\ & ( \ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~19_combout\ & \RAM1|ram~221_q\) ) ) ) # ( 
-- \RAM1|ram~253_q\ & ( !\ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~19_combout\ & (\RAM1|ram~157_q\)) # (\ROM1|memROM~19_combout\ & ((\RAM1|ram~189_q\))) ) ) ) # ( !\RAM1|ram~253_q\ & ( !\ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~19_combout\ & 
-- (\RAM1|ram~157_q\)) # (\ROM1|memROM~19_combout\ & ((\RAM1|ram~189_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~157_q\,
	datab => \RAM1|ALT_INV_ram~189_q\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \RAM1|ALT_INV_ram~221_q\,
	datae => \RAM1|ALT_INV_ram~253_q\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~664_combout\);

-- Location: FF_X37_Y7_N41
\RAM1|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~29_q\);

-- Location: LABCELL_X36_Y14_N9
\RAM1|ram~61feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~61feeder_combout\ = ( \processador|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(6),
	combout => \RAM1|ram~61feeder_combout\);

-- Location: FF_X36_Y14_N10
\RAM1|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~61feeder_combout\,
	ena => \RAM1|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~61_q\);

-- Location: FF_X40_Y12_N28
\RAM1|ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~93_q\);

-- Location: FF_X37_Y7_N2
\RAM1|ram~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~125_q\);

-- Location: MLABCELL_X37_Y7_N0
\RAM1|ram~663\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~663_combout\ = ( \RAM1|ram~125_q\ & ( \ROM1|memROM~19_combout\ & ( (\ROM1|memROM~21_combout\) # (\RAM1|ram~61_q\) ) ) ) # ( !\RAM1|ram~125_q\ & ( \ROM1|memROM~19_combout\ & ( (\RAM1|ram~61_q\ & !\ROM1|memROM~21_combout\) ) ) ) # ( 
-- \RAM1|ram~125_q\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~21_combout\ & (\RAM1|ram~29_q\)) # (\ROM1|memROM~21_combout\ & ((\RAM1|ram~93_q\))) ) ) ) # ( !\RAM1|ram~125_q\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~21_combout\ & 
-- (\RAM1|ram~29_q\)) # (\ROM1|memROM~21_combout\ & ((\RAM1|ram~93_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~29_q\,
	datab => \RAM1|ALT_INV_ram~61_q\,
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datad => \RAM1|ALT_INV_ram~93_q\,
	datae => \RAM1|ALT_INV_ram~125_q\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~663_combout\);

-- Location: FF_X36_Y12_N40
\RAM1|ram~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~237_q\);

-- Location: FF_X37_Y7_N25
\RAM1|ram~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~269_q\);

-- Location: FF_X36_Y7_N16
\RAM1|ram~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~173_q\);

-- Location: FF_X36_Y7_N37
\RAM1|ram~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~205_q\);

-- Location: MLABCELL_X37_Y7_N27
\RAM1|ram~666\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~666_combout\ = ( \ROM1|memROM~19_combout\ & ( \ROM1|memROM~21_combout\ & ( \RAM1|ram~269_q\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( \ROM1|memROM~21_combout\ & ( \RAM1|ram~237_q\ ) ) ) # ( \ROM1|memROM~19_combout\ & ( !\ROM1|memROM~21_combout\ & 
-- ( \RAM1|ram~205_q\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( !\ROM1|memROM~21_combout\ & ( \RAM1|ram~173_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~237_q\,
	datab => \RAM1|ALT_INV_ram~269_q\,
	datac => \RAM1|ALT_INV_ram~173_q\,
	datad => \RAM1|ALT_INV_ram~205_q\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~666_combout\);

-- Location: LABCELL_X36_Y8_N18
\RAM1|ram~667\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~667_combout\ = ( \RAM1|ram~663_combout\ & ( \RAM1|ram~666_combout\ & ( (!\ROM1|memROM~12_combout\ & (((!\ROM1|memROM~17_combout\)) # (\RAM1|ram~665_combout\))) # (\ROM1|memROM~12_combout\ & (((\ROM1|memROM~17_combout\) # 
-- (\RAM1|ram~664_combout\)))) ) ) ) # ( !\RAM1|ram~663_combout\ & ( \RAM1|ram~666_combout\ & ( (!\ROM1|memROM~12_combout\ & (\RAM1|ram~665_combout\ & ((\ROM1|memROM~17_combout\)))) # (\ROM1|memROM~12_combout\ & (((\ROM1|memROM~17_combout\) # 
-- (\RAM1|ram~664_combout\)))) ) ) ) # ( \RAM1|ram~663_combout\ & ( !\RAM1|ram~666_combout\ & ( (!\ROM1|memROM~12_combout\ & (((!\ROM1|memROM~17_combout\)) # (\RAM1|ram~665_combout\))) # (\ROM1|memROM~12_combout\ & (((\RAM1|ram~664_combout\ & 
-- !\ROM1|memROM~17_combout\)))) ) ) ) # ( !\RAM1|ram~663_combout\ & ( !\RAM1|ram~666_combout\ & ( (!\ROM1|memROM~12_combout\ & (\RAM1|ram~665_combout\ & ((\ROM1|memROM~17_combout\)))) # (\ROM1|memROM~12_combout\ & (((\RAM1|ram~664_combout\ & 
-- !\ROM1|memROM~17_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100110011110100010000000011011101111100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~665_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \RAM1|ALT_INV_ram~664_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \RAM1|ALT_INV_ram~663_combout\,
	dataf => \RAM1|ALT_INV_ram~666_combout\,
	combout => \RAM1|ram~667_combout\);

-- Location: FF_X36_Y10_N5
\RAM1|ram~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~229_q\);

-- Location: LABCELL_X32_Y9_N45
\RAM1|ram~213feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~213feeder_combout\ = ( \processador|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(6),
	combout => \RAM1|ram~213feeder_combout\);

-- Location: FF_X32_Y9_N46
\RAM1|ram~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~213feeder_combout\,
	ena => \RAM1|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~213_q\);

-- Location: FF_X34_Y11_N17
\RAM1|ram~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~245_q\);

-- Location: FF_X36_Y8_N14
\RAM1|ram~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~261_q\);

-- Location: LABCELL_X36_Y8_N12
\RAM1|ram~656\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~656_combout\ = ( \RAM1|ram~261_q\ & ( \ROM1|memROM~17_combout\ & ( (\RAM1|ram~229_q\) # (\ROM1|memROM~19_combout\) ) ) ) # ( !\RAM1|ram~261_q\ & ( \ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~19_combout\ & \RAM1|ram~229_q\) ) ) ) # ( 
-- \RAM1|ram~261_q\ & ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~19_combout\ & (\RAM1|ram~213_q\)) # (\ROM1|memROM~19_combout\ & ((\RAM1|ram~245_q\))) ) ) ) # ( !\RAM1|ram~261_q\ & ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~19_combout\ & 
-- (\RAM1|ram~213_q\)) # (\ROM1|memROM~19_combout\ & ((\RAM1|ram~245_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \RAM1|ALT_INV_ram~229_q\,
	datac => \RAM1|ALT_INV_ram~213_q\,
	datad => \RAM1|ALT_INV_ram~245_q\,
	datae => \RAM1|ALT_INV_ram~261_q\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~656_combout\);

-- Location: FF_X35_Y10_N38
\RAM1|ram~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~117_q\);

-- Location: FF_X35_Y10_N55
\RAM1|ram~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~101_q\);

-- Location: LABCELL_X32_Y9_N36
\RAM1|ram~85feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~85feeder_combout\ = ( \processador|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(6),
	combout => \RAM1|ram~85feeder_combout\);

-- Location: FF_X32_Y9_N37
\RAM1|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~85feeder_combout\,
	ena => \RAM1|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~85_q\);

-- Location: FF_X35_Y10_N32
\RAM1|ram~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~133_q\);

-- Location: LABCELL_X35_Y10_N30
\RAM1|ram~655\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~655_combout\ = ( \RAM1|ram~133_q\ & ( \ROM1|memROM~19_combout\ & ( (\ROM1|memROM~17_combout\) # (\RAM1|ram~117_q\) ) ) ) # ( !\RAM1|ram~133_q\ & ( \ROM1|memROM~19_combout\ & ( (\RAM1|ram~117_q\ & !\ROM1|memROM~17_combout\) ) ) ) # ( 
-- \RAM1|ram~133_q\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~17_combout\ & ((\RAM1|ram~85_q\))) # (\ROM1|memROM~17_combout\ & (\RAM1|ram~101_q\)) ) ) ) # ( !\RAM1|ram~133_q\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~17_combout\ & 
-- ((\RAM1|ram~85_q\))) # (\ROM1|memROM~17_combout\ & (\RAM1|ram~101_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~117_q\,
	datab => \RAM1|ALT_INV_ram~101_q\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \RAM1|ALT_INV_ram~85_q\,
	datae => \RAM1|ALT_INV_ram~133_q\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~655_combout\);

-- Location: FF_X40_Y9_N16
\RAM1|ram~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~149_q\);

-- Location: FF_X39_Y10_N14
\RAM1|ram~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~181_q\);

-- Location: FF_X39_Y10_N44
\RAM1|ram~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~197_q\);

-- Location: FF_X39_Y10_N26
\RAM1|ram~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~165_q\);

-- Location: LABCELL_X39_Y10_N24
\RAM1|ram~654\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~654_combout\ = ( \RAM1|ram~165_q\ & ( \ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~17_combout\ & (\RAM1|ram~181_q\)) # (\ROM1|memROM~17_combout\ & ((\RAM1|ram~197_q\))) ) ) ) # ( !\RAM1|ram~165_q\ & ( \ROM1|memROM~19_combout\ & ( 
-- (!\ROM1|memROM~17_combout\ & (\RAM1|ram~181_q\)) # (\ROM1|memROM~17_combout\ & ((\RAM1|ram~197_q\))) ) ) ) # ( \RAM1|ram~165_q\ & ( !\ROM1|memROM~19_combout\ & ( (\ROM1|memROM~17_combout\) # (\RAM1|ram~149_q\) ) ) ) # ( !\RAM1|ram~165_q\ & ( 
-- !\ROM1|memROM~19_combout\ & ( (\RAM1|ram~149_q\ & !\ROM1|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~149_q\,
	datab => \RAM1|ALT_INV_ram~181_q\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \RAM1|ALT_INV_ram~197_q\,
	datae => \RAM1|ALT_INV_ram~165_q\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~654_combout\);

-- Location: FF_X31_Y11_N20
\RAM1|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~37_q\);

-- Location: FF_X32_Y10_N58
\RAM1|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~53_q\);

-- Location: FF_X31_Y11_N37
\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

-- Location: FF_X31_Y11_N26
\RAM1|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~69_q\);

-- Location: LABCELL_X31_Y11_N21
\RAM1|ram~653\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~653_combout\ = ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~69_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~53_q\ ) ) ) # ( \ROM1|memROM~17_combout\ & ( !\ROM1|memROM~19_combout\ & ( 
-- \RAM1|ram~37_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~19_combout\ & ( \RAM1|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~37_q\,
	datab => \RAM1|ALT_INV_ram~53_q\,
	datac => \RAM1|ALT_INV_ram~21_q\,
	datad => \RAM1|ALT_INV_ram~69_q\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~653_combout\);

-- Location: LABCELL_X36_Y8_N39
\RAM1|ram~657\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~657_combout\ = ( \RAM1|ram~654_combout\ & ( \RAM1|ram~653_combout\ & ( (!\ROM1|memROM~21_combout\) # ((!\ROM1|memROM~12_combout\ & ((\RAM1|ram~655_combout\))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~656_combout\))) ) ) ) # ( 
-- !\RAM1|ram~654_combout\ & ( \RAM1|ram~653_combout\ & ( (!\ROM1|memROM~12_combout\ & ((!\ROM1|memROM~21_combout\) # ((\RAM1|ram~655_combout\)))) # (\ROM1|memROM~12_combout\ & (\ROM1|memROM~21_combout\ & (\RAM1|ram~656_combout\))) ) ) ) # ( 
-- \RAM1|ram~654_combout\ & ( !\RAM1|ram~653_combout\ & ( (!\ROM1|memROM~12_combout\ & (\ROM1|memROM~21_combout\ & ((\RAM1|ram~655_combout\)))) # (\ROM1|memROM~12_combout\ & ((!\ROM1|memROM~21_combout\) # ((\RAM1|ram~656_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~654_combout\ & ( !\RAM1|ram~653_combout\ & ( (\ROM1|memROM~21_combout\ & ((!\ROM1|memROM~12_combout\ & ((\RAM1|ram~655_combout\))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~656_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \RAM1|ALT_INV_ram~656_combout\,
	datad => \RAM1|ALT_INV_ram~655_combout\,
	datae => \RAM1|ALT_INV_ram~654_combout\,
	dataf => \RAM1|ALT_INV_ram~653_combout\,
	combout => \RAM1|ram~657_combout\);

-- Location: FF_X37_Y8_N35
\RAM1|ram~285\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~285_q\);

-- Location: LABCELL_X39_Y8_N15
\RAM1|ram~413feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~413feeder_combout\ = \processador|REGA|DOUT\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|REGA|ALT_INV_DOUT\(6),
	combout => \RAM1|ram~413feeder_combout\);

-- Location: FF_X39_Y8_N16
\RAM1|ram~413\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~413feeder_combout\,
	ena => \RAM1|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~413_q\);

-- Location: FF_X34_Y9_N34
\RAM1|ram~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~301_q\);

-- Location: FF_X37_Y8_N8
\RAM1|ram~429\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~429_q\);

-- Location: MLABCELL_X37_Y8_N6
\RAM1|ram~668\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~668_combout\ = ( \RAM1|ram~429_q\ & ( \ROM1|memROM~17_combout\ & ( (\ROM1|memROM~12_combout\) # (\RAM1|ram~301_q\) ) ) ) # ( !\RAM1|ram~429_q\ & ( \ROM1|memROM~17_combout\ & ( (\RAM1|ram~301_q\ & !\ROM1|memROM~12_combout\) ) ) ) # ( 
-- \RAM1|ram~429_q\ & ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~12_combout\ & (\RAM1|ram~285_q\)) # (\ROM1|memROM~12_combout\ & ((\RAM1|ram~413_q\))) ) ) ) # ( !\RAM1|ram~429_q\ & ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~12_combout\ & 
-- (\RAM1|ram~285_q\)) # (\ROM1|memROM~12_combout\ & ((\RAM1|ram~413_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~285_q\,
	datab => \RAM1|ALT_INV_ram~413_q\,
	datac => \RAM1|ALT_INV_ram~301_q\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \RAM1|ALT_INV_ram~429_q\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~668_combout\);

-- Location: FF_X39_Y9_N43
\RAM1|ram~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~317_q\);

-- Location: MLABCELL_X42_Y10_N9
\RAM1|ram~445feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~445feeder_combout\ = ( \processador|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(6),
	combout => \RAM1|ram~445feeder_combout\);

-- Location: FF_X42_Y10_N11
\RAM1|ram~445\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~445feeder_combout\,
	ena => \RAM1|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~445_q\);

-- Location: FF_X35_Y12_N58
\RAM1|ram~333\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~333_q\);

-- Location: FF_X37_Y8_N56
\RAM1|ram~461\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~461_q\);

-- Location: MLABCELL_X37_Y8_N54
\RAM1|ram~669\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~669_combout\ = ( \RAM1|ram~461_q\ & ( \ROM1|memROM~17_combout\ & ( (\ROM1|memROM~12_combout\) # (\RAM1|ram~333_q\) ) ) ) # ( !\RAM1|ram~461_q\ & ( \ROM1|memROM~17_combout\ & ( (\RAM1|ram~333_q\ & !\ROM1|memROM~12_combout\) ) ) ) # ( 
-- \RAM1|ram~461_q\ & ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~12_combout\ & (\RAM1|ram~317_q\)) # (\ROM1|memROM~12_combout\ & ((\RAM1|ram~445_q\))) ) ) ) # ( !\RAM1|ram~461_q\ & ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~12_combout\ & 
-- (\RAM1|ram~317_q\)) # (\ROM1|memROM~12_combout\ & ((\RAM1|ram~445_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~317_q\,
	datab => \RAM1|ALT_INV_ram~445_q\,
	datac => \RAM1|ALT_INV_ram~333_q\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \RAM1|ALT_INV_ram~461_q\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~669_combout\);

-- Location: FF_X36_Y12_N28
\RAM1|ram~365\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~365_q\);

-- Location: FF_X40_Y12_N1
\RAM1|ram~477\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~477_q\);

-- Location: LABCELL_X40_Y12_N33
\RAM1|ram~349feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~349feeder_combout\ = ( \processador|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(6),
	combout => \RAM1|ram~349feeder_combout\);

-- Location: FF_X40_Y12_N35
\RAM1|ram~349\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~349feeder_combout\,
	ena => \RAM1|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~349_q\);

-- Location: FF_X36_Y12_N20
\RAM1|ram~493\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~493_q\);

-- Location: LABCELL_X39_Y10_N12
\RAM1|ram~670\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~670_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~17_combout\ & ( \RAM1|ram~493_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~17_combout\ & ( \RAM1|ram~365_q\ ) ) ) # ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~17_combout\ & 
-- ( \RAM1|ram~477_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~17_combout\ & ( \RAM1|ram~349_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~365_q\,
	datab => \RAM1|ALT_INV_ram~477_q\,
	datac => \RAM1|ALT_INV_ram~349_q\,
	datad => \RAM1|ALT_INV_ram~493_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~670_combout\);

-- Location: FF_X40_Y10_N55
\RAM1|ram~381\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~381_q\);

-- Location: FF_X34_Y12_N22
\RAM1|ram~397\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~397_q\);

-- Location: MLABCELL_X37_Y14_N42
\RAM1|ram~509feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~509feeder_combout\ = ( \processador|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(6),
	combout => \RAM1|ram~509feeder_combout\);

-- Location: FF_X37_Y14_N43
\RAM1|ram~509\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~509feeder_combout\,
	ena => \RAM1|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~509_q\);

-- Location: FF_X39_Y12_N8
\RAM1|ram~525\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~525_q\);

-- Location: LABCELL_X39_Y12_N6
\RAM1|ram~671\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~671_combout\ = ( \RAM1|ram~525_q\ & ( \ROM1|memROM~12_combout\ & ( (\RAM1|ram~509_q\) # (\ROM1|memROM~17_combout\) ) ) ) # ( !\RAM1|ram~525_q\ & ( \ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~17_combout\ & \RAM1|ram~509_q\) ) ) ) # ( 
-- \RAM1|ram~525_q\ & ( !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~17_combout\ & (\RAM1|ram~381_q\)) # (\ROM1|memROM~17_combout\ & ((\RAM1|ram~397_q\))) ) ) ) # ( !\RAM1|ram~525_q\ & ( !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~17_combout\ & 
-- (\RAM1|ram~381_q\)) # (\ROM1|memROM~17_combout\ & ((\RAM1|ram~397_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~381_q\,
	datab => \RAM1|ALT_INV_ram~397_q\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \RAM1|ALT_INV_ram~509_q\,
	datae => \RAM1|ALT_INV_ram~525_q\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~671_combout\);

-- Location: LABCELL_X36_Y8_N48
\RAM1|ram~672\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~672_combout\ = ( \RAM1|ram~670_combout\ & ( \RAM1|ram~671_combout\ & ( ((!\ROM1|memROM~19_combout\ & (\RAM1|ram~668_combout\)) # (\ROM1|memROM~19_combout\ & ((\RAM1|ram~669_combout\)))) # (\ROM1|memROM~21_combout\) ) ) ) # ( 
-- !\RAM1|ram~670_combout\ & ( \RAM1|ram~671_combout\ & ( (!\ROM1|memROM~19_combout\ & (!\ROM1|memROM~21_combout\ & (\RAM1|ram~668_combout\))) # (\ROM1|memROM~19_combout\ & (((\RAM1|ram~669_combout\)) # (\ROM1|memROM~21_combout\))) ) ) ) # ( 
-- \RAM1|ram~670_combout\ & ( !\RAM1|ram~671_combout\ & ( (!\ROM1|memROM~19_combout\ & (((\RAM1|ram~668_combout\)) # (\ROM1|memROM~21_combout\))) # (\ROM1|memROM~19_combout\ & (!\ROM1|memROM~21_combout\ & ((\RAM1|ram~669_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~670_combout\ & ( !\RAM1|ram~671_combout\ & ( (!\ROM1|memROM~21_combout\ & ((!\ROM1|memROM~19_combout\ & (\RAM1|ram~668_combout\)) # (\ROM1|memROM~19_combout\ & ((\RAM1|ram~669_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \RAM1|ALT_INV_ram~668_combout\,
	datad => \RAM1|ALT_INV_ram~669_combout\,
	datae => \RAM1|ALT_INV_ram~670_combout\,
	dataf => \RAM1|ALT_INV_ram~671_combout\,
	combout => \RAM1|ram~672_combout\);

-- Location: FF_X39_Y11_N4
\RAM1|ram~421\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~421_q\);

-- Location: LABCELL_X35_Y13_N3
\RAM1|ram~437feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~437feeder_combout\ = \processador|REGA|DOUT\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|REGA|ALT_INV_DOUT\(6),
	combout => \RAM1|ram~437feeder_combout\);

-- Location: FF_X35_Y13_N4
\RAM1|ram~437\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~437feeder_combout\,
	ena => \RAM1|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~437_q\);

-- Location: FF_X36_Y10_N22
\RAM1|ram~405\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~405_q\);

-- Location: FF_X36_Y8_N32
\RAM1|ram~453\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~453_q\);

-- Location: LABCELL_X36_Y8_N30
\RAM1|ram~659\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~659_combout\ = ( \RAM1|ram~453_q\ & ( \ROM1|memROM~17_combout\ & ( (\ROM1|memROM~19_combout\) # (\RAM1|ram~421_q\) ) ) ) # ( !\RAM1|ram~453_q\ & ( \ROM1|memROM~17_combout\ & ( (\RAM1|ram~421_q\ & !\ROM1|memROM~19_combout\) ) ) ) # ( 
-- \RAM1|ram~453_q\ & ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~19_combout\ & ((\RAM1|ram~405_q\))) # (\ROM1|memROM~19_combout\ & (\RAM1|ram~437_q\)) ) ) ) # ( !\RAM1|ram~453_q\ & ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~19_combout\ & 
-- ((\RAM1|ram~405_q\))) # (\ROM1|memROM~19_combout\ & (\RAM1|ram~437_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~421_q\,
	datab => \RAM1|ALT_INV_ram~437_q\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \RAM1|ALT_INV_ram~405_q\,
	datae => \RAM1|ALT_INV_ram~453_q\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~659_combout\);

-- Location: FF_X35_Y12_N14
\RAM1|ram~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~325_q\);

-- Location: FF_X34_Y12_N11
\RAM1|ram~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~277_q\);

-- Location: LABCELL_X32_Y10_N45
\RAM1|ram~309feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~309feeder_combout\ = ( \processador|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(6),
	combout => \RAM1|ram~309feeder_combout\);

-- Location: FF_X32_Y10_N46
\RAM1|ram~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~309feeder_combout\,
	ena => \RAM1|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~309_q\);

-- Location: FF_X36_Y8_N56
\RAM1|ram~293\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~293_q\);

-- Location: LABCELL_X36_Y8_N54
\RAM1|ram~658\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~658_combout\ = ( \RAM1|ram~293_q\ & ( \ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~19_combout\) # (\RAM1|ram~325_q\) ) ) ) # ( !\RAM1|ram~293_q\ & ( \ROM1|memROM~17_combout\ & ( (\RAM1|ram~325_q\ & \ROM1|memROM~19_combout\) ) ) ) # ( 
-- \RAM1|ram~293_q\ & ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~19_combout\ & (\RAM1|ram~277_q\)) # (\ROM1|memROM~19_combout\ & ((\RAM1|ram~309_q\))) ) ) ) # ( !\RAM1|ram~293_q\ & ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~19_combout\ & 
-- (\RAM1|ram~277_q\)) # (\ROM1|memROM~19_combout\ & ((\RAM1|ram~309_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~325_q\,
	datab => \RAM1|ALT_INV_ram~277_q\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \RAM1|ALT_INV_ram~309_q\,
	datae => \RAM1|ALT_INV_ram~293_q\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~658_combout\);

-- Location: FF_X37_Y12_N28
\RAM1|ram~501\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~501_q\);

-- Location: LABCELL_X35_Y13_N42
\RAM1|ram~469feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~469feeder_combout\ = \processador|REGA|DOUT\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|REGA|ALT_INV_DOUT\(6),
	combout => \RAM1|ram~469feeder_combout\);

-- Location: FF_X35_Y13_N43
\RAM1|ram~469\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~469feeder_combout\,
	ena => \RAM1|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~469_q\);

-- Location: FF_X39_Y12_N25
\RAM1|ram~517\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~517_q\);

-- Location: LABCELL_X39_Y12_N0
\RAM1|ram~485feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~485feeder_combout\ = ( \processador|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(6),
	combout => \RAM1|ram~485feeder_combout\);

-- Location: FF_X39_Y12_N2
\RAM1|ram~485\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~485feeder_combout\,
	ena => \RAM1|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~485_q\);

-- Location: LABCELL_X39_Y12_N57
\RAM1|ram~661\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~661_combout\ = ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~517_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~501_q\ ) ) ) # ( \ROM1|memROM~17_combout\ & ( !\ROM1|memROM~19_combout\ & 
-- ( \RAM1|ram~485_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~19_combout\ & ( \RAM1|ram~469_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~501_q\,
	datab => \RAM1|ALT_INV_ram~469_q\,
	datac => \RAM1|ALT_INV_ram~517_q\,
	datad => \RAM1|ALT_INV_ram~485_q\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~661_combout\);

-- Location: FF_X35_Y14_N50
\RAM1|ram~373\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~373_q\);

-- Location: FF_X34_Y13_N34
\RAM1|ram~357\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~357_q\);

-- Location: FF_X35_Y14_N14
\RAM1|ram~389\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~389_q\);

-- Location: FF_X35_Y14_N2
\RAM1|ram~341\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~341_q\);

-- Location: LABCELL_X35_Y14_N27
\RAM1|ram~660\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~660_combout\ = ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~389_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~373_q\ ) ) ) # ( \ROM1|memROM~17_combout\ & ( !\ROM1|memROM~19_combout\ & 
-- ( \RAM1|ram~357_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~19_combout\ & ( \RAM1|ram~341_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~373_q\,
	datab => \RAM1|ALT_INV_ram~357_q\,
	datac => \RAM1|ALT_INV_ram~389_q\,
	datad => \RAM1|ALT_INV_ram~341_q\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~660_combout\);

-- Location: LABCELL_X36_Y8_N24
\RAM1|ram~662\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~662_combout\ = ( \RAM1|ram~661_combout\ & ( \RAM1|ram~660_combout\ & ( ((!\ROM1|memROM~12_combout\ & ((\RAM1|ram~658_combout\))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~659_combout\))) # (\ROM1|memROM~21_combout\) ) ) ) # ( 
-- !\RAM1|ram~661_combout\ & ( \RAM1|ram~660_combout\ & ( (!\ROM1|memROM~12_combout\ & (((\ROM1|memROM~21_combout\) # (\RAM1|ram~658_combout\)))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~659_combout\ & ((!\ROM1|memROM~21_combout\)))) ) ) ) # ( 
-- \RAM1|ram~661_combout\ & ( !\RAM1|ram~660_combout\ & ( (!\ROM1|memROM~12_combout\ & (((\RAM1|ram~658_combout\ & !\ROM1|memROM~21_combout\)))) # (\ROM1|memROM~12_combout\ & (((\ROM1|memROM~21_combout\)) # (\RAM1|ram~659_combout\))) ) ) ) # ( 
-- !\RAM1|ram~661_combout\ & ( !\RAM1|ram~660_combout\ & ( (!\ROM1|memROM~21_combout\ & ((!\ROM1|memROM~12_combout\ & ((\RAM1|ram~658_combout\))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~659_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110110101010100011011101010100001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \RAM1|ALT_INV_ram~659_combout\,
	datac => \RAM1|ALT_INV_ram~658_combout\,
	datad => \ROM1|ALT_INV_memROM~21_combout\,
	datae => \RAM1|ALT_INV_ram~661_combout\,
	dataf => \RAM1|ALT_INV_ram~660_combout\,
	combout => \RAM1|ram~662_combout\);

-- Location: LABCELL_X36_Y8_N42
\RAM1|ram~673\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~673_combout\ = ( \ROM1|memROM~23_combout\ & ( \RAM1|ram~662_combout\ & ( (!\ROM1|memROM~15_combout\) # (\RAM1|ram~672_combout\) ) ) ) # ( !\ROM1|memROM~23_combout\ & ( \RAM1|ram~662_combout\ & ( (!\ROM1|memROM~15_combout\ & 
-- ((\RAM1|ram~657_combout\))) # (\ROM1|memROM~15_combout\ & (\RAM1|ram~667_combout\)) ) ) ) # ( \ROM1|memROM~23_combout\ & ( !\RAM1|ram~662_combout\ & ( (\RAM1|ram~672_combout\ & \ROM1|memROM~15_combout\) ) ) ) # ( !\ROM1|memROM~23_combout\ & ( 
-- !\RAM1|ram~662_combout\ & ( (!\ROM1|memROM~15_combout\ & ((\RAM1|ram~657_combout\))) # (\ROM1|memROM~15_combout\ & (\RAM1|ram~667_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~667_combout\,
	datab => \RAM1|ALT_INV_ram~657_combout\,
	datac => \RAM1|ALT_INV_ram~672_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~23_combout\,
	dataf => \RAM1|ALT_INV_ram~662_combout\,
	combout => \RAM1|ram~673_combout\);

-- Location: LABCELL_X35_Y9_N33
\SW_8|saida[6]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_8|saida[6]~14_combout\ = ( \SW[6]~input_o\ & ( \RAM1|ram~673_combout\ & ( !\SW_8|saida[1]~8_combout\ ) ) ) # ( !\SW[6]~input_o\ & ( \RAM1|ram~673_combout\ & ( (!\comb~6_combout\ & !\SW_8|saida[1]~8_combout\) ) ) ) # ( \SW[6]~input_o\ & ( 
-- !\RAM1|ram~673_combout\ & ( (!\SW_8|saida[1]~8_combout\ & !\RAM1|dado_out~0_combout\) ) ) ) # ( !\SW[6]~input_o\ & ( !\RAM1|ram~673_combout\ & ( (!\comb~6_combout\ & (!\SW_8|saida[1]~8_combout\ & !\RAM1|dado_out~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000111100000000000011000000110000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~6_combout\,
	datac => \SW_8|ALT_INV_saida[1]~8_combout\,
	datad => \RAM1|ALT_INV_dado_out~0_combout\,
	datae => \ALT_INV_SW[6]~input_o\,
	dataf => \RAM1|ALT_INV_ram~673_combout\,
	combout => \SW_8|saida[6]~14_combout\);

-- Location: LABCELL_X35_Y9_N21
\processador|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~25_sumout\ = SUM(( \processador|REGA|DOUT\(6) ) + ( (!\processador|decoderInstru1|Equal11~3_combout\ & (((!\SW_8|saida[6]~14_combout\)))) # (\processador|decoderInstru1|Equal11~3_combout\ & (((!\ROM1|memROM~29_combout\)) # 
-- (\processador|PC|DOUT\(8)))) ) + ( \processador|ULA1|Add1~22\ ))
-- \processador|ULA1|Add1~26\ = CARRY(( \processador|REGA|DOUT\(6) ) + ( (!\processador|decoderInstru1|Equal11~3_combout\ & (((!\SW_8|saida[6]~14_combout\)))) # (\processador|decoderInstru1|Equal11~3_combout\ & (((!\ROM1|memROM~29_combout\)) # 
-- (\processador|PC|DOUT\(8)))) ) + ( \processador|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~3_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \SW_8|ALT_INV_saida[6]~14_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(6),
	dataf => \ROM1|ALT_INV_memROM~29_combout\,
	cin => \processador|ULA1|Add1~22\,
	sumout => \processador|ULA1|Add1~25_sumout\,
	cout => \processador|ULA1|Add1~26\);

-- Location: LABCELL_X41_Y11_N9
\processador|decoderInstru1|Equal11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal11~1_combout\ = ( !\ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~0_combout\ & (!\ROM1|memROM~3_combout\ & (\ROM1|memROM~1_combout\ & \ROM1|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \processador|decoderInstru1|Equal11~1_combout\);

-- Location: LABCELL_X35_Y9_N42
\processador|FLAG|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|FLAG|DOUT~1_combout\ = ( !\processador|decoderInstru1|Equal11~1_combout\ & ( \processador|ULA1|Add1~9_sumout\ & ( \processador|FLAG|DOUT~q\ ) ) ) # ( \processador|decoderInstru1|Equal11~1_combout\ & ( !\processador|ULA1|Add1~9_sumout\ & ( 
-- (!\processador|ULA1|Add1~1_sumout\ & (!\processador|ULA1|Add1~5_sumout\ & !\processador|ULA1|Add1~13_sumout\)) ) ) ) # ( !\processador|decoderInstru1|Equal11~1_combout\ & ( !\processador|ULA1|Add1~9_sumout\ & ( \processador|FLAG|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111100010000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA1|ALT_INV_Add1~1_sumout\,
	datab => \processador|ULA1|ALT_INV_Add1~5_sumout\,
	datac => \processador|FLAG|ALT_INV_DOUT~q\,
	datad => \processador|ULA1|ALT_INV_Add1~13_sumout\,
	datae => \processador|decoderInstru1|ALT_INV_Equal11~1_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \processador|FLAG|DOUT~1_combout\);

-- Location: IOIBUF_X34_Y0_N35
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: FF_X37_Y12_N47
\RAM1|ram~438\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~438_q\);

-- Location: LABCELL_X32_Y12_N21
\RAM1|ram~198feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~198feeder_combout\ = ( \processador|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(7),
	combout => \RAM1|ram~198feeder_combout\);

-- Location: FF_X32_Y12_N22
\RAM1|ram~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~198feeder_combout\,
	ena => \RAM1|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~198_q\);

-- Location: MLABCELL_X42_Y12_N36
\RAM1|ram~454feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~454feeder_combout\ = ( \processador|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(7),
	combout => \RAM1|ram~454feeder_combout\);

-- Location: FF_X42_Y12_N38
\RAM1|ram~454\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~454feeder_combout\,
	ena => \RAM1|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~454_q\);

-- Location: FF_X37_Y13_N10
\RAM1|ram~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~182_q\);

-- Location: LABCELL_X36_Y12_N24
\RAM1|ram~685\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~685_combout\ = ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~23_combout\ & ( \RAM1|ram~454_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( \ROM1|memROM~23_combout\ & ( \RAM1|ram~438_q\ ) ) ) # ( \ROM1|memROM~17_combout\ & ( !\ROM1|memROM~23_combout\ & 
-- ( \RAM1|ram~198_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~23_combout\ & ( \RAM1|ram~182_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~438_q\,
	datab => \RAM1|ALT_INV_ram~198_q\,
	datac => \RAM1|ALT_INV_ram~454_q\,
	datad => \RAM1|ALT_INV_ram~182_q\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~685_combout\);

-- Location: FF_X39_Y10_N1
\RAM1|ram~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~166_q\);

-- Location: FF_X39_Y11_N14
\RAM1|ram~406\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~406_q\);

-- Location: FF_X40_Y9_N49
\RAM1|ram~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~150_q\);

-- Location: FF_X39_Y11_N38
\RAM1|ram~422\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~422_q\);

-- Location: LABCELL_X39_Y11_N36
\RAM1|ram~684\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~684_combout\ = ( \RAM1|ram~422_q\ & ( \ROM1|memROM~23_combout\ & ( (\ROM1|memROM~17_combout\) # (\RAM1|ram~406_q\) ) ) ) # ( !\RAM1|ram~422_q\ & ( \ROM1|memROM~23_combout\ & ( (\RAM1|ram~406_q\ & !\ROM1|memROM~17_combout\) ) ) ) # ( 
-- \RAM1|ram~422_q\ & ( !\ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~17_combout\ & ((\RAM1|ram~150_q\))) # (\ROM1|memROM~17_combout\ & (\RAM1|ram~166_q\)) ) ) ) # ( !\RAM1|ram~422_q\ & ( !\ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~17_combout\ & 
-- ((\RAM1|ram~150_q\))) # (\ROM1|memROM~17_combout\ & (\RAM1|ram~166_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~166_q\,
	datab => \RAM1|ALT_INV_ram~406_q\,
	datac => \RAM1|ALT_INV_ram~150_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \RAM1|ALT_INV_ram~422_q\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~684_combout\);

-- Location: FF_X34_Y11_N4
\RAM1|ram~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~262_q\);

-- Location: FF_X34_Y11_N47
\RAM1|ram~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~246_q\);

-- Location: FF_X37_Y12_N58
\RAM1|ram~502\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~502_q\);

-- Location: FF_X37_Y13_N38
\RAM1|ram~518\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~518_q\);

-- Location: MLABCELL_X37_Y13_N36
\RAM1|ram~687\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~687_combout\ = ( \RAM1|ram~518_q\ & ( \ROM1|memROM~23_combout\ & ( (\RAM1|ram~502_q\) # (\ROM1|memROM~17_combout\) ) ) ) # ( !\RAM1|ram~518_q\ & ( \ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~17_combout\ & \RAM1|ram~502_q\) ) ) ) # ( 
-- \RAM1|ram~518_q\ & ( !\ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~17_combout\ & ((\RAM1|ram~246_q\))) # (\ROM1|memROM~17_combout\ & (\RAM1|ram~262_q\)) ) ) ) # ( !\RAM1|ram~518_q\ & ( !\ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~17_combout\ & 
-- ((\RAM1|ram~246_q\))) # (\ROM1|memROM~17_combout\ & (\RAM1|ram~262_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~262_q\,
	datab => \RAM1|ALT_INV_ram~246_q\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \RAM1|ALT_INV_ram~502_q\,
	datae => \RAM1|ALT_INV_ram~518_q\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~687_combout\);

-- Location: LABCELL_X32_Y9_N18
\RAM1|ram~214feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~214feeder_combout\ = ( \processador|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(7),
	combout => \RAM1|ram~214feeder_combout\);

-- Location: FF_X32_Y9_N19
\RAM1|ram~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~214feeder_combout\,
	ena => \RAM1|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~214_q\);

-- Location: LABCELL_X32_Y12_N51
\RAM1|ram~470feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~470feeder_combout\ = ( \processador|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(7),
	combout => \RAM1|ram~470feeder_combout\);

-- Location: FF_X32_Y12_N52
\RAM1|ram~470\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~470feeder_combout\,
	ena => \RAM1|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~470_q\);

-- Location: FF_X32_Y11_N38
\RAM1|ram~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~230_q\);

-- Location: FF_X32_Y12_N38
\RAM1|ram~486\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~486_q\);

-- Location: LABCELL_X32_Y12_N36
\RAM1|ram~686\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~686_combout\ = ( \RAM1|ram~486_q\ & ( \ROM1|memROM~17_combout\ & ( (\RAM1|ram~230_q\) # (\ROM1|memROM~23_combout\) ) ) ) # ( !\RAM1|ram~486_q\ & ( \ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~23_combout\ & \RAM1|ram~230_q\) ) ) ) # ( 
-- \RAM1|ram~486_q\ & ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~23_combout\ & (\RAM1|ram~214_q\)) # (\ROM1|memROM~23_combout\ & ((\RAM1|ram~470_q\))) ) ) ) # ( !\RAM1|ram~486_q\ & ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~23_combout\ & 
-- (\RAM1|ram~214_q\)) # (\ROM1|memROM~23_combout\ & ((\RAM1|ram~470_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~214_q\,
	datab => \RAM1|ALT_INV_ram~470_q\,
	datac => \ROM1|ALT_INV_memROM~23_combout\,
	datad => \RAM1|ALT_INV_ram~230_q\,
	datae => \RAM1|ALT_INV_ram~486_q\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~686_combout\);

-- Location: LABCELL_X36_Y12_N36
\RAM1|ram~688\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~688_combout\ = ( \RAM1|ram~687_combout\ & ( \RAM1|ram~686_combout\ & ( ((!\ROM1|memROM~19_combout\ & ((\RAM1|ram~684_combout\))) # (\ROM1|memROM~19_combout\ & (\RAM1|ram~685_combout\))) # (\ROM1|memROM~21_combout\) ) ) ) # ( 
-- !\RAM1|ram~687_combout\ & ( \RAM1|ram~686_combout\ & ( (!\ROM1|memROM~21_combout\ & ((!\ROM1|memROM~19_combout\ & ((\RAM1|ram~684_combout\))) # (\ROM1|memROM~19_combout\ & (\RAM1|ram~685_combout\)))) # (\ROM1|memROM~21_combout\ & 
-- (!\ROM1|memROM~19_combout\)) ) ) ) # ( \RAM1|ram~687_combout\ & ( !\RAM1|ram~686_combout\ & ( (!\ROM1|memROM~21_combout\ & ((!\ROM1|memROM~19_combout\ & ((\RAM1|ram~684_combout\))) # (\ROM1|memROM~19_combout\ & (\RAM1|ram~685_combout\)))) # 
-- (\ROM1|memROM~21_combout\ & (\ROM1|memROM~19_combout\)) ) ) ) # ( !\RAM1|ram~687_combout\ & ( !\RAM1|ram~686_combout\ & ( (!\ROM1|memROM~21_combout\ & ((!\ROM1|memROM~19_combout\ & ((\RAM1|ram~684_combout\))) # (\ROM1|memROM~19_combout\ & 
-- (\RAM1|ram~685_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~21_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \RAM1|ALT_INV_ram~685_combout\,
	datad => \RAM1|ALT_INV_ram~684_combout\,
	datae => \RAM1|ALT_INV_ram~687_combout\,
	dataf => \RAM1|ALT_INV_ram~686_combout\,
	combout => \RAM1|ram~688_combout\);

-- Location: FF_X35_Y14_N23
\RAM1|ram~390\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~390_q\);

-- Location: FF_X35_Y10_N47
\RAM1|ram~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~134_q\);

-- Location: LABCELL_X35_Y12_N39
\RAM1|ram~326feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~326feeder_combout\ = ( \processador|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(7),
	combout => \RAM1|ram~326feeder_combout\);

-- Location: FF_X35_Y12_N40
\RAM1|ram~326\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~326feeder_combout\,
	ena => \RAM1|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~326_q\);

-- Location: LABCELL_X31_Y10_N42
\RAM1|ram~70feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~70feeder_combout\ = \processador|REGA|DOUT\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|REGA|ALT_INV_DOUT\(7),
	combout => \RAM1|ram~70feeder_combout\);

-- Location: FF_X31_Y10_N43
\RAM1|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~70feeder_combout\,
	ena => \RAM1|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~70_q\);

-- Location: LABCELL_X35_Y14_N45
\RAM1|ram~677\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~677_combout\ = ( \ROM1|memROM~21_combout\ & ( \ROM1|memROM~23_combout\ & ( \RAM1|ram~390_q\ ) ) ) # ( !\ROM1|memROM~21_combout\ & ( \ROM1|memROM~23_combout\ & ( \RAM1|ram~326_q\ ) ) ) # ( \ROM1|memROM~21_combout\ & ( !\ROM1|memROM~23_combout\ & 
-- ( \RAM1|ram~134_q\ ) ) ) # ( !\ROM1|memROM~21_combout\ & ( !\ROM1|memROM~23_combout\ & ( \RAM1|ram~70_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~390_q\,
	datab => \RAM1|ALT_INV_ram~134_q\,
	datac => \RAM1|ALT_INV_ram~326_q\,
	datad => \RAM1|ALT_INV_ram~70_q\,
	datae => \ROM1|ALT_INV_memROM~21_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~677_combout\);

-- Location: FF_X34_Y12_N1
\RAM1|ram~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~278_q\);

-- Location: FF_X43_Y10_N40
\RAM1|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~86_q\);

-- Location: LABCELL_X31_Y10_N39
\RAM1|ram~22feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~22feeder_combout\ = \processador|REGA|DOUT\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|REGA|ALT_INV_DOUT\(7),
	combout => \RAM1|ram~22feeder_combout\);

-- Location: FF_X31_Y10_N40
\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~22feeder_combout\,
	ena => \RAM1|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

-- Location: FF_X35_Y14_N5
\RAM1|ram~342\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~342_q\);

-- Location: LABCELL_X35_Y14_N3
\RAM1|ram~674\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~674_combout\ = ( \RAM1|ram~342_q\ & ( \ROM1|memROM~21_combout\ & ( (\ROM1|memROM~23_combout\) # (\RAM1|ram~86_q\) ) ) ) # ( !\RAM1|ram~342_q\ & ( \ROM1|memROM~21_combout\ & ( (\RAM1|ram~86_q\ & !\ROM1|memROM~23_combout\) ) ) ) # ( 
-- \RAM1|ram~342_q\ & ( !\ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~23_combout\ & ((\RAM1|ram~22_q\))) # (\ROM1|memROM~23_combout\ & (\RAM1|ram~278_q\)) ) ) ) # ( !\RAM1|ram~342_q\ & ( !\ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~23_combout\ & 
-- ((\RAM1|ram~22_q\))) # (\ROM1|memROM~23_combout\ & (\RAM1|ram~278_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~278_q\,
	datab => \RAM1|ALT_INV_ram~86_q\,
	datac => \RAM1|ALT_INV_ram~22_q\,
	datad => \ROM1|ALT_INV_memROM~23_combout\,
	datae => \RAM1|ALT_INV_ram~342_q\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~674_combout\);

-- Location: FF_X41_Y10_N37
\RAM1|ram~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~118_q\);

-- Location: LABCELL_X32_Y10_N15
\RAM1|ram~310feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~310feeder_combout\ = \processador|REGA|DOUT\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|REGA|ALT_INV_DOUT\(7),
	combout => \RAM1|ram~310feeder_combout\);

-- Location: FF_X32_Y10_N16
\RAM1|ram~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~310feeder_combout\,
	ena => \RAM1|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~310_q\);

-- Location: LABCELL_X32_Y10_N9
\RAM1|ram~54feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~54feeder_combout\ = \processador|REGA|DOUT\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|REGA|ALT_INV_DOUT\(7),
	combout => \RAM1|ram~54feeder_combout\);

-- Location: FF_X32_Y10_N11
\RAM1|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~54feeder_combout\,
	ena => \RAM1|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~54_q\);

-- Location: FF_X35_Y14_N53
\RAM1|ram~374\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~374_q\);

-- Location: LABCELL_X35_Y14_N51
\RAM1|ram~675\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~675_combout\ = ( \RAM1|ram~374_q\ & ( \ROM1|memROM~21_combout\ & ( (\ROM1|memROM~23_combout\) # (\RAM1|ram~118_q\) ) ) ) # ( !\RAM1|ram~374_q\ & ( \ROM1|memROM~21_combout\ & ( (\RAM1|ram~118_q\ & !\ROM1|memROM~23_combout\) ) ) ) # ( 
-- \RAM1|ram~374_q\ & ( !\ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~23_combout\ & ((\RAM1|ram~54_q\))) # (\ROM1|memROM~23_combout\ & (\RAM1|ram~310_q\)) ) ) ) # ( !\RAM1|ram~374_q\ & ( !\ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~23_combout\ & 
-- ((\RAM1|ram~54_q\))) # (\ROM1|memROM~23_combout\ & (\RAM1|ram~310_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~118_q\,
	datab => \RAM1|ALT_INV_ram~310_q\,
	datac => \RAM1|ALT_INV_ram~54_q\,
	datad => \ROM1|ALT_INV_memROM~23_combout\,
	datae => \RAM1|ALT_INV_ram~374_q\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~675_combout\);

-- Location: FF_X31_Y11_N46
\RAM1|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~38_q\);

-- Location: FF_X41_Y11_N49
\RAM1|ram~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~294_q\);

-- Location: FF_X32_Y11_N32
\RAM1|ram~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~102_q\);

-- Location: FF_X32_Y11_N50
\RAM1|ram~358\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~358_q\);

-- Location: LABCELL_X32_Y11_N48
\RAM1|ram~676\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~676_combout\ = ( \RAM1|ram~358_q\ & ( \ROM1|memROM~21_combout\ & ( (\RAM1|ram~102_q\) # (\ROM1|memROM~23_combout\) ) ) ) # ( !\RAM1|ram~358_q\ & ( \ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~23_combout\ & \RAM1|ram~102_q\) ) ) ) # ( 
-- \RAM1|ram~358_q\ & ( !\ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~23_combout\ & (\RAM1|ram~38_q\)) # (\ROM1|memROM~23_combout\ & ((\RAM1|ram~294_q\))) ) ) ) # ( !\RAM1|ram~358_q\ & ( !\ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~23_combout\ & 
-- (\RAM1|ram~38_q\)) # (\ROM1|memROM~23_combout\ & ((\RAM1|ram~294_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~38_q\,
	datab => \RAM1|ALT_INV_ram~294_q\,
	datac => \ROM1|ALT_INV_memROM~23_combout\,
	datad => \RAM1|ALT_INV_ram~102_q\,
	datae => \RAM1|ALT_INV_ram~358_q\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~676_combout\);

-- Location: LABCELL_X36_Y12_N6
\RAM1|ram~678\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~678_combout\ = ( \RAM1|ram~675_combout\ & ( \RAM1|ram~676_combout\ & ( (!\ROM1|memROM~17_combout\ & (((\RAM1|ram~674_combout\)) # (\ROM1|memROM~19_combout\))) # (\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~19_combout\) # 
-- ((\RAM1|ram~677_combout\)))) ) ) ) # ( !\RAM1|ram~675_combout\ & ( \RAM1|ram~676_combout\ & ( (!\ROM1|memROM~17_combout\ & (!\ROM1|memROM~19_combout\ & ((\RAM1|ram~674_combout\)))) # (\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~19_combout\) # 
-- ((\RAM1|ram~677_combout\)))) ) ) ) # ( \RAM1|ram~675_combout\ & ( !\RAM1|ram~676_combout\ & ( (!\ROM1|memROM~17_combout\ & (((\RAM1|ram~674_combout\)) # (\ROM1|memROM~19_combout\))) # (\ROM1|memROM~17_combout\ & (\ROM1|memROM~19_combout\ & 
-- (\RAM1|ram~677_combout\))) ) ) ) # ( !\RAM1|ram~675_combout\ & ( !\RAM1|ram~676_combout\ & ( (!\ROM1|memROM~17_combout\ & (!\ROM1|memROM~19_combout\ & ((\RAM1|ram~674_combout\)))) # (\ROM1|memROM~17_combout\ & (\ROM1|memROM~19_combout\ & 
-- (\RAM1|ram~677_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001001000111010101101000101110011010110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \RAM1|ALT_INV_ram~677_combout\,
	datad => \RAM1|ALT_INV_ram~674_combout\,
	datae => \RAM1|ALT_INV_ram~675_combout\,
	dataf => \RAM1|ALT_INV_ram~676_combout\,
	combout => \RAM1|ram~678_combout\);

-- Location: FF_X36_Y7_N2
\RAM1|ram~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~174_q\);

-- Location: FF_X36_Y12_N1
\RAM1|ram~494\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~494_q\);

-- Location: FF_X37_Y8_N22
\RAM1|ram~430\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~430_q\);

-- Location: FF_X36_Y12_N59
\RAM1|ram~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~238_q\);

-- Location: LABCELL_X35_Y12_N42
\RAM1|ram~691\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~691_combout\ = ( \ROM1|memROM~23_combout\ & ( \ROM1|memROM~21_combout\ & ( \RAM1|ram~494_q\ ) ) ) # ( !\ROM1|memROM~23_combout\ & ( \ROM1|memROM~21_combout\ & ( \RAM1|ram~238_q\ ) ) ) # ( \ROM1|memROM~23_combout\ & ( !\ROM1|memROM~21_combout\ & 
-- ( \RAM1|ram~430_q\ ) ) ) # ( !\ROM1|memROM~23_combout\ & ( !\ROM1|memROM~21_combout\ & ( \RAM1|ram~174_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~174_q\,
	datab => \RAM1|ALT_INV_ram~494_q\,
	datac => \RAM1|ALT_INV_ram~430_q\,
	datad => \RAM1|ALT_INV_ram~238_q\,
	datae => \ROM1|ALT_INV_memROM~23_combout\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~691_combout\);

-- Location: LABCELL_X36_Y7_N21
\RAM1|ram~206feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~206feeder_combout\ = ( \processador|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(7),
	combout => \RAM1|ram~206feeder_combout\);

-- Location: FF_X36_Y7_N23
\RAM1|ram~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~206feeder_combout\,
	ena => \RAM1|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~206_q\);

-- Location: MLABCELL_X37_Y14_N36
\RAM1|ram~462feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~462feeder_combout\ = ( \processador|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(7),
	combout => \RAM1|ram~462feeder_combout\);

-- Location: FF_X37_Y14_N37
\RAM1|ram~462\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~462feeder_combout\,
	ena => \RAM1|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~462_q\);

-- Location: FF_X37_Y7_N59
\RAM1|ram~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~270_q\);

-- Location: FF_X37_Y14_N32
\RAM1|ram~526\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~526_q\);

-- Location: MLABCELL_X37_Y14_N30
\RAM1|ram~692\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~692_combout\ = ( \RAM1|ram~526_q\ & ( \ROM1|memROM~21_combout\ & ( (\ROM1|memROM~23_combout\) # (\RAM1|ram~270_q\) ) ) ) # ( !\RAM1|ram~526_q\ & ( \ROM1|memROM~21_combout\ & ( (\RAM1|ram~270_q\ & !\ROM1|memROM~23_combout\) ) ) ) # ( 
-- \RAM1|ram~526_q\ & ( !\ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~23_combout\ & (\RAM1|ram~206_q\)) # (\ROM1|memROM~23_combout\ & ((\RAM1|ram~462_q\))) ) ) ) # ( !\RAM1|ram~526_q\ & ( !\ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~23_combout\ & 
-- (\RAM1|ram~206_q\)) # (\ROM1|memROM~23_combout\ & ((\RAM1|ram~462_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~206_q\,
	datab => \RAM1|ALT_INV_ram~462_q\,
	datac => \RAM1|ALT_INV_ram~270_q\,
	datad => \ROM1|ALT_INV_memROM~23_combout\,
	datae => \RAM1|ALT_INV_ram~526_q\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~692_combout\);

-- Location: FF_X37_Y14_N2
\RAM1|ram~510\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~510_q\);

-- Location: FF_X41_Y10_N34
\RAM1|ram~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~254_q\);

-- Location: LABCELL_X36_Y14_N33
\RAM1|ram~446feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~446feeder_combout\ = ( \processador|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(7),
	combout => \RAM1|ram~446feeder_combout\);

-- Location: FF_X36_Y14_N34
\RAM1|ram~446\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~446feeder_combout\,
	ena => \RAM1|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~446_q\);

-- Location: FF_X40_Y9_N34
\RAM1|ram~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~190_q\);

-- Location: MLABCELL_X37_Y14_N3
\RAM1|ram~690\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~690_combout\ = ( \ROM1|memROM~23_combout\ & ( \ROM1|memROM~21_combout\ & ( \RAM1|ram~510_q\ ) ) ) # ( !\ROM1|memROM~23_combout\ & ( \ROM1|memROM~21_combout\ & ( \RAM1|ram~254_q\ ) ) ) # ( \ROM1|memROM~23_combout\ & ( !\ROM1|memROM~21_combout\ & 
-- ( \RAM1|ram~446_q\ ) ) ) # ( !\ROM1|memROM~23_combout\ & ( !\ROM1|memROM~21_combout\ & ( \RAM1|ram~190_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~510_q\,
	datab => \RAM1|ALT_INV_ram~254_q\,
	datac => \RAM1|ALT_INV_ram~446_q\,
	datad => \RAM1|ALT_INV_ram~190_q\,
	datae => \ROM1|ALT_INV_memROM~23_combout\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~690_combout\);

-- Location: MLABCELL_X42_Y12_N6
\RAM1|ram~414feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~414feeder_combout\ = ( \processador|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(7),
	combout => \RAM1|ram~414feeder_combout\);

-- Location: FF_X42_Y12_N7
\RAM1|ram~414\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~414feeder_combout\,
	ena => \RAM1|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~414_q\);

-- Location: LABCELL_X40_Y9_N57
\RAM1|ram~158feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~158feeder_combout\ = ( \processador|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(7),
	combout => \RAM1|ram~158feeder_combout\);

-- Location: FF_X40_Y9_N58
\RAM1|ram~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~158feeder_combout\,
	ena => \RAM1|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~158_q\);

-- Location: LABCELL_X41_Y12_N18
\RAM1|ram~222feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~222feeder_combout\ = ( \processador|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(7),
	combout => \RAM1|ram~222feeder_combout\);

-- Location: FF_X41_Y12_N20
\RAM1|ram~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \RAM1|ram~222feeder_combout\,
	ena => \RAM1|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~222_q\);

-- Location: FF_X40_Y12_N50
\RAM1|ram~478\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~478_q\);

-- Location: LABCELL_X40_Y12_N48
\RAM1|ram~689\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~689_combout\ = ( \RAM1|ram~478_q\ & ( \ROM1|memROM~21_combout\ & ( (\RAM1|ram~222_q\) # (\ROM1|memROM~23_combout\) ) ) ) # ( !\RAM1|ram~478_q\ & ( \ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~23_combout\ & \RAM1|ram~222_q\) ) ) ) # ( 
-- \RAM1|ram~478_q\ & ( !\ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~23_combout\ & ((\RAM1|ram~158_q\))) # (\ROM1|memROM~23_combout\ & (\RAM1|ram~414_q\)) ) ) ) # ( !\RAM1|ram~478_q\ & ( !\ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~23_combout\ & 
-- ((\RAM1|ram~158_q\))) # (\ROM1|memROM~23_combout\ & (\RAM1|ram~414_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~414_q\,
	datab => \RAM1|ALT_INV_ram~158_q\,
	datac => \ROM1|ALT_INV_memROM~23_combout\,
	datad => \RAM1|ALT_INV_ram~222_q\,
	datae => \RAM1|ALT_INV_ram~478_q\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~689_combout\);

-- Location: LABCELL_X36_Y12_N51
\RAM1|ram~693\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~693_combout\ = ( \RAM1|ram~690_combout\ & ( \RAM1|ram~689_combout\ & ( (!\ROM1|memROM~17_combout\) # ((!\ROM1|memROM~19_combout\ & (\RAM1|ram~691_combout\)) # (\ROM1|memROM~19_combout\ & ((\RAM1|ram~692_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~690_combout\ & ( \RAM1|ram~689_combout\ & ( (!\ROM1|memROM~17_combout\ & (((!\ROM1|memROM~19_combout\)))) # (\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~19_combout\ & (\RAM1|ram~691_combout\)) # (\ROM1|memROM~19_combout\ & 
-- ((\RAM1|ram~692_combout\))))) ) ) ) # ( \RAM1|ram~690_combout\ & ( !\RAM1|ram~689_combout\ & ( (!\ROM1|memROM~17_combout\ & (((\ROM1|memROM~19_combout\)))) # (\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~19_combout\ & (\RAM1|ram~691_combout\)) # 
-- (\ROM1|memROM~19_combout\ & ((\RAM1|ram~692_combout\))))) ) ) ) # ( !\RAM1|ram~690_combout\ & ( !\RAM1|ram~689_combout\ & ( (\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~19_combout\ & (\RAM1|ram~691_combout\)) # (\ROM1|memROM~19_combout\ & 
-- ((\RAM1|ram~692_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100011010111110111011000001011011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \RAM1|ALT_INV_ram~691_combout\,
	datac => \RAM1|ALT_INV_ram~692_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \RAM1|ALT_INV_ram~690_combout\,
	dataf => \RAM1|ALT_INV_ram~689_combout\,
	combout => \RAM1|ram~693_combout\);

-- Location: FF_X36_Y14_N41
\RAM1|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~62_q\);

-- Location: FF_X37_Y8_N32
\RAM1|ram~286\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~286_q\);

-- Location: FF_X37_Y7_N37
\RAM1|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~30_q\);

-- Location: FF_X36_Y14_N5
\RAM1|ram~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~318_q\);

-- Location: LABCELL_X36_Y14_N3
\RAM1|ram~679\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~679_combout\ = ( \RAM1|ram~318_q\ & ( \ROM1|memROM~23_combout\ & ( (\ROM1|memROM~19_combout\) # (\RAM1|ram~286_q\) ) ) ) # ( !\RAM1|ram~318_q\ & ( \ROM1|memROM~23_combout\ & ( (\RAM1|ram~286_q\ & !\ROM1|memROM~19_combout\) ) ) ) # ( 
-- \RAM1|ram~318_q\ & ( !\ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~19_combout\ & ((\RAM1|ram~30_q\))) # (\ROM1|memROM~19_combout\ & (\RAM1|ram~62_q\)) ) ) ) # ( !\RAM1|ram~318_q\ & ( !\ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~19_combout\ & 
-- ((\RAM1|ram~30_q\))) # (\ROM1|memROM~19_combout\ & (\RAM1|ram~62_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~62_q\,
	datab => \RAM1|ALT_INV_ram~286_q\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \RAM1|ALT_INV_ram~30_q\,
	datae => \RAM1|ALT_INV_ram~318_q\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~679_combout\);

-- Location: FF_X36_Y12_N35
\RAM1|ram~366\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~366_q\);

-- Location: FF_X34_Y8_N35
\RAM1|ram~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~142_q\);

-- Location: FF_X34_Y14_N20
\RAM1|ram~398\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~398_q\);

-- Location: FF_X34_Y8_N16
\RAM1|ram~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~110_q\);

-- Location: MLABCELL_X34_Y12_N9
\RAM1|ram~682\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~682_combout\ = ( \ROM1|memROM~19_combout\ & ( \ROM1|memROM~23_combout\ & ( \RAM1|ram~398_q\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( \ROM1|memROM~23_combout\ & ( \RAM1|ram~366_q\ ) ) ) # ( \ROM1|memROM~19_combout\ & ( !\ROM1|memROM~23_combout\ & 
-- ( \RAM1|ram~142_q\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( !\ROM1|memROM~23_combout\ & ( \RAM1|ram~110_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~366_q\,
	datab => \RAM1|ALT_INV_ram~142_q\,
	datac => \RAM1|ALT_INV_ram~398_q\,
	datad => \RAM1|ALT_INV_ram~110_q\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|ram~682_combout\);

-- Location: FF_X34_Y9_N37
\RAM1|ram~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~302_q\);

-- Location: FF_X40_Y10_N14
\RAM1|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~78_q\);

-- Location: FF_X34_Y9_N46
\RAM1|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~46_q\);

-- Location: FF_X40_Y10_N32
\RAM1|ram~334\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~334_q\);

-- Location: LABCELL_X40_Y10_N30
\RAM1|ram~680\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~680_combout\ = ( \RAM1|ram~334_q\ & ( \ROM1|memROM~19_combout\ & ( (\ROM1|memROM~23_combout\) # (\RAM1|ram~78_q\) ) ) ) # ( !\RAM1|ram~334_q\ & ( \ROM1|memROM~19_combout\ & ( (\RAM1|ram~78_q\ & !\ROM1|memROM~23_combout\) ) ) ) # ( 
-- \RAM1|ram~334_q\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~23_combout\ & ((\RAM1|ram~46_q\))) # (\ROM1|memROM~23_combout\ & (\RAM1|ram~302_q\)) ) ) ) # ( !\RAM1|ram~334_q\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~23_combout\ & 
-- ((\RAM1|ram~46_q\))) # (\ROM1|memROM~23_combout\ & (\RAM1|ram~302_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~302_q\,
	datab => \RAM1|ALT_INV_ram~78_q\,
	datac => \RAM1|ALT_INV_ram~46_q\,
	datad => \ROM1|ALT_INV_memROM~23_combout\,
	datae => \RAM1|ALT_INV_ram~334_q\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~680_combout\);

-- Location: FF_X37_Y7_N43
\RAM1|ram~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~126_q\);

-- Location: FF_X40_Y12_N37
\RAM1|ram~350\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~350_q\);

-- Location: FF_X40_Y12_N20
\RAM1|ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~94_q\);

-- Location: FF_X40_Y10_N50
\RAM1|ram~382\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~382_q\);

-- Location: LABCELL_X40_Y10_N48
\RAM1|ram~681\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~681_combout\ = ( \RAM1|ram~382_q\ & ( \ROM1|memROM~19_combout\ & ( (\ROM1|memROM~23_combout\) # (\RAM1|ram~126_q\) ) ) ) # ( !\RAM1|ram~382_q\ & ( \ROM1|memROM~19_combout\ & ( (\RAM1|ram~126_q\ & !\ROM1|memROM~23_combout\) ) ) ) # ( 
-- \RAM1|ram~382_q\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~23_combout\ & ((\RAM1|ram~94_q\))) # (\ROM1|memROM~23_combout\ & (\RAM1|ram~350_q\)) ) ) ) # ( !\RAM1|ram~382_q\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~23_combout\ & 
-- ((\RAM1|ram~94_q\))) # (\ROM1|memROM~23_combout\ & (\RAM1|ram~350_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~126_q\,
	datab => \RAM1|ALT_INV_ram~350_q\,
	datac => \RAM1|ALT_INV_ram~94_q\,
	datad => \ROM1|ALT_INV_memROM~23_combout\,
	datae => \RAM1|ALT_INV_ram~382_q\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~681_combout\);

-- Location: LABCELL_X36_Y12_N30
\RAM1|ram~683\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~683_combout\ = ( \RAM1|ram~680_combout\ & ( \RAM1|ram~681_combout\ & ( (!\ROM1|memROM~17_combout\ & (((\RAM1|ram~679_combout\)) # (\ROM1|memROM~21_combout\))) # (\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~21_combout\) # 
-- ((\RAM1|ram~682_combout\)))) ) ) ) # ( !\RAM1|ram~680_combout\ & ( \RAM1|ram~681_combout\ & ( (!\ROM1|memROM~17_combout\ & (((\RAM1|ram~679_combout\)) # (\ROM1|memROM~21_combout\))) # (\ROM1|memROM~17_combout\ & (\ROM1|memROM~21_combout\ & 
-- ((\RAM1|ram~682_combout\)))) ) ) ) # ( \RAM1|ram~680_combout\ & ( !\RAM1|ram~681_combout\ & ( (!\ROM1|memROM~17_combout\ & (!\ROM1|memROM~21_combout\ & (\RAM1|ram~679_combout\))) # (\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~21_combout\) # 
-- ((\RAM1|ram~682_combout\)))) ) ) ) # ( !\RAM1|ram~680_combout\ & ( !\RAM1|ram~681_combout\ & ( (!\ROM1|memROM~17_combout\ & (!\ROM1|memROM~21_combout\ & (\RAM1|ram~679_combout\))) # (\ROM1|memROM~17_combout\ & (\ROM1|memROM~21_combout\ & 
-- ((\RAM1|ram~682_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \RAM1|ALT_INV_ram~679_combout\,
	datad => \RAM1|ALT_INV_ram~682_combout\,
	datae => \RAM1|ALT_INV_ram~680_combout\,
	dataf => \RAM1|ALT_INV_ram~681_combout\,
	combout => \RAM1|ram~683_combout\);

-- Location: LABCELL_X36_Y12_N54
\RAM1|ram~694\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~694_combout\ = ( \RAM1|ram~693_combout\ & ( \RAM1|ram~683_combout\ & ( ((!\ROM1|memROM~12_combout\ & ((\RAM1|ram~678_combout\))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~688_combout\))) # (\ROM1|memROM~15_combout\) ) ) ) # ( 
-- !\RAM1|ram~693_combout\ & ( \RAM1|ram~683_combout\ & ( (!\ROM1|memROM~12_combout\ & (((\RAM1|ram~678_combout\)) # (\ROM1|memROM~15_combout\))) # (\ROM1|memROM~12_combout\ & (!\ROM1|memROM~15_combout\ & (\RAM1|ram~688_combout\))) ) ) ) # ( 
-- \RAM1|ram~693_combout\ & ( !\RAM1|ram~683_combout\ & ( (!\ROM1|memROM~12_combout\ & (!\ROM1|memROM~15_combout\ & ((\RAM1|ram~678_combout\)))) # (\ROM1|memROM~12_combout\ & (((\RAM1|ram~688_combout\)) # (\ROM1|memROM~15_combout\))) ) ) ) # ( 
-- !\RAM1|ram~693_combout\ & ( !\RAM1|ram~683_combout\ & ( (!\ROM1|memROM~15_combout\ & ((!\ROM1|memROM~12_combout\ & ((\RAM1|ram~678_combout\))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~688_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \RAM1|ALT_INV_ram~688_combout\,
	datad => \RAM1|ALT_INV_ram~678_combout\,
	datae => \RAM1|ALT_INV_ram~693_combout\,
	dataf => \RAM1|ALT_INV_ram~683_combout\,
	combout => \RAM1|ram~694_combout\);

-- Location: LABCELL_X35_Y8_N33
\SW_8|saida[7]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_8|saida[7]~15_combout\ = ( \RAM1|dado_out~0_combout\ & ( \RAM1|ram~694_combout\ & ( (!\SW_8|saida[1]~8_combout\ & ((!\comb~6_combout\) # (\SW[7]~input_o\))) ) ) ) # ( !\RAM1|dado_out~0_combout\ & ( \RAM1|ram~694_combout\ & ( 
-- (!\SW_8|saida[1]~8_combout\ & ((!\comb~6_combout\) # (\SW[7]~input_o\))) ) ) ) # ( !\RAM1|dado_out~0_combout\ & ( !\RAM1|ram~694_combout\ & ( (!\SW_8|saida[1]~8_combout\ & ((!\comb~6_combout\) # (\SW[7]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001010000000000000000000011110000010100001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datac => \SW_8|ALT_INV_saida[1]~8_combout\,
	datad => \ALT_INV_comb~6_combout\,
	datae => \RAM1|ALT_INV_dado_out~0_combout\,
	dataf => \RAM1|ALT_INV_ram~694_combout\,
	combout => \SW_8|saida[7]~15_combout\);

-- Location: LABCELL_X36_Y9_N51
\processador|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~29_sumout\ = SUM(( (!\processador|decoderInstru1|Equal11~3_combout\ & ((\SW_8|saida[7]~15_combout\))) # (\processador|decoderInstru1|Equal11~3_combout\ & (\ROM1|memROM~12_combout\)) ) + ( \processador|REGA|DOUT\(7) ) + ( 
-- \processador|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~3_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \SW_8|ALT_INV_saida[7]~15_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(7),
	cin => \processador|ULA1|Add0~26\,
	sumout => \processador|ULA1|Add0~29_sumout\);

-- Location: LABCELL_X36_Y9_N24
\processador|ULA1|saida[7]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[7]~4_combout\ = ( \SW_8|saida[7]~15_combout\ & ( \processador|decoderInstru1|saida[4]~1_combout\ & ( !\processador|decoderInstru1|Equal11~3_combout\ ) ) ) # ( \SW_8|saida[7]~15_combout\ & ( 
-- !\processador|decoderInstru1|saida[4]~1_combout\ & ( (!\processador|decoderInstru1|Equal11~2_combout\ & ((\processador|ULA1|Add1~29_sumout\))) # (\processador|decoderInstru1|Equal11~2_combout\ & (\processador|ULA1|Add0~29_sumout\)) ) ) ) # ( 
-- !\SW_8|saida[7]~15_combout\ & ( !\processador|decoderInstru1|saida[4]~1_combout\ & ( (!\processador|decoderInstru1|Equal11~2_combout\ & ((\processador|ULA1|Add1~29_sumout\))) # (\processador|decoderInstru1|Equal11~2_combout\ & 
-- (\processador|ULA1|Add0~29_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA1|ALT_INV_Add0~29_sumout\,
	datab => \processador|ULA1|ALT_INV_Add1~29_sumout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal11~3_combout\,
	datad => \processador|decoderInstru1|ALT_INV_Equal11~2_combout\,
	datae => \SW_8|ALT_INV_saida[7]~15_combout\,
	dataf => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	combout => \processador|ULA1|saida[7]~4_combout\);

-- Location: FF_X36_Y9_N26
\processador|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \processador|ULA1|saida[7]~4_combout\,
	ena => \processador|decoderInstru1|saida[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(7));

-- Location: LABCELL_X35_Y9_N24
\processador|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~29_sumout\ = SUM(( (!\processador|decoderInstru1|Equal11~3_combout\ & ((!\SW_8|saida[7]~15_combout\))) # (\processador|decoderInstru1|Equal11~3_combout\ & (!\ROM1|memROM~12_combout\)) ) + ( \processador|REGA|DOUT\(7) ) + ( 
-- \processador|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|REGA|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal11~3_combout\,
	datad => \SW_8|ALT_INV_saida[7]~15_combout\,
	cin => \processador|ULA1|Add1~26\,
	sumout => \processador|ULA1|Add1~29_sumout\);

-- Location: LABCELL_X35_Y9_N48
\processador|FLAG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|FLAG|DOUT~0_combout\ = ( !\processador|decoderInstru1|Equal11~1_combout\ & ( \processador|ULA1|Add1~21_sumout\ & ( \processador|FLAG|DOUT~1_combout\ ) ) ) # ( \processador|decoderInstru1|Equal11~1_combout\ & ( 
-- !\processador|ULA1|Add1~21_sumout\ & ( (!\processador|ULA1|Add1~25_sumout\ & (!\processador|ULA1|Add1~17_sumout\ & (\processador|FLAG|DOUT~1_combout\ & !\processador|ULA1|Add1~29_sumout\))) ) ) ) # ( !\processador|decoderInstru1|Equal11~1_combout\ & ( 
-- !\processador|ULA1|Add1~21_sumout\ & ( \processador|FLAG|DOUT~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000010000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA1|ALT_INV_Add1~25_sumout\,
	datab => \processador|ULA1|ALT_INV_Add1~17_sumout\,
	datac => \processador|FLAG|ALT_INV_DOUT~1_combout\,
	datad => \processador|ULA1|ALT_INV_Add1~29_sumout\,
	datae => \processador|decoderInstru1|ALT_INV_Equal11~1_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \processador|FLAG|DOUT~0_combout\);

-- Location: FF_X35_Y9_N50
\processador|FLAG|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \processador|FLAG|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|FLAG|DOUT~q\);

-- Location: LABCELL_X41_Y11_N51
\processador|MUX2|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|Equal1~0_combout\ = ( \ROM1|memROM~0_combout\ & ( \ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~3_combout\ & \processador|FLAG|DOUT~q\))) ) ) ) # ( !\ROM1|memROM~0_combout\ & ( 
-- \ROM1|memROM~2_combout\ & ( (\ROM1|memROM~4_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~3_combout\)) ) ) ) # ( \ROM1|memROM~0_combout\ & ( !\ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~1_combout\ & 
-- \ROM1|memROM~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000001000010000000100000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \processador|FLAG|ALT_INV_DOUT~q\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \processador|MUX2|Equal1~0_combout\);

-- Location: FF_X37_Y10_N10
\processador|REG_RET|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \processador|incrementaPC|Add0~13_sumout\,
	ena => \processador|decoderInstru1|saida[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(3));

-- Location: MLABCELL_X37_Y11_N27
\processador|MUX2|MUX_OUT[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[3]~3_combout\ = ( \processador|REG_RET|DOUT\(3) & ( (!\processador|MUX2|Equal2~0_combout\ & (((\processador|incrementaPC|Add0~13_sumout\)))) # (\processador|MUX2|Equal2~0_combout\ & ((!\processador|MUX2|Equal1~0_combout\) # 
-- ((\ROM1|memROM~21_combout\)))) ) ) # ( !\processador|REG_RET|DOUT\(3) & ( (!\processador|MUX2|Equal2~0_combout\ & (((\processador|incrementaPC|Add0~13_sumout\)))) # (\processador|MUX2|Equal2~0_combout\ & (\processador|MUX2|Equal1~0_combout\ & 
-- ((\ROM1|memROM~21_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100001101101001110010111110100111001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUX2|ALT_INV_Equal2~0_combout\,
	datab => \processador|MUX2|ALT_INV_Equal1~0_combout\,
	datac => \processador|incrementaPC|ALT_INV_Add0~13_sumout\,
	datad => \ROM1|ALT_INV_memROM~21_combout\,
	dataf => \processador|REG_RET|ALT_INV_DOUT\(3),
	combout => \processador|MUX2|MUX_OUT[3]~3_combout\);

-- Location: FF_X37_Y11_N28
\processador|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \processador|MUX2|MUX_OUT[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[3]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y11_N39
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \processador|PC|DOUT[5]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(1) & (!\processador|PC|DOUT[3]~DUPLICATE_q\ & (\processador|PC|DOUT\(0) & \processador|PC|DOUT\(2)))) ) ) # ( !\processador|PC|DOUT[5]~DUPLICATE_q\ & ( 
-- (\processador|PC|DOUT[3]~DUPLICATE_q\ & (!\processador|PC|DOUT\(0) & !\processador|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(1),
	datab => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(0),
	datad => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \ROM1|memROM~4_combout\);

-- Location: LABCELL_X41_Y11_N30
\processador|MUX2|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|Equal2~0_combout\ = ( \processador|FLAG|DOUT~q\ & ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~3_combout\ & ((\ROM1|memROM~0_combout\)))) # (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~3_combout\ & 
-- (!\ROM1|memROM~2_combout\ $ (!\ROM1|memROM~0_combout\)))) ) ) ) # ( !\processador|FLAG|DOUT~q\ & ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~2_combout\ & \ROM1|memROM~0_combout\))) # 
-- (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~2_combout\ $ (!\ROM1|memROM~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100011000000000010001100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	datae => \processador|FLAG|ALT_INV_DOUT~q\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \processador|MUX2|Equal2~0_combout\);

-- Location: FF_X37_Y10_N4
\processador|REG_RET|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \processador|incrementaPC|Add0~5_sumout\,
	ena => \processador|decoderInstru1|saida[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(1));

-- Location: LABCELL_X39_Y11_N21
\processador|MUX2|MUX_OUT[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[1]~1_combout\ = ( \processador|MUX2|Equal1~0_combout\ & ( \processador|incrementaPC|Add0~5_sumout\ & ( (!\processador|MUX2|Equal2~0_combout\) # (\ROM1|memROM~17_combout\) ) ) ) # ( !\processador|MUX2|Equal1~0_combout\ & ( 
-- \processador|incrementaPC|Add0~5_sumout\ & ( (!\processador|MUX2|Equal2~0_combout\) # (\processador|REG_RET|DOUT\(1)) ) ) ) # ( \processador|MUX2|Equal1~0_combout\ & ( !\processador|incrementaPC|Add0~5_sumout\ & ( (\processador|MUX2|Equal2~0_combout\ & 
-- \ROM1|memROM~17_combout\) ) ) ) # ( !\processador|MUX2|Equal1~0_combout\ & ( !\processador|incrementaPC|Add0~5_sumout\ & ( (\processador|MUX2|Equal2~0_combout\ & \processador|REG_RET|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000001010000010110111011101110111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUX2|ALT_INV_Equal2~0_combout\,
	datab => \processador|REG_RET|ALT_INV_DOUT\(1),
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \processador|MUX2|ALT_INV_Equal1~0_combout\,
	dataf => \processador|incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \processador|MUX2|MUX_OUT[1]~1_combout\);

-- Location: FF_X37_Y11_N23
\processador|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|MUX2|MUX_OUT[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(1));

-- Location: LABCELL_X36_Y11_N15
\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = ( \ROM1|memROM~1_combout\ & ( \processador|PC|DOUT[0]~DUPLICATE_q\ & ( (\processador|PC|DOUT\(1) & (\processador|PC|DOUT\(2) & (!\processador|PC|DOUT[5]~DUPLICATE_q\ & !\processador|PC|DOUT\(3)))) ) ) ) # ( 
-- \ROM1|memROM~1_combout\ & ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(3) & ((!\processador|PC|DOUT\(1) & ((\processador|PC|DOUT[5]~DUPLICATE_q\))) # (\processador|PC|DOUT\(1) & (\processador|PC|DOUT\(2) & 
-- !\processador|PC|DOUT[5]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000110100000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(1),
	datab => \processador|PC|ALT_INV_DOUT\(2),
	datac => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~13_combout\);

-- Location: LABCELL_X36_Y11_N27
\decoderBloco|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderBloco|Equal7~0_combout\ = ( !\ROM1|memROM~11_combout\ & ( (!\ROM1|memROM~13_combout\ & !\ROM1|memROM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \decoderBloco|Equal7~0_combout\);

-- Location: LABCELL_X36_Y11_N39
\RAM1|dado_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out~0_combout\ = ( \ROM1|memROM~5_combout\ & ( (\decoderBloco|Equal7~0_combout\ & (!\ROM1|memROM~6_combout\ & (!\ROM1|memROM~8_combout\ & !\ROM1|memROM~7_combout\))) ) ) # ( !\ROM1|memROM~5_combout\ & ( (\decoderBloco|Equal7~0_combout\ & 
-- (!\ROM1|memROM~7_combout\ & (!\ROM1|memROM~6_combout\ $ (!\ROM1|memROM~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000000000000101000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|dado_out~0_combout\);

-- Location: LABCELL_X36_Y7_N42
\SW_0_7|saida[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_0_7|saida[0]~6_combout\ = ( \FF_DEBOUNCER|DOUT~q\ & ( !\ROM1|memROM~19_combout\ & ( (!\SW[8]~input_o\ & (\comb~1_combout\ & \comb~3_combout\)) ) ) ) # ( !\FF_DEBOUNCER|DOUT~q\ & ( !\ROM1|memROM~19_combout\ & ( (\comb~3_combout\ & (((!\SW[8]~input_o\ & 
-- \comb~1_combout\)) # (\comb~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111011000000000000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datab => \ALT_INV_comb~4_combout\,
	datac => \ALT_INV_comb~1_combout\,
	datad => \ALT_INV_comb~3_combout\,
	datae => \FF_DEBOUNCER|ALT_INV_DOUT~q\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \SW_0_7|saida[0]~6_combout\);

-- Location: LABCELL_X36_Y10_N12
\SW_0_7|saida[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_0_7|saida[0]~7_combout\ = ( \RAM1|ram~547_combout\ & ( !\SW_0_7|saida[0]~6_combout\ & ( (!\SW_0_7|saida[0]~1_combout\ & (!\SW_0_7|saida[0]~2_combout\ & !\SW_0_7|saida[0]~3_combout\)) ) ) ) # ( !\RAM1|ram~547_combout\ & ( !\SW_0_7|saida[0]~6_combout\ & 
-- ( (!\RAM1|dado_out~0_combout\ & (!\SW_0_7|saida[0]~1_combout\ & (!\SW_0_7|saida[0]~2_combout\ & !\SW_0_7|saida[0]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~0_combout\,
	datab => \SW_0_7|ALT_INV_saida[0]~1_combout\,
	datac => \SW_0_7|ALT_INV_saida[0]~2_combout\,
	datad => \SW_0_7|ALT_INV_saida[0]~3_combout\,
	datae => \RAM1|ALT_INV_ram~547_combout\,
	dataf => \SW_0_7|ALT_INV_saida[0]~6_combout\,
	combout => \SW_0_7|saida[0]~7_combout\);

-- Location: FF_X39_Y11_N55
\processador|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \processador|MUX2|MUX_OUT[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(7));

-- Location: MLABCELL_X37_Y10_N42
\decoderBloco|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderBloco|Equal2~0_combout\ = ( !\processador|PC|DOUT[6]~DUPLICATE_q\ & ( !\processador|PC|DOUT[4]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[3]~DUPLICATE_q\ & (\processador|PC|DOUT[2]~DUPLICATE_q\ & (!\processador|PC|DOUT[7]~DUPLICATE_q\ & 
-- \decoderBloco|Equal2~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \decoderBloco|ALT_INV_Equal2~1_combout\,
	datae => \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \decoderBloco|Equal2~0_combout\);

-- Location: MLABCELL_X34_Y14_N48
\logica_LED|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|comb~0_combout\ = ( !\comb~0_combout\ & ( \processador|decoderInstru1|Equal11~0_combout\ & ( (!\ROM1|memROM~19_combout\ & (!\ROM1|memROM~11_combout\ & (!\ROM1|memROM~17_combout\ & \decoderBloco|Equal2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \decoderBloco|ALT_INV_Equal2~0_combout\,
	datae => \ALT_INV_comb~0_combout\,
	dataf => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	combout => \logica_LED|comb~0_combout\);

-- Location: FF_X34_Y14_N10
\logica_LED|REG_LEDS|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(0));

-- Location: FF_X34_Y14_N14
\logica_LED|REG_LEDS|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(1));

-- Location: FF_X34_Y14_N31
\logica_LED|REG_LEDS|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(2));

-- Location: MLABCELL_X34_Y14_N33
\logica_LED|REG_LEDS|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|REG_LEDS|DOUT[3]~feeder_combout\ = ( \processador|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(3),
	combout => \logica_LED|REG_LEDS|DOUT[3]~feeder_combout\);

-- Location: FF_X34_Y14_N35
\logica_LED|REG_LEDS|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \logica_LED|REG_LEDS|DOUT[3]~feeder_combout\,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(3));

-- Location: FF_X34_Y14_N16
\logica_LED|REG_LEDS|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(4));

-- Location: MLABCELL_X34_Y14_N36
\logica_LED|REG_LEDS|DOUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|REG_LEDS|DOUT[5]~feeder_combout\ = ( \processador|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(5),
	combout => \logica_LED|REG_LEDS|DOUT[5]~feeder_combout\);

-- Location: FF_X34_Y14_N37
\logica_LED|REG_LEDS|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \logica_LED|REG_LEDS|DOUT[5]~feeder_combout\,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(5));

-- Location: MLABCELL_X34_Y14_N42
\logica_LED|REG_LEDS|DOUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|REG_LEDS|DOUT[6]~feeder_combout\ = ( \processador|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(6),
	combout => \logica_LED|REG_LEDS|DOUT[6]~feeder_combout\);

-- Location: FF_X34_Y14_N44
\logica_LED|REG_LEDS|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	d => \logica_LED|REG_LEDS|DOUT[6]~feeder_combout\,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(6));

-- Location: FF_X34_Y14_N40
\logica_LED|REG_LEDS|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(7));

-- Location: MLABCELL_X34_Y14_N54
\logica_Seven_Seg|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|comb~0_combout\ = ( \decoderBloco|Equal2~0_combout\ & ( \processador|decoderInstru1|Equal11~0_combout\ & ( (!\ROM1|memROM~11_combout\ & !\ROM1|memROM~19_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \decoderBloco|ALT_INV_Equal2~0_combout\,
	dataf => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	combout => \logica_Seven_Seg|comb~0_combout\);

-- Location: MLABCELL_X34_Y14_N27
\logica_LED|FlipFlop1|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|FlipFlop1|DOUT~0_combout\ = ( \comb~1_combout\ & ( (!\logica_Seven_Seg|comb~0_combout\ & ((\logica_LED|FlipFlop1|DOUT~q\))) # (\logica_Seven_Seg|comb~0_combout\ & (\processador|REGA|DOUT\(0))) ) ) # ( !\comb~1_combout\ & ( 
-- \logica_LED|FlipFlop1|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|ALT_INV_comb~0_combout\,
	datab => \processador|REGA|ALT_INV_DOUT\(0),
	datac => \logica_LED|FlipFlop1|ALT_INV_DOUT~q\,
	dataf => \ALT_INV_comb~1_combout\,
	combout => \logica_LED|FlipFlop1|DOUT~0_combout\);

-- Location: FF_X34_Y14_N59
\logica_LED|FlipFlop1|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \logica_LED|FlipFlop1|DOUT~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|FlipFlop1|DOUT~q\);

-- Location: MLABCELL_X34_Y14_N24
\logica_LED|FlipFlop2|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|FlipFlop2|DOUT~0_combout\ = ( \logica_LED|FlipFlop2|DOUT~q\ & ( (!\logica_Seven_Seg|comb~0_combout\) # (((!\ROM1|memROM~17_combout\) # (\comb~0_combout\)) # (\processador|REGA|DOUT\(0))) ) ) # ( !\logica_LED|FlipFlop2|DOUT~q\ & ( 
-- (\logica_Seven_Seg|comb~0_combout\ & (\processador|REGA|DOUT\(0) & (!\comb~0_combout\ & \ROM1|memROM~17_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000011111111101111111111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|ALT_INV_comb~0_combout\,
	datab => \processador|REGA|ALT_INV_DOUT\(0),
	datac => \ALT_INV_comb~0_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \logica_LED|FlipFlop2|ALT_INV_DOUT~q\,
	combout => \logica_LED|FlipFlop2|DOUT~0_combout\);

-- Location: FF_X34_Y14_N53
\logica_LED|FlipFlop2|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \logica_LED|FlipFlop2|DOUT~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|FlipFlop2|DOUT~q\);

-- Location: LABCELL_X41_Y11_N24
\processador|decoderInstru1|Equal11~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal11~4_combout\ = ( \ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & \ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \processador|decoderInstru1|Equal11~4_combout\);

-- Location: LABCELL_X41_Y11_N27
\processador|decoderInstru1|saida[10]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida[10]~4_combout\ = ( !\ROM1|memROM~2_combout\ & ( (\ROM1|memROM~4_combout\ & (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \processador|decoderInstru1|saida[10]~4_combout\);

-- Location: LABCELL_X41_Y11_N12
\processador|decoderInstru1|Equal11~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal11~5_combout\ = ( \ROM1|memROM~3_combout\ & ( !\ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \processador|decoderInstru1|Equal11~5_combout\);

-- Location: LABCELL_X36_Y10_N24
\logica_Seven_Seg|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|comb~1_combout\ = ( !\ROM1|memROM~11_combout\ & ( (\processador|decoderInstru1|Equal11~0_combout\ & (!\ROM1|memROM~19_combout\ & (\comb~4_combout\ & \decoderBloco|Equal2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ALT_INV_comb~4_combout\,
	datad => \decoderBloco|ALT_INV_Equal2~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \logica_Seven_Seg|comb~1_combout\);

-- Location: FF_X37_Y6_N22
\logica_Seven_Seg|REG0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG0|DOUT\(3));

-- Location: FF_X37_Y6_N29
\logica_Seven_Seg|REG0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG0|DOUT\(0));

-- Location: FF_X37_Y6_N20
\logica_Seven_Seg|REG0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG0|DOUT\(1));

-- Location: FF_X37_Y6_N25
\logica_Seven_Seg|REG0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG0|DOUT\(2));

-- Location: LABCELL_X39_Y4_N12
\logica_Seven_Seg|H0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[0]~0_combout\ = ( !\logica_Seven_Seg|REG0|DOUT\(1) & ( \logica_Seven_Seg|REG0|DOUT\(2) & ( !\logica_Seven_Seg|REG0|DOUT\(3) $ (\logica_Seven_Seg|REG0|DOUT\(0)) ) ) ) # ( \logica_Seven_Seg|REG0|DOUT\(1) & ( 
-- !\logica_Seven_Seg|REG0|DOUT\(2) & ( (\logica_Seven_Seg|REG0|DOUT\(3) & \logica_Seven_Seg|REG0|DOUT\(0)) ) ) ) # ( !\logica_Seven_Seg|REG0|DOUT\(1) & ( !\logica_Seven_Seg|REG0|DOUT\(2) & ( (!\logica_Seven_Seg|REG0|DOUT\(3) & 
-- \logica_Seven_Seg|REG0|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000110000001111000011110000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	datae => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X37_Y6_N12
\logica_Seven_Seg|H0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[1]~1_combout\ = ( \logica_Seven_Seg|REG0|DOUT\(2) & ( (!\logica_Seven_Seg|REG0|DOUT\(3) & (!\logica_Seven_Seg|REG0|DOUT\(1) $ (!\logica_Seven_Seg|REG0|DOUT\(0)))) # (\logica_Seven_Seg|REG0|DOUT\(3) & 
-- ((!\logica_Seven_Seg|REG0|DOUT\(0)) # (\logica_Seven_Seg|REG0|DOUT\(1)))) ) ) # ( !\logica_Seven_Seg|REG0|DOUT\(2) & ( (\logica_Seven_Seg|REG0|DOUT\(3) & (\logica_Seven_Seg|REG0|DOUT\(1) & \logica_Seven_Seg|REG0|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100111111110000110011111111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	dataf => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X37_Y6_N27
\logica_Seven_Seg|H0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[2]~2_combout\ = ( \logica_Seven_Seg|REG0|DOUT\(0) & ( (\logica_Seven_Seg|REG0|DOUT\(1) & (\logica_Seven_Seg|REG0|DOUT\(2) & \logica_Seven_Seg|REG0|DOUT\(3))) ) ) # ( !\logica_Seven_Seg|REG0|DOUT\(0) & ( 
-- (!\logica_Seven_Seg|REG0|DOUT\(2) & (\logica_Seven_Seg|REG0|DOUT\(1) & !\logica_Seven_Seg|REG0|DOUT\(3))) # (\logica_Seven_Seg|REG0|DOUT\(2) & ((\logica_Seven_Seg|REG0|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001101000011000000010000000101000011010000110000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	datab => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	datae => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X39_Y4_N42
\logica_Seven_Seg|H0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[3]~3_combout\ = ( \logica_Seven_Seg|REG0|DOUT\(1) & ( \logica_Seven_Seg|REG0|DOUT\(2) & ( \logica_Seven_Seg|REG0|DOUT\(0) ) ) ) # ( !\logica_Seven_Seg|REG0|DOUT\(1) & ( \logica_Seven_Seg|REG0|DOUT\(2) & ( 
-- (!\logica_Seven_Seg|REG0|DOUT\(3) & !\logica_Seven_Seg|REG0|DOUT\(0)) ) ) ) # ( \logica_Seven_Seg|REG0|DOUT\(1) & ( !\logica_Seven_Seg|REG0|DOUT\(2) & ( (\logica_Seven_Seg|REG0|DOUT\(3) & !\logica_Seven_Seg|REG0|DOUT\(0)) ) ) ) # ( 
-- !\logica_Seven_Seg|REG0|DOUT\(1) & ( !\logica_Seven_Seg|REG0|DOUT\(2) & ( (!\logica_Seven_Seg|REG0|DOUT\(3) & \logica_Seven_Seg|REG0|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001100000011000011000000110000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	datae => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X39_Y4_N39
\logica_Seven_Seg|H0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[4]~4_combout\ = ( \logica_Seven_Seg|REG0|DOUT\(1) & ( \logica_Seven_Seg|REG0|DOUT\(2) & ( (\logica_Seven_Seg|REG0|DOUT\(0) & !\logica_Seven_Seg|REG0|DOUT\(3)) ) ) ) # ( !\logica_Seven_Seg|REG0|DOUT\(1) & ( 
-- \logica_Seven_Seg|REG0|DOUT\(2) & ( !\logica_Seven_Seg|REG0|DOUT\(3) ) ) ) # ( \logica_Seven_Seg|REG0|DOUT\(1) & ( !\logica_Seven_Seg|REG0|DOUT\(2) & ( (\logica_Seven_Seg|REG0|DOUT\(0) & !\logica_Seven_Seg|REG0|DOUT\(3)) ) ) ) # ( 
-- !\logica_Seven_Seg|REG0|DOUT\(1) & ( !\logica_Seven_Seg|REG0|DOUT\(2) & ( \logica_Seven_Seg|REG0|DOUT\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010100000101000011110000111100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	datae => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X37_Y6_N18
\logica_Seven_Seg|H0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[5]~5_combout\ = ( \logica_Seven_Seg|REG0|DOUT\(1) & ( (!\logica_Seven_Seg|REG0|DOUT\(3) & ((!\logica_Seven_Seg|REG0|DOUT\(2)) # (\logica_Seven_Seg|REG0|DOUT\(0)))) ) ) # ( !\logica_Seven_Seg|REG0|DOUT\(1) & ( 
-- (\logica_Seven_Seg|REG0|DOUT\(0) & (!\logica_Seven_Seg|REG0|DOUT\(2) $ (\logica_Seven_Seg|REG0|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000011110011110000000000001100000000111100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	datad => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	datae => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X37_Y6_N57
\logica_Seven_Seg|H0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[6]~6_combout\ = ( \logica_Seven_Seg|REG0|DOUT\(3) & ( (!\logica_Seven_Seg|REG0|DOUT\(1) & (\logica_Seven_Seg|REG0|DOUT\(2) & !\logica_Seven_Seg|REG0|DOUT\(0))) ) ) # ( !\logica_Seven_Seg|REG0|DOUT\(3) & ( 
-- (!\logica_Seven_Seg|REG0|DOUT\(1) & (!\logica_Seven_Seg|REG0|DOUT\(2))) # (\logica_Seven_Seg|REG0|DOUT\(1) & (\logica_Seven_Seg|REG0|DOUT\(2) & \logica_Seven_Seg|REG0|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100101101000001010010100001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	dataf => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X39_Y10_N6
\logica_Seven_Seg|comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|comb~2_combout\ = ( \processador|decoderInstru1|Equal11~0_combout\ & ( (\decoderBloco|Equal2~0_combout\ & (!\ROM1|memROM~11_combout\ & (\RESET_511~0_combout\ & !\ROM1|memROM~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderBloco|ALT_INV_Equal2~0_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \ALT_INV_RESET_511~0_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	combout => \logica_Seven_Seg|comb~2_combout\);

-- Location: FF_X37_Y6_N32
\logica_Seven_Seg|REG3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG3|DOUT\(3));

-- Location: FF_X37_Y6_N53
\logica_Seven_Seg|REG3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG3|DOUT\(0));

-- Location: FF_X37_Y6_N35
\logica_Seven_Seg|REG3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG3|DOUT\(1));

-- Location: FF_X37_Y6_N50
\logica_Seven_Seg|REG3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG3|DOUT\(2));

-- Location: MLABCELL_X37_Y6_N0
\logica_Seven_Seg|H3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[0]~0_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(2) & ( (!\logica_Seven_Seg|REG3|DOUT\(1) & (!\logica_Seven_Seg|REG3|DOUT\(3) $ (\logica_Seven_Seg|REG3|DOUT\(0)))) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(2) & ( 
-- (\logica_Seven_Seg|REG3|DOUT\(0) & (!\logica_Seven_Seg|REG3|DOUT\(3) $ (\logica_Seven_Seg|REG3|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000011000011000000001111000011000000001100001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	datad => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X37_Y6_N3
\logica_Seven_Seg|H3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[1]~1_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(2) & ( (!\logica_Seven_Seg|REG3|DOUT\(0) & ((\logica_Seven_Seg|REG3|DOUT\(1)) # (\logica_Seven_Seg|REG3|DOUT\(3)))) # (\logica_Seven_Seg|REG3|DOUT\(0) & 
-- (!\logica_Seven_Seg|REG3|DOUT\(3) $ (\logica_Seven_Seg|REG3|DOUT\(1)))) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(2) & ( (\logica_Seven_Seg|REG3|DOUT\(0) & (\logica_Seven_Seg|REG3|DOUT\(3) & \logica_Seven_Seg|REG3|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101101011011010110110101101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X37_Y6_N42
\logica_Seven_Seg|H3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[2]~2_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(0) & ( (\logica_Seven_Seg|REG3|DOUT\(3) & (\logica_Seven_Seg|REG3|DOUT\(2) & \logica_Seven_Seg|REG3|DOUT\(1))) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(0) & ( 
-- (!\logica_Seven_Seg|REG3|DOUT\(3) & (!\logica_Seven_Seg|REG3|DOUT\(2) & \logica_Seven_Seg|REG3|DOUT\(1))) # (\logica_Seven_Seg|REG3|DOUT\(3) & (\logica_Seven_Seg|REG3|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000011000000111100001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X37_Y6_N51
\logica_Seven_Seg|H3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[3]~3_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(2) & ( (!\logica_Seven_Seg|REG3|DOUT\(1) & (!\logica_Seven_Seg|REG3|DOUT\(3) & !\logica_Seven_Seg|REG3|DOUT\(0))) # (\logica_Seven_Seg|REG3|DOUT\(1) & 
-- ((\logica_Seven_Seg|REG3|DOUT\(0)))) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(2) & ( (!\logica_Seven_Seg|REG3|DOUT\(1) & (!\logica_Seven_Seg|REG3|DOUT\(3) & \logica_Seven_Seg|REG3|DOUT\(0))) # (\logica_Seven_Seg|REG3|DOUT\(1) & 
-- (\logica_Seven_Seg|REG3|DOUT\(3) & !\logica_Seven_Seg|REG3|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110001000000100011000100010001000010101011000100001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datad => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X37_Y6_N30
\logica_Seven_Seg|H3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[4]~4_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(2) & ( (!\logica_Seven_Seg|REG3|DOUT\(3) & ((!\logica_Seven_Seg|REG3|DOUT\(1)) # (\logica_Seven_Seg|REG3|DOUT\(0)))) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(2) & ( 
-- (\logica_Seven_Seg|REG3|DOUT\(0) & ((!\logica_Seven_Seg|REG3|DOUT\(1)) # (!\logica_Seven_Seg|REG3|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110011001111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	datad => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X37_Y6_N33
\logica_Seven_Seg|H3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[5]~5_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(2) & ( (\logica_Seven_Seg|REG3|DOUT\(0) & (!\logica_Seven_Seg|REG3|DOUT\(3) $ (!\logica_Seven_Seg|REG3|DOUT\(1)))) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(2) & ( 
-- (!\logica_Seven_Seg|REG3|DOUT\(3) & ((\logica_Seven_Seg|REG3|DOUT\(1)) # (\logica_Seven_Seg|REG3|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110000010100001111000000000101010100000000010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datad => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X37_Y6_N48
\logica_Seven_Seg|H3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[6]~6_combout\ = (!\logica_Seven_Seg|REG3|DOUT\(0) & (!\logica_Seven_Seg|REG3|DOUT\(1) & (!\logica_Seven_Seg|REG3|DOUT\(3) $ (\logica_Seven_Seg|REG3|DOUT\(2))))) # (\logica_Seven_Seg|REG3|DOUT\(0) & 
-- (!\logica_Seven_Seg|REG3|DOUT\(3) & (!\logica_Seven_Seg|REG3|DOUT\(1) $ (\logica_Seven_Seg|REG3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000100100100010000010010010001000001001001000100000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	datad => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X36_Y10_N27
\logica_Seven_Seg|comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|comb~3_combout\ = ( !\ROM1|memROM~11_combout\ & ( (\processador|decoderInstru1|Equal11~0_combout\ & (\ROM1|memROM~19_combout\ & (\decoderBloco|Equal2~0_combout\ & \comb~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \decoderBloco|ALT_INV_Equal2~0_combout\,
	datad => \ALT_INV_comb~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \logica_Seven_Seg|comb~3_combout\);

-- Location: FF_X37_Y6_N38
\logica_Seven_Seg|REG4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG4|DOUT\(0));

-- Location: FF_X37_Y6_N41
\logica_Seven_Seg|REG4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG4|DOUT\(3));

-- Location: FF_X37_Y6_N8
\logica_Seven_Seg|REG4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG4|DOUT\(2));

-- Location: FF_X37_Y6_N56
\logica_Seven_Seg|REG4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub3|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG4|DOUT\(1));

-- Location: MLABCELL_X37_Y6_N9
\logica_Seven_Seg|H4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[0]~0_combout\ = (!\logica_Seven_Seg|REG4|DOUT\(3) & (!\logica_Seven_Seg|REG4|DOUT\(1) & (!\logica_Seven_Seg|REG4|DOUT\(0) $ (!\logica_Seven_Seg|REG4|DOUT\(2))))) # (\logica_Seven_Seg|REG4|DOUT\(3) & 
-- (\logica_Seven_Seg|REG4|DOUT\(0) & (!\logica_Seven_Seg|REG4|DOUT\(2) $ (!\logica_Seven_Seg|REG4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X37_Y6_N15
\logica_Seven_Seg|H4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[1]~1_combout\ = ( \logica_Seven_Seg|REG4|DOUT\(3) & ( (!\logica_Seven_Seg|REG4|DOUT\(0) & (\logica_Seven_Seg|REG4|DOUT\(2))) # (\logica_Seven_Seg|REG4|DOUT\(0) & ((\logica_Seven_Seg|REG4|DOUT\(1)))) ) ) # ( 
-- !\logica_Seven_Seg|REG4|DOUT\(3) & ( (\logica_Seven_Seg|REG4|DOUT\(2) & (!\logica_Seven_Seg|REG4|DOUT\(0) $ (!\logica_Seven_Seg|REG4|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101000001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X37_Y6_N45
\logica_Seven_Seg|H4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[2]~2_combout\ = ( \logica_Seven_Seg|REG4|DOUT\(3) & ( (\logica_Seven_Seg|REG4|DOUT\(2) & ((!\logica_Seven_Seg|REG4|DOUT\(0)) # (\logica_Seven_Seg|REG4|DOUT\(1)))) ) ) # ( !\logica_Seven_Seg|REG4|DOUT\(3) & ( 
-- (!\logica_Seven_Seg|REG4|DOUT\(0) & (!\logica_Seven_Seg|REG4|DOUT\(2) & \logica_Seven_Seg|REG4|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000001010000011110000101000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X37_Y6_N36
\logica_Seven_Seg|H4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[3]~3_combout\ = ( \logica_Seven_Seg|REG4|DOUT\(3) & ( (\logica_Seven_Seg|REG4|DOUT\(1) & (!\logica_Seven_Seg|REG4|DOUT\(2) $ (\logica_Seven_Seg|REG4|DOUT\(0)))) ) ) # ( !\logica_Seven_Seg|REG4|DOUT\(3) & ( 
-- (!\logica_Seven_Seg|REG4|DOUT\(1) & (!\logica_Seven_Seg|REG4|DOUT\(2) $ (!\logica_Seven_Seg|REG4|DOUT\(0)))) # (\logica_Seven_Seg|REG4|DOUT\(1) & (\logica_Seven_Seg|REG4|DOUT\(2) & \logica_Seven_Seg|REG4|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010011001001000101001100101000100000100010100010000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	datab => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	dataf => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X37_Y6_N39
\logica_Seven_Seg|H4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[4]~4_combout\ = (!\logica_Seven_Seg|REG4|DOUT\(1) & ((!\logica_Seven_Seg|REG4|DOUT\(2) & (\logica_Seven_Seg|REG4|DOUT\(0))) # (\logica_Seven_Seg|REG4|DOUT\(2) & ((!\logica_Seven_Seg|REG4|DOUT\(3)))))) # 
-- (\logica_Seven_Seg|REG4|DOUT\(1) & (((\logica_Seven_Seg|REG4|DOUT\(0) & !\logica_Seven_Seg|REG4|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100001000001011110000100000101111000010000010111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	datab => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	datad => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X37_Y6_N54
\logica_Seven_Seg|H4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[5]~5_combout\ = ( \logica_Seven_Seg|REG4|DOUT\(3) & ( (\logica_Seven_Seg|REG4|DOUT\(2) & (\logica_Seven_Seg|REG4|DOUT\(0) & !\logica_Seven_Seg|REG4|DOUT\(1))) ) ) # ( !\logica_Seven_Seg|REG4|DOUT\(3) & ( 
-- (!\logica_Seven_Seg|REG4|DOUT\(2) & ((\logica_Seven_Seg|REG4|DOUT\(1)) # (\logica_Seven_Seg|REG4|DOUT\(0)))) # (\logica_Seven_Seg|REG4|DOUT\(2) & (\logica_Seven_Seg|REG4|DOUT\(0) & \logica_Seven_Seg|REG4|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001111000011001100111100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	datad => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X37_Y6_N6
\logica_Seven_Seg|H4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[6]~6_combout\ = (!\logica_Seven_Seg|REG4|DOUT\(0) & (!\logica_Seven_Seg|REG4|DOUT\(1) & (!\logica_Seven_Seg|REG4|DOUT\(3) $ (\logica_Seven_Seg|REG4|DOUT\(2))))) # (\logica_Seven_Seg|REG4|DOUT\(0) & 
-- (!\logica_Seven_Seg|REG4|DOUT\(3) & (!\logica_Seven_Seg|REG4|DOUT\(1) $ (\logica_Seven_Seg|REG4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[6]~6_combout\);

-- Location: IOIBUF_X14_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LABCELL_X29_Y33_N0
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


