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

-- DATE "10/07/2022 09:55:16"

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
-- PC_OUT[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- REGA_OUT[0]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[1]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[3]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[4]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[5]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[6]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[7]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[0]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[1]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[2]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[3]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[4]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[5]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[7]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[8]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[9]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[10]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[11]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[12]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EQUAL_FLAG	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HabilitaRAM	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[0]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[1]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[2]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[3]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[5]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[6]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[7]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[8]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[0]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[1]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[3]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[4]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[5]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[6]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[7]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FPGA_RESET_N	=>  Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \gravar:detectorSub0|saida~combout\ : std_logic;
SIGNAL \processador|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~26\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \processador|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~14\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[4]~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~30\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[8]~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~2\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[1]~1_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida[9]~3_combout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[7]~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal11~7_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal11~4_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida[1]~0_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida[4]~1_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal11~2_combout\ : std_logic;
SIGNAL \processador|REGA|DOUT[1]~0_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal11~3_combout\ : std_logic;
SIGNAL \processador|ULA1|Equal2~0_combout\ : std_logic;
SIGNAL \processador|ULA1|saida[5]~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~17_combout\ : std_logic;
SIGNAL \RAM1|ram~559_combout\ : std_logic;
SIGNAL \RAM1|ram~27_q\ : std_logic;
SIGNAL \RAM1|ram~562_combout\ : std_logic;
SIGNAL \RAM1|ram~35_q\ : std_logic;
SIGNAL \RAM1|ram~560_combout\ : std_logic;
SIGNAL \RAM1|ram~43_q\ : std_logic;
SIGNAL \RAM1|ram~561_combout\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~543_combout\ : std_logic;
SIGNAL \KEY_0|saida[4]~11_combout\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~42_q\ : std_logic;
SIGNAL \RAM1|ram~34_q\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~539_combout\ : std_logic;
SIGNAL \KEY_0|saida[3]~10_combout\ : std_logic;
SIGNAL \RAM1|ram~41_q\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~33_q\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~535_combout\ : std_logic;
SIGNAL \KEY_0|saida[2]~9_combout\ : std_logic;
SIGNAL \processador|ULA1|saida[1]~3_combout\ : std_logic;
SIGNAL \processador|ULA1|saida[1]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \processador|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \processador|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[0]~1_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida[6]~2_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~2\ : std_logic;
SIGNAL \processador|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add0~2\ : std_logic;
SIGNAL \processador|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[1]~4_combout\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~40_q\ : std_logic;
SIGNAL \RAM1|ram~32feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~32_q\ : std_logic;
SIGNAL \RAM1|ram~16_q\ : std_logic;
SIGNAL \RAM1|ram~531_combout\ : std_logic;
SIGNAL \KEY_0|saida[1]~14_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~6\ : std_logic;
SIGNAL \processador|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add0~6\ : std_logic;
SIGNAL \processador|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[2]~5_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~10\ : std_logic;
SIGNAL \processador|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add1~10\ : std_logic;
SIGNAL \processador|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[3]~6_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~14\ : std_logic;
SIGNAL \processador|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add1~14\ : std_logic;
SIGNAL \processador|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[4]~7_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~18\ : std_logic;
SIGNAL \processador|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add0~18\ : std_logic;
SIGNAL \processador|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[5]~9_combout\ : std_logic;
SIGNAL \RAM1|ram~36feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~36_q\ : std_logic;
SIGNAL \RAM1|ram~28_q\ : std_logic;
SIGNAL \RAM1|ram~44_q\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~547_combout\ : std_logic;
SIGNAL \KEY_0|saida[5]~15_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~22\ : std_logic;
SIGNAL \processador|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[6]~10_combout\ : std_logic;
SIGNAL \processador|ULA1|saida[6]~11_combout\ : std_logic;
SIGNAL \RAM1|ram~29feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~29_q\ : std_logic;
SIGNAL \RAM1|ram~45_q\ : std_logic;
SIGNAL \RAM1|ram~37_q\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~551_combout\ : std_logic;
SIGNAL \KEY_0|saida[6]~16_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~22\ : std_logic;
SIGNAL \processador|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal11~1_combout\ : std_logic;
SIGNAL \RAM1|ram~38feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~38_q\ : std_logic;
SIGNAL \RAM1|ram~30_q\ : std_logic;
SIGNAL \RAM1|ram~46_q\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~555_combout\ : std_logic;
SIGNAL \KEY_0|saida[7]~12_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~26\ : std_logic;
SIGNAL \processador|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[7]~12_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~26\ : std_logic;
SIGNAL \processador|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \processador|FLAG|DOUT~1_combout\ : std_logic;
SIGNAL \processador|FLAG|DOUT~0_combout\ : std_logic;
SIGNAL \processador|FLAG|DOUT~q\ : std_logic;
SIGNAL \processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~18\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[5]~5_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~22\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[6]~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida[10]~4_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~6\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[2]~2_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~10\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[3]~3_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \RAM1|ram~39_q\ : std_logic;
SIGNAL \RAM1|ram~31_q\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~15_q\ : std_logic;
SIGNAL \RAM1|ram~527_combout\ : std_logic;
SIGNAL \KEY_0|saida[0]~8_combout\ : std_logic;
SIGNAL \KEY_0|saida[0]~13_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal11~0_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal11~5_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal11~6_combout\ : std_logic;
SIGNAL \decoderBloco|Equal7~0_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|comb~0_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|REG1|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|comb~1_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|REG1|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|comb~2_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|comb~3_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|REG3|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|REG0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processador|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \processador|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processador|REG_RET|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG3|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_Equal11~7_combout\ : std_logic;
SIGNAL \processador|FLAG|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \KEY_0|ALT_INV_saida[6]~16_combout\ : std_logic;
SIGNAL \KEY_0|ALT_INV_saida[5]~15_combout\ : std_logic;
SIGNAL \KEY_0|ALT_INV_saida[1]~14_combout\ : std_logic;
SIGNAL \KEY_0|ALT_INV_saida[7]~12_combout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_saida[6]~10_combout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_saida[5]~8_combout\ : std_logic;
SIGNAL \KEY_0|ALT_INV_saida[4]~11_combout\ : std_logic;
SIGNAL \KEY_0|ALT_INV_saida[3]~10_combout\ : std_logic;
SIGNAL \KEY_0|ALT_INV_saida[2]~9_combout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_saida[1]~3_combout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_saida[1]~2_combout\ : std_logic;
SIGNAL \processador|REGA|ALT_INV_DOUT[1]~0_combout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \KEY_0|ALT_INV_saida[0]~8_combout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \processador|REG_RET|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \processador|LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|REG3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \decoderBloco|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \processador|FLAG|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_saida[10]~4_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_Equal11~4_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_Equal11~3_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_Equal11~2_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_Equal11~1_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_saida[1]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \processador|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \processador|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \processador|ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~527_combout\ : std_logic;
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
\logica_Seven_Seg|REG3|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \logica_Seven_Seg|REG3|DOUT[2]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[8]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[7]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[6]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[5]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[3]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[2]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[1]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[0]~DUPLICATE_q\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\processador|decoderInstru1|ALT_INV_Equal11~7_combout\ <= NOT \processador|decoderInstru1|Equal11~7_combout\;
\processador|FLAG|ALT_INV_DOUT~1_combout\ <= NOT \processador|FLAG|DOUT~1_combout\;
\RAM1|ALT_INV_ram~38_q\ <= NOT \RAM1|ram~38_q\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\RAM1|ALT_INV_ram~46_q\ <= NOT \RAM1|ram~46_q\;
\RAM1|ALT_INV_ram~30_q\ <= NOT \RAM1|ram~30_q\;
\RAM1|ALT_INV_ram~37_q\ <= NOT \RAM1|ram~37_q\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\RAM1|ALT_INV_ram~45_q\ <= NOT \RAM1|ram~45_q\;
\RAM1|ALT_INV_ram~29_q\ <= NOT \RAM1|ram~29_q\;
\RAM1|ALT_INV_ram~36_q\ <= NOT \RAM1|ram~36_q\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\RAM1|ALT_INV_ram~44_q\ <= NOT \RAM1|ram~44_q\;
\RAM1|ALT_INV_ram~28_q\ <= NOT \RAM1|ram~28_q\;
\ROM1|ALT_INV_memROM~17_combout\ <= NOT \ROM1|memROM~17_combout\;
\RAM1|ALT_INV_ram~35_q\ <= NOT \RAM1|ram~35_q\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\RAM1|ALT_INV_ram~43_q\ <= NOT \RAM1|ram~43_q\;
\RAM1|ALT_INV_ram~27_q\ <= NOT \RAM1|ram~27_q\;
\RAM1|ALT_INV_ram~34_q\ <= NOT \RAM1|ram~34_q\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\RAM1|ALT_INV_ram~42_q\ <= NOT \RAM1|ram~42_q\;
\RAM1|ALT_INV_ram~26_q\ <= NOT \RAM1|ram~26_q\;
\RAM1|ALT_INV_ram~33_q\ <= NOT \RAM1|ram~33_q\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\RAM1|ALT_INV_ram~41_q\ <= NOT \RAM1|ram~41_q\;
\RAM1|ALT_INV_ram~25_q\ <= NOT \RAM1|ram~25_q\;
\RAM1|ALT_INV_ram~32_q\ <= NOT \RAM1|ram~32_q\;
\RAM1|ALT_INV_ram~16_q\ <= NOT \RAM1|ram~16_q\;
\RAM1|ALT_INV_ram~40_q\ <= NOT \RAM1|ram~40_q\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\RAM1|ALT_INV_ram~31_q\ <= NOT \RAM1|ram~31_q\;
\RAM1|ALT_INV_ram~15_q\ <= NOT \RAM1|ram~15_q\;
\RAM1|ALT_INV_ram~39_q\ <= NOT \RAM1|ram~39_q\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\ROM1|ALT_INV_memROM~16_combout\ <= NOT \ROM1|memROM~16_combout\;
\gravar:detectorSub0|ALT_INV_saidaQ~q\ <= NOT \gravar:detectorSub0|saidaQ~q\;
\KEY_0|ALT_INV_saida[6]~16_combout\ <= NOT \KEY_0|saida[6]~16_combout\;
\KEY_0|ALT_INV_saida[5]~15_combout\ <= NOT \KEY_0|saida[5]~15_combout\;
\KEY_0|ALT_INV_saida[1]~14_combout\ <= NOT \KEY_0|saida[1]~14_combout\;
\KEY_0|ALT_INV_saida[7]~12_combout\ <= NOT \KEY_0|saida[7]~12_combout\;
\processador|ULA1|ALT_INV_saida[6]~10_combout\ <= NOT \processador|ULA1|saida[6]~10_combout\;
\processador|ULA1|ALT_INV_saida[5]~8_combout\ <= NOT \processador|ULA1|saida[5]~8_combout\;
\KEY_0|ALT_INV_saida[4]~11_combout\ <= NOT \KEY_0|saida[4]~11_combout\;
\KEY_0|ALT_INV_saida[3]~10_combout\ <= NOT \KEY_0|saida[3]~10_combout\;
\KEY_0|ALT_INV_saida[2]~9_combout\ <= NOT \KEY_0|saida[2]~9_combout\;
\processador|ULA1|ALT_INV_saida[1]~3_combout\ <= NOT \processador|ULA1|saida[1]~3_combout\;
\processador|ULA1|ALT_INV_saida[1]~2_combout\ <= NOT \processador|ULA1|saida[1]~2_combout\;
\processador|REGA|ALT_INV_DOUT[1]~0_combout\ <= NOT \processador|REGA|DOUT[1]~0_combout\;
\processador|ULA1|ALT_INV_saida[0]~0_combout\ <= NOT \processador|ULA1|saida[0]~0_combout\;
\KEY_0|ALT_INV_saida[0]~8_combout\ <= NOT \KEY_0|saida[0]~8_combout\;
\processador|ULA1|ALT_INV_Equal2~0_combout\ <= NOT \processador|ULA1|Equal2~0_combout\;
\processador|REG_RET|ALT_INV_DOUT\(8) <= NOT \processador|REG_RET|DOUT\(8);
\processador|REG_RET|ALT_INV_DOUT\(7) <= NOT \processador|REG_RET|DOUT\(7);
\processador|REG_RET|ALT_INV_DOUT\(6) <= NOT \processador|REG_RET|DOUT\(6);
\processador|REG_RET|ALT_INV_DOUT\(5) <= NOT \processador|REG_RET|DOUT\(5);
\processador|REG_RET|ALT_INV_DOUT\(4) <= NOT \processador|REG_RET|DOUT\(4);
\processador|REG_RET|ALT_INV_DOUT\(3) <= NOT \processador|REG_RET|DOUT\(3);
\processador|REG_RET|ALT_INV_DOUT\(2) <= NOT \processador|REG_RET|DOUT\(2);
\processador|REG_RET|ALT_INV_DOUT\(1) <= NOT \processador|REG_RET|DOUT\(1);
\processador|REG_RET|ALT_INV_DOUT\(0) <= NOT \processador|REG_RET|DOUT\(0);
\processador|LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\ <= NOT \processador|LOG_DESVIO|SelMuxPC[0]~0_combout\;
\logica_Seven_Seg|REG3|ALT_INV_DOUT\(1) <= NOT \logica_Seven_Seg|REG3|DOUT\(1);
\logica_Seven_Seg|REG3|ALT_INV_DOUT\(2) <= NOT \logica_Seven_Seg|REG3|DOUT\(2);
\logica_Seven_Seg|REG3|ALT_INV_DOUT\(3) <= NOT \logica_Seven_Seg|REG3|DOUT\(3);
\logica_Seven_Seg|REG3|ALT_INV_DOUT\(0) <= NOT \logica_Seven_Seg|REG3|DOUT\(0);
\logica_Seven_Seg|REG2|ALT_INV_DOUT\(1) <= NOT \logica_Seven_Seg|REG2|DOUT\(1);
\logica_Seven_Seg|REG2|ALT_INV_DOUT\(2) <= NOT \logica_Seven_Seg|REG2|DOUT\(2);
\logica_Seven_Seg|REG2|ALT_INV_DOUT\(3) <= NOT \logica_Seven_Seg|REG2|DOUT\(3);
\logica_Seven_Seg|REG2|ALT_INV_DOUT\(0) <= NOT \logica_Seven_Seg|REG2|DOUT\(0);
\logica_Seven_Seg|REG1|ALT_INV_DOUT\(1) <= NOT \logica_Seven_Seg|REG1|DOUT\(1);
\logica_Seven_Seg|REG1|ALT_INV_DOUT\(2) <= NOT \logica_Seven_Seg|REG1|DOUT\(2);
\logica_Seven_Seg|REG1|ALT_INV_DOUT\(3) <= NOT \logica_Seven_Seg|REG1|DOUT\(3);
\logica_Seven_Seg|REG1|ALT_INV_DOUT\(0) <= NOT \logica_Seven_Seg|REG1|DOUT\(0);
\logica_Seven_Seg|REG0|ALT_INV_DOUT\(1) <= NOT \logica_Seven_Seg|REG0|DOUT\(1);
\logica_Seven_Seg|REG0|ALT_INV_DOUT\(2) <= NOT \logica_Seven_Seg|REG0|DOUT\(2);
\logica_Seven_Seg|REG0|ALT_INV_DOUT\(3) <= NOT \logica_Seven_Seg|REG0|DOUT\(3);
\logica_Seven_Seg|REG0|ALT_INV_DOUT\(0) <= NOT \logica_Seven_Seg|REG0|DOUT\(0);
\ROM1|ALT_INV_memROM~15_combout\ <= NOT \ROM1|memROM~15_combout\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\decoderBloco|ALT_INV_Equal7~0_combout\ <= NOT \decoderBloco|Equal7~0_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\processador|FLAG|ALT_INV_DOUT~q\ <= NOT \processador|FLAG|DOUT~q\;
\processador|decoderInstru1|ALT_INV_saida[10]~4_combout\ <= NOT \processador|decoderInstru1|saida[10]~4_combout\;
\processador|decoderInstru1|ALT_INV_Equal11~4_combout\ <= NOT \processador|decoderInstru1|Equal11~4_combout\;
\processador|decoderInstru1|ALT_INV_Equal11~3_combout\ <= NOT \processador|decoderInstru1|Equal11~3_combout\;
\processador|decoderInstru1|ALT_INV_saida[4]~1_combout\ <= NOT \processador|decoderInstru1|saida[4]~1_combout\;
\processador|decoderInstru1|ALT_INV_Equal11~2_combout\ <= NOT \processador|decoderInstru1|Equal11~2_combout\;
\processador|decoderInstru1|ALT_INV_Equal11~1_combout\ <= NOT \processador|decoderInstru1|Equal11~1_combout\;
\processador|decoderInstru1|ALT_INV_saida[1]~0_combout\ <= NOT \processador|decoderInstru1|saida[1]~0_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
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
\processador|PC|ALT_INV_DOUT\(8) <= NOT \processador|PC|DOUT\(8);
\processador|PC|ALT_INV_DOUT\(7) <= NOT \processador|PC|DOUT\(7);
\processador|PC|ALT_INV_DOUT\(6) <= NOT \processador|PC|DOUT\(6);
\processador|PC|ALT_INV_DOUT\(5) <= NOT \processador|PC|DOUT\(5);
\processador|PC|ALT_INV_DOUT\(4) <= NOT \processador|PC|DOUT\(4);
\processador|PC|ALT_INV_DOUT\(3) <= NOT \processador|PC|DOUT\(3);
\processador|PC|ALT_INV_DOUT\(2) <= NOT \processador|PC|DOUT\(2);
\processador|PC|ALT_INV_DOUT\(1) <= NOT \processador|PC|DOUT\(1);
\processador|PC|ALT_INV_DOUT\(0) <= NOT \processador|PC|DOUT\(0);
\processador|ULA1|ALT_INV_Add0~29_sumout\ <= NOT \processador|ULA1|Add0~29_sumout\;
\processador|ULA1|ALT_INV_Add1~29_sumout\ <= NOT \processador|ULA1|Add1~29_sumout\;
\RAM1|ALT_INV_ram~555_combout\ <= NOT \RAM1|ram~555_combout\;
\RAM1|ALT_INV_ram~551_combout\ <= NOT \RAM1|ram~551_combout\;
\processador|ULA1|ALT_INV_Add0~25_sumout\ <= NOT \processador|ULA1|Add0~25_sumout\;
\processador|ULA1|ALT_INV_Add1~25_sumout\ <= NOT \processador|ULA1|Add1~25_sumout\;
\RAM1|ALT_INV_ram~547_combout\ <= NOT \RAM1|ram~547_combout\;
\processador|ULA1|ALT_INV_Add0~21_sumout\ <= NOT \processador|ULA1|Add0~21_sumout\;
\processador|ULA1|ALT_INV_Add1~21_sumout\ <= NOT \processador|ULA1|Add1~21_sumout\;
\processador|ULA1|ALT_INV_Add0~17_sumout\ <= NOT \processador|ULA1|Add0~17_sumout\;
\processador|ULA1|ALT_INV_Add1~17_sumout\ <= NOT \processador|ULA1|Add1~17_sumout\;
\RAM1|ALT_INV_ram~543_combout\ <= NOT \RAM1|ram~543_combout\;
\processador|ULA1|ALT_INV_Add0~13_sumout\ <= NOT \processador|ULA1|Add0~13_sumout\;
\processador|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \processador|ULA1|Add1~13_sumout\;
\RAM1|ALT_INV_ram~539_combout\ <= NOT \RAM1|ram~539_combout\;
\processador|ULA1|ALT_INV_Add0~9_sumout\ <= NOT \processador|ULA1|Add0~9_sumout\;
\processador|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \processador|ULA1|Add1~9_sumout\;
\RAM1|ALT_INV_ram~535_combout\ <= NOT \RAM1|ram~535_combout\;
\RAM1|ALT_INV_ram~531_combout\ <= NOT \RAM1|ram~531_combout\;
\processador|ULA1|ALT_INV_Add0~5_sumout\ <= NOT \processador|ULA1|Add0~5_sumout\;
\processador|ULA1|ALT_INV_Add1~5_sumout\ <= NOT \processador|ULA1|Add1~5_sumout\;
\RAM1|ALT_INV_ram~527_combout\ <= NOT \RAM1|ram~527_combout\;
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

-- Location: IOOBUF_X54_Y14_N62
\ADD_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \KEY_0|saida[0]~8_combout\,
	oe => \KEY_0|saida[0]~13_combout\,
	devoe => ww_devoe,
	o => ww_ADD_OUT(0));

