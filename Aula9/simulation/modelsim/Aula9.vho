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

-- DATE "10/07/2022 14:37:45"

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

ENTITY 	Aula9 IS
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
END Aula9;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- REGA_OUT[1]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[3]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[4]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[5]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[6]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[7]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[0]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[1]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[3]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[4]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[6]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[7]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[8]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[9]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[10]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[11]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[12]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EQUAL_FLAG	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HabilitaRAM	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[0]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[1]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[2]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[4]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[5]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[6]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[7]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[8]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[0]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[1]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[2]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[3]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[5]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[6]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[7]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FPGA_RESET_N	=>  Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Aula9 IS
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
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~14\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~18\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \processador|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~22\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~26\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~30\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal11~1_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~2\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~6\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~10\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \RAM1|dado_out[0]~2_combout\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \FPGA_RESET|saida[0]~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \RAM1|dado_out[0]~3_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \RAM1|dado_out[0]~4_combout\ : std_logic;
SIGNAL \RAM1|dado_out[0]~6_combout\ : std_logic;
SIGNAL \RAM1|dado_out[0]~1_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW_8|saida[1]~7_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW_8|saida[2]~8_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW_8|saida[3]~9_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW_8|saida[4]~10_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW_8|saida[5]~11_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW_8|saida[6]~12_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW_8|saida[7]~13_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida~0_combout\ : std_logic;
SIGNAL \RAM1|dado_out[0]~5_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \processador|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|comb~0_combout\ : std_logic;
SIGNAL \logica_LED|comb~0_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~2\ : std_logic;
SIGNAL \processador|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~6\ : std_logic;
SIGNAL \processador|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~10\ : std_logic;
SIGNAL \processador|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~14\ : std_logic;
SIGNAL \processador|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~18\ : std_logic;
SIGNAL \processador|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~22\ : std_logic;
SIGNAL \processador|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~26\ : std_logic;
SIGNAL \processador|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \logica_LED|FlipFlop1|DOUT~0_combout\ : std_logic;
SIGNAL \logica_LED|FlipFlop1|DOUT~q\ : std_logic;
SIGNAL \logica_LED|FlipFlop2|DOUT~0_combout\ : std_logic;
SIGNAL \logica_LED|FlipFlop2|DOUT~q\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal11~0_combout\ : std_logic;
SIGNAL \decoderBloco|Equal7~0_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|comb~1_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|REG0|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|REG0|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|comb~2_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|comb~3_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|REG1|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \logica_Seven_Seg|H1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|comb~4_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|REG3|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|comb~5_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|REG3|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|REG3|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|REG3|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|comb~6_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|comb~7_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|REG1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processador|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processador|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \logica_LED|REG_LEDS|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processador|LOG_DESVIO|SelMuxPC\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \processador|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \processador|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \processador|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \SW_8|ALT_INV_saida[3]~9_combout\ : std_logic;
SIGNAL \SW_8|ALT_INV_saida[2]~8_combout\ : std_logic;
SIGNAL \SW_8|ALT_INV_saida[1]~7_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[0]~5_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[0]~4_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[0]~3_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \FPGA_RESET|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[0]~1_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|REG5|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG4|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \decoderBloco|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_Equal11~1_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_Equal11~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \logica_LED|FlipFlop2|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \logica_LED|FlipFlop1|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \logica_Seven_Seg|REG1|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \processador|LOG_DESVIO|ALT_INV_SelMuxPC\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \logica_Seven_Seg|ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \SW_8|ALT_INV_saida[7]~13_combout\ : std_logic;
SIGNAL \SW_8|ALT_INV_saida[6]~12_combout\ : std_logic;
SIGNAL \SW_8|ALT_INV_saida[5]~11_combout\ : std_logic;
SIGNAL \SW_8|ALT_INV_saida[4]~10_combout\ : std_logic;

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
\processador|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \processador|ULA1|Add1~13_sumout\;
\processador|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \processador|ULA1|Add1~9_sumout\;
\processador|ULA1|ALT_INV_Add1~5_sumout\ <= NOT \processador|ULA1|Add1~5_sumout\;
\processador|ULA1|ALT_INV_Add1~1_sumout\ <= NOT \processador|ULA1|Add1~1_sumout\;
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
\SW_8|ALT_INV_saida[3]~9_combout\ <= NOT \SW_8|saida[3]~9_combout\;
\SW_8|ALT_INV_saida[2]~8_combout\ <= NOT \SW_8|saida[2]~8_combout\;
\SW_8|ALT_INV_saida[1]~7_combout\ <= NOT \SW_8|saida[1]~7_combout\;
\RAM1|ALT_INV_dado_out[0]~5_combout\ <= NOT \RAM1|dado_out[0]~5_combout\;
\RAM1|ALT_INV_dado_out[0]~4_combout\ <= NOT \RAM1|dado_out[0]~4_combout\;
\RAM1|ALT_INV_dado_out[0]~3_combout\ <= NOT \RAM1|dado_out[0]~3_combout\;
\RAM1|ALT_INV_dado_out[0]~2_combout\ <= NOT \RAM1|dado_out[0]~2_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\FPGA_RESET|ALT_INV_saida[0]~0_combout\ <= NOT \FPGA_RESET|saida[0]~0_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\RAM1|ALT_INV_dado_out[0]~1_combout\ <= NOT \RAM1|dado_out[0]~1_combout\;
\logica_Seven_Seg|ALT_INV_comb~0_combout\ <= NOT \logica_Seven_Seg|comb~0_combout\;
\logica_Seven_Seg|REG5|ALT_INV_DOUT\(1) <= NOT \logica_Seven_Seg|REG5|DOUT\(1);
\logica_Seven_Seg|REG5|ALT_INV_DOUT\(2) <= NOT \logica_Seven_Seg|REG5|DOUT\(2);
\logica_Seven_Seg|REG5|ALT_INV_DOUT\(3) <= NOT \logica_Seven_Seg|REG5|DOUT\(3);
\logica_Seven_Seg|REG5|ALT_INV_DOUT\(0) <= NOT \logica_Seven_Seg|REG5|DOUT\(0);
\logica_Seven_Seg|REG4|ALT_INV_DOUT\(1) <= NOT \logica_Seven_Seg|REG4|DOUT\(1);
\logica_Seven_Seg|REG4|ALT_INV_DOUT\(2) <= NOT \logica_Seven_Seg|REG4|DOUT\(2);
\logica_Seven_Seg|REG4|ALT_INV_DOUT\(3) <= NOT \logica_Seven_Seg|REG4|DOUT\(3);
\logica_Seven_Seg|REG4|ALT_INV_DOUT\(0) <= NOT \logica_Seven_Seg|REG4|DOUT\(0);
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
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\decoderBloco|ALT_INV_Equal7~0_combout\ <= NOT \decoderBloco|Equal7~0_combout\;
\processador|decoderInstru1|ALT_INV_Equal11~1_combout\ <= NOT \processador|decoderInstru1|Equal11~1_combout\;
\processador|decoderInstru1|ALT_INV_saida~0_combout\ <= NOT \processador|decoderInstru1|saida~0_combout\;
\processador|decoderInstru1|ALT_INV_Equal11~0_combout\ <= NOT \processador|decoderInstru1|Equal11~0_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\logica_LED|FlipFlop2|ALT_INV_DOUT~q\ <= NOT \logica_LED|FlipFlop2|DOUT~q\;
\logica_LED|FlipFlop1|ALT_INV_DOUT~q\ <= NOT \logica_LED|FlipFlop1|DOUT~q\;
\processador|ULA1|ALT_INV_Add1~29_sumout\ <= NOT \processador|ULA1|Add1~29_sumout\;
\processador|ULA1|ALT_INV_Add1~25_sumout\ <= NOT \processador|ULA1|Add1~25_sumout\;
\processador|ULA1|ALT_INV_Add1~21_sumout\ <= NOT \processador|ULA1|Add1~21_sumout\;
\processador|ULA1|ALT_INV_Add1~17_sumout\ <= NOT \processador|ULA1|Add1~17_sumout\;
\logica_Seven_Seg|REG1|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \logica_Seven_Seg|REG1|DOUT[2]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[7]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[4]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[3]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[2]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[1]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[0]~DUPLICATE_q\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_FPGA_RESET_N~input_o\ <= NOT \FPGA_RESET_N~input_o\;
\processador|LOG_DESVIO|ALT_INV_SelMuxPC\(0) <= NOT \processador|LOG_DESVIO|SelMuxPC\(0);
\logica_Seven_Seg|ALT_INV_comb~2_combout\ <= NOT \logica_Seven_Seg|comb~2_combout\;
\SW_8|ALT_INV_saida[7]~13_combout\ <= NOT \SW_8|saida[7]~13_combout\;
\SW_8|ALT_INV_saida[6]~12_combout\ <= NOT \SW_8|saida[6]~12_combout\;
\SW_8|ALT_INV_saida[5]~11_combout\ <= NOT \SW_8|saida[5]~11_combout\;
\SW_8|ALT_INV_saida[4]~10_combout\ <= NOT \SW_8|saida[4]~10_combout\;

-- Location: IOOBUF_X54_Y18_N79
\ADD_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|dado_out[0]~6_combout\,
	oe => \RAM1|dado_out[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_ADD_OUT(0));

-- Location: IOOBUF_X36_Y45_N36
\ADD_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_8|saida[1]~7_combout\,
	oe => \RAM1|dado_out[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_ADD_OUT(1));

-- Location: IOOBUF_X54_Y18_N62
\ADD_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_8|saida[2]~8_combout\,
	oe => \RAM1|dado_out[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_ADD_OUT(2));

-- Location: IOOBUF_X54_Y17_N5
\ADD_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_8|saida[3]~9_combout\,
	oe => \RAM1|dado_out[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_ADD_OUT(3));

-- Location: IOOBUF_X36_Y45_N19
\ADD_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_8|saida[4]~10_combout\,
	oe => \RAM1|dado_out[0]~1_combout\,
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
	i => \SW_8|saida[5]~11_combout\,
	oe => \RAM1|dado_out[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_ADD_OUT(5));

-- Location: IOOBUF_X54_Y17_N22
\ADD_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_8|saida[6]~12_combout\,
	oe => \RAM1|dado_out[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_ADD_OUT(6));

-- Location: IOOBUF_X54_Y18_N45
\ADD_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_8|saida[7]~13_combout\,
	oe => \RAM1|dado_out[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_ADD_OUT(7));

-- Location: IOOBUF_X38_Y45_N2
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

-- Location: IOOBUF_X38_Y45_N53
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

-- Location: IOOBUF_X54_Y15_N22
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

-- Location: IOOBUF_X11_Y0_N19
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

-- Location: IOOBUF_X54_Y18_N96
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

-- Location: IOOBUF_X12_Y0_N19
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

-- Location: IOOBUF_X36_Y45_N53
\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(6),
	devoe => ww_devoe,
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X36_Y45_N2
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

-- Location: IOOBUF_X54_Y15_N56
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

-- Location: IOOBUF_X14_Y0_N36
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

-- Location: IOOBUF_X14_Y0_N53
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

-- Location: IOOBUF_X54_Y14_N45
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

-- Location: IOOBUF_X54_Y19_N5
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

-- Location: IOOBUF_X54_Y19_N56
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

-- Location: IOOBUF_X12_Y0_N53
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

-- Location: IOOBUF_X34_Y45_N19
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

-- Location: IOOBUF_X54_Y15_N39
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

-- Location: IOOBUF_X34_Y45_N2
\Palavra[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|saida~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(1));

-- Location: IOOBUF_X32_Y45_N42
\Palavra[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Palavra(2));

-- Location: IOOBUF_X44_Y45_N19
\Palavra[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Palavra(3));

-- Location: IOOBUF_X34_Y45_N36
\Palavra[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|saida~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(4));

-- Location: IOOBUF_X50_Y45_N2
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

-- Location: IOOBUF_X34_Y45_N53
\Palavra[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|saida~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(6));

-- Location: IOOBUF_X12_Y45_N36
\Palavra[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Palavra(7));

-- Location: IOOBUF_X43_Y45_N36
\Palavra[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Palavra(8));

-- Location: IOOBUF_X10_Y0_N59
\Palavra[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Palavra(9));

-- Location: IOOBUF_X54_Y19_N22
\Palavra[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Palavra(10));

-- Location: IOOBUF_X54_Y19_N39
\Palavra[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|Equal11~1_combout\,
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
	i => GND,
	devoe => ww_devoe,
	o => ww_Palavra(12));