-- Location: IOOBUF_X54_Y16_N39
\ADD_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \KEY_0|saida[1]~14_combout\,
	oe => \KEY_0|saida[0]~13_combout\,
	devoe => ww_devoe,
	o => ww_ADD_OUT(1));

-- Location: IOOBUF_X40_Y45_N42
\ADD_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \KEY_0|saida[2]~9_combout\,
	oe => \KEY_0|saida[0]~13_combout\,
	devoe => ww_devoe,
	o => ww_ADD_OUT(2));

-- Location: IOOBUF_X40_Y45_N59
\ADD_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \KEY_0|saida[3]~10_combout\,
	oe => \KEY_0|saida[0]~13_combout\,
	devoe => ww_devoe,
	o => ww_ADD_OUT(3));

-- Location: IOOBUF_X54_Y17_N5
\ADD_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \KEY_0|saida[4]~11_combout\,
	oe => \KEY_0|saida[0]~13_combout\,
	devoe => ww_devoe,
	o => ww_ADD_OUT(4));

-- Location: IOOBUF_X54_Y17_N56
\ADD_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \KEY_0|saida[5]~15_combout\,
	oe => \KEY_0|saida[0]~13_combout\,
	devoe => ww_devoe,
	o => ww_ADD_OUT(5));

-- Location: IOOBUF_X40_Y45_N93
\ADD_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \KEY_0|saida[6]~16_combout\,
	oe => \KEY_0|saida[0]~13_combout\,
	devoe => ww_devoe,
	o => ww_ADD_OUT(6));

-- Location: IOOBUF_X54_Y14_N96
\ADD_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \KEY_0|saida[7]~12_combout\,
	oe => \KEY_0|saida[0]~13_combout\,
	devoe => ww_devoe,
	o => ww_ADD_OUT(7));

-- Location: IOOBUF_X34_Y45_N53
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(0),
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X54_Y15_N39
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X14_Y0_N53
\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(2),
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X22_Y45_N2
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

-- Location: IOOBUF_X10_Y0_N76
\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(4),
	devoe => ww_devoe,
	o => ww_PC_OUT(4));

-- Location: IOOBUF_X54_Y15_N56
\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X20_Y45_N2
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

-- Location: IOOBUF_X36_Y45_N36
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X22_Y45_N36
\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT[8]~DUPLICATE_q\,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X54_Y14_N79
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

-- Location: IOOBUF_X54_Y14_N45
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

-- Location: IOOBUF_X32_Y45_N76
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

-- Location: IOOBUF_X12_Y0_N36
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

-- Location: IOOBUF_X54_Y17_N39
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

-- Location: IOOBUF_X54_Y15_N22
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

-- Location: IOOBUF_X54_Y17_N22
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

-- Location: IOOBUF_X12_Y0_N53
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

-- Location: IOOBUF_X20_Y45_N36
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

-- Location: IOOBUF_X22_Y45_N53
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

-- Location: IOOBUF_X14_Y0_N36
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

-- Location: IOOBUF_X20_Y45_N53
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

-- Location: IOOBUF_X32_Y45_N59
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

-- Location: IOOBUF_X40_Y45_N76
\Palavra[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|Equal11~3_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(5));

-- Location: IOOBUF_X32_Y45_N42
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

-- Location: IOOBUF_X22_Y45_N19
\Palavra[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|Equal11~4_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(7));

-- Location: IOOBUF_X36_Y45_N2
\Palavra[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|Equal11~5_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(8));

-- Location: IOOBUF_X12_Y45_N2
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

-- Location: IOOBUF_X34_Y45_N36
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

-- Location: IOOBUF_X36_Y45_N19
\Palavra[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|Equal11~6_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(11));

-- Location: IOOBUF_X12_Y45_N19
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

-- Location: IOOBUF_X34_Y45_N19
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

-- Location: IOOBUF_X12_Y0_N2
\HabilitaRAM~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderBloco|ALT_INV_Equal7~0_combout\,
	devoe => ww_devoe,
	o => ww_HabilitaRAM);

-- Location: IOOBUF_X54_Y15_N5
\MEM_ADDRESS[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~12_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(0));

-- Location: IOOBUF_X34_Y45_N2
\MEM_ADDRESS[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~13_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(1));

-- Location: IOOBUF_X20_Y45_N19
\MEM_ADDRESS[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(2));

-- Location: IOOBUF_X48_Y45_N19
\MEM_ADDRESS[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(3));

-- Location: IOOBUF_X12_Y45_N36
\MEM_ADDRESS[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(4));

-- Location: IOOBUF_X18_Y45_N19
\MEM_ADDRESS[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~14_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(5));

-- Location: IOOBUF_X32_Y45_N93
\MEM_ADDRESS[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~15_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(6));

-- Location: IOOBUF_X52_Y45_N2
\MEM_ADDRESS[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(7));

-- Location: IOOBUF_X18_Y45_N2
\MEM_ADDRESS[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~14_combout\,
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
	i => \logica_Seven_Seg|H1|rascSaida7seg[0]~0_combout\,
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
	i => \logica_Seven_Seg|H1|rascSaida7seg[1]~1_combout\,
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
	i => \logica_Seven_Seg|H1|rascSaida7seg[2]~2_combout\,
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
	i => \logica_Seven_Seg|H1|rascSaida7seg[3]~3_combout\,
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
	i => \logica_Seven_Seg|H1|rascSaida7seg[4]~4_combout\,
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
	i => \logica_Seven_Seg|H1|rascSaida7seg[5]~5_combout\,
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
	i => \logica_Seven_Seg|H1|rascSaida7seg[6]~6_combout\,
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
	i => \logica_Seven_Seg|H2|rascSaida7seg[0]~0_combout\,
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
	i => \logica_Seven_Seg|H2|rascSaida7seg[1]~1_combout\,
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
	i => \logica_Seven_Seg|H2|rascSaida7seg[2]~2_combout\,
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
	i => \logica_Seven_Seg|H2|rascSaida7seg[3]~3_combout\,
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
	i => \logica_Seven_Seg|H2|rascSaida7seg[4]~4_combout\,
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
	i => \logica_Seven_Seg|H2|rascSaida7seg[5]~5_combout\,
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
	i => \logica_Seven_Seg|H2|rascSaida7seg[6]~6_combout\,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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

-- Location: LABCELL_X10_Y2_N6
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

-- Location: FF_X10_Y2_N7
\gravar:detectorSub0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \gravar:detectorSub0|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gravar:detectorSub0|saidaQ~q\);

-- Location: MLABCELL_X28_Y2_N51
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

-- Location: FF_X28_Y2_N34
\processador|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|MUX2|MUX_OUT[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[6]~DUPLICATE_q\);