-- Location: IOOBUF_X38_Y45_N19
\EQUAL_FLAG~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_EQUAL_FLAG);

-- Location: IOOBUF_X54_Y16_N39
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

-- Location: IOOBUF_X54_Y14_N96
\MEM_ADDRESS[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~4_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(0));

-- Location: IOOBUF_X54_Y15_N5
\MEM_ADDRESS[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~6_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(1));

-- Location: IOOBUF_X54_Y14_N62
\MEM_ADDRESS[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~8_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(2));

-- Location: IOOBUF_X14_Y45_N2
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

-- Location: IOOBUF_X22_Y45_N53
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

-- Location: IOOBUF_X54_Y16_N22
\MEM_ADDRESS[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~10_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(5));

-- Location: IOOBUF_X54_Y16_N5
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

-- Location: IOOBUF_X14_Y45_N53
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

-- Location: IOOBUF_X54_Y17_N39
\MEM_ADDRESS[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~2_combout\,
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
	i => \logica_Seven_Seg|H5|rascSaida7seg[0]~0_combout\,
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
	i => \logica_Seven_Seg|H5|rascSaida7seg[1]~1_combout\,
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
	i => \logica_Seven_Seg|H5|rascSaida7seg[2]~2_combout\,
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
	i => \logica_Seven_Seg|H5|rascSaida7seg[3]~3_combout\,
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
	i => \logica_Seven_Seg|H5|rascSaida7seg[4]~4_combout\,
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
	i => \logica_Seven_Seg|H5|rascSaida7seg[5]~5_combout\,
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
	i => \logica_Seven_Seg|H5|rascSaida7seg[6]~6_combout\,
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

-- Location: CLKCTRL_G6
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: LABCELL_X36_Y11_N30
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

-- Location: LABCELL_X36_Y11_N39
\processador|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~13_sumout\ = SUM(( \processador|PC|DOUT\(3) ) + ( GND ) + ( \processador|incrementaPC|Add0~10\ ))
-- \processador|incrementaPC|Add0~14\ = CARRY(( \processador|PC|DOUT\(3) ) + ( GND ) + ( \processador|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(3),
	cin => \processador|incrementaPC|Add0~10\,
	sumout => \processador|incrementaPC|Add0~13_sumout\,
	cout => \processador|incrementaPC|Add0~14\);

-- Location: LABCELL_X36_Y11_N42
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

-- Location: LABCELL_X39_Y11_N30
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

-- Location: FF_X36_Y11_N44
\processador|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \processador|LOG_DESVIO|SelMuxPC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(4));

-- Location: LABCELL_X36_Y11_N45
\processador|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~21_sumout\ = SUM(( \processador|PC|DOUT\(5) ) + ( GND ) + ( \processador|incrementaPC|Add0~18\ ))
-- \processador|incrementaPC|Add0~22\ = CARRY(( \processador|PC|DOUT\(5) ) + ( GND ) + ( \processador|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(5),
	cin => \processador|incrementaPC|Add0~18\,
	sumout => \processador|incrementaPC|Add0~21_sumout\,
	cout => \processador|incrementaPC|Add0~22\);

-- Location: FF_X36_Y11_N32
\processador|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~1_sumout\,
	asdata => \ROM1|memROM~4_combout\,
	sload => \processador|LOG_DESVIO|SelMuxPC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y11_N9
\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \processador|PC|DOUT\(1) & ( (!\processador|PC|DOUT[0]~DUPLICATE_q\ & (!\processador|PC|DOUT\(3) & !\processador|PC|DOUT\(2))) # (\processador|PC|DOUT[0]~DUPLICATE_q\ & (\processador|PC|DOUT\(3) & \processador|PC|DOUT\(2))) ) ) 
-- # ( !\processador|PC|DOUT\(1) & ( (!\processador|PC|DOUT[0]~DUPLICATE_q\ & (!\processador|PC|DOUT\(3))) # (\processador|PC|DOUT[0]~DUPLICATE_q\ & (\processador|PC|DOUT\(3) & \processador|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000011110000001100001111000000000000111100000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(3),
	datad => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~9_combout\);

-- Location: LABCELL_X36_Y11_N3
\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \ROM1|memROM~10_combout\);

-- Location: FF_X36_Y11_N47
\processador|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~21_sumout\,
	asdata => \ROM1|memROM~10_combout\,
	sload => \processador|LOG_DESVIO|SelMuxPC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(5));

-- Location: LABCELL_X36_Y11_N48
\processador|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~25_sumout\ = SUM(( \processador|PC|DOUT\(6) ) + ( GND ) + ( \processador|incrementaPC|Add0~22\ ))
-- \processador|incrementaPC|Add0~26\ = CARRY(( \processador|PC|DOUT\(6) ) + ( GND ) + ( \processador|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(6),
	cin => \processador|incrementaPC|Add0~22\,
	sumout => \processador|incrementaPC|Add0~25_sumout\,
	cout => \processador|incrementaPC|Add0~26\);

-- Location: LABCELL_X36_Y11_N51
\processador|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~29_sumout\ = SUM(( \processador|PC|DOUT\(7) ) + ( GND ) + ( \processador|incrementaPC|Add0~26\ ))
-- \processador|incrementaPC|Add0~30\ = CARRY(( \processador|PC|DOUT\(7) ) + ( GND ) + ( \processador|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(7),
	cin => \processador|incrementaPC|Add0~26\,
	sumout => \processador|incrementaPC|Add0~29_sumout\,
	cout => \processador|incrementaPC|Add0~30\);

-- Location: FF_X36_Y11_N53
\processador|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \processador|LOG_DESVIO|SelMuxPC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(7));

-- Location: LABCELL_X36_Y11_N54
\processador|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~33_sumout\ = SUM(( \processador|PC|DOUT\(8) ) + ( GND ) + ( \processador|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(8),
	cin => \processador|incrementaPC|Add0~30\,
	sumout => \processador|incrementaPC|Add0~33_sumout\);

-- Location: FF_X36_Y11_N56
\processador|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~33_sumout\,
	asdata => \ROM1|memROM~2_combout\,
	sload => \processador|LOG_DESVIO|SelMuxPC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(8));

-- Location: LABCELL_X35_Y11_N18
\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( !\processador|PC|DOUT\(8) & ( !\processador|PC|DOUT\(7) & ( (!\processador|PC|DOUT[0]~DUPLICATE_q\ & (!\processador|PC|DOUT\(6) & (!\processador|PC|DOUT\(5) & !\processador|PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(6),
	datac => \processador|PC|ALT_INV_DOUT\(5),
	datad => \processador|PC|ALT_INV_DOUT\(4),
	datae => \processador|PC|ALT_INV_DOUT\(8),
	dataf => \processador|PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~11_combout\);

-- Location: FF_X36_Y11_N50
\processador|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~25_sumout\,
	asdata => \ROM1|memROM~11_combout\,
	sload => \processador|LOG_DESVIO|SelMuxPC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(6));

-- Location: FF_X36_Y11_N52
\processador|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \processador|LOG_DESVIO|SelMuxPC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y11_N15
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( !\processador|PC|DOUT\(8) & ( (!\processador|PC|DOUT\(6) & (!\processador|PC|DOUT[7]~DUPLICATE_q\ & (!\processador|PC|DOUT\(4) & !\processador|PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(6),
	datab => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(4),
	datad => \processador|PC|ALT_INV_DOUT\(5),
	dataf => \processador|PC|ALT_INV_DOUT\(8),
	combout => \ROM1|memROM~2_combout\);

-- Location: LABCELL_X36_Y11_N18
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \processador|PC|DOUT[0]~DUPLICATE_q\ & ( (\processador|PC|DOUT\(2) & ((!\processador|PC|DOUT\(3)) # (\processador|PC|DOUT\(1)))) ) ) # ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(1) & 
-- ((\processador|PC|DOUT\(2)))) # (\processador|PC|DOUT\(1) & (\processador|PC|DOUT\(3) & !\processador|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110000000000111111000000000000110011110000000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(3),
	datac => \processador|PC|ALT_INV_DOUT\(1),
	datad => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~5_combout\);

-- Location: LABCELL_X36_Y11_N12
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ROM1|memROM~6_combout\);

-- Location: FF_X36_Y11_N34
\processador|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~5_sumout\,
	asdata => \ROM1|memROM~6_combout\,
	sload => \processador|LOG_DESVIO|SelMuxPC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y11_N24
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \processador|PC|DOUT\(0) & ( (\processador|PC|DOUT\(3) & !\processador|PC|DOUT\(2)) ) ) # ( !\processador|PC|DOUT\(0) & ( (\processador|PC|DOUT\(3) & (\processador|PC|DOUT\(1) & \processador|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(3),
	datac => \processador|PC|ALT_INV_DOUT\(1),
	datad => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~7_combout\);

-- Location: LABCELL_X35_Y11_N6
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \ROM1|memROM~7_combout\ & ( \ROM1|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ROM1|memROM~8_combout\);

-- Location: FF_X36_Y11_N37
\processador|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~9_sumout\,
	asdata => \ROM1|memROM~8_combout\,
	sload => \processador|LOG_DESVIO|SelMuxPC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[2]~DUPLICATE_q\);

-- Location: FF_X36_Y11_N40
\processador|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \processador|LOG_DESVIO|SelMuxPC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X39_Y11_N36
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( !\processador|PC|DOUT[3]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[1]~DUPLICATE_q\ & !\processador|PC|DOUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM1|memROM~0_combout\);

-- Location: FF_X36_Y11_N43
\processador|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \processador|LOG_DESVIO|SelMuxPC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y11_N21
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\processador|PC|DOUT\(6) & ( (!\processador|PC|DOUT\(7) & (!\processador|PC|DOUT\(5) & !\processador|PC|DOUT\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(7),
	datac => \processador|PC|ALT_INV_DOUT\(5),
	datad => \processador|PC|ALT_INV_DOUT\(8),
	dataf => \processador|PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~1_combout\);

-- Location: MLABCELL_X37_Y11_N15
\processador|decoderInstru1|Equal11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal11~1_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\processador|PC|DOUT\(0) & (\ROM1|memROM~0_combout\ & \processador|PC|DOUT[4]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \processador|decoderInstru1|Equal11~1_combout\);

-- Location: MLABCELL_X37_Y11_N12
\processador|LOG_DESVIO|SelMuxPC[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|LOG_DESVIO|SelMuxPC\(0) = ( \processador|LOG_DESVIO|SelMuxPC\(0) & ( \processador|decoderInstru1|Equal11~1_combout\ ) ) # ( !\processador|LOG_DESVIO|SelMuxPC\(0) & ( (\processador|decoderInstru1|Equal11~1_combout\ & !\ROM1|memROM~2_combout\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|decoderInstru1|ALT_INV_Equal11~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \processador|LOG_DESVIO|ALT_INV_SelMuxPC\(0),
	combout => \processador|LOG_DESVIO|SelMuxPC\(0));

-- Location: FF_X36_Y11_N31
\processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~1_sumout\,
	asdata => \ROM1|memROM~4_combout\,
	sload => \processador|LOG_DESVIO|SelMuxPC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(0));

-- Location: LABCELL_X36_Y11_N33
\processador|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~5_sumout\ = SUM(( \processador|PC|DOUT\(1) ) + ( GND ) + ( \processador|incrementaPC|Add0~2\ ))
-- \processador|incrementaPC|Add0~6\ = CARRY(( \processador|PC|DOUT\(1) ) + ( GND ) + ( \processador|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(1),
	cin => \processador|incrementaPC|Add0~2\,
	sumout => \processador|incrementaPC|Add0~5_sumout\,
	cout => \processador|incrementaPC|Add0~6\);

-- Location: FF_X36_Y11_N35
\processador|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~5_sumout\,
	asdata => \ROM1|memROM~6_combout\,
	sload => \processador|LOG_DESVIO|SelMuxPC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(1));

-- Location: LABCELL_X36_Y11_N36
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

-- Location: FF_X36_Y11_N38
\processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~9_sumout\,
	asdata => \ROM1|memROM~8_combout\,
	sload => \processador|LOG_DESVIO|SelMuxPC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(2));

-- Location: FF_X36_Y11_N41
\processador|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \processador|LOG_DESVIO|SelMuxPC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(3));

-- Location: LABCELL_X36_Y11_N27
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \processador|PC|DOUT\(1) & ( (!\processador|PC|DOUT\(3) & ((!\processador|PC|DOUT\(2)) # (\processador|PC|DOUT[0]~DUPLICATE_q\))) # (\processador|PC|DOUT\(3) & (\processador|PC|DOUT[0]~DUPLICATE_q\ & !\processador|PC|DOUT\(2))) 
-- ) ) # ( !\processador|PC|DOUT\(1) & ( (\processador|PC|DOUT\(3) & ((!\processador|PC|DOUT[0]~DUPLICATE_q\) # (\processador|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110011001100000011001111001111000011001100111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(3),
	datac => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~3_combout\);

-- Location: LABCELL_X35_Y11_N51
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \ROM1|memROM~4_combout\);

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

-- Location: LABCELL_X36_Y11_N6
\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ( !\ROM1|memROM~7_combout\ & ( (!\processador|PC|DOUT[0]~DUPLICATE_q\ & (\ROM1|memROM~1_combout\ & !\processador|PC|DOUT[4]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \comb~1_combout\);

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

-- Location: LABCELL_X35_Y11_N12
\RAM1|dado_out[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[0]~2_combout\ = ( \ROM1|memROM~10_combout\ & ( !\ROM1|memROM~6_combout\ & ( (\ROM1|memROM~4_combout\ & (\comb~1_combout\ & !\KEY[1]~input_o\)) ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~6_combout\ & ( (\ROM1|memROM~4_combout\ & 
-- (!\SW[8]~input_o\ & \comb~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ALT_INV_SW[8]~input_o\,
	datac => \ALT_INV_comb~1_combout\,
	datad => \ALT_INV_KEY[1]~input_o\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|dado_out[0]~2_combout\);

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

-- Location: LABCELL_X36_Y11_N0
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~9_combout\ & (\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \comb~0_combout\);

-- Location: LABCELL_X35_Y11_N48
\FPGA_RESET|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FPGA_RESET|saida[0]~0_combout\ = ( \ROM1|memROM~8_combout\ & ( (!\FPGA_RESET_N~input_o\ & (\ROM1|memROM~11_combout\ & \comb~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_FPGA_RESET_N~input_o\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ALT_INV_comb~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \FPGA_RESET|saida[0]~0_combout\);

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

-- Location: LABCELL_X35_Y11_N54
\RAM1|dado_out[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[0]~3_combout\ = ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~4_combout\ & (\comb~1_combout\ & !\SW[9]~input_o\)) ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~4_combout\ & 
-- (!\SW[0]~input_o\ & \comb~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000000000000000000001010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_comb~1_combout\,
	datad => \ALT_INV_SW[9]~input_o\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|dado_out[0]~3_combout\);

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

-- Location: LABCELL_X35_Y11_N0
\RAM1|dado_out[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[0]~4_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~6_combout\ & ( (\comb~1_combout\ & ((!\ROM1|memROM~4_combout\ & (!\KEY[2]~input_o\)) # (\ROM1|memROM~4_combout\ & ((!\KEY[3]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ALT_INV_KEY[2]~input_o\,
	datac => \ALT_INV_comb~1_combout\,
	datad => \ALT_INV_KEY[3]~input_o\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|dado_out[0]~4_combout\);

-- Location: MLABCELL_X37_Y11_N57
\RAM1|dado_out[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[0]~6_combout\ = ( !\RAM1|dado_out[0]~4_combout\ & ( (!\RAM1|dado_out[0]~2_combout\ & (!\FPGA_RESET|saida[0]~0_combout\ & !\RAM1|dado_out[0]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out[0]~2_combout\,
	datac => \FPGA_RESET|ALT_INV_saida[0]~0_combout\,
	datad => \RAM1|ALT_INV_dado_out[0]~3_combout\,
	dataf => \RAM1|ALT_INV_dado_out[0]~4_combout\,
	combout => \RAM1|dado_out[0]~6_combout\);

-- Location: LABCELL_X35_Y11_N30
\RAM1|dado_out[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[0]~1_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~7_combout\ & ( (!\ROM1|memROM~2_combout\ & \ROM1|memROM~11_combout\) ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~7_combout\ & ( (\ROM1|memROM~11_combout\ & 
-- ((!\ROM1|memROM~2_combout\) # ((!\ROM1|memROM~5_combout\ & !\ROM1|memROM~3_combout\)))) ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~7_combout\ & ( (\ROM1|memROM~11_combout\ & ((!\ROM1|memROM~2_combout\) # ((!\ROM1|memROM~5_combout\) # 
-- (!\ROM1|memROM~3_combout\)))) ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~7_combout\ & ( \ROM1|memROM~11_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111000001110000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|dado_out[0]~1_combout\);

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

-- Location: MLABCELL_X34_Y11_N24
\SW_8|saida[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_8|saida[1]~7_combout\ = ( \ROM1|memROM~11_combout\ & ( \SW[1]~input_o\ & ( (!\ROM1|memROM~4_combout\ & ((!\ROM1|memROM~6_combout\ & ((!\ROM1|memROM~10_combout\))) # (\ROM1|memROM~6_combout\ & (\ROM1|memROM~8_combout\)))) # (\ROM1|memROM~4_combout\ & 
-- (((\ROM1|memROM~6_combout\ & !\ROM1|memROM~10_combout\)) # (\ROM1|memROM~8_combout\))) ) ) ) # ( !\ROM1|memROM~11_combout\ & ( \SW[1]~input_o\ ) ) # ( \ROM1|memROM~11_combout\ & ( !\SW[1]~input_o\ & ( (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~8_combout\ & 
-- ((!\ROM1|memROM~10_combout\) # (\ROM1|memROM~6_combout\)))) # (\ROM1|memROM~4_combout\ & (((\ROM1|memROM~6_combout\ & !\ROM1|memROM~10_combout\)) # (\ROM1|memROM~8_combout\))) ) ) ) # ( !\ROM1|memROM~11_combout\ & ( !\SW[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001101110001001111111111111111111011011100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \SW_8|saida[1]~7_combout\);

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

-- Location: MLABCELL_X34_Y11_N27
\SW_8|saida[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_8|saida[2]~8_combout\ = ( \ROM1|memROM~11_combout\ & ( \SW[2]~input_o\ & ( (!\ROM1|memROM~4_combout\ & ((!\ROM1|memROM~6_combout\ & ((!\ROM1|memROM~10_combout\))) # (\ROM1|memROM~6_combout\ & (\ROM1|memROM~8_combout\)))) # (\ROM1|memROM~4_combout\ & 
-- (((!\ROM1|memROM~10_combout\ & \ROM1|memROM~6_combout\)) # (\ROM1|memROM~8_combout\))) ) ) ) # ( !\ROM1|memROM~11_combout\ & ( \SW[2]~input_o\ ) ) # ( \ROM1|memROM~11_combout\ & ( !\SW[2]~input_o\ & ( (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~8_combout\ & 
-- ((!\ROM1|memROM~10_combout\) # (\ROM1|memROM~6_combout\)))) # (\ROM1|memROM~4_combout\ & (((!\ROM1|memROM~10_combout\ & \ROM1|memROM~6_combout\)) # (\ROM1|memROM~8_combout\))) ) ) ) # ( !\ROM1|memROM~11_combout\ & ( !\SW[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001100010111001111111111111111111011000101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \SW_8|saida[2]~8_combout\);

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

-- Location: LABCELL_X35_Y11_N27
\SW_8|saida[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_8|saida[3]~9_combout\ = ( \ROM1|memROM~11_combout\ & ( \SW[3]~input_o\ & ( (!\ROM1|memROM~10_combout\ & ((!\ROM1|memROM~6_combout\ $ (\ROM1|memROM~4_combout\)) # (\ROM1|memROM~8_combout\))) # (\ROM1|memROM~10_combout\ & (\ROM1|memROM~8_combout\ & 
-- ((\ROM1|memROM~4_combout\) # (\ROM1|memROM~6_combout\)))) ) ) ) # ( !\ROM1|memROM~11_combout\ & ( \SW[3]~input_o\ ) ) # ( \ROM1|memROM~11_combout\ & ( !\SW[3]~input_o\ & ( (!\ROM1|memROM~10_combout\ & (((\ROM1|memROM~6_combout\ & \ROM1|memROM~4_combout\)) 
-- # (\ROM1|memROM~8_combout\))) # (\ROM1|memROM~10_combout\ & (\ROM1|memROM~8_combout\ & ((\ROM1|memROM~4_combout\) # (\ROM1|memROM~6_combout\)))) ) ) ) # ( !\ROM1|memROM~11_combout\ & ( !\SW[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001000110011101111111111111111111010001100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \SW_8|saida[3]~9_combout\);

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

-- Location: LABCELL_X35_Y11_N45
\SW_8|saida[4]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_8|saida[4]~10_combout\ = ( \ROM1|memROM~11_combout\ & ( \SW[4]~input_o\ & ( (!\ROM1|memROM~10_combout\ & ((!\ROM1|memROM~6_combout\ $ (\ROM1|memROM~4_combout\)) # (\ROM1|memROM~8_combout\))) # (\ROM1|memROM~10_combout\ & (\ROM1|memROM~8_combout\ & 
-- ((\ROM1|memROM~4_combout\) # (\ROM1|memROM~6_combout\)))) ) ) ) # ( !\ROM1|memROM~11_combout\ & ( \SW[4]~input_o\ ) ) # ( \ROM1|memROM~11_combout\ & ( !\SW[4]~input_o\ & ( (!\ROM1|memROM~10_combout\ & (((\ROM1|memROM~6_combout\ & \ROM1|memROM~4_combout\)) 
-- # (\ROM1|memROM~8_combout\))) # (\ROM1|memROM~10_combout\ & (\ROM1|memROM~8_combout\ & ((\ROM1|memROM~4_combout\) # (\ROM1|memROM~6_combout\)))) ) ) ) # ( !\ROM1|memROM~11_combout\ & ( !\SW[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001000110011101111111111111111111010001100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \SW_8|saida[4]~10_combout\);

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

-- Location: LABCELL_X35_Y11_N36
\SW_8|saida[5]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_8|saida[5]~11_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~11_combout\) # (\ROM1|memROM~8_combout\) ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~11_combout\) # 
-- ((\ROM1|memROM~8_combout\) # (\ROM1|memROM~4_combout\)) ) ) ) # ( \ROM1|memROM~10_combout\ & ( !\ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~11_combout\) # ((\ROM1|memROM~4_combout\ & \ROM1|memROM~8_combout\)) ) ) ) # ( !\ROM1|memROM~10_combout\ & ( 
-- !\ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~11_combout\) # (((\SW[5]~input_o\ & !\ROM1|memROM~4_combout\)) # (\ROM1|memROM~8_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101011111111101010101010111110101111111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \SW_8|saida[5]~11_combout\);

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

-- Location: LABCELL_X35_Y11_N24
\SW_8|saida[6]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_8|saida[6]~12_combout\ = ( \ROM1|memROM~11_combout\ & ( \SW[6]~input_o\ & ( (!\ROM1|memROM~10_combout\ & ((!\ROM1|memROM~4_combout\ $ (\ROM1|memROM~6_combout\)) # (\ROM1|memROM~8_combout\))) # (\ROM1|memROM~10_combout\ & (\ROM1|memROM~8_combout\ & 
-- ((\ROM1|memROM~6_combout\) # (\ROM1|memROM~4_combout\)))) ) ) ) # ( !\ROM1|memROM~11_combout\ & ( \SW[6]~input_o\ ) ) # ( \ROM1|memROM~11_combout\ & ( !\SW[6]~input_o\ & ( (!\ROM1|memROM~10_combout\ & (((\ROM1|memROM~4_combout\ & \ROM1|memROM~6_combout\)) 
-- # (\ROM1|memROM~8_combout\))) # (\ROM1|memROM~10_combout\ & (\ROM1|memROM~8_combout\ & ((\ROM1|memROM~6_combout\) # (\ROM1|memROM~4_combout\)))) ) ) ) # ( !\ROM1|memROM~11_combout\ & ( !\SW[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001000110011101111111111111111111010001100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \SW_8|saida[6]~12_combout\);

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

-- Location: LABCELL_X35_Y11_N42
\SW_8|saida[7]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_8|saida[7]~13_combout\ = ( \ROM1|memROM~11_combout\ & ( \SW[7]~input_o\ & ( (!\ROM1|memROM~10_combout\ & ((!\ROM1|memROM~4_combout\ $ (\ROM1|memROM~6_combout\)) # (\ROM1|memROM~8_combout\))) # (\ROM1|memROM~10_combout\ & (\ROM1|memROM~8_combout\ & 
-- ((\ROM1|memROM~6_combout\) # (\ROM1|memROM~4_combout\)))) ) ) ) # ( !\ROM1|memROM~11_combout\ & ( \SW[7]~input_o\ ) ) # ( \ROM1|memROM~11_combout\ & ( !\SW[7]~input_o\ & ( (!\ROM1|memROM~10_combout\ & (((\ROM1|memROM~4_combout\ & \ROM1|memROM~6_combout\)) 
-- # (\ROM1|memROM~8_combout\))) # (\ROM1|memROM~10_combout\ & (\ROM1|memROM~8_combout\ & ((\ROM1|memROM~6_combout\) # (\ROM1|memROM~4_combout\)))) ) ) ) # ( !\ROM1|memROM~11_combout\ & ( !\SW[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001000110011101111111111111111111010001100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \SW_8|saida[7]~13_combout\);

-- Location: MLABCELL_X37_Y11_N18
\processador|decoderInstru1|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida~0_combout\ = (!\processador|PC|DOUT\(0) & (\ROM1|memROM~1_combout\ & !\processador|PC|DOUT[4]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \processador|decoderInstru1|saida~0_combout\);

-- Location: LABCELL_X35_Y11_N9
\RAM1|dado_out[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[0]~5_combout\ = ( \FPGA_RESET|saida[0]~0_combout\ & ( !\RAM1|dado_out[0]~1_combout\ ) ) # ( !\FPGA_RESET|saida[0]~0_combout\ & ( (!\RAM1|dado_out[0]~1_combout\) # ((!\RAM1|dado_out[0]~4_combout\ & (!\RAM1|dado_out[0]~2_combout\ & 
-- !\RAM1|dado_out[0]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110011001100111011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out[0]~4_combout\,
	datab => \RAM1|ALT_INV_dado_out[0]~1_combout\,
	datac => \RAM1|ALT_INV_dado_out[0]~2_combout\,
	datad => \RAM1|ALT_INV_dado_out[0]~3_combout\,
	dataf => \FPGA_RESET|ALT_INV_saida[0]~0_combout\,
	combout => \RAM1|dado_out[0]~5_combout\);

-- Location: MLABCELL_X34_Y11_N30
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

-- Location: MLABCELL_X34_Y11_N33
\processador|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~1_sumout\ = SUM(( !\RAM1|dado_out[0]~5_combout\ ) + ( \processador|REGA|DOUT\(0) ) + ( \processador|ULA1|Add1~34_cout\ ))
-- \processador|ULA1|Add1~2\ = CARRY(( !\RAM1|dado_out[0]~5_combout\ ) + ( \processador|REGA|DOUT\(0) ) + ( \processador|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out[0]~5_combout\,
	datac => \processador|REGA|ALT_INV_DOUT\(0),
	cin => \processador|ULA1|Add1~34_cout\,
	sumout => \processador|ULA1|Add1~1_sumout\,
	cout => \processador|ULA1|Add1~2\);

-- Location: MLABCELL_X34_Y11_N9
\processador|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[0]~0_combout\ = ( \processador|ULA1|Add1~1_sumout\ & ( (!\processador|decoderInstru1|saida~0_combout\) # (\RAM1|dado_out[0]~5_combout\) ) ) # ( !\processador|ULA1|Add1~1_sumout\ & ( (\processador|decoderInstru1|saida~0_combout\ & 
-- \RAM1|dado_out[0]~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~0_combout\,
	datad => \RAM1|ALT_INV_dado_out[0]~5_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \processador|ULA1|saida[0]~0_combout\);

-- Location: FF_X34_Y11_N11
\processador|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|saida[0]~0_combout\,
	ena => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(0));

-- Location: MLABCELL_X37_Y11_N51
\logica_Seven_Seg|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|comb~0_combout\ = ( !\ROM1|memROM~7_combout\ & ( (\processador|PC|DOUT\(0) & (!\processador|PC|DOUT[4]~DUPLICATE_q\ & \ROM1|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \logica_Seven_Seg|comb~0_combout\);

-- Location: MLABCELL_X37_Y11_N45
\logica_LED|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|comb~0_combout\ = ( !\ROM1|memROM~4_combout\ & ( (\logica_Seven_Seg|comb~0_combout\ & (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|ALT_INV_comb~0_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \logica_LED|comb~0_combout\);

-- Location: FF_X36_Y11_N13
\logica_LED|REG_LEDS|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(0));

-- Location: MLABCELL_X34_Y11_N36
\processador|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~5_sumout\ = SUM(( !\SW_8|saida[1]~7_combout\ ) + ( \processador|REGA|DOUT\(1) ) + ( \processador|ULA1|Add1~2\ ))
-- \processador|ULA1|Add1~6\ = CARRY(( !\SW_8|saida[1]~7_combout\ ) + ( \processador|REGA|DOUT\(1) ) + ( \processador|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|REGA|ALT_INV_DOUT\(1),
	datac => \SW_8|ALT_INV_saida[1]~7_combout\,
	cin => \processador|ULA1|Add1~2\,
	sumout => \processador|ULA1|Add1~5_sumout\,
	cout => \processador|ULA1|Add1~6\);

-- Location: MLABCELL_X34_Y11_N6
\processador|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[1]~1_combout\ = ( \SW_8|saida[1]~7_combout\ & ( (\processador|ULA1|Add1~5_sumout\) # (\processador|decoderInstru1|saida~0_combout\) ) ) # ( !\SW_8|saida[1]~7_combout\ & ( (!\processador|decoderInstru1|saida~0_combout\ & 
-- \processador|ULA1|Add1~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~0_combout\,
	datad => \processador|ULA1|ALT_INV_Add1~5_sumout\,
	dataf => \SW_8|ALT_INV_saida[1]~7_combout\,
	combout => \processador|ULA1|saida[1]~1_combout\);

-- Location: FF_X34_Y11_N8
\processador|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|saida[1]~1_combout\,
	ena => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(1));

-- Location: FF_X34_Y11_N55
\logica_LED|REG_LEDS|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(1));

-- Location: MLABCELL_X34_Y11_N39
\processador|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~9_sumout\ = SUM(( !\SW_8|saida[2]~8_combout\ ) + ( \processador|REGA|DOUT\(2) ) + ( \processador|ULA1|Add1~6\ ))
-- \processador|ULA1|Add1~10\ = CARRY(( !\SW_8|saida[2]~8_combout\ ) + ( \processador|REGA|DOUT\(2) ) + ( \processador|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \SW_8|ALT_INV_saida[2]~8_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(2),
	cin => \processador|ULA1|Add1~6\,
	sumout => \processador|ULA1|Add1~9_sumout\,
	cout => \processador|ULA1|Add1~10\);

-- Location: MLABCELL_X34_Y11_N18
\processador|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[2]~2_combout\ = ( \processador|ULA1|Add1~9_sumout\ & ( (!\processador|decoderInstru1|saida~0_combout\) # (\SW_8|saida[2]~8_combout\) ) ) # ( !\processador|ULA1|Add1~9_sumout\ & ( (\processador|decoderInstru1|saida~0_combout\ & 
-- \SW_8|saida[2]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~0_combout\,
	datac => \SW_8|ALT_INV_saida[2]~8_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \processador|ULA1|saida[2]~2_combout\);

-- Location: FF_X34_Y11_N20
\processador|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|saida[2]~2_combout\,
	ena => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(2));

-- Location: FF_X34_Y11_N37
\logica_LED|REG_LEDS|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(2));

-- Location: MLABCELL_X34_Y11_N42
\processador|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~13_sumout\ = SUM(( !\SW_8|saida[3]~9_combout\ ) + ( \processador|REGA|DOUT\(3) ) + ( \processador|ULA1|Add1~10\ ))
-- \processador|ULA1|Add1~14\ = CARRY(( !\SW_8|saida[3]~9_combout\ ) + ( \processador|REGA|DOUT\(3) ) + ( \processador|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|REGA|ALT_INV_DOUT\(3),
	datad => \SW_8|ALT_INV_saida[3]~9_combout\,
	cin => \processador|ULA1|Add1~10\,
	sumout => \processador|ULA1|Add1~13_sumout\,
	cout => \processador|ULA1|Add1~14\);

-- Location: MLABCELL_X34_Y11_N3
\processador|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[3]~3_combout\ = ( \processador|ULA1|Add1~13_sumout\ & ( (!\processador|decoderInstru1|saida~0_combout\) # (\SW_8|saida[3]~9_combout\) ) ) # ( !\processador|ULA1|Add1~13_sumout\ & ( (\processador|decoderInstru1|saida~0_combout\ & 
-- \SW_8|saida[3]~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~0_combout\,
	datad => \SW_8|ALT_INV_saida[3]~9_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \processador|ULA1|saida[3]~3_combout\);

-- Location: FF_X34_Y11_N5
\processador|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|saida[3]~3_combout\,
	ena => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(3));

-- Location: FF_X34_Y11_N46
\logica_LED|REG_LEDS|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(3));

-- Location: MLABCELL_X34_Y11_N45
\processador|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~17_sumout\ = SUM(( !\SW_8|saida[4]~10_combout\ ) + ( \processador|REGA|DOUT\(4) ) + ( \processador|ULA1|Add1~14\ ))
-- \processador|ULA1|Add1~18\ = CARRY(( !\SW_8|saida[4]~10_combout\ ) + ( \processador|REGA|DOUT\(4) ) + ( \processador|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|REGA|ALT_INV_DOUT\(4),
	datad => \SW_8|ALT_INV_saida[4]~10_combout\,
	cin => \processador|ULA1|Add1~14\,
	sumout => \processador|ULA1|Add1~17_sumout\,
	cout => \processador|ULA1|Add1~18\);

-- Location: MLABCELL_X34_Y11_N21
\processador|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[4]~4_combout\ = (!\processador|decoderInstru1|saida~0_combout\ & ((\processador|ULA1|Add1~17_sumout\))) # (\processador|decoderInstru1|saida~0_combout\ & (\SW_8|saida[4]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~0_combout\,
	datac => \SW_8|ALT_INV_saida[4]~10_combout\,
	datad => \processador|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \processador|ULA1|saida[4]~4_combout\);

-- Location: FF_X34_Y11_N23
\processador|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|saida[4]~4_combout\,
	ena => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(4));

-- Location: FF_X36_Y11_N1
\logica_LED|REG_LEDS|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(4));

-- Location: MLABCELL_X34_Y11_N48
\processador|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~21_sumout\ = SUM(( !\SW_8|saida[5]~11_combout\ ) + ( \processador|REGA|DOUT\(5) ) + ( \processador|ULA1|Add1~18\ ))
-- \processador|ULA1|Add1~22\ = CARRY(( !\SW_8|saida[5]~11_combout\ ) + ( \processador|REGA|DOUT\(5) ) + ( \processador|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|REGA|ALT_INV_DOUT\(5),
	datac => \SW_8|ALT_INV_saida[5]~11_combout\,
	cin => \processador|ULA1|Add1~18\,
	sumout => \processador|ULA1|Add1~21_sumout\,
	cout => \processador|ULA1|Add1~22\);

-- Location: MLABCELL_X34_Y11_N12
\processador|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[5]~5_combout\ = ( \processador|ULA1|Add1~21_sumout\ & ( (!\processador|decoderInstru1|saida~0_combout\) # (\SW_8|saida[5]~11_combout\) ) ) # ( !\processador|ULA1|Add1~21_sumout\ & ( (\processador|decoderInstru1|saida~0_combout\ & 
-- \SW_8|saida[5]~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~0_combout\,
	datac => \SW_8|ALT_INV_saida[5]~11_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \processador|ULA1|saida[5]~5_combout\);

-- Location: FF_X34_Y11_N14
\processador|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|saida[5]~5_combout\,
	ena => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(5));

-- Location: FF_X34_Y11_N59
\logica_LED|REG_LEDS|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(5));

-- Location: MLABCELL_X34_Y11_N51
\processador|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~25_sumout\ = SUM(( \processador|REGA|DOUT\(6) ) + ( !\SW_8|saida[6]~12_combout\ ) + ( \processador|ULA1|Add1~22\ ))
-- \processador|ULA1|Add1~26\ = CARRY(( \processador|REGA|DOUT\(6) ) + ( !\SW_8|saida[6]~12_combout\ ) + ( \processador|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \SW_8|ALT_INV_saida[6]~12_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(6),
	cin => \processador|ULA1|Add1~22\,
	sumout => \processador|ULA1|Add1~25_sumout\,
	cout => \processador|ULA1|Add1~26\);

-- Location: MLABCELL_X34_Y11_N0
\processador|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[6]~6_combout\ = ( \processador|ULA1|Add1~25_sumout\ & ( (!\processador|decoderInstru1|saida~0_combout\) # (\SW_8|saida[6]~12_combout\) ) ) # ( !\processador|ULA1|Add1~25_sumout\ & ( (\processador|decoderInstru1|saida~0_combout\ & 
-- \SW_8|saida[6]~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~0_combout\,
	datab => \SW_8|ALT_INV_saida[6]~12_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~25_sumout\,
	combout => \processador|ULA1|saida[6]~6_combout\);

-- Location: FF_X34_Y11_N2
\processador|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|saida[6]~6_combout\,
	ena => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(6));

-- Location: FF_X34_Y11_N41
\logica_LED|REG_LEDS|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(6));

-- Location: MLABCELL_X34_Y11_N54
\processador|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~29_sumout\ = SUM(( !\SW_8|saida[7]~13_combout\ ) + ( \processador|REGA|DOUT\(7) ) + ( \processador|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|REGA|ALT_INV_DOUT\(7),
	datad => \SW_8|ALT_INV_saida[7]~13_combout\,
	cin => \processador|ULA1|Add1~26\,
	sumout => \processador|ULA1|Add1~29_sumout\);

-- Location: MLABCELL_X34_Y11_N15
\processador|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[7]~7_combout\ = ( \processador|ULA1|Add1~29_sumout\ & ( (!\processador|decoderInstru1|saida~0_combout\) # (\SW_8|saida[7]~13_combout\) ) ) # ( !\processador|ULA1|Add1~29_sumout\ & ( (\processador|decoderInstru1|saida~0_combout\ & 
-- \SW_8|saida[7]~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~0_combout\,
	datac => \SW_8|ALT_INV_saida[7]~13_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \processador|ULA1|saida[7]~7_combout\);

-- Location: FF_X34_Y11_N17
\processador|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|saida[7]~7_combout\,
	ena => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(7));

-- Location: FF_X34_Y11_N52
\logica_LED|REG_LEDS|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(7));

-- Location: MLABCELL_X37_Y11_N36
\logica_LED|FlipFlop1|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|FlipFlop1|DOUT~0_combout\ = ( \logica_LED|FlipFlop1|DOUT~q\ & ( \ROM1|memROM~6_combout\ ) ) # ( \logica_LED|FlipFlop1|DOUT~q\ & ( !\ROM1|memROM~6_combout\ & ( (!\logica_Seven_Seg|comb~0_combout\) # ((!\ROM1|memROM~4_combout\) # 
-- ((\processador|REGA|DOUT\(0)) # (\ROM1|memROM~10_combout\))) ) ) ) # ( !\logica_LED|FlipFlop1|DOUT~q\ & ( !\ROM1|memROM~6_combout\ & ( (\logica_Seven_Seg|comb~0_combout\ & (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~10_combout\ & 
-- \processador|REGA|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000111011111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|ALT_INV_comb~0_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(0),
	datae => \logica_LED|FlipFlop1|ALT_INV_DOUT~q\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \logica_LED|FlipFlop1|DOUT~0_combout\);

-- Location: FF_X37_Y11_N37
\logica_LED|FlipFlop1|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \logica_LED|FlipFlop1|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|FlipFlop1|DOUT~q\);

-- Location: MLABCELL_X37_Y11_N30
\logica_LED|FlipFlop2|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|FlipFlop2|DOUT~0_combout\ = ( \logica_LED|FlipFlop2|DOUT~q\ & ( \ROM1|memROM~6_combout\ & ( (!\logica_Seven_Seg|comb~0_combout\) # (((\processador|REGA|DOUT\(0)) # (\ROM1|memROM~10_combout\)) # (\ROM1|memROM~4_combout\)) ) ) ) # ( 
-- !\logica_LED|FlipFlop2|DOUT~q\ & ( \ROM1|memROM~6_combout\ & ( (\logica_Seven_Seg|comb~0_combout\ & (!\ROM1|memROM~4_combout\ & (!\ROM1|memROM~10_combout\ & \processador|REGA|DOUT\(0)))) ) ) ) # ( \logica_LED|FlipFlop2|DOUT~q\ & ( !\ROM1|memROM~6_combout\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000010000001011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|ALT_INV_comb~0_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(0),
	datae => \logica_LED|FlipFlop2|ALT_INV_DOUT~q\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \logica_LED|FlipFlop2|DOUT~0_combout\);

-- Location: FF_X37_Y11_N31
\logica_LED|FlipFlop2|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \logica_LED|FlipFlop2|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|FlipFlop2|DOUT~q\);

-- Location: MLABCELL_X37_Y11_N48
\processador|decoderInstru1|Equal11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal11~0_combout\ = ( \ROM1|memROM~1_combout\ & ( (\processador|PC|DOUT\(0) & !\processador|PC|DOUT[4]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \processador|decoderInstru1|Equal11~0_combout\);

-- Location: LABCELL_X36_Y12_N12
\decoderBloco|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderBloco|Equal7~0_combout\ = ( !\processador|PC|DOUT[7]~DUPLICATE_q\ & ( !\processador|PC|DOUT\(6) & ( (!\processador|PC|DOUT[4]~DUPLICATE_q\ & (!\processador|PC|DOUT\(8) & !\processador|PC|DOUT\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \processador|PC|ALT_INV_DOUT\(5),
	datae => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(6),
	combout => \decoderBloco|Equal7~0_combout\);

-- Location: MLABCELL_X37_Y11_N54
\logica_Seven_Seg|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|comb~1_combout\ = ( \logica_Seven_Seg|comb~0_combout\ & ( \comb~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_comb~0_combout\,
	dataf => \logica_Seven_Seg|ALT_INV_comb~0_combout\,
	combout => \logica_Seven_Seg|comb~1_combout\);

-- Location: FF_X37_Y7_N7
\logica_Seven_Seg|REG0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG0|DOUT\(3));

-- Location: MLABCELL_X37_Y7_N51
\logica_Seven_Seg|REG0|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|REG0|DOUT[1]~feeder_combout\ = ( \processador|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|REG0|DOUT[1]~feeder_combout\);

-- Location: FF_X37_Y7_N52
\logica_Seven_Seg|REG0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \logica_Seven_Seg|REG0|DOUT[1]~feeder_combout\,
	ena => \logica_Seven_Seg|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG0|DOUT\(1));

-- Location: FF_X37_Y7_N10
\logica_Seven_Seg|REG0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG0|DOUT\(2));

-- Location: MLABCELL_X37_Y7_N48
\logica_Seven_Seg|REG0|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|REG0|DOUT[0]~feeder_combout\ = ( \processador|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|REG0|DOUT[0]~feeder_combout\);

-- Location: FF_X37_Y7_N49
\logica_Seven_Seg|REG0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \logica_Seven_Seg|REG0|DOUT[0]~feeder_combout\,
	ena => \logica_Seven_Seg|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG0|DOUT\(0));

-- Location: MLABCELL_X42_Y5_N48
\logica_Seven_Seg|H0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[0]~0_combout\ = ( \logica_Seven_Seg|REG0|DOUT\(2) & ( \logica_Seven_Seg|REG0|DOUT\(0) & ( (\logica_Seven_Seg|REG0|DOUT\(3) & !\logica_Seven_Seg|REG0|DOUT\(1)) ) ) ) # ( !\logica_Seven_Seg|REG0|DOUT\(2) & ( 
-- \logica_Seven_Seg|REG0|DOUT\(0) & ( !\logica_Seven_Seg|REG0|DOUT\(3) $ (\logica_Seven_Seg|REG0|DOUT\(1)) ) ) ) # ( \logica_Seven_Seg|REG0|DOUT\(2) & ( !\logica_Seven_Seg|REG0|DOUT\(0) & ( (!\logica_Seven_Seg|REG0|DOUT\(3) & 
-- !\logica_Seven_Seg|REG0|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000011000011110000110011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	datae => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X42_Y5_N33
\logica_Seven_Seg|H0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[1]~1_combout\ = ( \logica_Seven_Seg|REG0|DOUT\(2) & ( \logica_Seven_Seg|REG0|DOUT\(0) & ( !\logica_Seven_Seg|REG0|DOUT\(1) $ (\logica_Seven_Seg|REG0|DOUT\(3)) ) ) ) # ( !\logica_Seven_Seg|REG0|DOUT\(2) & ( 
-- \logica_Seven_Seg|REG0|DOUT\(0) & ( (\logica_Seven_Seg|REG0|DOUT\(1) & \logica_Seven_Seg|REG0|DOUT\(3)) ) ) ) # ( \logica_Seven_Seg|REG0|DOUT\(2) & ( !\logica_Seven_Seg|REG0|DOUT\(0) & ( (\logica_Seven_Seg|REG0|DOUT\(3)) # 
-- (\logica_Seven_Seg|REG0|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110101111100000101000001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	datae => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X42_Y5_N0
\logica_Seven_Seg|H0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[2]~2_combout\ = ( \logica_Seven_Seg|REG0|DOUT\(2) & ( \logica_Seven_Seg|REG0|DOUT\(0) & ( (\logica_Seven_Seg|REG0|DOUT\(3) & \logica_Seven_Seg|REG0|DOUT\(1)) ) ) ) # ( \logica_Seven_Seg|REG0|DOUT\(2) & ( 
-- !\logica_Seven_Seg|REG0|DOUT\(0) & ( \logica_Seven_Seg|REG0|DOUT\(3) ) ) ) # ( !\logica_Seven_Seg|REG0|DOUT\(2) & ( !\logica_Seven_Seg|REG0|DOUT\(0) & ( (!\logica_Seven_Seg|REG0|DOUT\(3) & \logica_Seven_Seg|REG0|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001100110011001100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	datae => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X42_Y5_N45
\logica_Seven_Seg|H0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[3]~3_combout\ = ( \logica_Seven_Seg|REG0|DOUT\(2) & ( \logica_Seven_Seg|REG0|DOUT\(0) & ( \logica_Seven_Seg|REG0|DOUT\(1) ) ) ) # ( !\logica_Seven_Seg|REG0|DOUT\(2) & ( \logica_Seven_Seg|REG0|DOUT\(0) & ( 
-- (!\logica_Seven_Seg|REG0|DOUT\(1) & !\logica_Seven_Seg|REG0|DOUT\(3)) ) ) ) # ( \logica_Seven_Seg|REG0|DOUT\(2) & ( !\logica_Seven_Seg|REG0|DOUT\(0) & ( (!\logica_Seven_Seg|REG0|DOUT\(1) & !\logica_Seven_Seg|REG0|DOUT\(3)) ) ) ) # ( 
-- !\logica_Seven_Seg|REG0|DOUT\(2) & ( !\logica_Seven_Seg|REG0|DOUT\(0) & ( (\logica_Seven_Seg|REG0|DOUT\(1) & \logica_Seven_Seg|REG0|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101000001010000010100000101000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	datae => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X42_Y5_N15
\logica_Seven_Seg|H0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[4]~4_combout\ = ( \logica_Seven_Seg|REG0|DOUT\(2) & ( \logica_Seven_Seg|REG0|DOUT\(0) & ( !\logica_Seven_Seg|REG0|DOUT\(3) ) ) ) # ( !\logica_Seven_Seg|REG0|DOUT\(2) & ( \logica_Seven_Seg|REG0|DOUT\(0) & ( 
-- (!\logica_Seven_Seg|REG0|DOUT\(1)) # (!\logica_Seven_Seg|REG0|DOUT\(3)) ) ) ) # ( \logica_Seven_Seg|REG0|DOUT\(2) & ( !\logica_Seven_Seg|REG0|DOUT\(0) & ( (!\logica_Seven_Seg|REG0|DOUT\(1) & !\logica_Seven_Seg|REG0|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000011111010111110101111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	datae => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X42_Y5_N6
\logica_Seven_Seg|H0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[5]~5_combout\ = ( \logica_Seven_Seg|REG0|DOUT\(2) & ( \logica_Seven_Seg|REG0|DOUT\(0) & ( !\logica_Seven_Seg|REG0|DOUT\(3) $ (!\logica_Seven_Seg|REG0|DOUT\(1)) ) ) ) # ( !\logica_Seven_Seg|REG0|DOUT\(2) & ( 
-- \logica_Seven_Seg|REG0|DOUT\(0) & ( !\logica_Seven_Seg|REG0|DOUT\(3) ) ) ) # ( !\logica_Seven_Seg|REG0|DOUT\(2) & ( !\logica_Seven_Seg|REG0|DOUT\(0) & ( (!\logica_Seven_Seg|REG0|DOUT\(3) & \logica_Seven_Seg|REG0|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000011001100110011000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	datae => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X42_Y5_N27
\logica_Seven_Seg|H0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[6]~6_combout\ = ( \logica_Seven_Seg|REG0|DOUT\(2) & ( \logica_Seven_Seg|REG0|DOUT\(0) & ( (\logica_Seven_Seg|REG0|DOUT\(1) & !\logica_Seven_Seg|REG0|DOUT\(3)) ) ) ) # ( !\logica_Seven_Seg|REG0|DOUT\(2) & ( 
-- \logica_Seven_Seg|REG0|DOUT\(0) & ( (!\logica_Seven_Seg|REG0|DOUT\(1) & !\logica_Seven_Seg|REG0|DOUT\(3)) ) ) ) # ( \logica_Seven_Seg|REG0|DOUT\(2) & ( !\logica_Seven_Seg|REG0|DOUT\(0) & ( (!\logica_Seven_Seg|REG0|DOUT\(1) & 
-- \logica_Seven_Seg|REG0|DOUT\(3)) ) ) ) # ( !\logica_Seven_Seg|REG0|DOUT\(2) & ( !\logica_Seven_Seg|REG0|DOUT\(0) & ( (!\logica_Seven_Seg|REG0|DOUT\(1) & !\logica_Seven_Seg|REG0|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000010100000101010100000101000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	datae => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X37_Y11_N24
\logica_Seven_Seg|comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|comb~2_combout\ = ( \ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~9_combout\ & \ROM1|memROM~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \logica_Seven_Seg|comb~2_combout\);

-- Location: MLABCELL_X37_Y11_N27
\logica_Seven_Seg|comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|comb~3_combout\ = ( \logica_Seven_Seg|comb~0_combout\ & ( \logica_Seven_Seg|comb~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \logica_Seven_Seg|ALT_INV_comb~2_combout\,
	dataf => \logica_Seven_Seg|ALT_INV_comb~0_combout\,
	combout => \logica_Seven_Seg|comb~3_combout\);

-- Location: FF_X37_Y7_N35
\logica_Seven_Seg|REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG1|DOUT\(3));

-- Location: FF_X37_Y7_N41
\logica_Seven_Seg|REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG1|DOUT\(0));

-- Location: FF_X37_Y7_N14
\logica_Seven_Seg|REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG1|DOUT\(1));

-- Location: FF_X37_Y7_N37
\logica_Seven_Seg|REG1|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG1|DOUT[2]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y7_N15
\logica_Seven_Seg|H1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H1|rascSaida7seg[0]~0_combout\ = (!\logica_Seven_Seg|REG1|DOUT\(3) & (!\logica_Seven_Seg|REG1|DOUT\(1) & (!\logica_Seven_Seg|REG1|DOUT\(0) $ (!\logica_Seven_Seg|REG1|DOUT[2]~DUPLICATE_q\)))) # (\logica_Seven_Seg|REG1|DOUT\(3) & 
-- (\logica_Seven_Seg|REG1|DOUT\(0) & (!\logica_Seven_Seg|REG1|DOUT\(1) $ (!\logica_Seven_Seg|REG1|DOUT[2]~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000110010000001000011001000000100001100100000010000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(3),
	datab => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG1|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \logica_Seven_Seg|H1|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X37_Y7_N42
\logica_Seven_Seg|H1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H1|rascSaida7seg[1]~1_combout\ = ( \logica_Seven_Seg|REG1|DOUT\(0) & ( (!\logica_Seven_Seg|REG1|DOUT\(3) & (!\logica_Seven_Seg|REG1|DOUT\(1) & \logica_Seven_Seg|REG1|DOUT[2]~DUPLICATE_q\)) # (\logica_Seven_Seg|REG1|DOUT\(3) & 
-- (\logica_Seven_Seg|REG1|DOUT\(1))) ) ) # ( !\logica_Seven_Seg|REG1|DOUT\(0) & ( (\logica_Seven_Seg|REG1|DOUT[2]~DUPLICATE_q\ & ((\logica_Seven_Seg|REG1|DOUT\(1)) # (\logica_Seven_Seg|REG1|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100010001100110010001000110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(3),
	datab => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG1|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H1|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X37_Y7_N45
\logica_Seven_Seg|H1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H1|rascSaida7seg[2]~2_combout\ = ( \logica_Seven_Seg|REG1|DOUT\(1) & ( (!\logica_Seven_Seg|REG1|DOUT\(3) & (!\logica_Seven_Seg|REG1|DOUT\(0) & !\logica_Seven_Seg|REG1|DOUT[2]~DUPLICATE_q\)) # (\logica_Seven_Seg|REG1|DOUT\(3) & 
-- ((\logica_Seven_Seg|REG1|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\logica_Seven_Seg|REG1|DOUT\(1) & ( (\logica_Seven_Seg|REG1|DOUT\(3) & (!\logica_Seven_Seg|REG1|DOUT\(0) & \logica_Seven_Seg|REG1|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010100000010101011010000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(0),
	datad => \logica_Seven_Seg|REG1|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H1|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X37_Y7_N39
\logica_Seven_Seg|H1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H1|rascSaida7seg[3]~3_combout\ = ( \logica_Seven_Seg|REG1|DOUT\(0) & ( \logica_Seven_Seg|REG1|DOUT\(3) & ( (\logica_Seven_Seg|REG1|DOUT\(1) & \logica_Seven_Seg|REG1|DOUT[2]~DUPLICATE_q\) ) ) ) # ( !\logica_Seven_Seg|REG1|DOUT\(0) & ( 
-- \logica_Seven_Seg|REG1|DOUT\(3) & ( (\logica_Seven_Seg|REG1|DOUT\(1) & !\logica_Seven_Seg|REG1|DOUT[2]~DUPLICATE_q\) ) ) ) # ( \logica_Seven_Seg|REG1|DOUT\(0) & ( !\logica_Seven_Seg|REG1|DOUT\(3) & ( !\logica_Seven_Seg|REG1|DOUT\(1) $ 
-- (\logica_Seven_Seg|REG1|DOUT[2]~DUPLICATE_q\) ) ) ) # ( !\logica_Seven_Seg|REG1|DOUT\(0) & ( !\logica_Seven_Seg|REG1|DOUT\(3) & ( (!\logica_Seven_Seg|REG1|DOUT\(1) & \logica_Seven_Seg|REG1|DOUT[2]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100110000111100001100110000001100000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG1|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(0),
	dataf => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H1|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X37_Y7_N30
\logica_Seven_Seg|H1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H1|rascSaida7seg[4]~4_combout\ = ( \logica_Seven_Seg|REG1|DOUT[2]~DUPLICATE_q\ & ( \logica_Seven_Seg|REG1|DOUT\(1) & ( (\logica_Seven_Seg|REG1|DOUT\(0) & !\logica_Seven_Seg|REG1|DOUT\(3)) ) ) ) # ( 
-- !\logica_Seven_Seg|REG1|DOUT[2]~DUPLICATE_q\ & ( \logica_Seven_Seg|REG1|DOUT\(1) & ( (\logica_Seven_Seg|REG1|DOUT\(0) & !\logica_Seven_Seg|REG1|DOUT\(3)) ) ) ) # ( \logica_Seven_Seg|REG1|DOUT[2]~DUPLICATE_q\ & ( !\logica_Seven_Seg|REG1|DOUT\(1) & ( 
-- !\logica_Seven_Seg|REG1|DOUT\(3) ) ) ) # ( !\logica_Seven_Seg|REG1|DOUT[2]~DUPLICATE_q\ & ( !\logica_Seven_Seg|REG1|DOUT\(1) & ( \logica_Seven_Seg|REG1|DOUT\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111100001111000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(3),
	datae => \logica_Seven_Seg|REG1|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H1|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X37_Y7_N3
\logica_Seven_Seg|H1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H1|rascSaida7seg[5]~5_combout\ = ( \logica_Seven_Seg|REG1|DOUT\(0) & ( !\logica_Seven_Seg|REG1|DOUT\(3) $ (((!\logica_Seven_Seg|REG1|DOUT\(1) & \logica_Seven_Seg|REG1|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\logica_Seven_Seg|REG1|DOUT\(0) & ( 
-- (!\logica_Seven_Seg|REG1|DOUT\(3) & (\logica_Seven_Seg|REG1|DOUT\(1) & !\logica_Seven_Seg|REG1|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000010101010010110101010101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG1|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H1|rascSaida7seg[5]~5_combout\);

-- Location: FF_X37_Y7_N38
\logica_Seven_Seg|REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG1|DOUT\(2));

-- Location: MLABCELL_X37_Y7_N12
\logica_Seven_Seg|H1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H1|rascSaida7seg[6]~6_combout\ = ( \logica_Seven_Seg|REG1|DOUT\(0) & ( (!\logica_Seven_Seg|REG1|DOUT\(3) & (!\logica_Seven_Seg|REG1|DOUT\(2) $ (\logica_Seven_Seg|REG1|DOUT\(1)))) ) ) # ( !\logica_Seven_Seg|REG1|DOUT\(0) & ( 
-- (!\logica_Seven_Seg|REG1|DOUT\(1) & (!\logica_Seven_Seg|REG1|DOUT\(3) $ (\logica_Seven_Seg|REG1|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000000101001010000000010100000000010101010000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H1|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X37_Y11_N6
\logica_Seven_Seg|comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|comb~4_combout\ = ( !\ROM1|memROM~4_combout\ & ( (\ROM1|memROM~10_combout\ & (\ROM1|memROM~6_combout\ & \logica_Seven_Seg|comb~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \logica_Seven_Seg|ALT_INV_comb~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \logica_Seven_Seg|comb~4_combout\);

-- Location: FF_X37_Y7_N29
\logica_Seven_Seg|REG2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG2|DOUT\(1));

-- Location: FF_X37_Y7_N59
\logica_Seven_Seg|REG2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG2|DOUT\(0));

-- Location: FF_X37_Y7_N56
\logica_Seven_Seg|REG2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG2|DOUT\(3));

-- Location: FF_X37_Y7_N26
\logica_Seven_Seg|REG2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG2|DOUT\(2));

-- Location: MLABCELL_X37_Y7_N21
\logica_Seven_Seg|H2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[0]~0_combout\ = ( \logica_Seven_Seg|REG2|DOUT\(2) & ( (!\logica_Seven_Seg|REG2|DOUT\(1) & (!\logica_Seven_Seg|REG2|DOUT\(0) $ (\logica_Seven_Seg|REG2|DOUT\(3)))) ) ) # ( !\logica_Seven_Seg|REG2|DOUT\(2) & ( 
-- (\logica_Seven_Seg|REG2|DOUT\(0) & (!\logica_Seven_Seg|REG2|DOUT\(1) $ (\logica_Seven_Seg|REG2|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100100001001000010010000110000010100000101000001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	datab => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	dataf => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X37_Y7_N0
\logica_Seven_Seg|H2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[1]~1_combout\ = ( \logica_Seven_Seg|REG2|DOUT\(2) & ( (!\logica_Seven_Seg|REG2|DOUT\(3) & (!\logica_Seven_Seg|REG2|DOUT\(1) $ (!\logica_Seven_Seg|REG2|DOUT\(0)))) # (\logica_Seven_Seg|REG2|DOUT\(3) & 
-- ((!\logica_Seven_Seg|REG2|DOUT\(0)) # (\logica_Seven_Seg|REG2|DOUT\(1)))) ) ) # ( !\logica_Seven_Seg|REG2|DOUT\(2) & ( (\logica_Seven_Seg|REG2|DOUT\(3) & (\logica_Seven_Seg|REG2|DOUT\(1) & \logica_Seven_Seg|REG2|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100111111110000110011111111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	dataf => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X37_Y7_N18
\logica_Seven_Seg|H2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[2]~2_combout\ = ( \logica_Seven_Seg|REG2|DOUT\(2) & ( (\logica_Seven_Seg|REG2|DOUT\(3) & ((!\logica_Seven_Seg|REG2|DOUT\(0)) # (\logica_Seven_Seg|REG2|DOUT\(1)))) ) ) # ( !\logica_Seven_Seg|REG2|DOUT\(2) & ( 
-- (\logica_Seven_Seg|REG2|DOUT\(1) & (!\logica_Seven_Seg|REG2|DOUT\(0) & !\logica_Seven_Seg|REG2|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	datab => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	dataf => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X37_Y7_N57
\logica_Seven_Seg|H2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[3]~3_combout\ = ( \logica_Seven_Seg|REG2|DOUT\(2) & ( (!\logica_Seven_Seg|REG2|DOUT\(1) & (!\logica_Seven_Seg|REG2|DOUT\(3) & !\logica_Seven_Seg|REG2|DOUT\(0))) # (\logica_Seven_Seg|REG2|DOUT\(1) & 
-- ((\logica_Seven_Seg|REG2|DOUT\(0)))) ) ) # ( !\logica_Seven_Seg|REG2|DOUT\(2) & ( (!\logica_Seven_Seg|REG2|DOUT\(1) & (!\logica_Seven_Seg|REG2|DOUT\(3) & \logica_Seven_Seg|REG2|DOUT\(0))) # (\logica_Seven_Seg|REG2|DOUT\(1) & 
-- (\logica_Seven_Seg|REG2|DOUT\(3) & !\logica_Seven_Seg|REG2|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110100000000001011010000010100000010101011010000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	datad => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	dataf => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X37_Y7_N54
\logica_Seven_Seg|H2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[4]~4_combout\ = (!\logica_Seven_Seg|REG2|DOUT\(1) & ((!\logica_Seven_Seg|REG2|DOUT\(2) & (\logica_Seven_Seg|REG2|DOUT\(0))) # (\logica_Seven_Seg|REG2|DOUT\(2) & ((!\logica_Seven_Seg|REG2|DOUT\(3)))))) # 
-- (\logica_Seven_Seg|REG2|DOUT\(1) & (\logica_Seven_Seg|REG2|DOUT\(0) & ((!\logica_Seven_Seg|REG2|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100100000001110110010000000111011001000000011101100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	datab => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X37_Y7_N24
\logica_Seven_Seg|H2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[5]~5_combout\ = (!\logica_Seven_Seg|REG2|DOUT\(0) & (!\logica_Seven_Seg|REG2|DOUT\(3) & (\logica_Seven_Seg|REG2|DOUT\(1) & !\logica_Seven_Seg|REG2|DOUT\(2)))) # (\logica_Seven_Seg|REG2|DOUT\(0) & 
-- (!\logica_Seven_Seg|REG2|DOUT\(3) $ (((!\logica_Seven_Seg|REG2|DOUT\(1) & \logica_Seven_Seg|REG2|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000010010001010100001001000101010000100100010101000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	datab => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X37_Y7_N27
\logica_Seven_Seg|H2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[6]~6_combout\ = ( \logica_Seven_Seg|REG2|DOUT\(2) & ( (!\logica_Seven_Seg|REG2|DOUT\(3) & (\logica_Seven_Seg|REG2|DOUT\(0) & \logica_Seven_Seg|REG2|DOUT\(1))) # (\logica_Seven_Seg|REG2|DOUT\(3) & 
-- (!\logica_Seven_Seg|REG2|DOUT\(0) & !\logica_Seven_Seg|REG2|DOUT\(1))) ) ) # ( !\logica_Seven_Seg|REG2|DOUT\(2) & ( (!\logica_Seven_Seg|REG2|DOUT\(3) & !\logica_Seven_Seg|REG2|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000001010000000010100101000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	datad => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X37_Y8_N18
\logica_Seven_Seg|REG3|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|REG3|DOUT[3]~feeder_combout\ = ( \processador|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|REG3|DOUT[3]~feeder_combout\);

-- Location: MLABCELL_X37_Y11_N9
\logica_Seven_Seg|comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|comb~5_combout\ = ( \logica_Seven_Seg|comb~0_combout\ & ( (\ROM1|memROM~10_combout\ & (\ROM1|memROM~6_combout\ & \ROM1|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \logica_Seven_Seg|ALT_INV_comb~0_combout\,
	combout => \logica_Seven_Seg|comb~5_combout\);

-- Location: FF_X37_Y8_N20
\logica_Seven_Seg|REG3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \logica_Seven_Seg|REG3|DOUT[3]~feeder_combout\,
	ena => \logica_Seven_Seg|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG3|DOUT\(3));

-- Location: MLABCELL_X37_Y8_N42
\logica_Seven_Seg|REG3|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|REG3|DOUT[1]~feeder_combout\ = ( \processador|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|REG3|DOUT[1]~feeder_combout\);

-- Location: FF_X37_Y8_N44
\logica_Seven_Seg|REG3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \logica_Seven_Seg|REG3|DOUT[1]~feeder_combout\,
	ena => \logica_Seven_Seg|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG3|DOUT\(1));

-- Location: MLABCELL_X37_Y8_N36
\logica_Seven_Seg|REG3|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|REG3|DOUT[2]~feeder_combout\ = ( \processador|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|REG3|DOUT[2]~feeder_combout\);

-- Location: FF_X37_Y8_N38
\logica_Seven_Seg|REG3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \logica_Seven_Seg|REG3|DOUT[2]~feeder_combout\,
	ena => \logica_Seven_Seg|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG3|DOUT\(2));

-- Location: MLABCELL_X37_Y8_N48
\logica_Seven_Seg|REG3|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|REG3|DOUT[0]~feeder_combout\ = ( \processador|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|REG3|DOUT[0]~feeder_combout\);

-- Location: FF_X37_Y8_N50
\logica_Seven_Seg|REG3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \logica_Seven_Seg|REG3|DOUT[0]~feeder_combout\,
	ena => \logica_Seven_Seg|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG3|DOUT\(0));

-- Location: MLABCELL_X37_Y8_N27
\logica_Seven_Seg|H3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[0]~0_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(2) & ( \logica_Seven_Seg|REG3|DOUT\(0) & ( (\logica_Seven_Seg|REG3|DOUT\(3) & !\logica_Seven_Seg|REG3|DOUT\(1)) ) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(2) & ( 
-- \logica_Seven_Seg|REG3|DOUT\(0) & ( !\logica_Seven_Seg|REG3|DOUT\(3) $ (\logica_Seven_Seg|REG3|DOUT\(1)) ) ) ) # ( \logica_Seven_Seg|REG3|DOUT\(2) & ( !\logica_Seven_Seg|REG3|DOUT\(0) & ( (!\logica_Seven_Seg|REG3|DOUT\(3) & 
-- !\logica_Seven_Seg|REG3|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000010100101101001010101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	datae => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X37_Y8_N6
\logica_Seven_Seg|H3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[1]~1_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(2) & ( \logica_Seven_Seg|REG3|DOUT\(0) & ( !\logica_Seven_Seg|REG3|DOUT\(1) $ (\logica_Seven_Seg|REG3|DOUT\(3)) ) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(2) & ( 
-- \logica_Seven_Seg|REG3|DOUT\(0) & ( (\logica_Seven_Seg|REG3|DOUT\(1) & \logica_Seven_Seg|REG3|DOUT\(3)) ) ) ) # ( \logica_Seven_Seg|REG3|DOUT\(2) & ( !\logica_Seven_Seg|REG3|DOUT\(0) & ( (\logica_Seven_Seg|REG3|DOUT\(3)) # 
-- (\logica_Seven_Seg|REG3|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110011111100000011000000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datae => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X37_Y8_N3
\logica_Seven_Seg|H3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[2]~2_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(2) & ( \logica_Seven_Seg|REG3|DOUT\(0) & ( (\logica_Seven_Seg|REG3|DOUT\(3) & \logica_Seven_Seg|REG3|DOUT\(1)) ) ) ) # ( \logica_Seven_Seg|REG3|DOUT\(2) & ( 
-- !\logica_Seven_Seg|REG3|DOUT\(0) & ( \logica_Seven_Seg|REG3|DOUT\(3) ) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(2) & ( !\logica_Seven_Seg|REG3|DOUT\(0) & ( (!\logica_Seven_Seg|REG3|DOUT\(3) & \logica_Seven_Seg|REG3|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010101010101010100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	datae => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X37_Y8_N30
\logica_Seven_Seg|H3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[3]~3_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(2) & ( \logica_Seven_Seg|REG3|DOUT\(0) & ( \logica_Seven_Seg|REG3|DOUT\(1) ) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(2) & ( \logica_Seven_Seg|REG3|DOUT\(0) & ( 
-- (!\logica_Seven_Seg|REG3|DOUT\(1) & !\logica_Seven_Seg|REG3|DOUT\(3)) ) ) ) # ( \logica_Seven_Seg|REG3|DOUT\(2) & ( !\logica_Seven_Seg|REG3|DOUT\(0) & ( (!\logica_Seven_Seg|REG3|DOUT\(1) & !\logica_Seven_Seg|REG3|DOUT\(3)) ) ) ) # ( 
-- !\logica_Seven_Seg|REG3|DOUT\(2) & ( !\logica_Seven_Seg|REG3|DOUT\(0) & ( (\logica_Seven_Seg|REG3|DOUT\(1) & \logica_Seven_Seg|REG3|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110000001100000011000000110000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datae => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X37_Y8_N12
\logica_Seven_Seg|H3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[4]~4_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(0) & ( (!\logica_Seven_Seg|REG3|DOUT\(3)) # ((!\logica_Seven_Seg|REG3|DOUT\(1) & !\logica_Seven_Seg|REG3|DOUT\(2))) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(0) & ( 
-- (!\logica_Seven_Seg|REG3|DOUT\(3) & (!\logica_Seven_Seg|REG3|DOUT\(1) & \logica_Seven_Seg|REG3|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100011101010111010101110101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X37_Y8_N15
\logica_Seven_Seg|H3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[5]~5_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(0) & ( !\logica_Seven_Seg|REG3|DOUT\(3) $ (((!\logica_Seven_Seg|REG3|DOUT\(1) & \logica_Seven_Seg|REG3|DOUT\(2)))) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(0) & ( 
-- (!\logica_Seven_Seg|REG3|DOUT\(3) & (\logica_Seven_Seg|REG3|DOUT\(1) & !\logica_Seven_Seg|REG3|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000010101010011001101010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X37_Y8_N54
\logica_Seven_Seg|H3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[6]~6_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(2) & ( \logica_Seven_Seg|REG3|DOUT\(0) & ( (\logica_Seven_Seg|REG3|DOUT\(1) & !\logica_Seven_Seg|REG3|DOUT\(3)) ) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(2) & ( 
-- \logica_Seven_Seg|REG3|DOUT\(0) & ( (!\logica_Seven_Seg|REG3|DOUT\(1) & !\logica_Seven_Seg|REG3|DOUT\(3)) ) ) ) # ( \logica_Seven_Seg|REG3|DOUT\(2) & ( !\logica_Seven_Seg|REG3|DOUT\(0) & ( (!\logica_Seven_Seg|REG3|DOUT\(1) & 
-- \logica_Seven_Seg|REG3|DOUT\(3)) ) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(2) & ( !\logica_Seven_Seg|REG3|DOUT\(0) & ( (!\logica_Seven_Seg|REG3|DOUT\(1) & !\logica_Seven_Seg|REG3|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000011000000110011000000110000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datae => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X37_Y11_N21
\logica_Seven_Seg|comb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|comb~6_combout\ = ( \ROM1|memROM~2_combout\ & ( (\processador|PC|DOUT\(0) & (\comb~0_combout\ & (\processador|decoderInstru1|Equal11~0_combout\ & \ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \ALT_INV_comb~0_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \logica_Seven_Seg|comb~6_combout\);

-- Location: FF_X37_Y11_N8
\logica_Seven_Seg|REG4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG4|DOUT\(3));

-- Location: FF_X37_Y11_N4
\logica_Seven_Seg|REG4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG4|DOUT\(2));

-- Location: FF_X37_Y11_N11
\logica_Seven_Seg|REG4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG4|DOUT\(1));

-- Location: FF_X37_Y11_N23
\logica_Seven_Seg|REG4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG4|DOUT\(0));

-- Location: MLABCELL_X37_Y10_N48
\logica_Seven_Seg|H4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[0]~0_combout\ = ( \logica_Seven_Seg|REG4|DOUT\(0) & ( (!\logica_Seven_Seg|REG4|DOUT\(3) & (!\logica_Seven_Seg|REG4|DOUT\(2) & !\logica_Seven_Seg|REG4|DOUT\(1))) # (\logica_Seven_Seg|REG4|DOUT\(3) & 
-- (!\logica_Seven_Seg|REG4|DOUT\(2) $ (!\logica_Seven_Seg|REG4|DOUT\(1)))) ) ) # ( !\logica_Seven_Seg|REG4|DOUT\(0) & ( (!\logica_Seven_Seg|REG4|DOUT\(3) & (\logica_Seven_Seg|REG4|DOUT\(2) & !\logica_Seven_Seg|REG4|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000010010100100101001001010010010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	datab => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X37_Y10_N9
\logica_Seven_Seg|H4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[1]~1_combout\ = ( \logica_Seven_Seg|REG4|DOUT\(3) & ( (!\logica_Seven_Seg|REG4|DOUT\(0) & ((\logica_Seven_Seg|REG4|DOUT\(2)))) # (\logica_Seven_Seg|REG4|DOUT\(0) & (\logica_Seven_Seg|REG4|DOUT\(1))) ) ) # ( 
-- !\logica_Seven_Seg|REG4|DOUT\(3) & ( (\logica_Seven_Seg|REG4|DOUT\(2) & (!\logica_Seven_Seg|REG4|DOUT\(1) $ (!\logica_Seven_Seg|REG4|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	datab => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	dataf => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X37_Y10_N0
\logica_Seven_Seg|H4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[2]~2_combout\ = ( \logica_Seven_Seg|REG4|DOUT\(0) & ( (\logica_Seven_Seg|REG4|DOUT\(3) & (\logica_Seven_Seg|REG4|DOUT\(2) & \logica_Seven_Seg|REG4|DOUT\(1))) ) ) # ( !\logica_Seven_Seg|REG4|DOUT\(0) & ( 
-- (!\logica_Seven_Seg|REG4|DOUT\(3) & (!\logica_Seven_Seg|REG4|DOUT\(2) & \logica_Seven_Seg|REG4|DOUT\(1))) # (\logica_Seven_Seg|REG4|DOUT\(3) & (\logica_Seven_Seg|REG4|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100011001000110010001100100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	datab => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X37_Y10_N30
\logica_Seven_Seg|H4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[3]~3_combout\ = ( \logica_Seven_Seg|REG4|DOUT\(0) & ( (!\logica_Seven_Seg|REG4|DOUT\(1) & (!\logica_Seven_Seg|REG4|DOUT\(2) & !\logica_Seven_Seg|REG4|DOUT\(3))) # (\logica_Seven_Seg|REG4|DOUT\(1) & 
-- (\logica_Seven_Seg|REG4|DOUT\(2))) ) ) # ( !\logica_Seven_Seg|REG4|DOUT\(0) & ( (!\logica_Seven_Seg|REG4|DOUT\(1) & (\logica_Seven_Seg|REG4|DOUT\(2) & !\logica_Seven_Seg|REG4|DOUT\(3))) # (\logica_Seven_Seg|REG4|DOUT\(1) & 
-- (!\logica_Seven_Seg|REG4|DOUT\(2) & \logica_Seven_Seg|REG4|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000100100001001000010010010010001100100011001000110010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	datab => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	dataf => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X37_Y10_N33
\logica_Seven_Seg|H4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[4]~4_combout\ = ( \logica_Seven_Seg|REG4|DOUT\(3) & ( (!\logica_Seven_Seg|REG4|DOUT\(1) & (!\logica_Seven_Seg|REG4|DOUT\(2) & \logica_Seven_Seg|REG4|DOUT\(0))) ) ) # ( !\logica_Seven_Seg|REG4|DOUT\(3) & ( 
-- ((!\logica_Seven_Seg|REG4|DOUT\(1) & \logica_Seven_Seg|REG4|DOUT\(2))) # (\logica_Seven_Seg|REG4|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	datab => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	dataf => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X37_Y10_N24
\logica_Seven_Seg|H4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[5]~5_combout\ = ( \logica_Seven_Seg|REG4|DOUT\(0) & ( !\logica_Seven_Seg|REG4|DOUT\(3) $ (((\logica_Seven_Seg|REG4|DOUT\(2) & !\logica_Seven_Seg|REG4|DOUT\(1)))) ) ) # ( !\logica_Seven_Seg|REG4|DOUT\(0) & ( 
-- (!\logica_Seven_Seg|REG4|DOUT\(3) & (!\logica_Seven_Seg|REG4|DOUT\(2) & \logica_Seven_Seg|REG4|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010011010100110101001101010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	datab => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X37_Y10_N42
\logica_Seven_Seg|H4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[6]~6_combout\ = ( \logica_Seven_Seg|REG4|DOUT\(3) & ( (\logica_Seven_Seg|REG4|DOUT\(2) & (!\logica_Seven_Seg|REG4|DOUT\(1) & !\logica_Seven_Seg|REG4|DOUT\(0))) ) ) # ( !\logica_Seven_Seg|REG4|DOUT\(3) & ( 
-- (!\logica_Seven_Seg|REG4|DOUT\(2) & (!\logica_Seven_Seg|REG4|DOUT\(1))) # (\logica_Seven_Seg|REG4|DOUT\(2) & (\logica_Seven_Seg|REG4|DOUT\(1) & \logica_Seven_Seg|REG4|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000011110000001100001100110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	dataf => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X37_Y11_N0
\logica_Seven_Seg|comb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|comb~7_combout\ = ( \logica_Seven_Seg|comb~2_combout\ & ( (\ROM1|memROM~2_combout\ & (\processador|decoderInstru1|Equal11~0_combout\ & (\processador|PC|DOUT\(0) & \ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datac => \processador|PC|ALT_INV_DOUT\(0),
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \logica_Seven_Seg|ALT_INV_comb~2_combout\,
	combout => \logica_Seven_Seg|comb~7_combout\);

-- Location: FF_X37_Y11_N53
\logica_Seven_Seg|REG5|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG5|DOUT\(3));

-- Location: FF_X37_Y11_N56
\logica_Seven_Seg|REG5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG5|DOUT\(0));

-- Location: FF_X37_Y11_N26
\logica_Seven_Seg|REG5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG5|DOUT\(2));

-- Location: FF_X37_Y11_N50
\logica_Seven_Seg|REG5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \logica_Seven_Seg|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG5|DOUT\(1));

-- Location: MLABCELL_X37_Y10_N15
\logica_Seven_Seg|H5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H5|rascSaida7seg[0]~0_combout\ = ( \logica_Seven_Seg|REG5|DOUT\(1) & ( (\logica_Seven_Seg|REG5|DOUT\(3) & (\logica_Seven_Seg|REG5|DOUT\(0) & !\logica_Seven_Seg|REG5|DOUT\(2))) ) ) # ( !\logica_Seven_Seg|REG5|DOUT\(1) & ( 
-- (!\logica_Seven_Seg|REG5|DOUT\(3) & (!\logica_Seven_Seg|REG5|DOUT\(0) $ (!\logica_Seven_Seg|REG5|DOUT\(2)))) # (\logica_Seven_Seg|REG5|DOUT\(3) & (\logica_Seven_Seg|REG5|DOUT\(0) & \logica_Seven_Seg|REG5|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010011001001000101001100100010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(3),
	datab => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(0),
	datad => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H5|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X37_Y10_N57
\logica_Seven_Seg|H5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H5|rascSaida7seg[1]~1_combout\ = ( \logica_Seven_Seg|REG5|DOUT\(3) & ( \logica_Seven_Seg|REG5|DOUT\(1) & ( (\logica_Seven_Seg|REG5|DOUT\(2)) # (\logica_Seven_Seg|REG5|DOUT\(0)) ) ) ) # ( !\logica_Seven_Seg|REG5|DOUT\(3) & ( 
-- \logica_Seven_Seg|REG5|DOUT\(1) & ( (!\logica_Seven_Seg|REG5|DOUT\(0) & \logica_Seven_Seg|REG5|DOUT\(2)) ) ) ) # ( \logica_Seven_Seg|REG5|DOUT\(3) & ( !\logica_Seven_Seg|REG5|DOUT\(1) & ( (!\logica_Seven_Seg|REG5|DOUT\(0) & 
-- \logica_Seven_Seg|REG5|DOUT\(2)) ) ) ) # ( !\logica_Seven_Seg|REG5|DOUT\(3) & ( !\logica_Seven_Seg|REG5|DOUT\(1) & ( (\logica_Seven_Seg|REG5|DOUT\(0) & \logica_Seven_Seg|REG5|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111000000000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(0),
	datad => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(2),
	datae => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(3),
	dataf => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H5|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X37_Y10_N36
\logica_Seven_Seg|H5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H5|rascSaida7seg[2]~2_combout\ = ( \logica_Seven_Seg|REG5|DOUT\(2) & ( (\logica_Seven_Seg|REG5|DOUT\(3) & ((!\logica_Seven_Seg|REG5|DOUT\(0)) # (\logica_Seven_Seg|REG5|DOUT\(1)))) ) ) # ( !\logica_Seven_Seg|REG5|DOUT\(2) & ( 
-- (\logica_Seven_Seg|REG5|DOUT\(1) & (!\logica_Seven_Seg|REG5|DOUT\(0) & !\logica_Seven_Seg|REG5|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000000011010000110101000000010000000000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(1),
	datab => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(3),
	datae => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H5|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X37_Y10_N45
\logica_Seven_Seg|H5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H5|rascSaida7seg[3]~3_combout\ = ( \logica_Seven_Seg|REG5|DOUT\(3) & ( (\logica_Seven_Seg|REG5|DOUT\(1) & (!\logica_Seven_Seg|REG5|DOUT\(0) $ (\logica_Seven_Seg|REG5|DOUT\(2)))) ) ) # ( !\logica_Seven_Seg|REG5|DOUT\(3) & ( 
-- (!\logica_Seven_Seg|REG5|DOUT\(1) & (!\logica_Seven_Seg|REG5|DOUT\(0) $ (!\logica_Seven_Seg|REG5|DOUT\(2)))) # (\logica_Seven_Seg|REG5|DOUT\(1) & (\logica_Seven_Seg|REG5|DOUT\(0) & \logica_Seven_Seg|REG5|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100101000010101010010101010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(0),
	datad => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H5|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X37_Y11_N42
\logica_Seven_Seg|H5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H5|rascSaida7seg[4]~4_combout\ = ( \logica_Seven_Seg|REG5|DOUT\(1) & ( (!\logica_Seven_Seg|REG5|DOUT\(3) & \logica_Seven_Seg|REG5|DOUT\(0)) ) ) # ( !\logica_Seven_Seg|REG5|DOUT\(1) & ( (!\logica_Seven_Seg|REG5|DOUT\(2) & 
-- ((\logica_Seven_Seg|REG5|DOUT\(0)))) # (\logica_Seven_Seg|REG5|DOUT\(2) & (!\logica_Seven_Seg|REG5|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011111100001100001111110000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(3),
	datad => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(0),
	dataf => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H5|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X37_Y10_N12
\logica_Seven_Seg|H5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H5|rascSaida7seg[5]~5_combout\ = ( \logica_Seven_Seg|REG5|DOUT\(1) & ( (!\logica_Seven_Seg|REG5|DOUT\(3) & ((!\logica_Seven_Seg|REG5|DOUT\(2)) # (\logica_Seven_Seg|REG5|DOUT\(0)))) ) ) # ( !\logica_Seven_Seg|REG5|DOUT\(1) & ( 
-- (\logica_Seven_Seg|REG5|DOUT\(0) & (!\logica_Seven_Seg|REG5|DOUT\(3) $ (\logica_Seven_Seg|REG5|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000011001100000000001111110000001100001111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(3),
	datad => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H5|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X37_Y10_N18
\logica_Seven_Seg|H5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H5|rascSaida7seg[6]~6_combout\ = ( \logica_Seven_Seg|REG5|DOUT\(2) & ( (!\logica_Seven_Seg|REG5|DOUT\(1) & (!\logica_Seven_Seg|REG5|DOUT\(0) & \logica_Seven_Seg|REG5|DOUT\(3))) # (\logica_Seven_Seg|REG5|DOUT\(1) & 
-- (\logica_Seven_Seg|REG5|DOUT\(0) & !\logica_Seven_Seg|REG5|DOUT\(3))) ) ) # ( !\logica_Seven_Seg|REG5|DOUT\(2) & ( (!\logica_Seven_Seg|REG5|DOUT\(1) & !\logica_Seven_Seg|REG5|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000110000001100010100000101000000001100000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(1),
	datab => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(3),
	datae => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H5|rascSaida7seg[6]~6_combout\);

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
END structure;