-- Location: FF_X28_Y2_N16
\processador|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|MUX2|MUX_OUT[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X26_Y2_N48
\processador|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~25_sumout\ = SUM(( \processador|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~22\ ))
-- \processador|incrementaPC|Add0~26\ = CARRY(( \processador|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \processador|incrementaPC|Add0~22\,
	sumout => \processador|incrementaPC|Add0~25_sumout\,
	cout => \processador|incrementaPC|Add0~26\);

-- Location: LABCELL_X26_Y2_N51
\processador|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~29_sumout\ = SUM(( \processador|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~26\ ))
-- \processador|incrementaPC|Add0~30\ = CARRY(( \processador|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \processador|incrementaPC|Add0~26\,
	sumout => \processador|incrementaPC|Add0~29_sumout\,
	cout => \processador|incrementaPC|Add0~30\);

-- Location: FF_X29_Y2_N5
\processador|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|MUX2|MUX_OUT[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[2]~DUPLICATE_q\);

-- Location: FF_X29_Y2_N13
\processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|MUX2|MUX_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(0));

-- Location: LABCELL_X26_Y2_N30
\processador|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~1_sumout\ = SUM(( \processador|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \processador|incrementaPC|Add0~2\ = CARRY(( \processador|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \processador|incrementaPC|Add0~1_sumout\,
	cout => \processador|incrementaPC|Add0~2\);

-- Location: FF_X26_Y2_N32
\processador|REG_RET|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|incrementaPC|Add0~1_sumout\,
	ena => \processador|decoderInstru1|saida[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(0));

-- Location: FF_X28_Y2_N14
\processador|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|MUX2|MUX_OUT[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(5));

-- Location: LABCELL_X26_Y2_N39
\processador|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~13_sumout\ = SUM(( \processador|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~10\ ))
-- \processador|incrementaPC|Add0~14\ = CARRY(( \processador|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \processador|incrementaPC|Add0~10\,
	sumout => \processador|incrementaPC|Add0~13_sumout\,
	cout => \processador|incrementaPC|Add0~14\);

-- Location: LABCELL_X26_Y2_N42
\processador|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~17_sumout\ = SUM(( \processador|PC|DOUT\(4) ) + ( GND ) + ( \processador|incrementaPC|Add0~14\ ))
-- \processador|incrementaPC|Add0~18\ = CARRY(( \processador|PC|DOUT\(4) ) + ( GND ) + ( \processador|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(4),
	cin => \processador|incrementaPC|Add0~14\,
	sumout => \processador|incrementaPC|Add0~17_sumout\,
	cout => \processador|incrementaPC|Add0~18\);

-- Location: FF_X26_Y2_N43
\processador|REG_RET|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|incrementaPC|Add0~17_sumout\,
	ena => \processador|decoderInstru1|saida[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(4));

-- Location: MLABCELL_X28_Y2_N54
\processador|MUX2|MUX_OUT[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[4]~4_combout\ = ( \processador|incrementaPC|Add0~17_sumout\ & ( \processador|decoderInstru1|saida[10]~4_combout\ & ( (\processador|REG_RET|DOUT\(4) & !\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\) ) ) ) # ( 
-- !\processador|incrementaPC|Add0~17_sumout\ & ( \processador|decoderInstru1|saida[10]~4_combout\ & ( (\processador|REG_RET|DOUT\(4) & !\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\) ) ) ) # ( \processador|incrementaPC|Add0~17_sumout\ & ( 
-- !\processador|decoderInstru1|saida[10]~4_combout\ & ( !\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|REG_RET|ALT_INV_DOUT\(4),
	datac => \processador|LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datae => \processador|incrementaPC|ALT_INV_Add0~17_sumout\,
	dataf => \processador|decoderInstru1|ALT_INV_saida[10]~4_combout\,
	combout => \processador|MUX2|MUX_OUT[4]~4_combout\);

-- Location: FF_X28_Y2_N56
\processador|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|MUX2|MUX_OUT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(4));

-- Location: MLABCELL_X28_Y2_N39
\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( !\processador|PC|DOUT\(6) & ( (!\processador|PC|DOUT\(7) & (!\processador|PC|DOUT\(5) & !\processador|PC|DOUT\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(7),
	datac => \processador|PC|ALT_INV_DOUT\(5),
	datad => \processador|PC|ALT_INV_DOUT\(4),
	dataf => \processador|PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~9_combout\);

-- Location: FF_X29_Y2_N2
\processador|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|MUX2|MUX_OUT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(1));

-- Location: LABCELL_X29_Y2_N9
\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( \processador|PC|DOUT[0]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[3]~DUPLICATE_q\ & (!\processador|PC|DOUT\(2) & \processador|PC|DOUT\(1))) ) ) # ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[3]~DUPLICATE_q\ 
-- & \processador|PC|DOUT\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(1),
	dataf => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~10_combout\);

-- Location: LABCELL_X29_Y2_N15
\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = ( \ROM1|memROM~10_combout\ & ( (!\processador|PC|DOUT\(8) & \ROM1|memROM~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \ROM1|memROM~14_combout\);

-- Location: FF_X28_Y2_N2
\processador|PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|MUX2|MUX_OUT[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[8]~DUPLICATE_q\);

-- Location: LABCELL_X26_Y2_N54
\processador|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~33_sumout\ = SUM(( \processador|PC|DOUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	cin => \processador|incrementaPC|Add0~30\,
	sumout => \processador|incrementaPC|Add0~33_sumout\);

-- Location: FF_X26_Y2_N56
\processador|REG_RET|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|incrementaPC|Add0~33_sumout\,
	ena => \processador|decoderInstru1|saida[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(8));

-- Location: MLABCELL_X28_Y2_N0
\processador|MUX2|MUX_OUT[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[8]~8_combout\ = ( \processador|decoderInstru1|saida[10]~4_combout\ & ( \processador|incrementaPC|Add0~33_sumout\ & ( (!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & \processador|REG_RET|DOUT\(8)) ) ) ) # ( 
-- !\processador|decoderInstru1|saida[10]~4_combout\ & ( \processador|incrementaPC|Add0~33_sumout\ & ( (!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\) # (\ROM1|memROM~14_combout\) ) ) ) # ( \processador|decoderInstru1|saida[10]~4_combout\ & ( 
-- !\processador|incrementaPC|Add0~33_sumout\ & ( (!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & \processador|REG_RET|DOUT\(8)) ) ) ) # ( !\processador|decoderInstru1|saida[10]~4_combout\ & ( !\processador|incrementaPC|Add0~33_sumout\ & ( 
-- (\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & \ROM1|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000010100000101010111011101110110000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \processador|REG_RET|ALT_INV_DOUT\(8),
	datae => \processador|decoderInstru1|ALT_INV_saida[10]~4_combout\,
	dataf => \processador|incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \processador|MUX2|MUX_OUT[8]~8_combout\);

-- Location: FF_X28_Y2_N1
\processador|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|MUX2|MUX_OUT[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(8));

-- Location: LABCELL_X29_Y2_N6
\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( \processador|PC|DOUT[0]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[3]~DUPLICATE_q\ & !\processador|PC|DOUT\(1)) ) ) # ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[3]~DUPLICATE_q\ & 
-- (!\processador|PC|DOUT[2]~DUPLICATE_q\ $ (\processador|PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(1),
	dataf => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~11_combout\);

-- Location: LABCELL_X29_Y2_N27
\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = ( \ROM1|memROM~9_combout\ & ( (!\processador|PC|DOUT\(8) & \ROM1|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ROM1|memROM~12_combout\);

-- Location: LABCELL_X29_Y2_N12
\processador|MUX2|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[0]~0_combout\ = ( \ROM1|memROM~12_combout\ & ( (!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & ((!\processador|decoderInstru1|saida[10]~4_combout\ & ((\processador|incrementaPC|Add0~1_sumout\))) # 
-- (\processador|decoderInstru1|saida[10]~4_combout\ & (\processador|REG_RET|DOUT\(0))))) # (\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & (((!\processador|decoderInstru1|saida[10]~4_combout\)))) ) ) # ( !\ROM1|memROM~12_combout\ & ( 
-- (!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & ((!\processador|decoderInstru1|saida[10]~4_combout\ & ((\processador|incrementaPC|Add0~1_sumout\))) # (\processador|decoderInstru1|saida[10]~4_combout\ & (\processador|REG_RET|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001001100010000110100111101000011010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|REG_RET|ALT_INV_DOUT\(0),
	datab => \processador|LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datac => \processador|decoderInstru1|ALT_INV_saida[10]~4_combout\,
	datad => \processador|incrementaPC|ALT_INV_Add0~1_sumout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \processador|MUX2|MUX_OUT[0]~0_combout\);

-- Location: FF_X29_Y2_N14
\processador|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|MUX2|MUX_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y2_N30
\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\processador|PC|DOUT[2]~DUPLICATE_q\ & (!\processador|PC|DOUT[0]~DUPLICATE_q\ & (\processador|PC|DOUT[3]~DUPLICATE_q\ & !\processador|PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(1),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~13_combout\);

-- Location: LABCELL_X26_Y2_N33
\processador|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~5_sumout\ = SUM(( \processador|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~2\ ))
-- \processador|incrementaPC|Add0~6\ = CARRY(( \processador|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \processador|incrementaPC|Add0~2\,
	sumout => \processador|incrementaPC|Add0~5_sumout\,
	cout => \processador|incrementaPC|Add0~6\);

-- Location: FF_X26_Y2_N35
\processador|REG_RET|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|incrementaPC|Add0~5_sumout\,
	ena => \processador|decoderInstru1|saida[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(1));

-- Location: LABCELL_X29_Y2_N0
\processador|MUX2|MUX_OUT[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[1]~1_combout\ = ( \processador|incrementaPC|Add0~5_sumout\ & ( (!\processador|decoderInstru1|saida[10]~4_combout\ & ((!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\) # ((\ROM1|memROM~13_combout\)))) # 
-- (\processador|decoderInstru1|saida[10]~4_combout\ & (!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & ((\processador|REG_RET|DOUT\(1))))) ) ) # ( !\processador|incrementaPC|Add0~5_sumout\ & ( (!\processador|decoderInstru1|saida[10]~4_combout\ & 
-- (\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & (\ROM1|memROM~13_combout\))) # (\processador|decoderInstru1|saida[10]~4_combout\ & (!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & ((\processador|REG_RET|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011010001010110011101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[10]~4_combout\,
	datab => \processador|LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \processador|REG_RET|ALT_INV_DOUT\(1),
	dataf => \processador|incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \processador|MUX2|MUX_OUT[1]~1_combout\);

-- Location: FF_X29_Y2_N1
\processador|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|MUX2|MUX_OUT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y2_N57
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( !\processador|PC|DOUT[1]~DUPLICATE_q\ & ( (\ROM1|memROM~1_combout\ & (\ROM1|memROM~3_combout\ & \processador|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~8_combout\);

-- Location: FF_X29_Y2_N55
\processador|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|MUX2|MUX_OUT[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(3));

-- Location: LABCELL_X29_Y2_N33
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \processador|PC|DOUT[0]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(3) & !\processador|PC|DOUT\(1)) ) ) # ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[2]~DUPLICATE_q\ & ((!\processador|PC|DOUT\(1)))) # 
-- (\processador|PC|DOUT[2]~DUPLICATE_q\ & (!\processador|PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101001010000111110100101000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(3),
	datad => \processador|PC|ALT_INV_DOUT\(1),
	dataf => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~0_combout\);

-- Location: MLABCELL_X28_Y2_N18
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~6_combout\);

-- Location: LABCELL_X29_Y2_N24
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \processador|PC|DOUT[0]~DUPLICATE_q\ & ( (\processador|PC|DOUT[2]~DUPLICATE_q\ & (!\processador|PC|DOUT\(3) & !\processador|PC|DOUT\(1))) ) ) # ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[2]~DUPLICATE_q\ 
-- & (\processador|PC|DOUT\(3) & !\processador|PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(3),
	datac => \processador|PC|ALT_INV_DOUT\(1),
	dataf => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~2_combout\);

-- Location: LABCELL_X29_Y2_N39
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \ROM1|memROM~7_combout\);

-- Location: MLABCELL_X28_Y4_N12
\processador|decoderInstru1|saida[9]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida[9]~3_combout\ = ( !\ROM1|memROM~7_combout\ & ( (\ROM1|memROM~5_combout\ & (\ROM1|memROM~8_combout\ & !\ROM1|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \processador|decoderInstru1|saida[9]~3_combout\);

-- Location: FF_X26_Y2_N52
\processador|REG_RET|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|incrementaPC|Add0~29_sumout\,
	ena => \processador|decoderInstru1|saida[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(7));

-- Location: MLABCELL_X28_Y2_N15
\processador|MUX2|MUX_OUT[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[7]~7_combout\ = ( \processador|incrementaPC|Add0~29_sumout\ & ( (!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & ((!\processador|decoderInstru1|saida[10]~4_combout\) # (\processador|REG_RET|DOUT\(7)))) ) ) # ( 
-- !\processador|incrementaPC|Add0~29_sumout\ & ( (!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & (\processador|decoderInstru1|saida[10]~4_combout\ & \processador|REG_RET|DOUT\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datac => \processador|decoderInstru1|ALT_INV_saida[10]~4_combout\,
	datad => \processador|REG_RET|ALT_INV_DOUT\(7),
	dataf => \processador|incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \processador|MUX2|MUX_OUT[7]~7_combout\);

-- Location: FF_X28_Y2_N17
\processador|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|MUX2|MUX_OUT[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(7));

-- Location: MLABCELL_X28_Y2_N45
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\processador|PC|DOUT\(4) & ( !\processador|PC|DOUT\(6) & ( (!\processador|PC|DOUT\(7) & (!\processador|PC|DOUT\(5) & !\processador|PC|DOUT[8]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(7),
	datac => \processador|PC|ALT_INV_DOUT\(5),
	datad => \processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datae => \processador|PC|ALT_INV_DOUT\(4),
	dataf => \processador|PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X29_Y2_N36
\processador|decoderInstru1|Equal11~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal11~7_combout\ = ( \processador|PC|DOUT\(0) & ( (\ROM1|memROM~1_combout\ & (!\processador|PC|DOUT[1]~DUPLICATE_q\ & (!\processador|PC|DOUT\(2) & !\processador|PC|DOUT\(3)))) ) ) # ( !\processador|PC|DOUT\(0) & ( 
-- (\ROM1|memROM~1_combout\ & (!\processador|PC|DOUT\(3) & ((!\processador|PC|DOUT[1]~DUPLICATE_q\) # (\processador|PC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010100000000010001010000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	dataf => \processador|PC|ALT_INV_DOUT\(0),
	combout => \processador|decoderInstru1|Equal11~7_combout\);

-- Location: LABCELL_X29_Y3_N9
\processador|decoderInstru1|Equal11~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal11~4_combout\ = ( !\ROM1|memROM~5_combout\ & ( \processador|decoderInstru1|Equal11~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|decoderInstru1|ALT_INV_Equal11~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \processador|decoderInstru1|Equal11~4_combout\);

-- Location: LABCELL_X29_Y2_N51
\processador|decoderInstru1|saida[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida[1]~0_combout\ = ( \ROM1|memROM~7_combout\ & ( (!\ROM1|memROM~6_combout\ & ((!\ROM1|memROM~8_combout\))) # (\ROM1|memROM~6_combout\ & (!\ROM1|memROM~5_combout\ & \ROM1|memROM~8_combout\)) ) ) # ( !\ROM1|memROM~7_combout\ & 
-- ( (!\ROM1|memROM~6_combout\ & (!\ROM1|memROM~5_combout\ $ (!\ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000011001100001100001100110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \processador|decoderInstru1|saida[1]~0_combout\);

-- Location: LABCELL_X29_Y5_N42
\processador|decoderInstru1|saida[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida[4]~1_combout\ = ( !\ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~7_combout\ & (!\ROM1|memROM~5_combout\ $ (!\ROM1|memROM~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \processador|decoderInstru1|saida[4]~1_combout\);

-- Location: LABCELL_X29_Y5_N15
\processador|decoderInstru1|Equal11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal11~2_combout\ = ( !\ROM1|memROM~8_combout\ & ( (\ROM1|memROM~7_combout\ & (!\ROM1|memROM~5_combout\ & !\ROM1|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \processador|decoderInstru1|Equal11~2_combout\);

-- Location: LABCELL_X29_Y5_N6
\processador|REGA|DOUT[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|REGA|DOUT[1]~0_combout\ = ( !\processador|decoderInstru1|Equal11~2_combout\ & ( !\processador|decoderInstru1|saida[4]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	dataf => \processador|decoderInstru1|ALT_INV_Equal11~2_combout\,
	combout => \processador|REGA|DOUT[1]~0_combout\);

-- Location: LABCELL_X29_Y5_N51
\processador|decoderInstru1|Equal11~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal11~3_combout\ = ( \ROM1|memROM~8_combout\ & ( (\ROM1|memROM~7_combout\ & (!\ROM1|memROM~5_combout\ & \ROM1|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \processador|decoderInstru1|Equal11~3_combout\);

-- Location: LABCELL_X29_Y5_N57
\processador|ULA1|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Equal2~0_combout\ = ( !\processador|decoderInstru1|Equal11~3_combout\ & ( !\processador|decoderInstru1|saida[4]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	dataf => \processador|decoderInstru1|ALT_INV_Equal11~3_combout\,
	combout => \processador|ULA1|Equal2~0_combout\);

-- Location: MLABCELL_X28_Y4_N51
\processador|ULA1|saida[5]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[5]~8_combout\ = ( \RAM1|ram~547_combout\ & ( (!\ROM1|memROM~14_combout\ & (((\processador|decoderInstru1|Equal11~4_combout\)))) # (\ROM1|memROM~14_combout\ & (\processador|decoderInstru1|saida[1]~0_combout\ & 
-- (\ROM1|memROM~15_combout\ & !\processador|decoderInstru1|Equal11~4_combout\))) ) ) # ( !\RAM1|ram~547_combout\ & ( (!\processador|decoderInstru1|Equal11~4_combout\ & (\processador|decoderInstru1|saida[1]~0_combout\ & (!\ROM1|memROM~14_combout\ $ 
-- (\ROM1|memROM~15_combout\)))) # (\processador|decoderInstru1|Equal11~4_combout\ & (((!\ROM1|memROM~14_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000111001100010000011100110000000001110011000000000111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[1]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \processador|decoderInstru1|ALT_INV_Equal11~4_combout\,
	dataf => \RAM1|ALT_INV_ram~547_combout\,
	combout => \processador|ULA1|saida[5]~8_combout\);

-- Location: LABCELL_X26_Y3_N57
\ROM1|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~17_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \ROM1|memROM~17_combout\);

-- Location: MLABCELL_X28_Y4_N6
\RAM1|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~559_combout\ = ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~12_combout\ & ( (\ROM1|memROM~5_combout\ & (!\ROM1|memROM~13_combout\ & (\processador|decoderInstru1|Equal11~7_combout\ & !\ROM1|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal11~7_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~559_combout\);

-- Location: FF_X28_Y4_N34
\RAM1|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~27_q\);

-- Location: LABCELL_X29_Y4_N54
\RAM1|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~562_combout\ = ( !\ROM1|memROM~14_combout\ & ( \processador|decoderInstru1|Equal11~7_combout\ & ( (!\ROM1|memROM~15_combout\ & (\ROM1|memROM~13_combout\ & (\ROM1|memROM~5_combout\ & !\ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \processador|decoderInstru1|ALT_INV_Equal11~7_combout\,
	combout => \RAM1|ram~562_combout\);

-- Location: FF_X29_Y4_N2
\RAM1|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~35_q\);

-- Location: LABCELL_X29_Y4_N39
\RAM1|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~560_combout\ = ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~14_combout\ & ( (\processador|decoderInstru1|Equal11~7_combout\ & (\ROM1|memROM~13_combout\ & (\ROM1|memROM~5_combout\ & \ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~7_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM1|ram~560_combout\);

-- Location: FF_X29_Y4_N13
\RAM1|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~43_q\);

-- Location: LABCELL_X29_Y5_N18
\RAM1|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~561_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~15_combout\ & (\processador|decoderInstru1|Equal11~7_combout\ & (!\ROM1|memROM~14_combout\ & \ROM1|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal11~7_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM1|ram~561_combout\);

-- Location: FF_X29_Y4_N47
\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

-- Location: LABCELL_X29_Y4_N12
\RAM1|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~543_combout\ = ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~12_combout\ & (((\RAM1|ram~19_q\ & ((!\ROM1|memROM~14_combout\)))))) # (\ROM1|memROM~12_combout\ & ((((\ROM1|memROM~14_combout\))) # (\RAM1|ram~27_q\))) ) ) # ( 
-- \ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~12_combout\ & (((\RAM1|ram~35_q\ & ((!\ROM1|memROM~14_combout\)))))) # (\ROM1|memROM~12_combout\ & ((((\ROM1|memROM~14_combout\) # (\RAM1|ram~43_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100011011000010100101111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \RAM1|ALT_INV_ram~27_q\,
	datac => \RAM1|ALT_INV_ram~35_q\,
	datad => \RAM1|ALT_INV_ram~43_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	datag => \RAM1|ALT_INV_ram~19_q\,
	combout => \RAM1|ram~543_combout\);

-- Location: LABCELL_X29_Y4_N21
\KEY_0|saida[4]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \KEY_0|saida[4]~11_combout\ = ( \RAM1|ram~543_combout\ & ( (!\ROM1|memROM~15_combout\) # ((!\ROM1|memROM~14_combout\) # (!\processador|decoderInstru1|saida[1]~0_combout\)) ) ) # ( !\RAM1|ram~543_combout\ & ( 
-- (!\processador|decoderInstru1|saida[1]~0_combout\) # (!\ROM1|memROM~15_combout\ $ (!\ROM1|memROM~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100111100111111110011110011111111111111001111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \processador|decoderInstru1|ALT_INV_saida[1]~0_combout\,
	dataf => \RAM1|ALT_INV_ram~543_combout\,
	combout => \KEY_0|saida[4]~11_combout\);

-- Location: FF_X28_Y2_N53
\RAM1|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

-- Location: FF_X29_Y4_N25
\RAM1|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~42_q\);

-- Location: FF_X29_Y4_N23
\RAM1|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~34_q\);

-- Location: FF_X29_Y4_N10
\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

-- Location: LABCELL_X29_Y4_N24
\RAM1|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~539_combout\ = ( !\ROM1|memROM~13_combout\ & ( ((!\ROM1|memROM~12_combout\ & (((\RAM1|ram~18_q\ & !\ROM1|memROM~14_combout\)))) # (\ROM1|memROM~12_combout\ & (((\ROM1|memROM~14_combout\)) # (\RAM1|ram~26_q\)))) ) ) # ( \ROM1|memROM~13_combout\ & 
-- ( ((!\ROM1|memROM~12_combout\ & (((\RAM1|ram~34_q\ & !\ROM1|memROM~14_combout\)))) # (\ROM1|memROM~12_combout\ & (((\ROM1|memROM~14_combout\)) # (\RAM1|ram~42_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~26_q\,
	datab => \RAM1|ALT_INV_ram~42_q\,
	datac => \RAM1|ALT_INV_ram~34_q\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	datag => \RAM1|ALT_INV_ram~18_q\,
	combout => \RAM1|ram~539_combout\);

-- Location: LABCELL_X29_Y4_N6
\KEY_0|saida[3]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \KEY_0|saida[3]~10_combout\ = ( \processador|decoderInstru1|saida[1]~0_combout\ & ( \RAM1|ram~539_combout\ & ( (!\ROM1|memROM~15_combout\) # (!\ROM1|memROM~14_combout\) ) ) ) # ( !\processador|decoderInstru1|saida[1]~0_combout\ & ( \RAM1|ram~539_combout\ 
-- ) ) # ( \processador|decoderInstru1|saida[1]~0_combout\ & ( !\RAM1|ram~539_combout\ & ( !\ROM1|memROM~15_combout\ $ (!\ROM1|memROM~14_combout\) ) ) ) # ( !\processador|decoderInstru1|saida[1]~0_combout\ & ( !\RAM1|ram~539_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000011111111000011111111111111111111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \processador|decoderInstru1|ALT_INV_saida[1]~0_combout\,
	dataf => \RAM1|ALT_INV_ram~539_combout\,
	combout => \KEY_0|saida[3]~10_combout\);

-- Location: FF_X29_Y4_N50
\RAM1|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~41_q\);

-- Location: FF_X29_Y3_N5
\RAM1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~25_q\);

-- Location: FF_X29_Y4_N19
\RAM1|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~33_q\);

-- Location: FF_X29_Y4_N56
\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

-- Location: LABCELL_X29_Y4_N48
\RAM1|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~535_combout\ = ( !\ROM1|memROM~13_combout\ & ( ((!\ROM1|memROM~12_combout\ & (((\RAM1|ram~17_q\ & !\ROM1|memROM~14_combout\)))) # (\ROM1|memROM~12_combout\ & (((\ROM1|memROM~14_combout\)) # (\RAM1|ram~25_q\)))) ) ) # ( \ROM1|memROM~13_combout\ & 
-- ( ((!\ROM1|memROM~12_combout\ & (((\RAM1|ram~33_q\ & !\ROM1|memROM~14_combout\)))) # (\ROM1|memROM~12_combout\ & (((\ROM1|memROM~14_combout\)) # (\RAM1|ram~41_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100110011000011110101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~41_q\,
	datab => \RAM1|ALT_INV_ram~25_q\,
	datac => \RAM1|ALT_INV_ram~33_q\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	datag => \RAM1|ALT_INV_ram~17_q\,
	combout => \RAM1|ram~535_combout\);

-- Location: LABCELL_X29_Y3_N15
\KEY_0|saida[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \KEY_0|saida[2]~9_combout\ = ( \RAM1|ram~535_combout\ & ( (!\ROM1|memROM~15_combout\) # ((!\processador|decoderInstru1|saida[1]~0_combout\) # (!\ROM1|memROM~14_combout\)) ) ) # ( !\RAM1|ram~535_combout\ & ( 
-- (!\processador|decoderInstru1|saida[1]~0_combout\) # (!\ROM1|memROM~15_combout\ $ (!\ROM1|memROM~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111111100111100111111110011111111111111001111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \processador|decoderInstru1|ALT_INV_saida[1]~0_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \RAM1|ALT_INV_ram~535_combout\,
	combout => \KEY_0|saida[2]~9_combout\);

-- Location: MLABCELL_X28_Y4_N48
\processador|ULA1|saida[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[1]~3_combout\ = ( \RAM1|ram~531_combout\ & ( (!\processador|decoderInstru1|Equal11~4_combout\ & ((!\processador|decoderInstru1|saida[1]~0_combout\) # ((!\ROM1|memROM~14_combout\) # (!\ROM1|memROM~15_combout\)))) ) ) # ( 
-- !\RAM1|ram~531_combout\ & ( (!\processador|decoderInstru1|Equal11~4_combout\ & ((!\processador|decoderInstru1|saida[1]~0_combout\) # (!\ROM1|memROM~14_combout\ $ (!\ROM1|memROM~15_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000011100000101100001110000011110000111000001111000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[1]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal11~4_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \RAM1|ALT_INV_ram~531_combout\,
	combout => \processador|ULA1|saida[1]~3_combout\);

-- Location: MLABCELL_X28_Y3_N27
\processador|ULA1|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[1]~2_combout\ = ( \processador|decoderInstru1|Equal11~4_combout\ & ( \ROM1|memROM~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \processador|decoderInstru1|ALT_INV_Equal11~4_combout\,
	combout => \processador|ULA1|saida[1]~2_combout\);

-- Location: MLABCELL_X28_Y2_N36
\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = ( \ROM1|memROM~11_combout\ & ( \ROM1|memROM~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \ROM1|memROM~16_combout\);

-- Location: LABCELL_X29_Y5_N3
\processador|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[0]~0_combout\ = ( \KEY_0|saida[0]~8_combout\ & ( \processador|decoderInstru1|Equal11~3_combout\ & ( \processador|REGA|DOUT\(0) ) ) ) # ( !\KEY_0|saida[0]~8_combout\ & ( \processador|decoderInstru1|Equal11~3_combout\ & ( 
-- \processador|REGA|DOUT\(0) ) ) ) # ( \KEY_0|saida[0]~8_combout\ & ( !\processador|decoderInstru1|Equal11~3_combout\ & ( (!\processador|decoderInstru1|Equal11~4_combout\) # (\ROM1|memROM~12_combout\) ) ) ) # ( !\KEY_0|saida[0]~8_combout\ & ( 
-- !\processador|decoderInstru1|Equal11~3_combout\ & ( (\ROM1|memROM~12_combout\ & \processador|decoderInstru1|Equal11~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal11~4_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(0),
	datae => \KEY_0|ALT_INV_saida[0]~8_combout\,
	dataf => \processador|decoderInstru1|ALT_INV_Equal11~3_combout\,
	combout => \processador|ULA1|saida[0]~0_combout\);

-- Location: LABCELL_X29_Y3_N30
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

-- Location: LABCELL_X29_Y3_N33
\processador|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~1_sumout\ = SUM(( (!\processador|decoderInstru1|Equal11~4_combout\ & (((!\KEY_0|saida[0]~8_combout\)))) # (\processador|decoderInstru1|Equal11~4_combout\ & (((!\ROM1|memROM~16_combout\)) # (\processador|PC|DOUT[8]~DUPLICATE_q\))) ) 
-- + ( \processador|REGA|DOUT\(0) ) + ( \processador|ULA1|Add1~34_cout\ ))
-- \processador|ULA1|Add1~2\ = CARRY(( (!\processador|decoderInstru1|Equal11~4_combout\ & (((!\KEY_0|saida[0]~8_combout\)))) # (\processador|decoderInstru1|Equal11~4_combout\ & (((!\ROM1|memROM~16_combout\)) # (\processador|PC|DOUT[8]~DUPLICATE_q\))) ) + ( 
-- \processador|REGA|DOUT\(0) ) + ( \processador|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111001111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \processador|decoderInstru1|ALT_INV_Equal11~4_combout\,
	datac => \KEY_0|ALT_INV_saida[0]~8_combout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(0),
	cin => \processador|ULA1|Add1~34_cout\,
	sumout => \processador|ULA1|Add1~1_sumout\,
	cout => \processador|ULA1|Add1~2\);

-- Location: MLABCELL_X28_Y3_N30
\processador|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~1_sumout\ = SUM(( \processador|REGA|DOUT\(0) ) + ( (!\processador|decoderInstru1|Equal11~4_combout\ & (((\KEY_0|saida[0]~8_combout\)))) # (\processador|decoderInstru1|Equal11~4_combout\ & (!\processador|PC|DOUT[8]~DUPLICATE_q\ & 
-- ((\ROM1|memROM~16_combout\)))) ) + ( !VCC ))
-- \processador|ULA1|Add0~2\ = CARRY(( \processador|REGA|DOUT\(0) ) + ( (!\processador|decoderInstru1|Equal11~4_combout\ & (((\KEY_0|saida[0]~8_combout\)))) # (\processador|decoderInstru1|Equal11~4_combout\ & (!\processador|PC|DOUT[8]~DUPLICATE_q\ & 
-- ((\ROM1|memROM~16_combout\)))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~4_combout\,
	datab => \processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \KEY_0|ALT_INV_saida[0]~8_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(0),
	dataf => \ROM1|ALT_INV_memROM~16_combout\,
	cin => GND,
	sumout => \processador|ULA1|Add0~1_sumout\,
	cout => \processador|ULA1|Add0~2\);

-- Location: MLABCELL_X28_Y3_N24
\processador|ULA1|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[0]~1_combout\ = ( \processador|ULA1|Add0~1_sumout\ & ( ((!\processador|ULA1|Equal2~0_combout\ & (\processador|ULA1|saida[0]~0_combout\)) # (\processador|ULA1|Equal2~0_combout\ & ((\processador|ULA1|Add1~1_sumout\)))) # 
-- (\processador|decoderInstru1|Equal11~2_combout\) ) ) # ( !\processador|ULA1|Add0~1_sumout\ & ( (!\processador|decoderInstru1|Equal11~2_combout\ & ((!\processador|ULA1|Equal2~0_combout\ & (\processador|ULA1|saida[0]~0_combout\)) # 
-- (\processador|ULA1|Equal2~0_combout\ & ((\processador|ULA1|Add1~1_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000000110001110111001111110111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA1|ALT_INV_saida[0]~0_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal11~2_combout\,
	datac => \processador|ULA1|ALT_INV_Add1~1_sumout\,
	datad => \processador|ULA1|ALT_INV_Equal2~0_combout\,
	dataf => \processador|ULA1|ALT_INV_Add0~1_sumout\,
	combout => \processador|ULA1|saida[0]~1_combout\);

-- Location: LABCELL_X29_Y5_N12
\processador|decoderInstru1|saida[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida[6]~2_combout\ = ( \ROM1|memROM~8_combout\ & ( (\ROM1|memROM~7_combout\ & (!\ROM1|memROM~5_combout\ & \ROM1|memROM~6_combout\)) ) ) # ( !\ROM1|memROM~8_combout\ & ( !\ROM1|memROM~6_combout\ $ (((!\ROM1|memROM~7_combout\ & 
-- !\ROM1|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011110001000011101111000100000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \processador|decoderInstru1|saida[6]~2_combout\);

-- Location: FF_X28_Y3_N26
\processador|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|ULA1|saida[0]~1_combout\,
	ena => \processador|decoderInstru1|saida[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(0));

-- Location: LABCELL_X29_Y3_N36
\processador|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~5_sumout\ = SUM(( (!\processador|decoderInstru1|Equal11~4_combout\ & (!\KEY_0|saida[1]~14_combout\)) # (\processador|decoderInstru1|Equal11~4_combout\ & ((!\ROM1|memROM~13_combout\))) ) + ( \processador|REGA|DOUT\(1) ) + ( 
-- \processador|ULA1|Add1~2\ ))
-- \processador|ULA1|Add1~6\ = CARRY(( (!\processador|decoderInstru1|Equal11~4_combout\ & (!\KEY_0|saida[1]~14_combout\)) # (\processador|decoderInstru1|Equal11~4_combout\ & ((!\ROM1|memROM~13_combout\))) ) + ( \processador|REGA|DOUT\(1) ) + ( 
-- \processador|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101100011011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~4_combout\,
	datab => \KEY_0|ALT_INV_saida[1]~14_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(1),
	cin => \processador|ULA1|Add1~2\,
	sumout => \processador|ULA1|Add1~5_sumout\,
	cout => \processador|ULA1|Add1~6\);

-- Location: MLABCELL_X28_Y3_N33
\processador|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~5_sumout\ = SUM(( (!\processador|decoderInstru1|Equal11~4_combout\ & ((\KEY_0|saida[1]~14_combout\))) # (\processador|decoderInstru1|Equal11~4_combout\ & (\ROM1|memROM~13_combout\)) ) + ( \processador|REGA|DOUT\(1) ) + ( 
-- \processador|ULA1|Add0~2\ ))
-- \processador|ULA1|Add0~6\ = CARRY(( (!\processador|decoderInstru1|Equal11~4_combout\ & ((\KEY_0|saida[1]~14_combout\))) # (\processador|decoderInstru1|Equal11~4_combout\ & (\ROM1|memROM~13_combout\)) ) + ( \processador|REGA|DOUT\(1) ) + ( 
-- \processador|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~4_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \KEY_0|ALT_INV_saida[1]~14_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(1),
	cin => \processador|ULA1|Add0~2\,
	sumout => \processador|ULA1|Add0~5_sumout\,
	cout => \processador|ULA1|Add0~6\);

-- Location: MLABCELL_X28_Y3_N54
\processador|ULA1|saida[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[1]~4_combout\ = ( \processador|ULA1|Equal2~0_combout\ & ( \processador|ULA1|Add0~5_sumout\ & ( (!\processador|REGA|DOUT[1]~0_combout\) # (\processador|ULA1|Add1~5_sumout\) ) ) ) # ( !\processador|ULA1|Equal2~0_combout\ & ( 
-- \processador|ULA1|Add0~5_sumout\ & ( (!\processador|REGA|DOUT[1]~0_combout\ & ((\processador|ULA1|saida[1]~2_combout\) # (\processador|ULA1|saida[1]~3_combout\))) ) ) ) # ( \processador|ULA1|Equal2~0_combout\ & ( !\processador|ULA1|Add0~5_sumout\ & ( 
-- (\processador|REGA|DOUT[1]~0_combout\ & \processador|ULA1|Add1~5_sumout\) ) ) ) # ( !\processador|ULA1|Equal2~0_combout\ & ( !\processador|ULA1|Add0~5_sumout\ & ( (!\processador|REGA|DOUT[1]~0_combout\ & ((\processador|ULA1|saida[1]~2_combout\) # 
-- (\processador|ULA1|saida[1]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100000000000011001101001100010011001100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA1|ALT_INV_saida[1]~3_combout\,
	datab => \processador|REGA|ALT_INV_DOUT[1]~0_combout\,
	datac => \processador|ULA1|ALT_INV_saida[1]~2_combout\,
	datad => \processador|ULA1|ALT_INV_Add1~5_sumout\,
	datae => \processador|ULA1|ALT_INV_Equal2~0_combout\,
	dataf => \processador|ULA1|ALT_INV_Add0~5_sumout\,
	combout => \processador|ULA1|saida[1]~4_combout\);

-- Location: FF_X28_Y3_N56
\processador|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|ULA1|saida[1]~4_combout\,
	ena => \processador|decoderInstru1|saida[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(1));

-- Location: FF_X28_Y4_N2
\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

-- Location: FF_X28_Y4_N25
\RAM1|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~40_q\);

-- Location: LABCELL_X29_Y4_N33
\RAM1|ram~32feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~32feeder_combout\ = \processador|REGA|DOUT\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|REGA|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~32feeder_combout\);

-- Location: FF_X29_Y4_N35
\RAM1|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RAM1|ram~32feeder_combout\,
	ena => \RAM1|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~32_q\);

-- Location: FF_X29_Y4_N59
\RAM1|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~16_q\);

-- Location: MLABCELL_X28_Y4_N0
\RAM1|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~531_combout\ = ( !\ROM1|memROM~13_combout\ & ( ((!\ROM1|memROM~12_combout\ & (((\RAM1|ram~16_q\ & !\ROM1|memROM~14_combout\)))) # (\ROM1|memROM~12_combout\ & (((\ROM1|memROM~14_combout\)) # (\RAM1|ram~24_q\)))) ) ) # ( \ROM1|memROM~13_combout\ & 
-- ( ((!\ROM1|memROM~12_combout\ & (((\RAM1|ram~32_q\ & !\ROM1|memROM~14_combout\)))) # (\ROM1|memROM~12_combout\ & (((\ROM1|memROM~14_combout\)) # (\RAM1|ram~40_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~24_q\,
	datab => \RAM1|ALT_INV_ram~40_q\,
	datac => \RAM1|ALT_INV_ram~32_q\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	datag => \RAM1|ALT_INV_ram~16_q\,
	combout => \RAM1|ram~531_combout\);

-- Location: LABCELL_X29_Y3_N6
\KEY_0|saida[1]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \KEY_0|saida[1]~14_combout\ = ( \RAM1|ram~531_combout\ & ( (!\ROM1|memROM~15_combout\) # ((!\ROM1|memROM~14_combout\) # (!\processador|decoderInstru1|saida[1]~0_combout\)) ) ) # ( !\RAM1|ram~531_combout\ & ( 
-- (!\processador|decoderInstru1|saida[1]~0_combout\) # (!\ROM1|memROM~15_combout\ $ (!\ROM1|memROM~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100111100111111110011110011111111111111001111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \processador|decoderInstru1|ALT_INV_saida[1]~0_combout\,
	dataf => \RAM1|ALT_INV_ram~531_combout\,
	combout => \KEY_0|saida[1]~14_combout\);

-- Location: LABCELL_X29_Y3_N39
\processador|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~9_sumout\ = SUM(( \processador|REGA|DOUT\(2) ) + ( (!\KEY_0|saida[2]~9_combout\) # (\processador|decoderInstru1|Equal11~4_combout\) ) + ( \processador|ULA1|Add1~6\ ))
-- \processador|ULA1|Add1~10\ = CARRY(( \processador|REGA|DOUT\(2) ) + ( (!\KEY_0|saida[2]~9_combout\) # (\processador|decoderInstru1|Equal11~4_combout\) ) + ( \processador|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~4_combout\,
	datac => \KEY_0|ALT_INV_saida[2]~9_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(2),
	cin => \processador|ULA1|Add1~6\,
	sumout => \processador|ULA1|Add1~9_sumout\,
	cout => \processador|ULA1|Add1~10\);

-- Location: MLABCELL_X28_Y3_N36
\processador|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~9_sumout\ = SUM(( (!\processador|decoderInstru1|Equal11~4_combout\ & \KEY_0|saida[2]~9_combout\) ) + ( \processador|REGA|DOUT\(2) ) + ( \processador|ULA1|Add0~6\ ))
-- \processador|ULA1|Add0~10\ = CARRY(( (!\processador|decoderInstru1|Equal11~4_combout\ & \KEY_0|saida[2]~9_combout\) ) + ( \processador|REGA|DOUT\(2) ) + ( \processador|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|REGA|ALT_INV_DOUT\(2),
	datac => \processador|decoderInstru1|ALT_INV_Equal11~4_combout\,
	datad => \KEY_0|ALT_INV_saida[2]~9_combout\,
	cin => \processador|ULA1|Add0~6\,
	sumout => \processador|ULA1|Add0~9_sumout\,
	cout => \processador|ULA1|Add0~10\);

-- Location: MLABCELL_X28_Y3_N12
\processador|ULA1|saida[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[2]~5_combout\ = ( \processador|ULA1|Add1~9_sumout\ & ( \processador|ULA1|Add0~9_sumout\ & ( ((!\processador|REGA|DOUT[1]~0_combout\ & (!\processador|decoderInstru1|Equal11~4_combout\ & \KEY_0|saida[2]~9_combout\))) # 
-- (\processador|ULA1|Equal2~0_combout\) ) ) ) # ( !\processador|ULA1|Add1~9_sumout\ & ( \processador|ULA1|Add0~9_sumout\ & ( (!\processador|REGA|DOUT[1]~0_combout\ & (((!\processador|decoderInstru1|Equal11~4_combout\ & \KEY_0|saida[2]~9_combout\)) # 
-- (\processador|ULA1|Equal2~0_combout\))) ) ) ) # ( \processador|ULA1|Add1~9_sumout\ & ( !\processador|ULA1|Add0~9_sumout\ & ( (!\processador|REGA|DOUT[1]~0_combout\ & (!\processador|decoderInstru1|Equal11~4_combout\ & (!\processador|ULA1|Equal2~0_combout\ 
-- & \KEY_0|saida[2]~9_combout\))) # (\processador|REGA|DOUT[1]~0_combout\ & (((\processador|ULA1|Equal2~0_combout\)))) ) ) ) # ( !\processador|ULA1|Add1~9_sumout\ & ( !\processador|ULA1|Add0~9_sumout\ & ( (!\processador|REGA|DOUT[1]~0_combout\ & 
-- (!\processador|decoderInstru1|Equal11~4_combout\ & (!\processador|ULA1|Equal2~0_combout\ & \KEY_0|saida[2]~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000001011000010100001010100010100000111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|REGA|ALT_INV_DOUT[1]~0_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal11~4_combout\,
	datac => \processador|ULA1|ALT_INV_Equal2~0_combout\,
	datad => \KEY_0|ALT_INV_saida[2]~9_combout\,
	datae => \processador|ULA1|ALT_INV_Add1~9_sumout\,
	dataf => \processador|ULA1|ALT_INV_Add0~9_sumout\,
	combout => \processador|ULA1|saida[2]~5_combout\);

-- Location: FF_X28_Y3_N14
\processador|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|ULA1|saida[2]~5_combout\,
	ena => \processador|decoderInstru1|saida[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(2));

-- Location: MLABCELL_X28_Y3_N39
\processador|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~13_sumout\ = SUM(( (!\processador|decoderInstru1|Equal11~4_combout\ & \KEY_0|saida[3]~10_combout\) ) + ( \processador|REGA|DOUT\(3) ) + ( \processador|ULA1|Add0~10\ ))
-- \processador|ULA1|Add0~14\ = CARRY(( (!\processador|decoderInstru1|Equal11~4_combout\ & \KEY_0|saida[3]~10_combout\) ) + ( \processador|REGA|DOUT\(3) ) + ( \processador|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|REGA|ALT_INV_DOUT\(3),
	datac => \processador|decoderInstru1|ALT_INV_Equal11~4_combout\,
	datad => \KEY_0|ALT_INV_saida[3]~10_combout\,
	cin => \processador|ULA1|Add0~10\,
	sumout => \processador|ULA1|Add0~13_sumout\,
	cout => \processador|ULA1|Add0~14\);

-- Location: LABCELL_X29_Y3_N42
\processador|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~13_sumout\ = SUM(( (!\KEY_0|saida[3]~10_combout\) # (\processador|decoderInstru1|Equal11~4_combout\) ) + ( \processador|REGA|DOUT\(3) ) + ( \processador|ULA1|Add1~10\ ))
-- \processador|ULA1|Add1~14\ = CARRY(( (!\KEY_0|saida[3]~10_combout\) # (\processador|decoderInstru1|Equal11~4_combout\) ) + ( \processador|REGA|DOUT\(3) ) + ( \processador|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|decoderInstru1|ALT_INV_Equal11~4_combout\,
	datac => \processador|REGA|ALT_INV_DOUT\(3),
	datad => \KEY_0|ALT_INV_saida[3]~10_combout\,
	cin => \processador|ULA1|Add1~10\,
	sumout => \processador|ULA1|Add1~13_sumout\,
	cout => \processador|ULA1|Add1~14\);

-- Location: MLABCELL_X28_Y3_N18
\processador|ULA1|saida[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[3]~6_combout\ = ( \processador|ULA1|Add1~13_sumout\ & ( \processador|REGA|DOUT[1]~0_combout\ & ( \processador|ULA1|Equal2~0_combout\ ) ) ) # ( \processador|ULA1|Add1~13_sumout\ & ( !\processador|REGA|DOUT[1]~0_combout\ & ( 
-- (!\processador|ULA1|Equal2~0_combout\ & (\KEY_0|saida[3]~10_combout\ & (!\processador|decoderInstru1|Equal11~4_combout\))) # (\processador|ULA1|Equal2~0_combout\ & (((\processador|ULA1|Add0~13_sumout\)))) ) ) ) # ( !\processador|ULA1|Add1~13_sumout\ & ( 
-- !\processador|REGA|DOUT[1]~0_combout\ & ( (!\processador|ULA1|Equal2~0_combout\ & (\KEY_0|saida[3]~10_combout\ & (!\processador|decoderInstru1|Equal11~4_combout\))) # (\processador|ULA1|Equal2~0_combout\ & (((\processador|ULA1|Add0~13_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001111010000000100111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_0|ALT_INV_saida[3]~10_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal11~4_combout\,
	datac => \processador|ULA1|ALT_INV_Equal2~0_combout\,
	datad => \processador|ULA1|ALT_INV_Add0~13_sumout\,
	datae => \processador|ULA1|ALT_INV_Add1~13_sumout\,
	dataf => \processador|REGA|ALT_INV_DOUT[1]~0_combout\,
	combout => \processador|ULA1|saida[3]~6_combout\);

-- Location: FF_X28_Y3_N20
\processador|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|ULA1|saida[3]~6_combout\,
	ena => \processador|decoderInstru1|saida[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(3));

-- Location: MLABCELL_X28_Y3_N42
\processador|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~17_sumout\ = SUM(( (!\processador|decoderInstru1|Equal11~4_combout\ & \KEY_0|saida[4]~11_combout\) ) + ( \processador|REGA|DOUT\(4) ) + ( \processador|ULA1|Add0~14\ ))
-- \processador|ULA1|Add0~18\ = CARRY(( (!\processador|decoderInstru1|Equal11~4_combout\ & \KEY_0|saida[4]~11_combout\) ) + ( \processador|REGA|DOUT\(4) ) + ( \processador|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|decoderInstru1|ALT_INV_Equal11~4_combout\,
	datac => \processador|REGA|ALT_INV_DOUT\(4),
	datad => \KEY_0|ALT_INV_saida[4]~11_combout\,
	cin => \processador|ULA1|Add0~14\,
	sumout => \processador|ULA1|Add0~17_sumout\,
	cout => \processador|ULA1|Add0~18\);

-- Location: LABCELL_X29_Y3_N45
\processador|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~17_sumout\ = SUM(( (!\KEY_0|saida[4]~11_combout\) # (\processador|decoderInstru1|Equal11~4_combout\) ) + ( \processador|REGA|DOUT\(4) ) + ( \processador|ULA1|Add1~14\ ))
-- \processador|ULA1|Add1~18\ = CARRY(( (!\KEY_0|saida[4]~11_combout\) # (\processador|decoderInstru1|Equal11~4_combout\) ) + ( \processador|REGA|DOUT\(4) ) + ( \processador|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|decoderInstru1|ALT_INV_Equal11~4_combout\,
	datac => \processador|REGA|ALT_INV_DOUT\(4),
	datad => \KEY_0|ALT_INV_saida[4]~11_combout\,
	cin => \processador|ULA1|Add1~14\,
	sumout => \processador|ULA1|Add1~17_sumout\,
	cout => \processador|ULA1|Add1~18\);

-- Location: MLABCELL_X28_Y3_N0
\processador|ULA1|saida[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[4]~7_combout\ = ( \processador|REGA|DOUT[1]~0_combout\ & ( \processador|ULA1|Add1~17_sumout\ & ( \processador|ULA1|Equal2~0_combout\ ) ) ) # ( !\processador|REGA|DOUT[1]~0_combout\ & ( \processador|ULA1|Add1~17_sumout\ & ( 
-- (!\processador|ULA1|Equal2~0_combout\ & (\KEY_0|saida[4]~11_combout\ & (!\processador|decoderInstru1|Equal11~4_combout\))) # (\processador|ULA1|Equal2~0_combout\ & (((\processador|ULA1|Add0~17_sumout\)))) ) ) ) # ( !\processador|REGA|DOUT[1]~0_combout\ & 
-- ( !\processador|ULA1|Add1~17_sumout\ & ( (!\processador|ULA1|Equal2~0_combout\ & (\KEY_0|saida[4]~11_combout\ & (!\processador|decoderInstru1|Equal11~4_combout\))) # (\processador|ULA1|Equal2~0_combout\ & (((\processador|ULA1|Add0~17_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001111000000000000000001000000010011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_0|ALT_INV_saida[4]~11_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal11~4_combout\,
	datac => \processador|ULA1|ALT_INV_Equal2~0_combout\,
	datad => \processador|ULA1|ALT_INV_Add0~17_sumout\,
	datae => \processador|REGA|ALT_INV_DOUT[1]~0_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \processador|ULA1|saida[4]~7_combout\);

-- Location: FF_X28_Y3_N2
\processador|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|ULA1|saida[4]~7_combout\,
	ena => \processador|decoderInstru1|saida[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(4));

-- Location: LABCELL_X29_Y3_N48
\processador|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~21_sumout\ = SUM(( (!\processador|decoderInstru1|Equal11~4_combout\ & (!\KEY_0|saida[5]~15_combout\)) # (\processador|decoderInstru1|Equal11~4_combout\ & (((!\ROM1|memROM~17_combout\) # (\processador|PC|DOUT[8]~DUPLICATE_q\)))) ) + 
-- ( \processador|REGA|DOUT\(5) ) + ( \processador|ULA1|Add1~18\ ))
-- \processador|ULA1|Add1~22\ = CARRY(( (!\processador|decoderInstru1|Equal11~4_combout\ & (!\KEY_0|saida[5]~15_combout\)) # (\processador|decoderInstru1|Equal11~4_combout\ & (((!\ROM1|memROM~17_combout\) # (\processador|PC|DOUT[8]~DUPLICATE_q\)))) ) + ( 
-- \processador|REGA|DOUT\(5) ) + ( \processador|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~4_combout\,
	datab => \KEY_0|ALT_INV_saida[5]~15_combout\,
	datac => \processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(5),
	cin => \processador|ULA1|Add1~18\,
	sumout => \processador|ULA1|Add1~21_sumout\,
	cout => \processador|ULA1|Add1~22\);

-- Location: MLABCELL_X28_Y3_N45
\processador|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~21_sumout\ = SUM(( (!\processador|decoderInstru1|Equal11~4_combout\ & (((\KEY_0|saida[5]~15_combout\)))) # (\processador|decoderInstru1|Equal11~4_combout\ & (!\processador|PC|DOUT[8]~DUPLICATE_q\ & ((\ROM1|memROM~17_combout\)))) ) + 
-- ( \processador|REGA|DOUT\(5) ) + ( \processador|ULA1|Add0~18\ ))
-- \processador|ULA1|Add0~22\ = CARRY(( (!\processador|decoderInstru1|Equal11~4_combout\ & (((\KEY_0|saida[5]~15_combout\)))) # (\processador|decoderInstru1|Equal11~4_combout\ & (!\processador|PC|DOUT[8]~DUPLICATE_q\ & ((\ROM1|memROM~17_combout\)))) ) + ( 
-- \processador|REGA|DOUT\(5) ) + ( \processador|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \processador|decoderInstru1|ALT_INV_Equal11~4_combout\,
	datac => \KEY_0|ALT_INV_saida[5]~15_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(5),
	cin => \processador|ULA1|Add0~18\,
	sumout => \processador|ULA1|Add0~21_sumout\,
	cout => \processador|ULA1|Add0~22\);

-- Location: MLABCELL_X28_Y4_N36
\processador|ULA1|saida[5]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[5]~9_combout\ = ( \processador|ULA1|Add0~21_sumout\ & ( (!\processador|REGA|DOUT[1]~0_combout\ & (((!\processador|ULA1|saida[5]~8_combout\)) # (\processador|ULA1|Equal2~0_combout\))) # (\processador|REGA|DOUT[1]~0_combout\ & 
-- (\processador|ULA1|Equal2~0_combout\ & ((\processador|ULA1|Add1~21_sumout\)))) ) ) # ( !\processador|ULA1|Add0~21_sumout\ & ( (!\processador|REGA|DOUT[1]~0_combout\ & (!\processador|ULA1|Equal2~0_combout\ & (!\processador|ULA1|saida[5]~8_combout\))) # 
-- (\processador|REGA|DOUT[1]~0_combout\ & (\processador|ULA1|Equal2~0_combout\ & ((\processador|ULA1|Add1~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010010001100000001001000110100010101100111010001010110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|REGA|ALT_INV_DOUT[1]~0_combout\,
	datab => \processador|ULA1|ALT_INV_Equal2~0_combout\,
	datac => \processador|ULA1|ALT_INV_saida[5]~8_combout\,
	datad => \processador|ULA1|ALT_INV_Add1~21_sumout\,
	dataf => \processador|ULA1|ALT_INV_Add0~21_sumout\,
	combout => \processador|ULA1|saida[5]~9_combout\);

-- Location: FF_X28_Y4_N38
\processador|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|ULA1|saida[5]~9_combout\,
	ena => \processador|decoderInstru1|saida[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(5));

-- Location: LABCELL_X29_Y4_N18
\RAM1|ram~36feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~36feeder_combout\ = \processador|REGA|DOUT\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|REGA|ALT_INV_DOUT\(5),
	combout => \RAM1|ram~36feeder_combout\);

-- Location: FF_X29_Y4_N20
\RAM1|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RAM1|ram~36feeder_combout\,
	ena => \RAM1|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~36_q\);

-- Location: FF_X29_Y3_N32
\RAM1|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~28_q\);

-- Location: FF_X29_Y3_N20
\RAM1|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~44_q\);

-- Location: FF_X28_Y3_N49
\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

-- Location: LABCELL_X29_Y3_N18
\RAM1|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~547_combout\ = ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~12_combout\ & (!\ROM1|memROM~14_combout\ & (\RAM1|ram~20_q\))) # (\ROM1|memROM~12_combout\ & ((((\RAM1|ram~28_q\))) # (\ROM1|memROM~14_combout\))) ) ) # ( \ROM1|memROM~13_combout\ & ( 
-- (!\ROM1|memROM~12_combout\ & (!\ROM1|memROM~14_combout\ & (\RAM1|ram~36_q\))) # (\ROM1|memROM~12_combout\ & ((((\RAM1|ram~44_q\))) # (\ROM1|memROM~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100101011101000110010001100100011001010111010101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \RAM1|ALT_INV_ram~36_q\,
	datad => \RAM1|ALT_INV_ram~28_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \RAM1|ALT_INV_ram~44_q\,
	datag => \RAM1|ALT_INV_ram~20_q\,
	combout => \RAM1|ram~547_combout\);

-- Location: LABCELL_X29_Y3_N12
\KEY_0|saida[5]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \KEY_0|saida[5]~15_combout\ = ( \RAM1|ram~547_combout\ & ( (!\ROM1|memROM~15_combout\) # ((!\processador|decoderInstru1|saida[1]~0_combout\) # (!\ROM1|memROM~14_combout\)) ) ) # ( !\RAM1|ram~547_combout\ & ( 
-- (!\processador|decoderInstru1|saida[1]~0_combout\) # (!\ROM1|memROM~15_combout\ $ (!\ROM1|memROM~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111111100111100111111110011111111111111001111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \processador|decoderInstru1|ALT_INV_saida[1]~0_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \RAM1|ALT_INV_ram~547_combout\,
	combout => \KEY_0|saida[5]~15_combout\);

-- Location: MLABCELL_X28_Y3_N48
\processador|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~25_sumout\ = SUM(( (!\processador|decoderInstru1|Equal11~4_combout\ & ((\KEY_0|saida[6]~16_combout\))) # (\processador|decoderInstru1|Equal11~4_combout\ & (\ROM1|memROM~15_combout\)) ) + ( \processador|REGA|DOUT\(6) ) + ( 
-- \processador|ULA1|Add0~22\ ))
-- \processador|ULA1|Add0~26\ = CARRY(( (!\processador|decoderInstru1|Equal11~4_combout\ & ((\KEY_0|saida[6]~16_combout\))) # (\processador|decoderInstru1|Equal11~4_combout\ & (\ROM1|memROM~15_combout\)) ) + ( \processador|REGA|DOUT\(6) ) + ( 
-- \processador|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~4_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \processador|REGA|ALT_INV_DOUT\(6),
	datad => \KEY_0|ALT_INV_saida[6]~16_combout\,
	cin => \processador|ULA1|Add0~22\,
	sumout => \processador|ULA1|Add0~25_sumout\,
	cout => \processador|ULA1|Add0~26\);

-- Location: MLABCELL_X28_Y4_N27
\processador|ULA1|saida[6]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[6]~10_combout\ = ( \RAM1|ram~551_combout\ & ( (!\ROM1|memROM~15_combout\ & (((\processador|decoderInstru1|Equal11~4_combout\)))) # (\ROM1|memROM~15_combout\ & (\ROM1|memROM~14_combout\ & 
-- (\processador|decoderInstru1|saida[1]~0_combout\ & !\processador|decoderInstru1|Equal11~4_combout\))) ) ) # ( !\RAM1|ram~551_combout\ & ( (!\processador|decoderInstru1|Equal11~4_combout\ & (\processador|decoderInstru1|saida[1]~0_combout\ & 
-- (!\ROM1|memROM~14_combout\ $ (\ROM1|memROM~15_combout\)))) # (\processador|decoderInstru1|Equal11~4_combout\ & (((!\ROM1|memROM~15_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100111001100000010011100110000000001110011000000000111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \processador|decoderInstru1|ALT_INV_saida[1]~0_combout\,
	datad => \processador|decoderInstru1|ALT_INV_Equal11~4_combout\,
	dataf => \RAM1|ALT_INV_ram~551_combout\,
	combout => \processador|ULA1|saida[6]~10_combout\);

-- Location: MLABCELL_X28_Y4_N39
\processador|ULA1|saida[6]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[6]~11_combout\ = ( \processador|ULA1|Add1~25_sumout\ & ( (!\processador|REGA|DOUT[1]~0_combout\ & ((!\processador|ULA1|Equal2~0_combout\ & ((!\processador|ULA1|saida[6]~10_combout\))) # (\processador|ULA1|Equal2~0_combout\ & 
-- (\processador|ULA1|Add0~25_sumout\)))) # (\processador|REGA|DOUT[1]~0_combout\ & (\processador|ULA1|Equal2~0_combout\)) ) ) # ( !\processador|ULA1|Add1~25_sumout\ & ( (!\processador|REGA|DOUT[1]~0_combout\ & ((!\processador|ULA1|Equal2~0_combout\ & 
-- ((!\processador|ULA1|saida[6]~10_combout\))) # (\processador|ULA1|Equal2~0_combout\ & (\processador|ULA1|Add0~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101000000010100010100000001010011011000100111001101100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|REGA|ALT_INV_DOUT[1]~0_combout\,
	datab => \processador|ULA1|ALT_INV_Equal2~0_combout\,
	datac => \processador|ULA1|ALT_INV_Add0~25_sumout\,
	datad => \processador|ULA1|ALT_INV_saida[6]~10_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~25_sumout\,
	combout => \processador|ULA1|saida[6]~11_combout\);

-- Location: FF_X28_Y4_N41
\processador|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|ULA1|saida[6]~11_combout\,
	ena => \processador|decoderInstru1|saida[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(6));

-- Location: MLABCELL_X28_Y4_N33
\RAM1|ram~29feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~29feeder_combout\ = \processador|REGA|DOUT\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|REGA|ALT_INV_DOUT\(6),
	combout => \RAM1|ram~29feeder_combout\);

-- Location: FF_X28_Y4_N35
\RAM1|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RAM1|ram~29feeder_combout\,
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~29_q\);

-- Location: FF_X28_Y4_N43
\RAM1|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~45_q\);

-- Location: FF_X29_Y4_N34
\RAM1|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~37_q\);

-- Location: FF_X29_Y4_N41
\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

-- Location: MLABCELL_X28_Y4_N42
\RAM1|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~551_combout\ = ( !\ROM1|memROM~13_combout\ & ( ((!\ROM1|memROM~14_combout\ & ((!\ROM1|memROM~12_combout\ & ((\RAM1|ram~21_q\))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~29_q\)))) # (\ROM1|memROM~14_combout\ & (((\ROM1|memROM~12_combout\))))) ) ) 
-- # ( \ROM1|memROM~13_combout\ & ( ((!\ROM1|memROM~14_combout\ & ((!\ROM1|memROM~12_combout\ & ((\RAM1|ram~37_q\))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~45_q\)))) # (\ROM1|memROM~14_combout\ & (((\ROM1|memROM~12_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000011110000000001010101111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~29_q\,
	datab => \RAM1|ALT_INV_ram~45_q\,
	datac => \RAM1|ALT_INV_ram~37_q\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	datag => \RAM1|ALT_INV_ram~21_q\,
	combout => \RAM1|ram~551_combout\);

-- Location: MLABCELL_X28_Y4_N15
\KEY_0|saida[6]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \KEY_0|saida[6]~16_combout\ = ( \RAM1|ram~551_combout\ & ( (!\ROM1|memROM~14_combout\) # ((!\ROM1|memROM~15_combout\) # (!\processador|decoderInstru1|saida[1]~0_combout\)) ) ) # ( !\RAM1|ram~551_combout\ & ( 
-- (!\processador|decoderInstru1|saida[1]~0_combout\) # (!\ROM1|memROM~14_combout\ $ (!\ROM1|memROM~15_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100111100111111110011110011111111111111001111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \processador|decoderInstru1|ALT_INV_saida[1]~0_combout\,
	dataf => \RAM1|ALT_INV_ram~551_combout\,
	combout => \KEY_0|saida[6]~16_combout\);

-- Location: LABCELL_X29_Y3_N51
\processador|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~25_sumout\ = SUM(( (!\processador|decoderInstru1|Equal11~4_combout\ & ((!\KEY_0|saida[6]~16_combout\))) # (\processador|decoderInstru1|Equal11~4_combout\ & (!\ROM1|memROM~15_combout\)) ) + ( \processador|REGA|DOUT\(6) ) + ( 
-- \processador|ULA1|Add1~22\ ))
-- \processador|ULA1|Add1~26\ = CARRY(( (!\processador|decoderInstru1|Equal11~4_combout\ & ((!\KEY_0|saida[6]~16_combout\))) # (\processador|decoderInstru1|Equal11~4_combout\ & (!\ROM1|memROM~15_combout\)) ) + ( \processador|REGA|DOUT\(6) ) + ( 
-- \processador|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~4_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \KEY_0|ALT_INV_saida[6]~16_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(6),
	cin => \processador|ULA1|Add1~22\,
	sumout => \processador|ULA1|Add1~25_sumout\,
	cout => \processador|ULA1|Add1~26\);

-- Location: MLABCELL_X28_Y4_N18
\processador|decoderInstru1|Equal11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal11~1_combout\ = ( !\ROM1|memROM~7_combout\ & ( (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~8_combout\ & !\ROM1|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \processador|decoderInstru1|Equal11~1_combout\);

-- Location: LABCELL_X29_Y4_N30
\RAM1|ram~38feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~38feeder_combout\ = \processador|REGA|DOUT\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|REGA|ALT_INV_DOUT\(7),
	combout => \RAM1|ram~38feeder_combout\);

-- Location: FF_X29_Y4_N31
\RAM1|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RAM1|ram~38feeder_combout\,
	ena => \RAM1|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~38_q\);

-- Location: FF_X28_Y4_N32
\RAM1|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~30_q\);

-- Location: FF_X28_Y4_N28
\RAM1|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~46_q\);

-- Location: FF_X29_Y4_N38
\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

-- Location: MLABCELL_X28_Y4_N54
\RAM1|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~555_combout\ = ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~12_combout\ & (!\ROM1|memROM~14_combout\ & (\RAM1|ram~22_q\))) # (\ROM1|memROM~12_combout\ & ((((\RAM1|ram~30_q\))) # (\ROM1|memROM~14_combout\))) ) ) # ( \ROM1|memROM~13_combout\ & ( 
-- (!\ROM1|memROM~12_combout\ & (!\ROM1|memROM~14_combout\ & (\RAM1|ram~38_q\))) # (\ROM1|memROM~12_combout\ & ((((\RAM1|ram~46_q\))) # (\ROM1|memROM~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100101011101000110010001100100011001010111010101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \RAM1|ALT_INV_ram~38_q\,
	datad => \RAM1|ALT_INV_ram~30_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \RAM1|ALT_INV_ram~46_q\,
	datag => \RAM1|ALT_INV_ram~22_q\,
	combout => \RAM1|ram~555_combout\);

-- Location: MLABCELL_X28_Y4_N21
\KEY_0|saida[7]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \KEY_0|saida[7]~12_combout\ = ( \processador|decoderInstru1|saida[1]~0_combout\ & ( (!\ROM1|memROM~14_combout\ & ((\RAM1|ram~555_combout\) # (\ROM1|memROM~15_combout\))) # (\ROM1|memROM~14_combout\ & (!\ROM1|memROM~15_combout\)) ) ) # ( 
-- !\processador|decoderInstru1|saida[1]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100111100111111000011110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \RAM1|ALT_INV_ram~555_combout\,
	dataf => \processador|decoderInstru1|ALT_INV_saida[1]~0_combout\,
	combout => \KEY_0|saida[7]~12_combout\);

-- Location: MLABCELL_X28_Y3_N51
\processador|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~29_sumout\ = SUM(( (!\processador|decoderInstru1|Equal11~4_combout\ & \KEY_0|saida[7]~12_combout\) ) + ( \processador|REGA|DOUT\(7) ) + ( \processador|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~4_combout\,
	datac => \processador|REGA|ALT_INV_DOUT\(7),
	datad => \KEY_0|ALT_INV_saida[7]~12_combout\,
	cin => \processador|ULA1|Add0~26\,
	sumout => \processador|ULA1|Add0~29_sumout\);

-- Location: MLABCELL_X28_Y3_N6
\processador|ULA1|saida[7]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[7]~12_combout\ = ( \processador|ULA1|Add1~29_sumout\ & ( \processador|ULA1|Add0~29_sumout\ & ( ((!\processador|REGA|DOUT[1]~0_combout\ & (!\processador|decoderInstru1|Equal11~4_combout\ & \KEY_0|saida[7]~12_combout\))) # 
-- (\processador|ULA1|Equal2~0_combout\) ) ) ) # ( !\processador|ULA1|Add1~29_sumout\ & ( \processador|ULA1|Add0~29_sumout\ & ( (!\processador|REGA|DOUT[1]~0_combout\ & (((!\processador|decoderInstru1|Equal11~4_combout\ & \KEY_0|saida[7]~12_combout\)) # 
-- (\processador|ULA1|Equal2~0_combout\))) ) ) ) # ( \processador|ULA1|Add1~29_sumout\ & ( !\processador|ULA1|Add0~29_sumout\ & ( (!\processador|REGA|DOUT[1]~0_combout\ & (!\processador|decoderInstru1|Equal11~4_combout\ & 
-- (!\processador|ULA1|Equal2~0_combout\ & \KEY_0|saida[7]~12_combout\))) # (\processador|REGA|DOUT[1]~0_combout\ & (((\processador|ULA1|Equal2~0_combout\)))) ) ) ) # ( !\processador|ULA1|Add1~29_sumout\ & ( !\processador|ULA1|Add0~29_sumout\ & ( 
-- (!\processador|REGA|DOUT[1]~0_combout\ & (!\processador|decoderInstru1|Equal11~4_combout\ & (!\processador|ULA1|Equal2~0_combout\ & \KEY_0|saida[7]~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000001011000010100001010100010100000111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|REGA|ALT_INV_DOUT[1]~0_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal11~4_combout\,
	datac => \processador|ULA1|ALT_INV_Equal2~0_combout\,
	datad => \KEY_0|ALT_INV_saida[7]~12_combout\,
	datae => \processador|ULA1|ALT_INV_Add1~29_sumout\,
	dataf => \processador|ULA1|ALT_INV_Add0~29_sumout\,
	combout => \processador|ULA1|saida[7]~12_combout\);

-- Location: FF_X28_Y3_N8
\processador|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|ULA1|saida[7]~12_combout\,
	ena => \processador|decoderInstru1|saida[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(7));

-- Location: LABCELL_X29_Y3_N54
\processador|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~29_sumout\ = SUM(( (!\KEY_0|saida[7]~12_combout\) # (\processador|decoderInstru1|Equal11~4_combout\) ) + ( \processador|REGA|DOUT\(7) ) + ( \processador|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|decoderInstru1|ALT_INV_Equal11~4_combout\,
	datac => \processador|REGA|ALT_INV_DOUT\(7),
	datad => \KEY_0|ALT_INV_saida[7]~12_combout\,
	cin => \processador|ULA1|Add1~26\,
	sumout => \processador|ULA1|Add1~29_sumout\);

-- Location: LABCELL_X29_Y3_N0
\processador|FLAG|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|FLAG|DOUT~1_combout\ = ( \processador|ULA1|Add1~13_sumout\ & ( \processador|ULA1|Add1~1_sumout\ & ( (!\processador|decoderInstru1|Equal11~1_combout\ & \processador|FLAG|DOUT~q\) ) ) ) # ( !\processador|ULA1|Add1~13_sumout\ & ( 
-- \processador|ULA1|Add1~1_sumout\ & ( (!\processador|decoderInstru1|Equal11~1_combout\ & \processador|FLAG|DOUT~q\) ) ) ) # ( \processador|ULA1|Add1~13_sumout\ & ( !\processador|ULA1|Add1~1_sumout\ & ( (!\processador|decoderInstru1|Equal11~1_combout\ & 
-- \processador|FLAG|DOUT~q\) ) ) ) # ( !\processador|ULA1|Add1~13_sumout\ & ( !\processador|ULA1|Add1~1_sumout\ & ( (!\processador|decoderInstru1|Equal11~1_combout\ & (\processador|FLAG|DOUT~q\)) # (\processador|decoderInstru1|Equal11~1_combout\ & 
-- (((!\processador|ULA1|Add1~5_sumout\ & !\processador|ULA1|Add1~9_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~1_combout\,
	datab => \processador|FLAG|ALT_INV_DOUT~q\,
	datac => \processador|ULA1|ALT_INV_Add1~5_sumout\,
	datad => \processador|ULA1|ALT_INV_Add1~9_sumout\,
	datae => \processador|ULA1|ALT_INV_Add1~13_sumout\,
	dataf => \processador|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \processador|FLAG|DOUT~1_combout\);

-- Location: LABCELL_X29_Y3_N24
\processador|FLAG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|FLAG|DOUT~0_combout\ = ( \processador|FLAG|DOUT~1_combout\ & ( \processador|ULA1|Add1~21_sumout\ & ( !\processador|decoderInstru1|Equal11~1_combout\ ) ) ) # ( \processador|FLAG|DOUT~1_combout\ & ( !\processador|ULA1|Add1~21_sumout\ & ( 
-- (!\processador|decoderInstru1|Equal11~1_combout\) # ((!\processador|ULA1|Add1~25_sumout\ & (!\processador|ULA1|Add1~29_sumout\ & !\processador|ULA1|Add1~17_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011001100110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA1|ALT_INV_Add1~25_sumout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal11~1_combout\,
	datac => \processador|ULA1|ALT_INV_Add1~29_sumout\,
	datad => \processador|ULA1|ALT_INV_Add1~17_sumout\,
	datae => \processador|FLAG|ALT_INV_DOUT~1_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \processador|FLAG|DOUT~0_combout\);

-- Location: FF_X29_Y3_N26
\processador|FLAG|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|FLAG|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|FLAG|DOUT~q\);

-- Location: MLABCELL_X28_Y4_N30
\processador|LOG_DESVIO|SelMuxPC[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ = ( \ROM1|memROM~8_combout\ & ( (\ROM1|memROM~5_combout\ & (!\ROM1|memROM~7_combout\ & !\ROM1|memROM~6_combout\)) ) ) # ( !\ROM1|memROM~8_combout\ & ( (\ROM1|memROM~7_combout\ & (\ROM1|memROM~6_combout\ & 
-- ((!\ROM1|memROM~5_combout\) # (\processador|FLAG|DOUT~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001011000000000000101101010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \processador|FLAG|ALT_INV_DOUT~q\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \processador|LOG_DESVIO|SelMuxPC[0]~0_combout\);

-- Location: LABCELL_X26_Y2_N45
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

-- Location: FF_X26_Y2_N46
\processador|REG_RET|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|incrementaPC|Add0~21_sumout\,
	ena => \processador|decoderInstru1|saida[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(5));

-- Location: MLABCELL_X28_Y2_N12
\processador|MUX2|MUX_OUT[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[5]~5_combout\ = ( \processador|incrementaPC|Add0~21_sumout\ & ( (!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & (((!\processador|decoderInstru1|saida[10]~4_combout\) # (\processador|REG_RET|DOUT\(5))))) # 
-- (\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & (\ROM1|memROM~14_combout\ & ((!\processador|decoderInstru1|saida[10]~4_combout\)))) ) ) # ( !\processador|incrementaPC|Add0~21_sumout\ & ( (!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & 
-- (((\processador|REG_RET|DOUT\(5) & \processador|decoderInstru1|saida[10]~4_combout\)))) # (\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & (\ROM1|memROM~14_combout\ & ((!\processador|decoderInstru1|saida[10]~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010000100010000101010111011000010101011101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \processador|REG_RET|ALT_INV_DOUT\(5),
	datad => \processador|decoderInstru1|ALT_INV_saida[10]~4_combout\,
	dataf => \processador|incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \processador|MUX2|MUX_OUT[5]~5_combout\);

-- Location: FF_X28_Y2_N13
\processador|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|MUX2|MUX_OUT[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[5]~DUPLICATE_q\);

-- Location: FF_X26_Y2_N49
\processador|REG_RET|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|incrementaPC|Add0~25_sumout\,
	ena => \processador|decoderInstru1|saida[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(6));

-- Location: MLABCELL_X28_Y2_N33
\processador|MUX2|MUX_OUT[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[6]~6_combout\ = ( \processador|decoderInstru1|saida[10]~4_combout\ & ( \processador|incrementaPC|Add0~25_sumout\ & ( (\processador|REG_RET|DOUT\(6) & !\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\) ) ) ) # ( 
-- !\processador|decoderInstru1|saida[10]~4_combout\ & ( \processador|incrementaPC|Add0~25_sumout\ & ( (!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\) # (\ROM1|memROM~15_combout\) ) ) ) # ( \processador|decoderInstru1|saida[10]~4_combout\ & ( 
-- !\processador|incrementaPC|Add0~25_sumout\ & ( (\processador|REG_RET|DOUT\(6) & !\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\) ) ) ) # ( !\processador|decoderInstru1|saida[10]~4_combout\ & ( !\processador|incrementaPC|Add0~25_sumout\ & ( 
-- (\ROM1|memROM~15_combout\ & \processador|LOG_DESVIO|SelMuxPC[0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010101010000000011111111001100110101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|REG_RET|ALT_INV_DOUT\(6),
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \processador|LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datae => \processador|decoderInstru1|ALT_INV_saida[10]~4_combout\,
	dataf => \processador|incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \processador|MUX2|MUX_OUT[6]~6_combout\);

-- Location: FF_X28_Y2_N35
\processador|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|MUX2|MUX_OUT[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(6));

-- Location: MLABCELL_X28_Y2_N27
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( !\processador|PC|DOUT[3]~DUPLICATE_q\ & ( \processador|PC|DOUT[0]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(4) & !\processador|PC|DOUT[2]~DUPLICATE_q\) ) ) ) # ( !\processador|PC|DOUT[3]~DUPLICATE_q\ & ( 
-- !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(4) & \processador|PC|DOUT[2]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000000000000010101010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(4),
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~4_combout\);

-- Location: MLABCELL_X28_Y2_N9
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \ROM1|memROM~4_combout\ & ( !\processador|PC|DOUT[5]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(6) & (!\processador|PC|DOUT\(7) & !\processador|PC|DOUT[8]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(6),
	datac => \processador|PC|ALT_INV_DOUT\(7),
	datad => \processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \ROM1|memROM~5_combout\);

-- Location: LABCELL_X29_Y5_N27
\processador|decoderInstru1|saida[10]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida[10]~4_combout\ = ( !\ROM1|memROM~6_combout\ & ( \ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~5_combout\ & \ROM1|memROM~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \processador|decoderInstru1|saida[10]~4_combout\);

-- Location: LABCELL_X26_Y2_N36
\processador|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~9_sumout\ = SUM(( \processador|PC|DOUT\(2) ) + ( GND ) + ( \processador|incrementaPC|Add0~6\ ))
-- \processador|incrementaPC|Add0~10\ = CARRY(( \processador|PC|DOUT\(2) ) + ( GND ) + ( \processador|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(2),
	cin => \processador|incrementaPC|Add0~6\,
	sumout => \processador|incrementaPC|Add0~9_sumout\,
	cout => \processador|incrementaPC|Add0~10\);

-- Location: FF_X26_Y2_N37
\processador|REG_RET|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|incrementaPC|Add0~9_sumout\,
	ena => \processador|decoderInstru1|saida[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(2));

-- Location: LABCELL_X29_Y2_N3
\processador|MUX2|MUX_OUT[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[2]~2_combout\ = ( \processador|incrementaPC|Add0~9_sumout\ & ( (!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & ((!\processador|decoderInstru1|saida[10]~4_combout\) # (\processador|REG_RET|DOUT\(2)))) ) ) # ( 
-- !\processador|incrementaPC|Add0~9_sumout\ & ( (\processador|decoderInstru1|saida[10]~4_combout\ & (!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & \processador|REG_RET|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010100000111100001010000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[10]~4_combout\,
	datac => \processador|LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datad => \processador|REG_RET|ALT_INV_DOUT\(2),
	dataf => \processador|incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \processador|MUX2|MUX_OUT[2]~2_combout\);

-- Location: FF_X29_Y2_N4
\processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|MUX2|MUX_OUT[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(2));

-- Location: FF_X26_Y2_N40
\processador|REG_RET|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|incrementaPC|Add0~13_sumout\,
	ena => \processador|decoderInstru1|saida[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(3));

-- Location: LABCELL_X29_Y2_N54
\processador|MUX2|MUX_OUT[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[3]~3_combout\ = ( \processador|incrementaPC|Add0~13_sumout\ & ( (!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & ((!\processador|decoderInstru1|saida[10]~4_combout\) # (\processador|REG_RET|DOUT\(3)))) ) ) # ( 
-- !\processador|incrementaPC|Add0~13_sumout\ & ( (\processador|REG_RET|DOUT\(3) & (!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & \processador|decoderInstru1|saida[10]~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011110000001100001111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|REG_RET|ALT_INV_DOUT\(3),
	datac => \processador|LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datad => \processador|decoderInstru1|ALT_INV_saida[10]~4_combout\,
	dataf => \processador|incrementaPC|ALT_INV_Add0~13_sumout\,
	combout => \processador|MUX2|MUX_OUT[3]~3_combout\);

-- Location: FF_X29_Y2_N56
\processador|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|MUX2|MUX_OUT[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[3]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y2_N48
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \processador|PC|DOUT[0]~DUPLICATE_q\ & ( !\processador|PC|DOUT[3]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~3_combout\);

-- Location: LABCELL_X29_Y2_N48
\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = ( \ROM1|memROM~1_combout\ & ( (\ROM1|memROM~3_combout\ & (!\processador|PC|DOUT[2]~DUPLICATE_q\ & \processador|PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(1),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~15_combout\);

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

-- Location: FF_X29_Y2_N47
\RAM1|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~39_q\);

-- Location: FF_X29_Y4_N32
\RAM1|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~31_q\);

-- Location: FF_X28_Y2_N7
\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

-- Location: FF_X29_Y4_N44
\RAM1|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~15_q\);

-- Location: LABCELL_X29_Y2_N18
\RAM1|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~527_combout\ = ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~12_combout\ & (((\RAM1|ram~15_q\ & ((!\ROM1|memROM~14_combout\)))))) # (\ROM1|memROM~12_combout\ & ((((\ROM1|memROM~14_combout\) # (\RAM1|ram~23_q\))))) ) ) # ( 
-- \ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~12_combout\ & (((\RAM1|ram~31_q\ & ((!\ROM1|memROM~14_combout\)))))) # (\ROM1|memROM~12_combout\ & ((((\ROM1|memROM~14_combout\))) # (\RAM1|ram~39_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001011111000110110001101101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \RAM1|ALT_INV_ram~39_q\,
	datac => \RAM1|ALT_INV_ram~31_q\,
	datad => \RAM1|ALT_INV_ram~23_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	datag => \RAM1|ALT_INV_ram~15_q\,
	combout => \RAM1|ram~527_combout\);

-- Location: LABCELL_X29_Y2_N42
\KEY_0|saida[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \KEY_0|saida[0]~8_combout\ = ( \ROM1|memROM~12_combout\ & ( \RAM1|ram~527_combout\ & ( (!\ROM1|memROM~15_combout\) # (((!\processador|decoderInstru1|saida[1]~0_combout\) # (!\ROM1|memROM~14_combout\)) # (\KEY[1]~input_o\)) ) ) ) # ( 
-- !\ROM1|memROM~12_combout\ & ( \RAM1|ram~527_combout\ ) ) # ( \ROM1|memROM~12_combout\ & ( !\RAM1|ram~527_combout\ & ( (!\processador|decoderInstru1|saida[1]~0_combout\) # ((!\ROM1|memROM~15_combout\ & ((\ROM1|memROM~14_combout\))) # 
-- (\ROM1|memROM~15_combout\ & ((!\ROM1|memROM~14_combout\) # (\KEY[1]~input_o\)))) ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\RAM1|ram~527_combout\ & ( ((!\processador|decoderInstru1|saida[1]~0_combout\) # (\ROM1|memROM~14_combout\)) # 
-- (\ROM1|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111111111111101011111101111111111111111111111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \processador|decoderInstru1|ALT_INV_saida[1]~0_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \RAM1|ALT_INV_ram~527_combout\,
	combout => \KEY_0|saida[0]~8_combout\);

-- Location: MLABCELL_X28_Y4_N24
\KEY_0|saida[0]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \KEY_0|saida[0]~13_combout\ = (\processador|decoderInstru1|saida[1]~0_combout\ & (!\ROM1|memROM~14_combout\ $ (\ROM1|memROM~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100001001000010010000100100001001000010010000100100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \processador|decoderInstru1|ALT_INV_saida[1]~0_combout\,
	combout => \KEY_0|saida[0]~13_combout\);

-- Location: LABCELL_X26_Y3_N39
\processador|decoderInstru1|Equal11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal11~0_combout\ = ( \processador|decoderInstru1|Equal11~7_combout\ & ( \ROM1|memROM~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \processador|decoderInstru1|ALT_INV_Equal11~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \processador|decoderInstru1|Equal11~0_combout\);

-- Location: LABCELL_X29_Y5_N54
\processador|decoderInstru1|Equal11~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal11~5_combout\ = ( !\ROM1|memROM~8_combout\ & ( (\ROM1|memROM~5_combout\ & (\ROM1|memROM~7_combout\ & \ROM1|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \processador|decoderInstru1|Equal11~5_combout\);

-- Location: LABCELL_X29_Y5_N9
\processador|decoderInstru1|Equal11~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal11~6_combout\ = ( !\ROM1|memROM~8_combout\ & ( (\ROM1|memROM~7_combout\ & (!\ROM1|memROM~5_combout\ & \ROM1|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \processador|decoderInstru1|Equal11~6_combout\);

-- Location: LABCELL_X24_Y2_N0
\decoderBloco|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderBloco|Equal7~0_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~3_combout\ & ( (!\processador|PC|DOUT[8]~DUPLICATE_q\ & (((!\processador|PC|DOUT\(2) & \processador|PC|DOUT[1]~DUPLICATE_q\)) # (\ROM1|memROM~10_combout\))) ) ) ) # ( 
-- \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~3_combout\ & ( (!\processador|PC|DOUT[8]~DUPLICATE_q\ & \ROM1|memROM~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000000000100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(2),
	datab => \processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \decoderBloco|Equal7~0_combout\);

-- Location: MLABCELL_X28_Y4_N9
\logica_Seven_Seg|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|comb~0_combout\ = ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~14_combout\ & ( (\ROM1|memROM~5_combout\ & (!\ROM1|memROM~13_combout\ & (!\ROM1|memROM~15_combout\ & \processador|decoderInstru1|Equal11~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \processador|decoderInstru1|ALT_INV_Equal11~7_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \logica_Seven_Seg|comb~0_combout\);

-- Location: FF_X29_Y2_N26
\logica_Seven_Seg|REG0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG0|DOUT\(3));

-- Location: FF_X31_Y2_N41
\logica_Seven_Seg|REG0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG0|DOUT\(2));

-- Location: FF_X29_Y2_N38
\logica_Seven_Seg|REG0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG0|DOUT\(1));

-- Location: FF_X29_Y2_N20
\logica_Seven_Seg|REG0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG0|DOUT\(0));

-- Location: LABCELL_X31_Y2_N57
\logica_Seven_Seg|H0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[0]~0_combout\ = ( \logica_Seven_Seg|REG0|DOUT\(0) & ( (!\logica_Seven_Seg|REG0|DOUT\(3) & (!\logica_Seven_Seg|REG0|DOUT\(2) & !\logica_Seven_Seg|REG0|DOUT\(1))) # (\logica_Seven_Seg|REG0|DOUT\(3) & 
-- (!\logica_Seven_Seg|REG0|DOUT\(2) $ (!\logica_Seven_Seg|REG0|DOUT\(1)))) ) ) # ( !\logica_Seven_Seg|REG0|DOUT\(0) & ( (!\logica_Seven_Seg|REG0|DOUT\(3) & (\logica_Seven_Seg|REG0|DOUT\(2) & !\logica_Seven_Seg|REG0|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000010100101010100001010010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X31_Y2_N0
\logica_Seven_Seg|H0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[1]~1_combout\ = ( \logica_Seven_Seg|REG0|DOUT\(0) & ( (!\logica_Seven_Seg|REG0|DOUT\(3) & (\logica_Seven_Seg|REG0|DOUT\(2) & !\logica_Seven_Seg|REG0|DOUT\(1))) # (\logica_Seven_Seg|REG0|DOUT\(3) & 
-- ((\logica_Seven_Seg|REG0|DOUT\(1)))) ) ) # ( !\logica_Seven_Seg|REG0|DOUT\(0) & ( (\logica_Seven_Seg|REG0|DOUT\(2) & ((\logica_Seven_Seg|REG0|DOUT\(1)) # (\logica_Seven_Seg|REG0|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110011000100010011001100100010010101010010001001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	datab => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X31_Y2_N3
\logica_Seven_Seg|H0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[2]~2_combout\ = ( \logica_Seven_Seg|REG0|DOUT\(0) & ( (\logica_Seven_Seg|REG0|DOUT\(3) & (\logica_Seven_Seg|REG0|DOUT\(2) & \logica_Seven_Seg|REG0|DOUT\(1))) ) ) # ( !\logica_Seven_Seg|REG0|DOUT\(0) & ( 
-- (!\logica_Seven_Seg|REG0|DOUT\(3) & (!\logica_Seven_Seg|REG0|DOUT\(2) & \logica_Seven_Seg|REG0|DOUT\(1))) # (\logica_Seven_Seg|REG0|DOUT\(3) & (\logica_Seven_Seg|REG0|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100011001000110010001100100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	datab => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X31_Y2_N9
\logica_Seven_Seg|H0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[3]~3_combout\ = ( \logica_Seven_Seg|REG0|DOUT\(0) & ( (!\logica_Seven_Seg|REG0|DOUT\(2) & (!\logica_Seven_Seg|REG0|DOUT\(3) & !\logica_Seven_Seg|REG0|DOUT\(1))) # (\logica_Seven_Seg|REG0|DOUT\(2) & 
-- ((\logica_Seven_Seg|REG0|DOUT\(1)))) ) ) # ( !\logica_Seven_Seg|REG0|DOUT\(0) & ( (!\logica_Seven_Seg|REG0|DOUT\(3) & (\logica_Seven_Seg|REG0|DOUT\(2) & !\logica_Seven_Seg|REG0|DOUT\(1))) # (\logica_Seven_Seg|REG0|DOUT\(3) & 
-- (!\logica_Seven_Seg|REG0|DOUT\(2) & \logica_Seven_Seg|REG0|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001010000000010100101000010100000000011111010000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X31_Y2_N12
\logica_Seven_Seg|H0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[4]~4_combout\ = ( \logica_Seven_Seg|REG0|DOUT\(0) & ( (!\logica_Seven_Seg|REG0|DOUT\(3)) # ((!\logica_Seven_Seg|REG0|DOUT\(2) & !\logica_Seven_Seg|REG0|DOUT\(1))) ) ) # ( !\logica_Seven_Seg|REG0|DOUT\(0) & ( 
-- (!\logica_Seven_Seg|REG0|DOUT\(3) & (\logica_Seven_Seg|REG0|DOUT\(2) & !\logica_Seven_Seg|REG0|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000011101110101010101110111010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	datab => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X31_Y2_N42
\logica_Seven_Seg|H0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[5]~5_combout\ = ( \logica_Seven_Seg|REG0|DOUT\(0) & ( !\logica_Seven_Seg|REG0|DOUT\(3) $ (((\logica_Seven_Seg|REG0|DOUT\(2) & !\logica_Seven_Seg|REG0|DOUT\(1)))) ) ) # ( !\logica_Seven_Seg|REG0|DOUT\(0) & ( 
-- (!\logica_Seven_Seg|REG0|DOUT\(2) & (!\logica_Seven_Seg|REG0|DOUT\(3) & \logica_Seven_Seg|REG0|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000011111100001100001111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	datad => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X31_Y2_N15
\logica_Seven_Seg|H0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[6]~6_combout\ = ( \logica_Seven_Seg|REG0|DOUT\(0) & ( (!\logica_Seven_Seg|REG0|DOUT\(3) & (!\logica_Seven_Seg|REG0|DOUT\(2) $ (\logica_Seven_Seg|REG0|DOUT\(1)))) ) ) # ( !\logica_Seven_Seg|REG0|DOUT\(0) & ( 
-- (!\logica_Seven_Seg|REG0|DOUT\(1) & (!\logica_Seven_Seg|REG0|DOUT\(3) $ (\logica_Seven_Seg|REG0|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010010000100100001001000010000010100000101000001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	datab => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X31_Y2_N24
\logica_Seven_Seg|REG1|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|REG1|DOUT[0]~feeder_combout\ = ( \processador|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|REG1|DOUT[0]~feeder_combout\);

-- Location: LABCELL_X29_Y4_N45
\logica_Seven_Seg|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|comb~1_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~12_combout\ & ( (\processador|decoderInstru1|Equal11~7_combout\ & (\ROM1|memROM~14_combout\ & (!\ROM1|memROM~13_combout\ & \ROM1|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal11~7_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \logica_Seven_Seg|comb~1_combout\);

-- Location: FF_X31_Y2_N26
\logica_Seven_Seg|REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \logica_Seven_Seg|REG1|DOUT[0]~feeder_combout\,
	ena => \logica_Seven_Seg|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG1|DOUT\(0));

-- Location: LABCELL_X31_Y2_N27
\logica_Seven_Seg|REG1|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|REG1|DOUT[3]~feeder_combout\ = ( \processador|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|REG1|DOUT[3]~feeder_combout\);

-- Location: FF_X31_Y2_N28
\logica_Seven_Seg|REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \logica_Seven_Seg|REG1|DOUT[3]~feeder_combout\,
	ena => \logica_Seven_Seg|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG1|DOUT\(3));

-- Location: FF_X31_Y2_N23
\logica_Seven_Seg|REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG1|DOUT\(2));

-- Location: FF_X31_Y2_N19
\logica_Seven_Seg|REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG1|DOUT\(1));

-- Location: LABCELL_X31_Y2_N48
\logica_Seven_Seg|H1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H1|rascSaida7seg[0]~0_combout\ = ( \logica_Seven_Seg|REG1|DOUT\(1) & ( (\logica_Seven_Seg|REG1|DOUT\(0) & (\logica_Seven_Seg|REG1|DOUT\(3) & !\logica_Seven_Seg|REG1|DOUT\(2))) ) ) # ( !\logica_Seven_Seg|REG1|DOUT\(1) & ( 
-- (!\logica_Seven_Seg|REG1|DOUT\(0) & (!\logica_Seven_Seg|REG1|DOUT\(3) & \logica_Seven_Seg|REG1|DOUT\(2))) # (\logica_Seven_Seg|REG1|DOUT\(0) & (!\logica_Seven_Seg|REG1|DOUT\(3) $ (\logica_Seven_Seg|REG1|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010011001010001001001100100010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(3),
	datad => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H1|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X31_Y2_N33
\logica_Seven_Seg|H1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H1|rascSaida7seg[1]~1_combout\ = ( \logica_Seven_Seg|REG1|DOUT\(2) & ( (!\logica_Seven_Seg|REG1|DOUT\(3) & (!\logica_Seven_Seg|REG1|DOUT\(1) $ (!\logica_Seven_Seg|REG1|DOUT\(0)))) # (\logica_Seven_Seg|REG1|DOUT\(3) & 
-- ((!\logica_Seven_Seg|REG1|DOUT\(0)) # (\logica_Seven_Seg|REG1|DOUT\(1)))) ) ) # ( !\logica_Seven_Seg|REG1|DOUT\(2) & ( (\logica_Seven_Seg|REG1|DOUT\(3) & (\logica_Seven_Seg|REG1|DOUT\(1) & \logica_Seven_Seg|REG1|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011001111111100001100000000000000110011111111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(0),
	datae => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H1|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X31_Y2_N51
\logica_Seven_Seg|H1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H1|rascSaida7seg[2]~2_combout\ = ( \logica_Seven_Seg|REG1|DOUT\(0) & ( (\logica_Seven_Seg|REG1|DOUT\(3) & (\logica_Seven_Seg|REG1|DOUT\(1) & \logica_Seven_Seg|REG1|DOUT\(2))) ) ) # ( !\logica_Seven_Seg|REG1|DOUT\(0) & ( 
-- (!\logica_Seven_Seg|REG1|DOUT\(3) & (\logica_Seven_Seg|REG1|DOUT\(1) & !\logica_Seven_Seg|REG1|DOUT\(2))) # (\logica_Seven_Seg|REG1|DOUT\(3) & ((\logica_Seven_Seg|REG1|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000110011000011000011001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H1|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X31_Y2_N45
\logica_Seven_Seg|H1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H1|rascSaida7seg[3]~3_combout\ = ( \logica_Seven_Seg|REG1|DOUT\(3) & ( (\logica_Seven_Seg|REG1|DOUT\(1) & (!\logica_Seven_Seg|REG1|DOUT\(0) $ (\logica_Seven_Seg|REG1|DOUT\(2)))) ) ) # ( !\logica_Seven_Seg|REG1|DOUT\(3) & ( 
-- (!\logica_Seven_Seg|REG1|DOUT\(0) & (!\logica_Seven_Seg|REG1|DOUT\(1) & \logica_Seven_Seg|REG1|DOUT\(2))) # (\logica_Seven_Seg|REG1|DOUT\(0) & (!\logica_Seven_Seg|REG1|DOUT\(1) $ (\logica_Seven_Seg|REG1|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100101010100001010010100001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H1|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X31_Y2_N54
\logica_Seven_Seg|H1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H1|rascSaida7seg[4]~4_combout\ = ( \logica_Seven_Seg|REG1|DOUT\(3) & ( (!\logica_Seven_Seg|REG1|DOUT\(1) & (\logica_Seven_Seg|REG1|DOUT\(0) & !\logica_Seven_Seg|REG1|DOUT\(2))) ) ) # ( !\logica_Seven_Seg|REG1|DOUT\(3) & ( 
-- ((!\logica_Seven_Seg|REG1|DOUT\(1) & \logica_Seven_Seg|REG1|DOUT\(2))) # (\logica_Seven_Seg|REG1|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111001111000011111100111100001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(0),
	datad => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H1|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X31_Y2_N21
\logica_Seven_Seg|H1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H1|rascSaida7seg[5]~5_combout\ = ( \logica_Seven_Seg|REG1|DOUT\(2) & ( (\logica_Seven_Seg|REG1|DOUT\(0) & (!\logica_Seven_Seg|REG1|DOUT\(3) $ (!\logica_Seven_Seg|REG1|DOUT\(1)))) ) ) # ( !\logica_Seven_Seg|REG1|DOUT\(2) & ( 
-- (!\logica_Seven_Seg|REG1|DOUT\(3) & ((\logica_Seven_Seg|REG1|DOUT\(1)) # (\logica_Seven_Seg|REG1|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100000101000001010001001100010011000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(1),
	datae => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H1|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X31_Y2_N6
\logica_Seven_Seg|H1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H1|rascSaida7seg[6]~6_combout\ = ( \logica_Seven_Seg|REG1|DOUT\(3) & ( (!\logica_Seven_Seg|REG1|DOUT\(1) & (!\logica_Seven_Seg|REG1|DOUT\(0) & \logica_Seven_Seg|REG1|DOUT\(2))) ) ) # ( !\logica_Seven_Seg|REG1|DOUT\(3) & ( 
-- (!\logica_Seven_Seg|REG1|DOUT\(1) & ((!\logica_Seven_Seg|REG1|DOUT\(2)))) # (\logica_Seven_Seg|REG1|DOUT\(1) & (\logica_Seven_Seg|REG1|DOUT\(0) & \logica_Seven_Seg|REG1|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000011110011000000001100000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(0),
	datad => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H1|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X29_Y4_N3
\logica_Seven_Seg|comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|comb~2_combout\ = ( \ROM1|memROM~13_combout\ & ( !\ROM1|memROM~12_combout\ & ( (\ROM1|memROM~5_combout\ & (\ROM1|memROM~14_combout\ & \processador|decoderInstru1|Equal11~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \processador|decoderInstru1|ALT_INV_Equal11~7_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \logica_Seven_Seg|comb~2_combout\);

-- Location: FF_X31_Y2_N31
\logica_Seven_Seg|REG2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG2|DOUT\(2));

-- Location: FF_X28_Y2_N22
\logica_Seven_Seg|REG2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG2|DOUT\(1));

-- Location: FF_X28_Y2_N43
\logica_Seven_Seg|REG2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG2|DOUT\(0));

-- Location: FF_X28_Y2_N29
\logica_Seven_Seg|REG2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG2|DOUT\(3));

-- Location: LABCELL_X32_Y2_N36
\logica_Seven_Seg|H2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[0]~0_combout\ = ( \logica_Seven_Seg|REG2|DOUT\(0) & ( \logica_Seven_Seg|REG2|DOUT\(3) & ( !\logica_Seven_Seg|REG2|DOUT\(2) $ (!\logica_Seven_Seg|REG2|DOUT\(1)) ) ) ) # ( \logica_Seven_Seg|REG2|DOUT\(0) & ( 
-- !\logica_Seven_Seg|REG2|DOUT\(3) & ( (!\logica_Seven_Seg|REG2|DOUT\(2) & !\logica_Seven_Seg|REG2|DOUT\(1)) ) ) ) # ( !\logica_Seven_Seg|REG2|DOUT\(0) & ( !\logica_Seven_Seg|REG2|DOUT\(3) & ( (\logica_Seven_Seg|REG2|DOUT\(2) & 
-- !\logica_Seven_Seg|REG2|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100100010001000100000000000000000000110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	datab => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	datae => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	dataf => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X32_Y2_N45
\logica_Seven_Seg|H2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[1]~1_combout\ = ( \logica_Seven_Seg|REG2|DOUT\(0) & ( \logica_Seven_Seg|REG2|DOUT\(3) & ( \logica_Seven_Seg|REG2|DOUT\(1) ) ) ) # ( !\logica_Seven_Seg|REG2|DOUT\(0) & ( \logica_Seven_Seg|REG2|DOUT\(3) & ( 
-- \logica_Seven_Seg|REG2|DOUT\(2) ) ) ) # ( \logica_Seven_Seg|REG2|DOUT\(0) & ( !\logica_Seven_Seg|REG2|DOUT\(3) & ( (\logica_Seven_Seg|REG2|DOUT\(2) & !\logica_Seven_Seg|REG2|DOUT\(1)) ) ) ) # ( !\logica_Seven_Seg|REG2|DOUT\(0) & ( 
-- !\logica_Seven_Seg|REG2|DOUT\(3) & ( (\logica_Seven_Seg|REG2|DOUT\(2) & \logica_Seven_Seg|REG2|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010100000101000001010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	datae => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	dataf => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X32_Y2_N0
\logica_Seven_Seg|H2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[2]~2_combout\ = ( \logica_Seven_Seg|REG2|DOUT\(0) & ( \logica_Seven_Seg|REG2|DOUT\(3) & ( (\logica_Seven_Seg|REG2|DOUT\(2) & \logica_Seven_Seg|REG2|DOUT\(1)) ) ) ) # ( !\logica_Seven_Seg|REG2|DOUT\(0) & ( 
-- \logica_Seven_Seg|REG2|DOUT\(3) & ( \logica_Seven_Seg|REG2|DOUT\(2) ) ) ) # ( !\logica_Seven_Seg|REG2|DOUT\(0) & ( !\logica_Seven_Seg|REG2|DOUT\(3) & ( (!\logica_Seven_Seg|REG2|DOUT\(2) & \logica_Seven_Seg|REG2|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000000000000000001010101010101010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	datab => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	datae => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	dataf => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X32_Y2_N57
\logica_Seven_Seg|H2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[3]~3_combout\ = ( \logica_Seven_Seg|REG2|DOUT\(0) & ( \logica_Seven_Seg|REG2|DOUT\(3) & ( (\logica_Seven_Seg|REG2|DOUT\(2) & \logica_Seven_Seg|REG2|DOUT\(1)) ) ) ) # ( !\logica_Seven_Seg|REG2|DOUT\(0) & ( 
-- \logica_Seven_Seg|REG2|DOUT\(3) & ( (!\logica_Seven_Seg|REG2|DOUT\(2) & \logica_Seven_Seg|REG2|DOUT\(1)) ) ) ) # ( \logica_Seven_Seg|REG2|DOUT\(0) & ( !\logica_Seven_Seg|REG2|DOUT\(3) & ( !\logica_Seven_Seg|REG2|DOUT\(2) $ 
-- (\logica_Seven_Seg|REG2|DOUT\(1)) ) ) ) # ( !\logica_Seven_Seg|REG2|DOUT\(0) & ( !\logica_Seven_Seg|REG2|DOUT\(3) & ( (\logica_Seven_Seg|REG2|DOUT\(2) & !\logica_Seven_Seg|REG2|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000101001011010010100001010000010100000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	datae => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	dataf => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X32_Y2_N27
\logica_Seven_Seg|H2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[4]~4_combout\ = ( \logica_Seven_Seg|REG2|DOUT\(0) & ( \logica_Seven_Seg|REG2|DOUT\(3) & ( (!\logica_Seven_Seg|REG2|DOUT\(2) & !\logica_Seven_Seg|REG2|DOUT\(1)) ) ) ) # ( \logica_Seven_Seg|REG2|DOUT\(0) & ( 
-- !\logica_Seven_Seg|REG2|DOUT\(3) ) ) # ( !\logica_Seven_Seg|REG2|DOUT\(0) & ( !\logica_Seven_Seg|REG2|DOUT\(3) & ( (\logica_Seven_Seg|REG2|DOUT\(2) & !\logica_Seven_Seg|REG2|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000111111111111111100000000000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	datae => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	dataf => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X32_Y2_N9
\logica_Seven_Seg|H2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[5]~5_combout\ = ( \logica_Seven_Seg|REG2|DOUT\(0) & ( \logica_Seven_Seg|REG2|DOUT\(3) & ( (\logica_Seven_Seg|REG2|DOUT\(2) & !\logica_Seven_Seg|REG2|DOUT\(1)) ) ) ) # ( \logica_Seven_Seg|REG2|DOUT\(0) & ( 
-- !\logica_Seven_Seg|REG2|DOUT\(3) & ( (!\logica_Seven_Seg|REG2|DOUT\(2)) # (\logica_Seven_Seg|REG2|DOUT\(1)) ) ) ) # ( !\logica_Seven_Seg|REG2|DOUT\(0) & ( !\logica_Seven_Seg|REG2|DOUT\(3) & ( (!\logica_Seven_Seg|REG2|DOUT\(2) & 
-- \logica_Seven_Seg|REG2|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101011111010111100000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	datae => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	dataf => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X32_Y2_N51
\logica_Seven_Seg|H2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[6]~6_combout\ = ( !\logica_Seven_Seg|REG2|DOUT\(0) & ( \logica_Seven_Seg|REG2|DOUT\(3) & ( (\logica_Seven_Seg|REG2|DOUT\(2) & !\logica_Seven_Seg|REG2|DOUT\(1)) ) ) ) # ( \logica_Seven_Seg|REG2|DOUT\(0) & ( 
-- !\logica_Seven_Seg|REG2|DOUT\(3) & ( !\logica_Seven_Seg|REG2|DOUT\(2) $ (\logica_Seven_Seg|REG2|DOUT\(1)) ) ) ) # ( !\logica_Seven_Seg|REG2|DOUT\(0) & ( !\logica_Seven_Seg|REG2|DOUT\(3) & ( (!\logica_Seven_Seg|REG2|DOUT\(2) & 
-- !\logica_Seven_Seg|REG2|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101001011010010101010000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	datae => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	dataf => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X29_Y5_N36
\logica_Seven_Seg|comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|comb~3_combout\ = ( \processador|decoderInstru1|Equal11~7_combout\ & ( (\ROM1|memROM~13_combout\ & (\ROM1|memROM~12_combout\ & (\ROM1|memROM~14_combout\ & \ROM1|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \processador|decoderInstru1|ALT_INV_Equal11~7_combout\,
	combout => \logica_Seven_Seg|comb~3_combout\);

-- Location: FF_X29_Y5_N23
\logica_Seven_Seg|REG3|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG3|DOUT[2]~DUPLICATE_q\);

-- Location: FF_X29_Y5_N38
\logica_Seven_Seg|REG3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG3|DOUT\(0));

-- Location: FF_X29_Y5_N41
\logica_Seven_Seg|REG3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG3|DOUT\(3));

-- Location: FF_X29_Y5_N2
\logica_Seven_Seg|REG3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG3|DOUT\(1));

-- Location: MLABCELL_X28_Y5_N48
\logica_Seven_Seg|H3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[0]~0_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(1) & ( (!\logica_Seven_Seg|REG3|DOUT[2]~DUPLICATE_q\ & (\logica_Seven_Seg|REG3|DOUT\(0) & \logica_Seven_Seg|REG3|DOUT\(3))) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(1) & ( 
-- (!\logica_Seven_Seg|REG3|DOUT[2]~DUPLICATE_q\ & (\logica_Seven_Seg|REG3|DOUT\(0) & !\logica_Seven_Seg|REG3|DOUT\(3))) # (\logica_Seven_Seg|REG3|DOUT[2]~DUPLICATE_q\ & (!\logica_Seven_Seg|REG3|DOUT\(0) $ (\logica_Seven_Seg|REG3|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101100001000000100000001001100001011000010000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datae => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[0]~0_combout\);

-- Location: FF_X29_Y5_N22
\logica_Seven_Seg|REG3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG3|DOUT\(2));

-- Location: LABCELL_X29_Y5_N48
\logica_Seven_Seg|H3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[1]~1_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(3) & ( (!\logica_Seven_Seg|REG3|DOUT\(0) & (\logica_Seven_Seg|REG3|DOUT\(2))) # (\logica_Seven_Seg|REG3|DOUT\(0) & ((\logica_Seven_Seg|REG3|DOUT\(1)))) ) ) # ( 
-- !\logica_Seven_Seg|REG3|DOUT\(3) & ( (\logica_Seven_Seg|REG3|DOUT\(2) & (!\logica_Seven_Seg|REG3|DOUT\(1) $ (!\logica_Seven_Seg|REG3|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X29_Y5_N30
\logica_Seven_Seg|H3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[2]~2_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(2) & ( (\logica_Seven_Seg|REG3|DOUT\(3) & ((!\logica_Seven_Seg|REG3|DOUT\(0)) # (\logica_Seven_Seg|REG3|DOUT\(1)))) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(2) & ( 
-- (!\logica_Seven_Seg|REG3|DOUT\(3) & (!\logica_Seven_Seg|REG3|DOUT\(0) & \logica_Seven_Seg|REG3|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000110000001100110011000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	datad => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X29_Y5_N33
\logica_Seven_Seg|H3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[3]~3_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(2) & ( (!\logica_Seven_Seg|REG3|DOUT\(0) & (!\logica_Seven_Seg|REG3|DOUT\(3) & !\logica_Seven_Seg|REG3|DOUT\(1))) # (\logica_Seven_Seg|REG3|DOUT\(0) & 
-- ((\logica_Seven_Seg|REG3|DOUT\(1)))) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(2) & ( (!\logica_Seven_Seg|REG3|DOUT\(0) & (\logica_Seven_Seg|REG3|DOUT\(3) & \logica_Seven_Seg|REG3|DOUT\(1))) # (\logica_Seven_Seg|REG3|DOUT\(0) & 
-- (!\logica_Seven_Seg|REG3|DOUT\(3) & !\logica_Seven_Seg|REG3|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000100010010001000010001010001000010101011000100001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datad => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X28_Y5_N42
\logica_Seven_Seg|H3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[4]~4_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(1) & ( (\logica_Seven_Seg|REG3|DOUT\(0) & !\logica_Seven_Seg|REG3|DOUT\(3)) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(1) & ( (!\logica_Seven_Seg|REG3|DOUT[2]~DUPLICATE_q\ & 
-- (\logica_Seven_Seg|REG3|DOUT\(0))) # (\logica_Seven_Seg|REG3|DOUT[2]~DUPLICATE_q\ & ((!\logica_Seven_Seg|REG3|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001001110010001100000011000001110010011100100011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datae => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X28_Y5_N24
\logica_Seven_Seg|H3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[5]~5_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(1) & ( (!\logica_Seven_Seg|REG3|DOUT\(3) & ((!\logica_Seven_Seg|REG3|DOUT[2]~DUPLICATE_q\) # (\logica_Seven_Seg|REG3|DOUT\(0)))) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(1) & ( 
-- (\logica_Seven_Seg|REG3|DOUT\(0) & (!\logica_Seven_Seg|REG3|DOUT[2]~DUPLICATE_q\ $ (\logica_Seven_Seg|REG3|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100100001101100001011000000100001001000011011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datae => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X29_Y5_N45
\logica_Seven_Seg|H3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[6]~6_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(2) & ( (!\logica_Seven_Seg|REG3|DOUT\(1) & (\logica_Seven_Seg|REG3|DOUT\(3) & !\logica_Seven_Seg|REG3|DOUT\(0))) # (\logica_Seven_Seg|REG3|DOUT\(1) & 
-- (!\logica_Seven_Seg|REG3|DOUT\(3) & \logica_Seven_Seg|REG3|DOUT\(0))) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(2) & ( (!\logica_Seven_Seg|REG3|DOUT\(1) & !\logica_Seven_Seg|REG3|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000001010010100000000101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datad => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[6]~6_combout\);

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

-- Location: LABCELL_X31_Y40_N3
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


