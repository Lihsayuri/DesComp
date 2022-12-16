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

-- DATE "09/24/2022 10:45:32"

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
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	REGA_OUT : OUT std_logic_vector(7 DOWNTO 0);
	Palavra : OUT std_logic_vector(11 DOWNTO 0);
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
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- REGA_OUT[0]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[1]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[2]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[3]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[4]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[5]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[6]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[7]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[0]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[2]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[4]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[5]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[6]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[7]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[8]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[9]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[10]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[11]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EQUAL_FLAG	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HabilitaRAM	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[0]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[1]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[2]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[3]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[4]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[6]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[7]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[8]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[0]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[1]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[2]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[3]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[4]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[5]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[6]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[7]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_REGA_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Palavra : std_logic_vector(11 DOWNTO 0);
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
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida~0_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal10~0_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_wirecell_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~2\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~6\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~10\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \processador|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal10~1_combout\ : std_logic;
SIGNAL \RAM1|dado_out~16_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida~2_combout\ : std_logic;
SIGNAL \RAM1|dado_out[0]~8_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \processador|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida[5]~1_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \processador|REGA|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~543_combout\ : std_logic;
SIGNAL \RAM1|ram~15_q\ : std_logic;
SIGNAL \RAM1|ram~527_combout\ : std_logic;
SIGNAL \RAM1|ram~528_combout\ : std_logic;
SIGNAL \RAM1|dado_out[1]~9_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~2\ : std_logic;
SIGNAL \processador|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~2\ : std_logic;
SIGNAL \processador|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \processador|REGA|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~16_q\ : std_logic;
SIGNAL \RAM1|ram~529_combout\ : std_logic;
SIGNAL \RAM1|ram~530_combout\ : std_logic;
SIGNAL \RAM1|dado_out[2]~10_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~6\ : std_logic;
SIGNAL \processador|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add1~6\ : std_logic;
SIGNAL \processador|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~531_combout\ : std_logic;
SIGNAL \RAM1|ram~532_combout\ : std_logic;
SIGNAL \RAM1|dado_out[3]~11_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~10\ : std_logic;
SIGNAL \processador|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal10~2_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal10~3_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~10\ : std_logic;
SIGNAL \processador|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~533_combout\ : std_logic;
SIGNAL \RAM1|ram~534_combout\ : std_logic;
SIGNAL \RAM1|dado_out[4]~12_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~14\ : std_logic;
SIGNAL \processador|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~14\ : std_logic;
SIGNAL \processador|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \processador|REGA|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~535_combout\ : std_logic;
SIGNAL \RAM1|ram~536_combout\ : std_logic;
SIGNAL \RAM1|dado_out[5]~13_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~18\ : std_logic;
SIGNAL \processador|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add1~18\ : std_logic;
SIGNAL \processador|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~537_combout\ : std_logic;
SIGNAL \RAM1|ram~538_combout\ : std_logic;
SIGNAL \RAM1|dado_out[6]~14_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~22\ : std_logic;
SIGNAL \processador|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add1~22\ : std_logic;
SIGNAL \processador|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~539_combout\ : std_logic;
SIGNAL \RAM1|ram~540_combout\ : std_logic;
SIGNAL \RAM1|dado_out[7]~15_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~26\ : std_logic;
SIGNAL \processador|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add1~26\ : std_logic;
SIGNAL \processador|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~541_combout\ : std_logic;
SIGNAL \RAM1|ram~542_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~14\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~18\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~22\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~26\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~30\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida[0]~3_combout\ : std_logic;
SIGNAL \decoderPosicao|Equal7~5_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \decoderPosicao|Equal7~4_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \decoderPosicao|Equal7~3_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \decoderPosicao|Equal7~2_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \decoderPosicao|Equal7~1_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \decoderPosicao|Equal7~0_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|REG4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processador|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processador|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \processador|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \processador|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \processador|REGA|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out~16_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_Equal10~3_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[7]~15_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[6]~14_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[5]~13_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[4]~12_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_Equal10~2_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[3]~11_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[2]~10_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[1]~9_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[0]~8_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_Equal10~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \logica_Seven_Seg|REG5|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG4|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
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
\logica_Seven_Seg|REG3|ALT_INV_DOUT\(2) <= NOT \logica_Seven_Seg|REG3|DOUT\(2);
\logica_Seven_Seg|REG3|ALT_INV_DOUT\(1) <= NOT \logica_Seven_Seg|REG3|DOUT\(1);
\logica_Seven_Seg|REG3|ALT_INV_DOUT\(3) <= NOT \logica_Seven_Seg|REG3|DOUT\(3);
\logica_Seven_Seg|REG3|ALT_INV_DOUT\(0) <= NOT \logica_Seven_Seg|REG3|DOUT\(0);
\logica_Seven_Seg|REG2|ALT_INV_DOUT\(2) <= NOT \logica_Seven_Seg|REG2|DOUT\(2);
\logica_Seven_Seg|REG2|ALT_INV_DOUT\(1) <= NOT \logica_Seven_Seg|REG2|DOUT\(1);
\logica_Seven_Seg|REG2|ALT_INV_DOUT\(3) <= NOT \logica_Seven_Seg|REG2|DOUT\(3);
\logica_Seven_Seg|REG2|ALT_INV_DOUT\(0) <= NOT \logica_Seven_Seg|REG2|DOUT\(0);
\logica_Seven_Seg|REG1|ALT_INV_DOUT\(2) <= NOT \logica_Seven_Seg|REG1|DOUT\(2);
\logica_Seven_Seg|REG1|ALT_INV_DOUT\(1) <= NOT \logica_Seven_Seg|REG1|DOUT\(1);
\logica_Seven_Seg|REG1|ALT_INV_DOUT\(3) <= NOT \logica_Seven_Seg|REG1|DOUT\(3);
\logica_Seven_Seg|REG1|ALT_INV_DOUT\(0) <= NOT \logica_Seven_Seg|REG1|DOUT\(0);
\logica_Seven_Seg|REG0|ALT_INV_DOUT\(2) <= NOT \logica_Seven_Seg|REG0|DOUT\(2);
\logica_Seven_Seg|REG0|ALT_INV_DOUT\(1) <= NOT \logica_Seven_Seg|REG0|DOUT\(1);
\logica_Seven_Seg|REG0|ALT_INV_DOUT\(3) <= NOT \logica_Seven_Seg|REG0|DOUT\(3);
\logica_Seven_Seg|REG0|ALT_INV_DOUT\(0) <= NOT \logica_Seven_Seg|REG0|DOUT\(0);
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\processador|decoderInstru1|ALT_INV_Equal10~0_combout\ <= NOT \processador|decoderInstru1|Equal10~0_combout\;
\processador|ULA1|ALT_INV_Add1~29_sumout\ <= NOT \processador|ULA1|Add1~29_sumout\;
\processador|ULA1|ALT_INV_Add1~25_sumout\ <= NOT \processador|ULA1|Add1~25_sumout\;
\processador|ULA1|ALT_INV_Add1~21_sumout\ <= NOT \processador|ULA1|Add1~21_sumout\;
\processador|ULA1|ALT_INV_Add1~17_sumout\ <= NOT \processador|ULA1|Add1~17_sumout\;
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
\processador|REGA|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \processador|REGA|DOUT[0]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[3]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[2]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[1]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[0]~DUPLICATE_q\;
\processador|decoderInstru1|ALT_INV_saida~2_combout\ <= NOT \processador|decoderInstru1|saida~2_combout\;
\RAM1|ALT_INV_dado_out~16_combout\ <= NOT \RAM1|dado_out~16_combout\;
\processador|decoderInstru1|ALT_INV_Equal10~3_combout\ <= NOT \processador|decoderInstru1|Equal10~3_combout\;
\RAM1|ALT_INV_dado_out[7]~15_combout\ <= NOT \RAM1|dado_out[7]~15_combout\;
\RAM1|ALT_INV_dado_out[6]~14_combout\ <= NOT \RAM1|dado_out[6]~14_combout\;
\RAM1|ALT_INV_dado_out[5]~13_combout\ <= NOT \RAM1|dado_out[5]~13_combout\;
\RAM1|ALT_INV_dado_out[4]~12_combout\ <= NOT \RAM1|dado_out[4]~12_combout\;
\processador|decoderInstru1|ALT_INV_Equal10~2_combout\ <= NOT \processador|decoderInstru1|Equal10~2_combout\;
\RAM1|ALT_INV_dado_out[3]~11_combout\ <= NOT \RAM1|dado_out[3]~11_combout\;
\RAM1|ALT_INV_dado_out[2]~10_combout\ <= NOT \RAM1|dado_out[2]~10_combout\;
\RAM1|ALT_INV_dado_out[1]~9_combout\ <= NOT \RAM1|dado_out[1]~9_combout\;
\RAM1|ALT_INV_dado_out[0]~8_combout\ <= NOT \RAM1|dado_out[0]~8_combout\;
\processador|decoderInstru1|ALT_INV_Equal10~1_combout\ <= NOT \processador|decoderInstru1|Equal10~1_combout\;
\RAM1|ALT_INV_ram~542_combout\ <= NOT \RAM1|ram~542_combout\;
\RAM1|ALT_INV_ram~541_combout\ <= NOT \RAM1|ram~541_combout\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\RAM1|ALT_INV_ram~540_combout\ <= NOT \RAM1|ram~540_combout\;
\RAM1|ALT_INV_ram~539_combout\ <= NOT \RAM1|ram~539_combout\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\RAM1|ALT_INV_ram~538_combout\ <= NOT \RAM1|ram~538_combout\;
\RAM1|ALT_INV_ram~537_combout\ <= NOT \RAM1|ram~537_combout\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\RAM1|ALT_INV_ram~536_combout\ <= NOT \RAM1|ram~536_combout\;
\RAM1|ALT_INV_ram~535_combout\ <= NOT \RAM1|ram~535_combout\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\RAM1|ALT_INV_ram~534_combout\ <= NOT \RAM1|ram~534_combout\;
\RAM1|ALT_INV_ram~533_combout\ <= NOT \RAM1|ram~533_combout\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\RAM1|ALT_INV_ram~531_combout\ <= NOT \RAM1|ram~531_combout\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\RAM1|ALT_INV_ram~530_combout\ <= NOT \RAM1|ram~530_combout\;
\RAM1|ALT_INV_ram~529_combout\ <= NOT \RAM1|ram~529_combout\;
\RAM1|ALT_INV_ram~16_q\ <= NOT \RAM1|ram~16_q\;
\RAM1|ALT_INV_ram~527_combout\ <= NOT \RAM1|ram~527_combout\;
\RAM1|ALT_INV_ram~15_q\ <= NOT \RAM1|ram~15_q\;
\logica_Seven_Seg|REG5|ALT_INV_DOUT\(2) <= NOT \logica_Seven_Seg|REG5|DOUT\(2);
\logica_Seven_Seg|REG5|ALT_INV_DOUT\(1) <= NOT \logica_Seven_Seg|REG5|DOUT\(1);
\logica_Seven_Seg|REG5|ALT_INV_DOUT\(3) <= NOT \logica_Seven_Seg|REG5|DOUT\(3);
\logica_Seven_Seg|REG5|ALT_INV_DOUT\(0) <= NOT \logica_Seven_Seg|REG5|DOUT\(0);
\logica_Seven_Seg|REG4|ALT_INV_DOUT\(2) <= NOT \logica_Seven_Seg|REG4|DOUT\(2);
\logica_Seven_Seg|REG4|ALT_INV_DOUT\(1) <= NOT \logica_Seven_Seg|REG4|DOUT\(1);
\logica_Seven_Seg|REG4|ALT_INV_DOUT\(3) <= NOT \logica_Seven_Seg|REG4|DOUT\(3);
\logica_Seven_Seg|REG4|ALT_INV_DOUT\(0) <= NOT \logica_Seven_Seg|REG4|DOUT\(0);

-- Location: IOOBUF_X54_Y19_N39
\ADD_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~528_combout\,
	oe => \RAM1|dado_out~16_combout\,
	devoe => ww_devoe,
	o => ww_ADD_OUT(0));

-- Location: IOOBUF_X54_Y19_N5
\ADD_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~530_combout\,
	oe => \RAM1|dado_out~16_combout\,
	devoe => ww_devoe,
	o => ww_ADD_OUT(1));

-- Location: IOOBUF_X54_Y17_N22
\ADD_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~532_combout\,
	oe => \RAM1|dado_out~16_combout\,
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
	i => \RAM1|ram~534_combout\,
	oe => \RAM1|dado_out~16_combout\,
	devoe => ww_devoe,
	o => ww_ADD_OUT(3));

-- Location: IOOBUF_X54_Y17_N39
\ADD_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~536_combout\,
	oe => \RAM1|dado_out~16_combout\,
	devoe => ww_devoe,
	o => ww_ADD_OUT(4));

-- Location: IOOBUF_X44_Y45_N2
\ADD_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~538_combout\,
	oe => \RAM1|dado_out~16_combout\,
	devoe => ww_devoe,
	o => ww_ADD_OUT(5));

-- Location: IOOBUF_X44_Y45_N19
\ADD_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~540_combout\,
	oe => \RAM1|dado_out~16_combout\,
	devoe => ww_devoe,
	o => ww_ADD_OUT(6));

-- Location: IOOBUF_X40_Y45_N76
\ADD_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~542_combout\,
	oe => \RAM1|dado_out~16_combout\,
	devoe => ww_devoe,
	o => ww_ADD_OUT(7));

-- Location: IOOBUF_X54_Y15_N5
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

-- Location: IOOBUF_X54_Y14_N79
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

-- Location: IOOBUF_X54_Y14_N96
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

-- Location: IOOBUF_X12_Y0_N19
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

-- Location: IOOBUF_X54_Y17_N56
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

-- Location: IOOBUF_X43_Y45_N36
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

-- Location: IOOBUF_X42_Y45_N53
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

-- Location: IOOBUF_X40_Y45_N59
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

-- Location: IOOBUF_X54_Y16_N39
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

-- Location: IOOBUF_X40_Y45_N93
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
	i => \processador|REGA|DOUT[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_REGA_OUT(1));

-- Location: IOOBUF_X54_Y14_N62
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

-- Location: IOOBUF_X14_Y0_N53
\REGA_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_REGA_OUT(4));

-- Location: IOOBUF_X54_Y16_N56
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

-- Location: IOOBUF_X11_Y0_N53
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

-- Location: IOOBUF_X12_Y0_N36
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

-- Location: IOOBUF_X54_Y15_N22
\Palavra[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|saida[0]~3_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(0));

-- Location: IOOBUF_X40_Y45_N42
\Palavra[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|dado_out~16_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(1));

-- Location: IOOBUF_X44_Y45_N53
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

-- Location: IOOBUF_X52_Y45_N36
\Palavra[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|dado_out~16_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(3));

-- Location: IOOBUF_X43_Y45_N19
\Palavra[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|saida~2_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(4));

-- Location: IOOBUF_X54_Y15_N39
\Palavra[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|saida[5]~1_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(5));

-- Location: IOOBUF_X43_Y45_N2
\Palavra[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|saida~2_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(6));

-- Location: IOOBUF_X38_Y45_N19
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

-- Location: IOOBUF_X22_Y45_N19
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

-- Location: IOOBUF_X34_Y45_N2
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

-- Location: IOOBUF_X54_Y18_N45
\Palavra[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|saida~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(10));

-- Location: IOOBUF_X36_Y45_N53
\Palavra[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Palavra(11));

-- Location: IOOBUF_X18_Y45_N36
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

-- Location: IOOBUF_X42_Y45_N2
\HabilitaRAM~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|ALT_INV_memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_HabilitaRAM);

-- Location: IOOBUF_X54_Y15_N56
\MEM_ADDRESS[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|ALT_INV_memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(0));

-- Location: IOOBUF_X54_Y16_N22
\MEM_ADDRESS[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(1));

-- Location: IOOBUF_X12_Y0_N2
\MEM_ADDRESS[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|Equal10~0_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(2));

-- Location: IOOBUF_X12_Y45_N53
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

-- Location: IOOBUF_X22_Y45_N2
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

-- Location: IOOBUF_X42_Y45_N36
\MEM_ADDRESS[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(5));

-- Location: IOOBUF_X48_Y45_N2
\MEM_ADDRESS[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(6));

-- Location: IOOBUF_X11_Y0_N19
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

-- Location: IOOBUF_X42_Y45_N19
\MEM_ADDRESS[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~0_combout\,
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

-- Location: MLABCELL_X42_Y9_N30
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

-- Location: LABCELL_X43_Y7_N24
\processador|decoderInstru1|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida~0_combout\ = ( \processador|PC|DOUT\(3) & ( !\processador|PC|DOUT\(0) & ( (\processador|PC|DOUT[1]~DUPLICATE_q\ & \processador|PC|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datae => \processador|PC|ALT_INV_DOUT\(3),
	dataf => \processador|PC|ALT_INV_DOUT\(0),
	combout => \processador|decoderInstru1|saida~0_combout\);

-- Location: FF_X42_Y9_N32
\processador|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~1_sumout\,
	asdata => \ROM1|memROM~1_wirecell_combout\,
	sload => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[0]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y9_N0
\processador|decoderInstru1|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal10~0_combout\ = ( \processador|PC|DOUT[1]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[2]~DUPLICATE_q\ & (\processador|PC|DOUT\(3) & \processador|PC|DOUT\(0))) ) ) # ( !\processador|PC|DOUT[1]~DUPLICATE_q\ & ( 
-- (\processador|PC|DOUT[2]~DUPLICATE_q\ & (\processador|PC|DOUT\(3) & \processador|PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(3),
	datac => \processador|PC|ALT_INV_DOUT\(0),
	dataf => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \processador|decoderInstru1|Equal10~0_combout\);

-- Location: FF_X42_Y9_N38
\processador|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~9_sumout\,
	asdata => \processador|decoderInstru1|Equal10~0_combout\,
	sload => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[2]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y9_N21
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( \processador|PC|DOUT[1]~DUPLICATE_q\ ) # ( !\processador|PC|DOUT[1]~DUPLICATE_q\ & ( !\processador|PC|DOUT[0]~DUPLICATE_q\ $ (((!\processador|PC|DOUT\(3) & !\processador|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011110000001111001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(3),
	datac => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X43_Y9_N42
\ROM1|memROM~1_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_wirecell_combout\ = !\ROM1|memROM~1_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~1_wirecell_combout\);

-- Location: FF_X42_Y9_N31
\processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~1_sumout\,
	asdata => \ROM1|memROM~1_wirecell_combout\,
	sload => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(0));

-- Location: MLABCELL_X42_Y9_N33
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

-- Location: MLABCELL_X42_Y9_N36
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

-- Location: FF_X42_Y9_N37
\processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~9_sumout\,
	asdata => \processador|decoderInstru1|Equal10~0_combout\,
	sload => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(2));

-- Location: MLABCELL_X42_Y9_N39
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

-- Location: LABCELL_X39_Y9_N36
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

-- Location: FF_X42_Y9_N41
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
	sload => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(3));

-- Location: MLABCELL_X42_Y9_N12
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \processador|PC|DOUT[0]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(3) & (\processador|PC|DOUT[1]~DUPLICATE_q\ & \processador|PC|DOUT[2]~DUPLICATE_q\)) # (\processador|PC|DOUT\(3) & (!\processador|PC|DOUT[1]~DUPLICATE_q\ & 
-- !\processador|PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( (\processador|PC|DOUT\(3) & (\processador|PC|DOUT[1]~DUPLICATE_q\ & \processador|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110000000011000011000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(3),
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~2_combout\);

-- Location: FF_X42_Y9_N34
\processador|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~5_sumout\,
	asdata => \ROM1|memROM~2_combout\,
	sload => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(1));

-- Location: FF_X42_Y9_N35
\processador|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~5_sumout\,
	asdata => \ROM1|memROM~2_combout\,
	sload => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[1]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y9_N15
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \processador|PC|DOUT\(3) & ( (\processador|PC|DOUT[0]~DUPLICATE_q\ & ((!\processador|PC|DOUT[1]~DUPLICATE_q\) # (!\processador|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\processador|PC|DOUT\(3) & ( 
-- (\processador|PC|DOUT[0]~DUPLICATE_q\ & ((\processador|PC|DOUT[2]~DUPLICATE_q\) # (\processador|PC|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100001111000010100000111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~0_combout\);

-- Location: FF_X42_Y9_N40
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
	sload => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[3]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y9_N27
\processador|decoderInstru1|Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal10~1_combout\ = ( !\processador|PC|DOUT\(0) & ( (!\processador|PC|DOUT[1]~DUPLICATE_q\ & (!\processador|PC|DOUT[3]~DUPLICATE_q\ & !\processador|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(0),
	combout => \processador|decoderInstru1|Equal10~1_combout\);

-- Location: MLABCELL_X42_Y9_N6
\RAM1|dado_out~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out~16_combout\ = ( \processador|PC|DOUT[3]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[0]~DUPLICATE_q\ & ((!\processador|PC|DOUT[1]~DUPLICATE_q\) # (!\processador|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\processador|PC|DOUT[3]~DUPLICATE_q\ & ( 
-- (!\processador|PC|DOUT[0]~DUPLICATE_q\ & ((\processador|PC|DOUT[2]~DUPLICATE_q\) # (\processador|PC|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001100000011001100110011001100110000001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \RAM1|dado_out~16_combout\);

-- Location: LABCELL_X40_Y9_N9
\processador|decoderInstru1|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida~2_combout\ = ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(1) & (!\processador|PC|DOUT[2]~DUPLICATE_q\ & !\processador|PC|DOUT[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(1),
	datab => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \processador|decoderInstru1|saida~2_combout\);

-- Location: LABCELL_X41_Y9_N54
\RAM1|dado_out[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[0]~8_combout\ = ( \RAM1|ram~527_combout\ & ( (!\RAM1|dado_out~16_combout\) # ((!\processador|decoderInstru1|Equal10~0_combout\ & !\ROM1|memROM~0_combout\)) ) ) # ( !\RAM1|ram~527_combout\ & ( !\RAM1|dado_out~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111100111100001111110011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|decoderInstru1|ALT_INV_Equal10~0_combout\,
	datac => \RAM1|ALT_INV_dado_out~16_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \RAM1|ALT_INV_ram~527_combout\,
	combout => \RAM1|dado_out[0]~8_combout\);

-- Location: LABCELL_X41_Y9_N24
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

-- Location: LABCELL_X41_Y9_N27
\processador|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~1_sumout\ = SUM(( (!\RAM1|dado_out~16_combout\ & ((!\processador|decoderInstru1|Equal10~1_combout\ & ((!\RAM1|dado_out[0]~8_combout\))) # (\processador|decoderInstru1|Equal10~1_combout\ & (\ROM1|memROM~1_combout\)))) # 
-- (\RAM1|dado_out~16_combout\ & (((!\RAM1|dado_out[0]~8_combout\)))) ) + ( \processador|REGA|DOUT[0]~DUPLICATE_q\ ) + ( \processador|ULA1|Add1~34_cout\ ))
-- \processador|ULA1|Add1~2\ = CARRY(( (!\RAM1|dado_out~16_combout\ & ((!\processador|decoderInstru1|Equal10~1_combout\ & ((!\RAM1|dado_out[0]~8_combout\))) # (\processador|decoderInstru1|Equal10~1_combout\ & (\ROM1|memROM~1_combout\)))) # 
-- (\RAM1|dado_out~16_combout\ & (((!\RAM1|dado_out[0]~8_combout\)))) ) + ( \processador|REGA|DOUT[0]~DUPLICATE_q\ ) + ( \processador|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101111100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~16_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \RAM1|ALT_INV_dado_out[0]~8_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT[0]~DUPLICATE_q\,
	cin => \processador|ULA1|Add1~34_cout\,
	sumout => \processador|ULA1|Add1~1_sumout\,
	cout => \processador|ULA1|Add1~2\);

-- Location: LABCELL_X40_Y9_N57
\processador|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[0]~0_combout\ = ( \processador|ULA1|Add1~1_sumout\ & ( (!\processador|decoderInstru1|saida~2_combout\) # (!\ROM1|memROM~1_combout\) ) ) # ( !\processador|ULA1|Add1~1_sumout\ & ( (\processador|decoderInstru1|saida~2_combout\ & 
-- !\ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~2_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \processador|ULA1|saida[0]~0_combout\);

-- Location: LABCELL_X43_Y9_N3
\processador|decoderInstru1|saida[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida[5]~1_combout\ = ( \processador|PC|DOUT[3]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(0) & ((!\processador|PC|DOUT\(1)) # (!\processador|PC|DOUT\(2)))) ) ) # ( !\processador|PC|DOUT[3]~DUPLICATE_q\ & ( 
-- !\processador|PC|DOUT\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101000101010001010100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \processador|decoderInstru1|saida[5]~1_combout\);

-- Location: FF_X40_Y9_N32
\processador|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~1_sumout\,
	asdata => \processador|ULA1|saida[0]~0_combout\,
	sload => \RAM1|ALT_INV_dado_out~16_combout\,
	ena => \processador|decoderInstru1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(0));

-- Location: LABCELL_X40_Y9_N30
\processador|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~1_sumout\ = SUM(( \processador|REGA|DOUT\(0) ) + ( (!\processador|decoderInstru1|Equal10~1_combout\ & (((\RAM1|dado_out[0]~8_combout\)))) # (\processador|decoderInstru1|Equal10~1_combout\ & ((!\RAM1|dado_out~16_combout\ & 
-- (!\ROM1|memROM~1_combout\)) # (\RAM1|dado_out~16_combout\ & ((\RAM1|dado_out[0]~8_combout\))))) ) + ( !VCC ))
-- \processador|ULA1|Add0~2\ = CARRY(( \processador|REGA|DOUT\(0) ) + ( (!\processador|decoderInstru1|Equal10~1_combout\ & (((\RAM1|dado_out[0]~8_combout\)))) # (\processador|decoderInstru1|Equal10~1_combout\ & ((!\RAM1|dado_out~16_combout\ & 
-- (!\ROM1|memROM~1_combout\)) # (\RAM1|dado_out~16_combout\ & ((\RAM1|dado_out[0]~8_combout\))))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111110000010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datab => \RAM1|ALT_INV_dado_out~16_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(0),
	dataf => \RAM1|ALT_INV_dado_out[0]~8_combout\,
	cin => GND,
	sumout => \processador|ULA1|Add0~1_sumout\,
	cout => \processador|ULA1|Add0~2\);

-- Location: FF_X40_Y9_N31
\processador|REGA|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~1_sumout\,
	asdata => \processador|ULA1|saida[0]~0_combout\,
	sload => \RAM1|ALT_INV_dado_out~16_combout\,
	ena => \processador|decoderInstru1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y9_N36
\RAM1|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~543_combout\ = ( !\processador|PC|DOUT[3]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(1) & (\processador|PC|DOUT\(0) & !\processador|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(0),
	datad => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \RAM1|ram~543_combout\);

-- Location: FF_X42_Y9_N20
\RAM1|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~15_q\);

-- Location: MLABCELL_X42_Y9_N18
\RAM1|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~527_combout\ = ( !\ROM1|memROM~2_combout\ & ( (\ROM1|memROM~1_combout\ & \RAM1|ram~15_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \RAM1|ALT_INV_ram~15_q\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~527_combout\);

-- Location: LABCELL_X43_Y9_N48
\RAM1|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~528_combout\ = (!\ROM1|memROM~0_combout\ & (\RAM1|ram~527_combout\ & !\processador|decoderInstru1|Equal10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \RAM1|ALT_INV_ram~527_combout\,
	datad => \processador|decoderInstru1|ALT_INV_Equal10~0_combout\,
	combout => \RAM1|ram~528_combout\);

-- Location: LABCELL_X40_Y9_N6
\RAM1|dado_out[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[1]~9_combout\ = ( \RAM1|ram~530_combout\ ) # ( !\RAM1|ram~530_combout\ & ( !\RAM1|dado_out~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_dado_out~16_combout\,
	dataf => \RAM1|ALT_INV_ram~530_combout\,
	combout => \RAM1|dado_out[1]~9_combout\);

-- Location: LABCELL_X41_Y9_N30
\processador|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~5_sumout\ = SUM(( (!\RAM1|dado_out~16_combout\ & ((!\processador|decoderInstru1|Equal10~1_combout\ & ((!\RAM1|dado_out[1]~9_combout\))) # (\processador|decoderInstru1|Equal10~1_combout\ & (!\ROM1|memROM~2_combout\)))) # 
-- (\RAM1|dado_out~16_combout\ & (((!\RAM1|dado_out[1]~9_combout\)))) ) + ( \processador|REGA|DOUT\(1) ) + ( \processador|ULA1|Add1~2\ ))
-- \processador|ULA1|Add1~6\ = CARRY(( (!\RAM1|dado_out~16_combout\ & ((!\processador|decoderInstru1|Equal10~1_combout\ & ((!\RAM1|dado_out[1]~9_combout\))) # (\processador|decoderInstru1|Equal10~1_combout\ & (!\ROM1|memROM~2_combout\)))) # 
-- (\RAM1|dado_out~16_combout\ & (((!\RAM1|dado_out[1]~9_combout\)))) ) + ( \processador|REGA|DOUT\(1) ) + ( \processador|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~16_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \RAM1|ALT_INV_dado_out[1]~9_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(1),
	cin => \processador|ULA1|Add1~2\,
	sumout => \processador|ULA1|Add1~5_sumout\,
	cout => \processador|ULA1|Add1~6\);

-- Location: LABCELL_X40_Y9_N12
\processador|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[1]~1_combout\ = ( \processador|ULA1|Add1~5_sumout\ & ( (!\processador|decoderInstru1|saida~2_combout\) # (\ROM1|memROM~2_combout\) ) ) # ( !\processador|ULA1|Add1~5_sumout\ & ( (\ROM1|memROM~2_combout\ & 
-- \processador|decoderInstru1|saida~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \processador|decoderInstru1|ALT_INV_saida~2_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \processador|ULA1|saida[1]~1_combout\);

-- Location: FF_X40_Y9_N35
\processador|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~5_sumout\,
	asdata => \processador|ULA1|saida[1]~1_combout\,
	sload => \RAM1|ALT_INV_dado_out~16_combout\,
	ena => \processador|decoderInstru1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(1));

-- Location: LABCELL_X40_Y9_N33
\processador|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~5_sumout\ = SUM(( \processador|REGA|DOUT\(1) ) + ( (!\processador|decoderInstru1|Equal10~1_combout\ & (((\RAM1|dado_out[1]~9_combout\)))) # (\processador|decoderInstru1|Equal10~1_combout\ & ((!\RAM1|dado_out~16_combout\ & 
-- (\ROM1|memROM~2_combout\)) # (\RAM1|dado_out~16_combout\ & ((\RAM1|dado_out[1]~9_combout\))))) ) + ( \processador|ULA1|Add0~2\ ))
-- \processador|ULA1|Add0~6\ = CARRY(( \processador|REGA|DOUT\(1) ) + ( (!\processador|decoderInstru1|Equal10~1_combout\ & (((\RAM1|dado_out[1]~9_combout\)))) # (\processador|decoderInstru1|Equal10~1_combout\ & ((!\RAM1|dado_out~16_combout\ & 
-- (\ROM1|memROM~2_combout\)) # (\RAM1|dado_out~16_combout\ & ((\RAM1|dado_out[1]~9_combout\))))) ) + ( \processador|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110100000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datab => \RAM1|ALT_INV_dado_out~16_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(1),
	dataf => \RAM1|ALT_INV_dado_out[1]~9_combout\,
	cin => \processador|ULA1|Add0~2\,
	sumout => \processador|ULA1|Add0~5_sumout\,
	cout => \processador|ULA1|Add0~6\);

-- Location: FF_X40_Y9_N34
\processador|REGA|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~5_sumout\,
	asdata => \processador|ULA1|saida[1]~1_combout\,
	sload => \RAM1|ALT_INV_dado_out~16_combout\,
	ena => \processador|decoderInstru1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT[1]~DUPLICATE_q\);

-- Location: FF_X40_Y9_N11
\RAM1|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~16_q\);

-- Location: LABCELL_X40_Y9_N3
\RAM1|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~529_combout\ = ( \processador|PC|DOUT[0]~DUPLICATE_q\ & ( (\RAM1|ram~16_q\ & ((!\processador|PC|DOUT\(1) & (!\processador|PC|DOUT[3]~DUPLICATE_q\ & !\processador|PC|DOUT[2]~DUPLICATE_q\)) # (\processador|PC|DOUT\(1) & 
-- (\processador|PC|DOUT[3]~DUPLICATE_q\ & \processador|PC|DOUT[2]~DUPLICATE_q\)))) ) ) # ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( \RAM1|ram~16_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100100000000000010010000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(1),
	datab => \RAM1|ALT_INV_ram~16_q\,
	datac => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \RAM1|ram~529_combout\);

-- Location: LABCELL_X40_Y9_N15
\RAM1|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~530_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~2_combout\ & \RAM1|ram~529_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \RAM1|ALT_INV_ram~529_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~530_combout\);

-- Location: LABCELL_X41_Y9_N0
\RAM1|dado_out[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[2]~10_combout\ = ( \RAM1|ram~531_combout\ & ( (!\RAM1|dado_out~16_combout\) # ((!\processador|decoderInstru1|Equal10~0_combout\ & !\ROM1|memROM~0_combout\)) ) ) # ( !\RAM1|ram~531_combout\ & ( !\RAM1|dado_out~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011101010111010101110101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~16_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal10~0_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \RAM1|ALT_INV_ram~531_combout\,
	combout => \RAM1|dado_out[2]~10_combout\);

-- Location: LABCELL_X40_Y9_N36
\processador|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~9_sumout\ = SUM(( \processador|REGA|DOUT\(2) ) + ( (!\processador|decoderInstru1|Equal10~1_combout\ & (((\RAM1|dado_out[2]~10_combout\)))) # (\processador|decoderInstru1|Equal10~1_combout\ & ((!\RAM1|dado_out~16_combout\ & 
-- (\processador|decoderInstru1|Equal10~0_combout\)) # (\RAM1|dado_out~16_combout\ & ((\RAM1|dado_out[2]~10_combout\))))) ) + ( \processador|ULA1|Add0~6\ ))
-- \processador|ULA1|Add0~10\ = CARRY(( \processador|REGA|DOUT\(2) ) + ( (!\processador|decoderInstru1|Equal10~1_combout\ & (((\RAM1|dado_out[2]~10_combout\)))) # (\processador|decoderInstru1|Equal10~1_combout\ & ((!\RAM1|dado_out~16_combout\ & 
-- (\processador|decoderInstru1|Equal10~0_combout\)) # (\RAM1|dado_out~16_combout\ & ((\RAM1|dado_out[2]~10_combout\))))) ) + ( \processador|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110100000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datab => \RAM1|ALT_INV_dado_out~16_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal10~0_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(2),
	dataf => \RAM1|ALT_INV_dado_out[2]~10_combout\,
	cin => \processador|ULA1|Add0~6\,
	sumout => \processador|ULA1|Add0~9_sumout\,
	cout => \processador|ULA1|Add0~10\);

-- Location: LABCELL_X41_Y9_N33
\processador|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~9_sumout\ = SUM(( (!\RAM1|dado_out~16_combout\ & ((!\processador|decoderInstru1|Equal10~1_combout\ & ((!\RAM1|dado_out[2]~10_combout\))) # (\processador|decoderInstru1|Equal10~1_combout\ & 
-- (!\processador|decoderInstru1|Equal10~0_combout\)))) # (\RAM1|dado_out~16_combout\ & (((!\RAM1|dado_out[2]~10_combout\)))) ) + ( \processador|REGA|DOUT\(2) ) + ( \processador|ULA1|Add1~6\ ))
-- \processador|ULA1|Add1~10\ = CARRY(( (!\RAM1|dado_out~16_combout\ & ((!\processador|decoderInstru1|Equal10~1_combout\ & ((!\RAM1|dado_out[2]~10_combout\))) # (\processador|decoderInstru1|Equal10~1_combout\ & 
-- (!\processador|decoderInstru1|Equal10~0_combout\)))) # (\RAM1|dado_out~16_combout\ & (((!\RAM1|dado_out[2]~10_combout\)))) ) + ( \processador|REGA|DOUT\(2) ) + ( \processador|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~16_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal10~0_combout\,
	datad => \RAM1|ALT_INV_dado_out[2]~10_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(2),
	cin => \processador|ULA1|Add1~6\,
	sumout => \processador|ULA1|Add1~9_sumout\,
	cout => \processador|ULA1|Add1~10\);

-- Location: LABCELL_X40_Y9_N18
\processador|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[2]~2_combout\ = ( \processador|ULA1|Add1~9_sumout\ & ( (!\processador|decoderInstru1|saida~2_combout\) # (\processador|decoderInstru1|Equal10~0_combout\) ) ) # ( !\processador|ULA1|Add1~9_sumout\ & ( 
-- (\processador|decoderInstru1|saida~2_combout\ & \processador|decoderInstru1|Equal10~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~2_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal10~0_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \processador|ULA1|saida[2]~2_combout\);

-- Location: FF_X40_Y9_N37
\processador|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~9_sumout\,
	asdata => \processador|ULA1|saida[2]~2_combout\,
	sload => \RAM1|ALT_INV_dado_out~16_combout\,
	ena => \processador|decoderInstru1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(2));

-- Location: FF_X41_Y9_N1
\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

-- Location: LABCELL_X41_Y9_N9
\RAM1|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~531_combout\ = ( !\ROM1|memROM~2_combout\ & ( (\RAM1|ram~17_q\ & \ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~17_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~531_combout\);

-- Location: LABCELL_X43_Y9_N57
\RAM1|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~532_combout\ = ( !\ROM1|memROM~0_combout\ & ( (\RAM1|ram~531_combout\ & !\processador|decoderInstru1|Equal10~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~531_combout\,
	datad => \processador|decoderInstru1|ALT_INV_Equal10~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~532_combout\);

-- Location: LABCELL_X41_Y9_N3
\RAM1|dado_out[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[3]~11_combout\ = ( \RAM1|ram~534_combout\ ) # ( !\RAM1|ram~534_combout\ & ( !\RAM1|dado_out~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_dado_out~16_combout\,
	dataf => \RAM1|ALT_INV_ram~534_combout\,
	combout => \RAM1|dado_out[3]~11_combout\);

-- Location: LABCELL_X40_Y9_N39
\processador|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~13_sumout\ = SUM(( \processador|REGA|DOUT\(3) ) + ( (\RAM1|dado_out[3]~11_combout\ & ((!\processador|decoderInstru1|Equal10~1_combout\) # (\RAM1|dado_out~16_combout\))) ) + ( \processador|ULA1|Add0~10\ ))
-- \processador|ULA1|Add0~14\ = CARRY(( \processador|REGA|DOUT\(3) ) + ( (\RAM1|dado_out[3]~11_combout\ & ((!\processador|decoderInstru1|Equal10~1_combout\) # (\RAM1|dado_out~16_combout\))) ) + ( \processador|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101001111010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datab => \RAM1|ALT_INV_dado_out~16_combout\,
	datac => \RAM1|ALT_INV_dado_out[3]~11_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(3),
	cin => \processador|ULA1|Add0~10\,
	sumout => \processador|ULA1|Add0~13_sumout\,
	cout => \processador|ULA1|Add0~14\);

-- Location: LABCELL_X43_Y9_N33
\processador|decoderInstru1|Equal10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal10~2_combout\ = ( !\processador|PC|DOUT[3]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(0) & (\processador|PC|DOUT\(1) & !\processador|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datac => \processador|PC|ALT_INV_DOUT\(1),
	datad => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \processador|decoderInstru1|Equal10~2_combout\);

-- Location: LABCELL_X43_Y9_N0
\processador|decoderInstru1|Equal10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal10~3_combout\ = ( \processador|PC|DOUT[3]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(0) & ((!\processador|PC|DOUT\(2)) # (!\processador|PC|DOUT\(1)))) ) ) # ( !\processador|PC|DOUT[3]~DUPLICATE_q\ & ( 
-- (!\processador|PC|DOUT\(0) & \processador|PC|DOUT\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010101010101000001010101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(1),
	dataf => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \processador|decoderInstru1|Equal10~3_combout\);

-- Location: LABCELL_X41_Y9_N36
\processador|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~13_sumout\ = SUM(( (!\RAM1|dado_out[3]~11_combout\) # ((!\processador|decoderInstru1|Equal10~2_combout\ & (!\processador|decoderInstru1|Equal10~3_combout\ & \processador|decoderInstru1|Equal10~1_combout\))) ) + ( 
-- \processador|REGA|DOUT\(3) ) + ( \processador|ULA1|Add1~10\ ))
-- \processador|ULA1|Add1~14\ = CARRY(( (!\RAM1|dado_out[3]~11_combout\) # ((!\processador|decoderInstru1|Equal10~2_combout\ & (!\processador|decoderInstru1|Equal10~3_combout\ & \processador|decoderInstru1|Equal10~1_combout\))) ) + ( 
-- \processador|REGA|DOUT\(3) ) + ( \processador|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal10~3_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datad => \RAM1|ALT_INV_dado_out[3]~11_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(3),
	cin => \processador|ULA1|Add1~10\,
	sumout => \processador|ULA1|Add1~13_sumout\,
	cout => \processador|ULA1|Add1~14\);

-- Location: LABCELL_X40_Y9_N24
\processador|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[3]~3_combout\ = ( \processador|ULA1|Add1~13_sumout\ & ( !\processador|decoderInstru1|saida~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~2_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \processador|ULA1|saida[3]~3_combout\);

-- Location: FF_X40_Y9_N40
\processador|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~13_sumout\,
	asdata => \processador|ULA1|saida[3]~3_combout\,
	sload => \RAM1|ALT_INV_dado_out~16_combout\,
	ena => \processador|decoderInstru1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(3));

-- Location: FF_X42_Y9_N11
\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

-- Location: MLABCELL_X42_Y9_N9
\RAM1|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~533_combout\ = ( !\ROM1|memROM~0_combout\ & ( (!\processador|decoderInstru1|Equal10~0_combout\ & \RAM1|ram~18_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~0_combout\,
	datad => \RAM1|ALT_INV_ram~18_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~533_combout\);

-- Location: MLABCELL_X42_Y9_N24
\RAM1|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~534_combout\ = ( \RAM1|ram~533_combout\ & ( (!\ROM1|memROM~2_combout\ & \ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \RAM1|ALT_INV_ram~533_combout\,
	combout => \RAM1|ram~534_combout\);

-- Location: LABCELL_X41_Y9_N15
\RAM1|dado_out[4]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[4]~12_combout\ = ( \RAM1|ram~536_combout\ ) # ( !\RAM1|ram~536_combout\ & ( !\RAM1|dado_out~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_dado_out~16_combout\,
	dataf => \RAM1|ALT_INV_ram~536_combout\,
	combout => \RAM1|dado_out[4]~12_combout\);

-- Location: LABCELL_X41_Y9_N39
\processador|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~17_sumout\ = SUM(( (!\RAM1|dado_out[4]~12_combout\) # ((!\processador|decoderInstru1|Equal10~2_combout\ & (!\processador|decoderInstru1|Equal10~3_combout\ & \processador|decoderInstru1|Equal10~1_combout\))) ) + ( 
-- \processador|REGA|DOUT\(4) ) + ( \processador|ULA1|Add1~14\ ))
-- \processador|ULA1|Add1~18\ = CARRY(( (!\RAM1|dado_out[4]~12_combout\) # ((!\processador|decoderInstru1|Equal10~2_combout\ & (!\processador|decoderInstru1|Equal10~3_combout\ & \processador|decoderInstru1|Equal10~1_combout\))) ) + ( 
-- \processador|REGA|DOUT\(4) ) + ( \processador|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal10~3_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datad => \RAM1|ALT_INV_dado_out[4]~12_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(4),
	cin => \processador|ULA1|Add1~14\,
	sumout => \processador|ULA1|Add1~17_sumout\,
	cout => \processador|ULA1|Add1~18\);

-- Location: LABCELL_X40_Y9_N54
\processador|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[4]~4_combout\ = ( \processador|ULA1|Add1~17_sumout\ & ( !\processador|decoderInstru1|saida~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~2_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \processador|ULA1|saida[4]~4_combout\);

-- Location: FF_X40_Y9_N44
\processador|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~17_sumout\,
	asdata => \processador|ULA1|saida[4]~4_combout\,
	sload => \RAM1|ALT_INV_dado_out~16_combout\,
	ena => \processador|decoderInstru1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(4));

-- Location: LABCELL_X40_Y9_N42
\processador|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~17_sumout\ = SUM(( \processador|REGA|DOUT\(4) ) + ( (\RAM1|dado_out[4]~12_combout\ & ((!\processador|decoderInstru1|Equal10~1_combout\) # (\RAM1|dado_out~16_combout\))) ) + ( \processador|ULA1|Add0~14\ ))
-- \processador|ULA1|Add0~18\ = CARRY(( \processador|REGA|DOUT\(4) ) + ( (\RAM1|dado_out[4]~12_combout\ & ((!\processador|decoderInstru1|Equal10~1_combout\) # (\RAM1|dado_out~16_combout\))) ) + ( \processador|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101001111010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datab => \RAM1|ALT_INV_dado_out~16_combout\,
	datac => \RAM1|ALT_INV_dado_out[4]~12_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(4),
	cin => \processador|ULA1|Add0~14\,
	sumout => \processador|ULA1|Add0~17_sumout\,
	cout => \processador|ULA1|Add0~18\);

-- Location: FF_X40_Y9_N43
\processador|REGA|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~17_sumout\,
	asdata => \processador|ULA1|saida[4]~4_combout\,
	sload => \RAM1|ALT_INV_dado_out~16_combout\,
	ena => \processador|decoderInstru1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT[4]~DUPLICATE_q\);

-- Location: FF_X41_Y9_N59
\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

-- Location: LABCELL_X41_Y9_N57
\RAM1|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~535_combout\ = ( !\ROM1|memROM~2_combout\ & ( (\ROM1|memROM~1_combout\ & \RAM1|ram~19_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \RAM1|ALT_INV_ram~19_q\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~535_combout\);

-- Location: LABCELL_X41_Y9_N6
\RAM1|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~536_combout\ = ( \RAM1|ram~535_combout\ & ( (!\processador|decoderInstru1|Equal10~0_combout\ & !\ROM1|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|decoderInstru1|ALT_INV_Equal10~0_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \RAM1|ALT_INV_ram~535_combout\,
	combout => \RAM1|ram~536_combout\);

-- Location: LABCELL_X41_Y9_N21
\RAM1|dado_out[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[5]~13_combout\ = ( \RAM1|ram~538_combout\ ) # ( !\RAM1|ram~538_combout\ & ( !\RAM1|dado_out~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_dado_out~16_combout\,
	dataf => \RAM1|ALT_INV_ram~538_combout\,
	combout => \RAM1|dado_out[5]~13_combout\);

-- Location: LABCELL_X40_Y9_N45
\processador|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~21_sumout\ = SUM(( \processador|REGA|DOUT\(5) ) + ( (!\processador|decoderInstru1|Equal10~1_combout\ & (((\RAM1|dado_out[5]~13_combout\)))) # (\processador|decoderInstru1|Equal10~1_combout\ & ((!\RAM1|dado_out~16_combout\ & 
-- (\ROM1|memROM~0_combout\)) # (\RAM1|dado_out~16_combout\ & ((\RAM1|dado_out[5]~13_combout\))))) ) + ( \processador|ULA1|Add0~18\ ))
-- \processador|ULA1|Add0~22\ = CARRY(( \processador|REGA|DOUT\(5) ) + ( (!\processador|decoderInstru1|Equal10~1_combout\ & (((\RAM1|dado_out[5]~13_combout\)))) # (\processador|decoderInstru1|Equal10~1_combout\ & ((!\RAM1|dado_out~16_combout\ & 
-- (\ROM1|memROM~0_combout\)) # (\RAM1|dado_out~16_combout\ & ((\RAM1|dado_out[5]~13_combout\))))) ) + ( \processador|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110100000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datab => \RAM1|ALT_INV_dado_out~16_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(5),
	dataf => \RAM1|ALT_INV_dado_out[5]~13_combout\,
	cin => \processador|ULA1|Add0~18\,
	sumout => \processador|ULA1|Add0~21_sumout\,
	cout => \processador|ULA1|Add0~22\);

-- Location: LABCELL_X41_Y9_N42
\processador|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~21_sumout\ = SUM(( (!\RAM1|dado_out~16_combout\ & ((!\processador|decoderInstru1|Equal10~1_combout\ & ((!\RAM1|dado_out[5]~13_combout\))) # (\processador|decoderInstru1|Equal10~1_combout\ & (!\ROM1|memROM~0_combout\)))) # 
-- (\RAM1|dado_out~16_combout\ & (((!\RAM1|dado_out[5]~13_combout\)))) ) + ( \processador|REGA|DOUT\(5) ) + ( \processador|ULA1|Add1~18\ ))
-- \processador|ULA1|Add1~22\ = CARRY(( (!\RAM1|dado_out~16_combout\ & ((!\processador|decoderInstru1|Equal10~1_combout\ & ((!\RAM1|dado_out[5]~13_combout\))) # (\processador|decoderInstru1|Equal10~1_combout\ & (!\ROM1|memROM~0_combout\)))) # 
-- (\RAM1|dado_out~16_combout\ & (((!\RAM1|dado_out[5]~13_combout\)))) ) + ( \processador|REGA|DOUT\(5) ) + ( \processador|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~16_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \RAM1|ALT_INV_dado_out[5]~13_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(5),
	cin => \processador|ULA1|Add1~18\,
	sumout => \processador|ULA1|Add1~21_sumout\,
	cout => \processador|ULA1|Add1~22\);

-- Location: LABCELL_X40_Y9_N27
\processador|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[5]~5_combout\ = ( \processador|ULA1|Add1~21_sumout\ & ( (!\processador|decoderInstru1|saida~2_combout\) # (\ROM1|memROM~0_combout\) ) ) # ( !\processador|ULA1|Add1~21_sumout\ & ( (\processador|decoderInstru1|saida~2_combout\ & 
-- \ROM1|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \processador|ULA1|saida[5]~5_combout\);

-- Location: FF_X40_Y9_N46
\processador|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~21_sumout\,
	asdata => \processador|ULA1|saida[5]~5_combout\,
	sload => \RAM1|ALT_INV_dado_out~16_combout\,
	ena => \processador|decoderInstru1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(5));

-- Location: FF_X41_Y9_N14
\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

-- Location: LABCELL_X41_Y9_N12
\RAM1|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~537_combout\ = ( !\ROM1|memROM~0_combout\ & ( (!\processador|decoderInstru1|Equal10~0_combout\ & \RAM1|ram~20_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|decoderInstru1|ALT_INV_Equal10~0_combout\,
	datad => \RAM1|ALT_INV_ram~20_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~537_combout\);

-- Location: LABCELL_X41_Y9_N18
\RAM1|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~538_combout\ = ( \RAM1|ram~537_combout\ & ( (!\ROM1|memROM~2_combout\ & \ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \RAM1|ALT_INV_ram~537_combout\,
	combout => \RAM1|ram~538_combout\);

-- Location: MLABCELL_X42_Y9_N3
\RAM1|dado_out[6]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[6]~14_combout\ = ( \RAM1|ram~540_combout\ ) # ( !\RAM1|ram~540_combout\ & ( !\RAM1|dado_out~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_dado_out~16_combout\,
	dataf => \RAM1|ALT_INV_ram~540_combout\,
	combout => \RAM1|dado_out[6]~14_combout\);

-- Location: LABCELL_X40_Y9_N48
\processador|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~25_sumout\ = SUM(( \processador|REGA|DOUT\(6) ) + ( (\RAM1|dado_out[6]~14_combout\ & (((!\processador|decoderInstru1|Equal10~1_combout\) # (\processador|decoderInstru1|Equal10~3_combout\)) # 
-- (\processador|decoderInstru1|Equal10~2_combout\))) ) + ( \processador|ULA1|Add0~22\ ))
-- \processador|ULA1|Add0~26\ = CARRY(( \processador|REGA|DOUT\(6) ) + ( (\RAM1|dado_out[6]~14_combout\ & (((!\processador|decoderInstru1|Equal10~1_combout\) # (\processador|decoderInstru1|Equal10~3_combout\)) # 
-- (\processador|decoderInstru1|Equal10~2_combout\))) ) + ( \processador|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal10~3_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(6),
	dataf => \RAM1|ALT_INV_dado_out[6]~14_combout\,
	cin => \processador|ULA1|Add0~22\,
	sumout => \processador|ULA1|Add0~25_sumout\,
	cout => \processador|ULA1|Add0~26\);

-- Location: LABCELL_X41_Y9_N45
\processador|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~25_sumout\ = SUM(( (!\RAM1|dado_out[6]~14_combout\) # ((!\RAM1|dado_out~16_combout\ & \processador|decoderInstru1|Equal10~1_combout\)) ) + ( \processador|REGA|DOUT\(6) ) + ( \processador|ULA1|Add1~22\ ))
-- \processador|ULA1|Add1~26\ = CARRY(( (!\RAM1|dado_out[6]~14_combout\) # ((!\RAM1|dado_out~16_combout\ & \processador|decoderInstru1|Equal10~1_combout\)) ) + ( \processador|REGA|DOUT\(6) ) + ( \processador|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~16_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datac => \processador|REGA|ALT_INV_DOUT\(6),
	datad => \RAM1|ALT_INV_dado_out[6]~14_combout\,
	cin => \processador|ULA1|Add1~22\,
	sumout => \processador|ULA1|Add1~25_sumout\,
	cout => \processador|ULA1|Add1~26\);

-- Location: LABCELL_X40_Y9_N0
\processador|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[6]~6_combout\ = ( \processador|ULA1|Add1~25_sumout\ & ( !\processador|decoderInstru1|saida~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|decoderInstru1|ALT_INV_saida~2_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~25_sumout\,
	combout => \processador|ULA1|saida[6]~6_combout\);

-- Location: FF_X40_Y9_N49
\processador|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~25_sumout\,
	asdata => \processador|ULA1|saida[6]~6_combout\,
	sload => \RAM1|ALT_INV_dado_out~16_combout\,
	ena => \processador|decoderInstru1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(6));

-- Location: FF_X43_Y9_N26
\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

-- Location: LABCELL_X43_Y9_N6
\RAM1|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~539_combout\ = ( !\ROM1|memROM~2_combout\ & ( (\RAM1|ram~21_q\ & \ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~21_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~539_combout\);

-- Location: LABCELL_X43_Y9_N12
\RAM1|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~540_combout\ = ( \RAM1|ram~539_combout\ & ( (!\ROM1|memROM~0_combout\ & !\processador|decoderInstru1|Equal10~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \processador|decoderInstru1|ALT_INV_Equal10~0_combout\,
	dataf => \RAM1|ALT_INV_ram~539_combout\,
	combout => \RAM1|ram~540_combout\);

-- Location: LABCELL_X43_Y9_N45
\RAM1|dado_out[7]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[7]~15_combout\ = ( \RAM1|ram~542_combout\ ) # ( !\RAM1|ram~542_combout\ & ( !\RAM1|dado_out~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_dado_out~16_combout\,
	dataf => \RAM1|ALT_INV_ram~542_combout\,
	combout => \RAM1|dado_out[7]~15_combout\);

-- Location: LABCELL_X40_Y9_N51
\processador|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~29_sumout\ = SUM(( \processador|REGA|DOUT\(7) ) + ( (\RAM1|dado_out[7]~15_combout\ & (((!\processador|decoderInstru1|Equal10~1_combout\) # (\processador|decoderInstru1|Equal10~3_combout\)) # 
-- (\processador|decoderInstru1|Equal10~2_combout\))) ) + ( \processador|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal10~3_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(7),
	dataf => \RAM1|ALT_INV_dado_out[7]~15_combout\,
	cin => \processador|ULA1|Add0~26\,
	sumout => \processador|ULA1|Add0~29_sumout\);

-- Location: LABCELL_X41_Y9_N48
\processador|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~29_sumout\ = SUM(( (!\RAM1|dado_out[7]~15_combout\) # ((\processador|decoderInstru1|Equal10~1_combout\ & (!\processador|decoderInstru1|Equal10~3_combout\ & !\processador|decoderInstru1|Equal10~2_combout\))) ) + ( 
-- \processador|REGA|DOUT\(7) ) + ( \processador|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal10~3_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datad => \RAM1|ALT_INV_dado_out[7]~15_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(7),
	cin => \processador|ULA1|Add1~26\,
	sumout => \processador|ULA1|Add1~29_sumout\);

-- Location: LABCELL_X40_Y9_N21
\processador|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[7]~7_combout\ = (!\processador|decoderInstru1|saida~2_combout\ & \processador|ULA1|Add1~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~2_combout\,
	datad => \processador|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \processador|ULA1|saida[7]~7_combout\);

-- Location: FF_X40_Y9_N52
\processador|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~29_sumout\,
	asdata => \processador|ULA1|saida[7]~7_combout\,
	sload => \RAM1|ALT_INV_dado_out~16_combout\,
	ena => \processador|decoderInstru1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(7));

-- Location: FF_X43_Y9_N53
\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

-- Location: LABCELL_X43_Y9_N39
\RAM1|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~541_combout\ = ( !\ROM1|memROM~0_combout\ & ( (\RAM1|ram~22_q\ & !\processador|decoderInstru1|Equal10~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~22_q\,
	datac => \processador|decoderInstru1|ALT_INV_Equal10~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~541_combout\);

-- Location: LABCELL_X43_Y9_N18
\RAM1|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~542_combout\ = ( \RAM1|ram~541_combout\ & ( (!\ROM1|memROM~2_combout\ & \ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \RAM1|ALT_INV_ram~541_combout\,
	combout => \RAM1|ram~542_combout\);

-- Location: MLABCELL_X42_Y9_N42
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

-- Location: FF_X42_Y9_N43
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
	sload => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(4));

-- Location: MLABCELL_X42_Y9_N45
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

-- Location: FF_X42_Y9_N46
\processador|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~21_sumout\,
	asdata => \ROM1|memROM~0_combout\,
	sload => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(5));

-- Location: MLABCELL_X42_Y9_N48
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

-- Location: FF_X42_Y9_N49
\processador|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(6));

-- Location: MLABCELL_X42_Y9_N51
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

-- Location: FF_X42_Y9_N53
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
	sload => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(7));

-- Location: MLABCELL_X42_Y9_N54
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

-- Location: FF_X42_Y9_N55
\processador|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~33_sumout\,
	asdata => \ROM1|memROM~0_combout\,
	sload => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(8));

-- Location: LABCELL_X43_Y7_N33
\processador|decoderInstru1|saida[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida[0]~3_combout\ = ( \processador|PC|DOUT\(3) & ( \processador|PC|DOUT[1]~DUPLICATE_q\ & ( (\processador|PC|DOUT\(0) & !\processador|PC|DOUT\(2)) ) ) ) # ( !\processador|PC|DOUT\(3) & ( \processador|PC|DOUT[1]~DUPLICATE_q\ & 
-- ( \processador|PC|DOUT\(0) ) ) ) # ( \processador|PC|DOUT\(3) & ( !\processador|PC|DOUT[1]~DUPLICATE_q\ & ( \processador|PC|DOUT\(0) ) ) ) # ( !\processador|PC|DOUT\(3) & ( !\processador|PC|DOUT[1]~DUPLICATE_q\ & ( \processador|PC|DOUT\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datad => \processador|PC|ALT_INV_DOUT\(2),
	datae => \processador|PC|ALT_INV_DOUT\(3),
	dataf => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \processador|decoderInstru1|saida[0]~3_combout\);

-- Location: MLABCELL_X42_Y3_N36
\decoderPosicao|Equal7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderPosicao|Equal7~5_combout\ = ( !\processador|PC|DOUT\(2) & ( (\processador|PC|DOUT\(0) & (\processador|PC|DOUT[1]~DUPLICATE_q\ & !\processador|PC|DOUT[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(0),
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(2),
	combout => \decoderPosicao|Equal7~5_combout\);

-- Location: FF_X43_Y3_N38
\logica_Seven_Seg|REG0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \decoderPosicao|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG0|DOUT\(0));

-- Location: FF_X43_Y3_N41
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
	ena => \decoderPosicao|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG0|DOUT\(3));

-- Location: FF_X43_Y3_N47
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
	ena => \decoderPosicao|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG0|DOUT\(2));

-- Location: FF_X43_Y3_N44
\logica_Seven_Seg|REG0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \decoderPosicao|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG0|DOUT\(1));

-- Location: LABCELL_X43_Y3_N45
\logica_Seven_Seg|H0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[0]~0_combout\ = ( \logica_Seven_Seg|REG0|DOUT\(1) & ( (\logica_Seven_Seg|REG0|DOUT\(0) & (\logica_Seven_Seg|REG0|DOUT\(3) & !\logica_Seven_Seg|REG0|DOUT\(2))) ) ) # ( !\logica_Seven_Seg|REG0|DOUT\(1) & ( 
-- (!\logica_Seven_Seg|REG0|DOUT\(0) & (!\logica_Seven_Seg|REG0|DOUT\(3) & \logica_Seven_Seg|REG0|DOUT\(2))) # (\logica_Seven_Seg|REG0|DOUT\(0) & (!\logica_Seven_Seg|REG0|DOUT\(3) $ (\logica_Seven_Seg|REG0|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100101010100001010010100000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	datad => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X43_Y3_N51
\logica_Seven_Seg|H0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[1]~1_combout\ = ( \logica_Seven_Seg|REG0|DOUT\(1) & ( (!\logica_Seven_Seg|REG0|DOUT\(0) & ((\logica_Seven_Seg|REG0|DOUT\(2)))) # (\logica_Seven_Seg|REG0|DOUT\(0) & (\logica_Seven_Seg|REG0|DOUT\(3))) ) ) # ( 
-- !\logica_Seven_Seg|REG0|DOUT\(1) & ( (\logica_Seven_Seg|REG0|DOUT\(2) & (!\logica_Seven_Seg|REG0|DOUT\(0) $ (!\logica_Seven_Seg|REG0|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101000000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	datad => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X43_Y3_N54
\logica_Seven_Seg|H0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[2]~2_combout\ = ( \logica_Seven_Seg|REG0|DOUT\(1) & ( (!\logica_Seven_Seg|REG0|DOUT\(3) & (!\logica_Seven_Seg|REG0|DOUT\(0) & !\logica_Seven_Seg|REG0|DOUT\(2))) # (\logica_Seven_Seg|REG0|DOUT\(3) & 
-- ((\logica_Seven_Seg|REG0|DOUT\(2)))) ) ) # ( !\logica_Seven_Seg|REG0|DOUT\(1) & ( (\logica_Seven_Seg|REG0|DOUT\(3) & (!\logica_Seven_Seg|REG0|DOUT\(0) & \logica_Seven_Seg|REG0|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011000000001100111100000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	datad => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X43_Y3_N36
\logica_Seven_Seg|H0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[3]~3_combout\ = (!\logica_Seven_Seg|REG0|DOUT\(1) & (!\logica_Seven_Seg|REG0|DOUT\(3) & (!\logica_Seven_Seg|REG0|DOUT\(2) $ (!\logica_Seven_Seg|REG0|DOUT\(0))))) # (\logica_Seven_Seg|REG0|DOUT\(1) & 
-- ((!\logica_Seven_Seg|REG0|DOUT\(2) & (\logica_Seven_Seg|REG0|DOUT\(3) & !\logica_Seven_Seg|REG0|DOUT\(0))) # (\logica_Seven_Seg|REG0|DOUT\(2) & ((\logica_Seven_Seg|REG0|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001010010001010000101001000101000010100100010100001010010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	datab => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	datad => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X43_Y3_N39
\logica_Seven_Seg|H0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[4]~4_combout\ = ( \logica_Seven_Seg|REG0|DOUT\(0) & ( (!\logica_Seven_Seg|REG0|DOUT\(3)) # ((!\logica_Seven_Seg|REG0|DOUT\(1) & !\logica_Seven_Seg|REG0|DOUT\(2))) ) ) # ( !\logica_Seven_Seg|REG0|DOUT\(0) & ( 
-- (!\logica_Seven_Seg|REG0|DOUT\(1) & (\logica_Seven_Seg|REG0|DOUT\(2) & !\logica_Seven_Seg|REG0|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000011111111110000001111111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	dataf => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X43_Y3_N42
\logica_Seven_Seg|H0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[5]~5_combout\ = ( \logica_Seven_Seg|REG0|DOUT\(3) & ( (\logica_Seven_Seg|REG0|DOUT\(0) & (\logica_Seven_Seg|REG0|DOUT\(2) & !\logica_Seven_Seg|REG0|DOUT\(1))) ) ) # ( !\logica_Seven_Seg|REG0|DOUT\(3) & ( 
-- (!\logica_Seven_Seg|REG0|DOUT\(0) & (!\logica_Seven_Seg|REG0|DOUT\(2) & \logica_Seven_Seg|REG0|DOUT\(1))) # (\logica_Seven_Seg|REG0|DOUT\(0) & ((!\logica_Seven_Seg|REG0|DOUT\(2)) # (\logica_Seven_Seg|REG0|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011011101010001001101110100010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X43_Y3_N24
\logica_Seven_Seg|H0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[6]~6_combout\ = ( \logica_Seven_Seg|REG0|DOUT\(1) & ( (!\logica_Seven_Seg|REG0|DOUT\(3) & (\logica_Seven_Seg|REG0|DOUT\(0) & \logica_Seven_Seg|REG0|DOUT\(2))) ) ) # ( !\logica_Seven_Seg|REG0|DOUT\(1) & ( 
-- (!\logica_Seven_Seg|REG0|DOUT\(3) & ((!\logica_Seven_Seg|REG0|DOUT\(2)))) # (\logica_Seven_Seg|REG0|DOUT\(3) & (!\logica_Seven_Seg|REG0|DOUT\(0) & \logica_Seven_Seg|REG0|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110000110011000011000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	datad => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X42_Y3_N9
\decoderPosicao|Equal7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderPosicao|Equal7~4_combout\ = ( \processador|PC|DOUT\(2) & ( (!\processador|PC|DOUT[1]~DUPLICATE_q\ & (\processador|PC|DOUT\(0) & !\processador|PC|DOUT[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(0),
	datad => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(2),
	combout => \decoderPosicao|Equal7~4_combout\);

-- Location: FF_X43_Y3_N50
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
	ena => \decoderPosicao|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG1|DOUT\(2));

-- Location: FF_X43_Y3_N14
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
	ena => \decoderPosicao|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG1|DOUT\(3));

-- Location: FF_X43_Y3_N8
\logica_Seven_Seg|REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \decoderPosicao|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG1|DOUT\(0));

-- Location: FF_X43_Y3_N17
\logica_Seven_Seg|REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \decoderPosicao|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG1|DOUT\(1));

-- Location: LABCELL_X43_Y3_N9
\logica_Seven_Seg|H1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H1|rascSaida7seg[0]~0_combout\ = ( \logica_Seven_Seg|REG1|DOUT\(1) & ( (!\logica_Seven_Seg|REG1|DOUT\(2) & (\logica_Seven_Seg|REG1|DOUT\(3) & \logica_Seven_Seg|REG1|DOUT\(0))) ) ) # ( !\logica_Seven_Seg|REG1|DOUT\(1) & ( 
-- (!\logica_Seven_Seg|REG1|DOUT\(2) & (!\logica_Seven_Seg|REG1|DOUT\(3) & \logica_Seven_Seg|REG1|DOUT\(0))) # (\logica_Seven_Seg|REG1|DOUT\(2) & (!\logica_Seven_Seg|REG1|DOUT\(3) $ (\logica_Seven_Seg|REG1|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100101001001010010010100100100000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(2),
	datab => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(0),
	dataf => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H1|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X43_Y3_N30
\logica_Seven_Seg|H1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H1|rascSaida7seg[1]~1_combout\ = ( \logica_Seven_Seg|REG1|DOUT\(0) & ( (!\logica_Seven_Seg|REG1|DOUT\(3) & (\logica_Seven_Seg|REG1|DOUT\(2) & !\logica_Seven_Seg|REG1|DOUT\(1))) # (\logica_Seven_Seg|REG1|DOUT\(3) & 
-- ((\logica_Seven_Seg|REG1|DOUT\(1)))) ) ) # ( !\logica_Seven_Seg|REG1|DOUT\(0) & ( (\logica_Seven_Seg|REG1|DOUT\(2) & ((\logica_Seven_Seg|REG1|DOUT\(1)) # (\logica_Seven_Seg|REG1|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100001100001100110000110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H1|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X43_Y3_N33
\logica_Seven_Seg|H1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H1|rascSaida7seg[2]~2_combout\ = ( \logica_Seven_Seg|REG1|DOUT\(1) & ( (!\logica_Seven_Seg|REG1|DOUT\(2) & (!\logica_Seven_Seg|REG1|DOUT\(3) & !\logica_Seven_Seg|REG1|DOUT\(0))) # (\logica_Seven_Seg|REG1|DOUT\(2) & 
-- (\logica_Seven_Seg|REG1|DOUT\(3))) ) ) # ( !\logica_Seven_Seg|REG1|DOUT\(1) & ( (\logica_Seven_Seg|REG1|DOUT\(2) & (\logica_Seven_Seg|REG1|DOUT\(3) & !\logica_Seven_Seg|REG1|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000010010001100100011001000110010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(2),
	datab => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(0),
	dataf => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H1|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X43_Y3_N6
\logica_Seven_Seg|H1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H1|rascSaida7seg[3]~3_combout\ = ( \logica_Seven_Seg|REG1|DOUT\(1) & ( (!\logica_Seven_Seg|REG1|DOUT\(2) & (\logica_Seven_Seg|REG1|DOUT\(3) & !\logica_Seven_Seg|REG1|DOUT\(0))) # (\logica_Seven_Seg|REG1|DOUT\(2) & 
-- ((\logica_Seven_Seg|REG1|DOUT\(0)))) ) ) # ( !\logica_Seven_Seg|REG1|DOUT\(1) & ( (!\logica_Seven_Seg|REG1|DOUT\(3) & (!\logica_Seven_Seg|REG1|DOUT\(2) $ (!\logica_Seven_Seg|REG1|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010001000010001001000100000100010010101010010001001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(2),
	datab => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(3),
	datad => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(0),
	dataf => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H1|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X43_Y3_N12
\logica_Seven_Seg|H1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H1|rascSaida7seg[4]~4_combout\ = ( \logica_Seven_Seg|REG1|DOUT\(1) & ( (\logica_Seven_Seg|REG1|DOUT\(0) & !\logica_Seven_Seg|REG1|DOUT\(3)) ) ) # ( !\logica_Seven_Seg|REG1|DOUT\(1) & ( (!\logica_Seven_Seg|REG1|DOUT\(2) & 
-- (\logica_Seven_Seg|REG1|DOUT\(0))) # (\logica_Seven_Seg|REG1|DOUT\(2) & ((!\logica_Seven_Seg|REG1|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100100010011101110010001000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(2),
	datab => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(0),
	datad => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(3),
	dataf => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H1|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X43_Y3_N15
\logica_Seven_Seg|H1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H1|rascSaida7seg[5]~5_combout\ = (!\logica_Seven_Seg|REG1|DOUT\(2) & (!\logica_Seven_Seg|REG1|DOUT\(3) & ((\logica_Seven_Seg|REG1|DOUT\(1)) # (\logica_Seven_Seg|REG1|DOUT\(0))))) # (\logica_Seven_Seg|REG1|DOUT\(2) & 
-- (\logica_Seven_Seg|REG1|DOUT\(0) & (!\logica_Seven_Seg|REG1|DOUT\(3) $ (!\logica_Seven_Seg|REG1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000110110000001000011011000000100001101100000010000110110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(2),
	datab => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(3),
	datad => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H1|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X43_Y3_N48
\logica_Seven_Seg|H1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H1|rascSaida7seg[6]~6_combout\ = ( \logica_Seven_Seg|REG1|DOUT\(3) & ( (!\logica_Seven_Seg|REG1|DOUT\(0) & (!\logica_Seven_Seg|REG1|DOUT\(1) & \logica_Seven_Seg|REG1|DOUT\(2))) ) ) # ( !\logica_Seven_Seg|REG1|DOUT\(3) & ( 
-- (!\logica_Seven_Seg|REG1|DOUT\(1) & ((!\logica_Seven_Seg|REG1|DOUT\(2)))) # (\logica_Seven_Seg|REG1|DOUT\(1) & (\logica_Seven_Seg|REG1|DOUT\(0) & \logica_Seven_Seg|REG1|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000011111100000000001100000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG1|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H1|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X42_Y3_N33
\decoderPosicao|Equal7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderPosicao|Equal7~3_combout\ = ( \processador|PC|DOUT[1]~DUPLICATE_q\ & ( (\processador|PC|DOUT\(2) & (\processador|PC|DOUT\(0) & !\processador|PC|DOUT[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(2),
	datab => \processador|PC|ALT_INV_DOUT\(0),
	datad => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \decoderPosicao|Equal7~3_combout\);

-- Location: FF_X42_Y3_N2
\logica_Seven_Seg|REG2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \decoderPosicao|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG2|DOUT\(0));

-- Location: FF_X42_Y3_N44
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
	ena => \decoderPosicao|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG2|DOUT\(3));

-- Location: FF_X42_Y3_N5
\logica_Seven_Seg|REG2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \decoderPosicao|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG2|DOUT\(1));

-- Location: FF_X42_Y3_N47
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
	ena => \decoderPosicao|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG2|DOUT\(2));

-- Location: MLABCELL_X42_Y3_N48
\logica_Seven_Seg|H2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[0]~0_combout\ = (!\logica_Seven_Seg|REG2|DOUT\(3) & (!\logica_Seven_Seg|REG2|DOUT\(1) & (!\logica_Seven_Seg|REG2|DOUT\(0) $ (!\logica_Seven_Seg|REG2|DOUT\(2))))) # (\logica_Seven_Seg|REG2|DOUT\(3) & 
-- (\logica_Seven_Seg|REG2|DOUT\(0) & (!\logica_Seven_Seg|REG2|DOUT\(1) $ (!\logica_Seven_Seg|REG2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X42_Y3_N51
\logica_Seven_Seg|H2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[1]~1_combout\ = (!\logica_Seven_Seg|REG2|DOUT\(3) & (\logica_Seven_Seg|REG2|DOUT\(2) & (!\logica_Seven_Seg|REG2|DOUT\(0) $ (!\logica_Seven_Seg|REG2|DOUT\(1))))) # (\logica_Seven_Seg|REG2|DOUT\(3) & 
-- ((!\logica_Seven_Seg|REG2|DOUT\(0) & (\logica_Seven_Seg|REG2|DOUT\(2))) # (\logica_Seven_Seg|REG2|DOUT\(0) & ((\logica_Seven_Seg|REG2|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X42_Y3_N6
\logica_Seven_Seg|H2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[2]~2_combout\ = ( \logica_Seven_Seg|REG2|DOUT\(0) & ( (\logica_Seven_Seg|REG2|DOUT\(3) & (\logica_Seven_Seg|REG2|DOUT\(1) & \logica_Seven_Seg|REG2|DOUT\(2))) ) ) # ( !\logica_Seven_Seg|REG2|DOUT\(0) & ( 
-- (!\logica_Seven_Seg|REG2|DOUT\(3) & (\logica_Seven_Seg|REG2|DOUT\(1) & !\logica_Seven_Seg|REG2|DOUT\(2))) # (\logica_Seven_Seg|REG2|DOUT\(3) & ((\logica_Seven_Seg|REG2|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000110011000011000011001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X42_Y3_N0
\logica_Seven_Seg|H2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[3]~3_combout\ = ( \logica_Seven_Seg|REG2|DOUT\(3) & ( (\logica_Seven_Seg|REG2|DOUT\(1) & (!\logica_Seven_Seg|REG2|DOUT\(2) $ (\logica_Seven_Seg|REG2|DOUT\(0)))) ) ) # ( !\logica_Seven_Seg|REG2|DOUT\(3) & ( 
-- (!\logica_Seven_Seg|REG2|DOUT\(2) & (!\logica_Seven_Seg|REG2|DOUT\(1) & \logica_Seven_Seg|REG2|DOUT\(0))) # (\logica_Seven_Seg|REG2|DOUT\(2) & (!\logica_Seven_Seg|REG2|DOUT\(1) $ (\logica_Seven_Seg|REG2|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000011001100001100001100001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	dataf => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X42_Y3_N42
\logica_Seven_Seg|H2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[4]~4_combout\ = (!\logica_Seven_Seg|REG2|DOUT\(1) & ((!\logica_Seven_Seg|REG2|DOUT\(2) & (\logica_Seven_Seg|REG2|DOUT\(0))) # (\logica_Seven_Seg|REG2|DOUT\(2) & ((!\logica_Seven_Seg|REG2|DOUT\(3)))))) # 
-- (\logica_Seven_Seg|REG2|DOUT\(1) & (((\logica_Seven_Seg|REG2|DOUT\(0) & !\logica_Seven_Seg|REG2|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100001000001011110000100000101111000010000010111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	datab => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	datad => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X42_Y3_N3
\logica_Seven_Seg|H2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[5]~5_combout\ = ( \logica_Seven_Seg|REG2|DOUT\(3) & ( (\logica_Seven_Seg|REG2|DOUT\(2) & (\logica_Seven_Seg|REG2|DOUT\(0) & !\logica_Seven_Seg|REG2|DOUT\(1))) ) ) # ( !\logica_Seven_Seg|REG2|DOUT\(3) & ( 
-- (!\logica_Seven_Seg|REG2|DOUT\(2) & ((\logica_Seven_Seg|REG2|DOUT\(1)) # (\logica_Seven_Seg|REG2|DOUT\(0)))) # (\logica_Seven_Seg|REG2|DOUT\(2) & (\logica_Seven_Seg|REG2|DOUT\(0) & \logica_Seven_Seg|REG2|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001111000011001100111100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	datad => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X42_Y3_N45
\logica_Seven_Seg|H2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[6]~6_combout\ = ( \logica_Seven_Seg|REG2|DOUT\(3) & ( (!\logica_Seven_Seg|REG2|DOUT\(1) & (!\logica_Seven_Seg|REG2|DOUT\(0) & \logica_Seven_Seg|REG2|DOUT\(2))) ) ) # ( !\logica_Seven_Seg|REG2|DOUT\(3) & ( 
-- (!\logica_Seven_Seg|REG2|DOUT\(1) & ((!\logica_Seven_Seg|REG2|DOUT\(2)))) # (\logica_Seven_Seg|REG2|DOUT\(1) & (\logica_Seven_Seg|REG2|DOUT\(0) & \logica_Seven_Seg|REG2|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000101101010100000010100000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	datad => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X42_Y3_N30
\decoderPosicao|Equal7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderPosicao|Equal7~2_combout\ = ( !\processador|PC|DOUT[1]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(2) & (\processador|PC|DOUT\(0) & \processador|PC|DOUT[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(2),
	datab => \processador|PC|ALT_INV_DOUT\(0),
	datac => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \decoderPosicao|Equal7~2_combout\);

-- Location: FF_X42_Y3_N59
\logica_Seven_Seg|REG3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \decoderPosicao|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG3|DOUT\(3));

-- Location: FF_X42_Y3_N41
\logica_Seven_Seg|REG3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \decoderPosicao|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG3|DOUT\(0));

-- Location: FF_X42_Y3_N17
\logica_Seven_Seg|REG3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \decoderPosicao|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG3|DOUT\(2));

-- Location: FF_X42_Y3_N14
\logica_Seven_Seg|REG3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \decoderPosicao|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG3|DOUT\(1));

-- Location: MLABCELL_X42_Y3_N18
\logica_Seven_Seg|H3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[0]~0_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(1) & ( (\logica_Seven_Seg|REG3|DOUT\(3) & (\logica_Seven_Seg|REG3|DOUT\(0) & !\logica_Seven_Seg|REG3|DOUT\(2))) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(1) & ( 
-- (!\logica_Seven_Seg|REG3|DOUT\(3) & (!\logica_Seven_Seg|REG3|DOUT\(0) $ (!\logica_Seven_Seg|REG3|DOUT\(2)))) # (\logica_Seven_Seg|REG3|DOUT\(3) & (\logica_Seven_Seg|REG3|DOUT\(0) & \logica_Seven_Seg|REG3|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100101001001010010010100100010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X42_Y3_N21
\logica_Seven_Seg|H3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[1]~1_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(1) & ( (!\logica_Seven_Seg|REG3|DOUT\(0) & ((\logica_Seven_Seg|REG3|DOUT\(2)))) # (\logica_Seven_Seg|REG3|DOUT\(0) & (\logica_Seven_Seg|REG3|DOUT\(3))) ) ) # ( 
-- !\logica_Seven_Seg|REG3|DOUT\(1) & ( (\logica_Seven_Seg|REG3|DOUT\(2) & (!\logica_Seven_Seg|REG3|DOUT\(3) $ (!\logica_Seven_Seg|REG3|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X42_Y3_N54
\logica_Seven_Seg|H3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[2]~2_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(1) & ( (!\logica_Seven_Seg|REG3|DOUT\(2) & (!\logica_Seven_Seg|REG3|DOUT\(0) & !\logica_Seven_Seg|REG3|DOUT\(3))) # (\logica_Seven_Seg|REG3|DOUT\(2) & 
-- ((\logica_Seven_Seg|REG3|DOUT\(3)))) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(1) & ( (\logica_Seven_Seg|REG3|DOUT\(2) & (!\logica_Seven_Seg|REG3|DOUT\(0) & \logica_Seven_Seg|REG3|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010010001000010101011000100001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	datad => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X42_Y3_N39
\logica_Seven_Seg|H3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[3]~3_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(1) & ( (!\logica_Seven_Seg|REG3|DOUT\(2) & (\logica_Seven_Seg|REG3|DOUT\(3) & !\logica_Seven_Seg|REG3|DOUT\(0))) # (\logica_Seven_Seg|REG3|DOUT\(2) & 
-- ((\logica_Seven_Seg|REG3|DOUT\(0)))) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(1) & ( (!\logica_Seven_Seg|REG3|DOUT\(3) & (!\logica_Seven_Seg|REG3|DOUT\(2) $ (!\logica_Seven_Seg|REG3|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000001010000000011110101000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X42_Y3_N57
\logica_Seven_Seg|H3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[4]~4_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(1) & ( (\logica_Seven_Seg|REG3|DOUT\(0) & !\logica_Seven_Seg|REG3|DOUT\(3)) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(1) & ( (!\logica_Seven_Seg|REG3|DOUT\(2) & 
-- (\logica_Seven_Seg|REG3|DOUT\(0))) # (\logica_Seven_Seg|REG3|DOUT\(2) & ((!\logica_Seven_Seg|REG3|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001010010111110000101000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	datad => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X42_Y3_N12
\logica_Seven_Seg|H3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[5]~5_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(2) & ( (\logica_Seven_Seg|REG3|DOUT\(0) & (!\logica_Seven_Seg|REG3|DOUT\(3) $ (!\logica_Seven_Seg|REG3|DOUT\(1)))) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(2) & ( 
-- (!\logica_Seven_Seg|REG3|DOUT\(3) & ((\logica_Seven_Seg|REG3|DOUT\(1)) # (\logica_Seven_Seg|REG3|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010101010001000101010101000010001001000100001000100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	datad => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X42_Y3_N15
\logica_Seven_Seg|H3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[6]~6_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(1) & ( (!\logica_Seven_Seg|REG3|DOUT\(3) & (\logica_Seven_Seg|REG3|DOUT\(0) & \logica_Seven_Seg|REG3|DOUT\(2))) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(1) & ( 
-- (!\logica_Seven_Seg|REG3|DOUT\(3) & ((!\logica_Seven_Seg|REG3|DOUT\(2)))) # (\logica_Seven_Seg|REG3|DOUT\(3) & (!\logica_Seven_Seg|REG3|DOUT\(0) & \logica_Seven_Seg|REG3|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010000101010100101000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	datad => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X42_Y3_N27
\decoderPosicao|Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderPosicao|Equal7~1_combout\ = ( \processador|PC|DOUT[1]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(2) & (\processador|PC|DOUT\(0) & \processador|PC|DOUT[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(2),
	datac => \processador|PC|ALT_INV_DOUT\(0),
	datad => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \decoderPosicao|Equal7~1_combout\);

-- Location: FF_X43_Y3_N5
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
	ena => \decoderPosicao|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG4|DOUT\(3));

-- Location: FF_X43_Y3_N2
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
	ena => \decoderPosicao|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG4|DOUT\(2));

-- Location: FF_X42_Y3_N23
\logica_Seven_Seg|REG4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \decoderPosicao|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG4|DOUT\(0));

-- Location: FF_X42_Y3_N20
\logica_Seven_Seg|REG4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \decoderPosicao|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG4|DOUT\(1));

-- Location: LABCELL_X43_Y3_N21
\logica_Seven_Seg|H4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[0]~0_combout\ = ( \logica_Seven_Seg|REG4|DOUT\(1) & ( (\logica_Seven_Seg|REG4|DOUT\(3) & (!\logica_Seven_Seg|REG4|DOUT\(2) & \logica_Seven_Seg|REG4|DOUT\(0))) ) ) # ( !\logica_Seven_Seg|REG4|DOUT\(1) & ( 
-- (!\logica_Seven_Seg|REG4|DOUT\(3) & (!\logica_Seven_Seg|REG4|DOUT\(2) $ (!\logica_Seven_Seg|REG4|DOUT\(0)))) # (\logica_Seven_Seg|REG4|DOUT\(3) & (\logica_Seven_Seg|REG4|DOUT\(2) & \logica_Seven_Seg|REG4|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010011001001000101001100100000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	datab => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	dataf => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X43_Y3_N0
\logica_Seven_Seg|H4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[1]~1_combout\ = (!\logica_Seven_Seg|REG4|DOUT\(1) & (\logica_Seven_Seg|REG4|DOUT\(2) & (!\logica_Seven_Seg|REG4|DOUT\(0) $ (!\logica_Seven_Seg|REG4|DOUT\(3))))) # (\logica_Seven_Seg|REG4|DOUT\(1) & 
-- ((!\logica_Seven_Seg|REG4|DOUT\(0) & ((\logica_Seven_Seg|REG4|DOUT\(2)))) # (\logica_Seven_Seg|REG4|DOUT\(0) & (\logica_Seven_Seg|REG4|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	datad => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X43_Y3_N27
\logica_Seven_Seg|H4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[2]~2_combout\ = ( \logica_Seven_Seg|REG4|DOUT\(1) & ( (!\logica_Seven_Seg|REG4|DOUT\(3) & (!\logica_Seven_Seg|REG4|DOUT\(2) & !\logica_Seven_Seg|REG4|DOUT\(0))) # (\logica_Seven_Seg|REG4|DOUT\(3) & 
-- (\logica_Seven_Seg|REG4|DOUT\(2))) ) ) # ( !\logica_Seven_Seg|REG4|DOUT\(1) & ( (\logica_Seven_Seg|REG4|DOUT\(3) & (\logica_Seven_Seg|REG4|DOUT\(2) & !\logica_Seven_Seg|REG4|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000010100101000001011010010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	dataf => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X43_Y3_N57
\logica_Seven_Seg|H4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[3]~3_combout\ = ( \logica_Seven_Seg|REG4|DOUT\(1) & ( (!\logica_Seven_Seg|REG4|DOUT\(2) & (\logica_Seven_Seg|REG4|DOUT\(3) & !\logica_Seven_Seg|REG4|DOUT\(0))) # (\logica_Seven_Seg|REG4|DOUT\(2) & 
-- ((\logica_Seven_Seg|REG4|DOUT\(0)))) ) ) # ( !\logica_Seven_Seg|REG4|DOUT\(1) & ( (!\logica_Seven_Seg|REG4|DOUT\(3) & (!\logica_Seven_Seg|REG4|DOUT\(2) $ (!\logica_Seven_Seg|REG4|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000001010000000011110101000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	dataf => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X43_Y3_N3
\logica_Seven_Seg|H4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[4]~4_combout\ = ( \logica_Seven_Seg|REG4|DOUT\(1) & ( (\logica_Seven_Seg|REG4|DOUT\(0) & !\logica_Seven_Seg|REG4|DOUT\(3)) ) ) # ( !\logica_Seven_Seg|REG4|DOUT\(1) & ( (!\logica_Seven_Seg|REG4|DOUT\(2) & 
-- (\logica_Seven_Seg|REG4|DOUT\(0))) # (\logica_Seven_Seg|REG4|DOUT\(2) & ((!\logica_Seven_Seg|REG4|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101010000010111110101000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	dataf => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X42_Y3_N24
\logica_Seven_Seg|H4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[5]~5_combout\ = ( \logica_Seven_Seg|REG4|DOUT\(3) & ( (!\logica_Seven_Seg|REG4|DOUT\(1) & (\logica_Seven_Seg|REG4|DOUT\(0) & \logica_Seven_Seg|REG4|DOUT\(2))) ) ) # ( !\logica_Seven_Seg|REG4|DOUT\(3) & ( 
-- (!\logica_Seven_Seg|REG4|DOUT\(1) & (\logica_Seven_Seg|REG4|DOUT\(0) & !\logica_Seven_Seg|REG4|DOUT\(2))) # (\logica_Seven_Seg|REG4|DOUT\(1) & ((!\logica_Seven_Seg|REG4|DOUT\(2)) # (\logica_Seven_Seg|REG4|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000011001111110000001100000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	datad => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X43_Y3_N18
\logica_Seven_Seg|H4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[6]~6_combout\ = ( \logica_Seven_Seg|REG4|DOUT\(1) & ( (\logica_Seven_Seg|REG4|DOUT\(2) & (\logica_Seven_Seg|REG4|DOUT\(0) & !\logica_Seven_Seg|REG4|DOUT\(3))) ) ) # ( !\logica_Seven_Seg|REG4|DOUT\(1) & ( 
-- (!\logica_Seven_Seg|REG4|DOUT\(2) & ((!\logica_Seven_Seg|REG4|DOUT\(3)))) # (\logica_Seven_Seg|REG4|DOUT\(2) & (!\logica_Seven_Seg|REG4|DOUT\(0) & \logica_Seven_Seg|REG4|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110000110011000011000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	datad => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	dataf => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X43_Y9_N54
\decoderPosicao|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderPosicao|Equal7~0_combout\ = ( \processador|PC|DOUT\(2) & ( (\processador|PC|DOUT\(0) & (!\processador|PC|DOUT\(1) & \processador|PC|DOUT[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(2),
	combout => \decoderPosicao|Equal7~0_combout\);

-- Location: FF_X42_Y9_N2
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
	ena => \decoderPosicao|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG5|DOUT\(3));

-- Location: FF_X43_Y9_N17
\logica_Seven_Seg|REG5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \decoderPosicao|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG5|DOUT\(1));

-- Location: FF_X43_Y9_N8
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
	ena => \decoderPosicao|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG5|DOUT\(2));

-- Location: FF_X42_Y9_N26
\logica_Seven_Seg|REG5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \decoderPosicao|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG5|DOUT\(0));

-- Location: LABCELL_X43_Y9_N9
\logica_Seven_Seg|H5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H5|rascSaida7seg[0]~0_combout\ = (!\logica_Seven_Seg|REG5|DOUT\(3) & (!\logica_Seven_Seg|REG5|DOUT\(1) & (!\logica_Seven_Seg|REG5|DOUT\(2) $ (!\logica_Seven_Seg|REG5|DOUT\(0))))) # (\logica_Seven_Seg|REG5|DOUT\(3) & 
-- (\logica_Seven_Seg|REG5|DOUT\(0) & (!\logica_Seven_Seg|REG5|DOUT\(1) $ (!\logica_Seven_Seg|REG5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010010100000010001001010000001000100101000000100010010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(3),
	datab => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H5|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X43_Y9_N51
\logica_Seven_Seg|H5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H5|rascSaida7seg[1]~1_combout\ = ( \logica_Seven_Seg|REG5|DOUT\(2) & ( (!\logica_Seven_Seg|REG5|DOUT\(3) & (!\logica_Seven_Seg|REG5|DOUT\(1) $ (!\logica_Seven_Seg|REG5|DOUT\(0)))) # (\logica_Seven_Seg|REG5|DOUT\(3) & 
-- ((!\logica_Seven_Seg|REG5|DOUT\(0)) # (\logica_Seven_Seg|REG5|DOUT\(1)))) ) ) # ( !\logica_Seven_Seg|REG5|DOUT\(2) & ( (\logica_Seven_Seg|REG5|DOUT\(3) & (\logica_Seven_Seg|REG5|DOUT\(1) & \logica_Seven_Seg|REG5|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101011111101001010101111110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(0),
	dataf => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H5|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X43_Y9_N27
\logica_Seven_Seg|H5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H5|rascSaida7seg[2]~2_combout\ = (!\logica_Seven_Seg|REG5|DOUT\(3) & (\logica_Seven_Seg|REG5|DOUT\(1) & (!\logica_Seven_Seg|REG5|DOUT\(2) & !\logica_Seven_Seg|REG5|DOUT\(0)))) # (\logica_Seven_Seg|REG5|DOUT\(3) & 
-- (\logica_Seven_Seg|REG5|DOUT\(2) & ((!\logica_Seven_Seg|REG5|DOUT\(0)) # (\logica_Seven_Seg|REG5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010100000001001001010000000100100101000000010010010100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(3),
	datab => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H5|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X43_Y9_N21
\logica_Seven_Seg|H5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H5|rascSaida7seg[3]~3_combout\ = ( \logica_Seven_Seg|REG5|DOUT\(3) & ( (\logica_Seven_Seg|REG5|DOUT\(1) & (!\logica_Seven_Seg|REG5|DOUT\(0) $ (\logica_Seven_Seg|REG5|DOUT\(2)))) ) ) # ( !\logica_Seven_Seg|REG5|DOUT\(3) & ( 
-- (!\logica_Seven_Seg|REG5|DOUT\(0) & (!\logica_Seven_Seg|REG5|DOUT\(1) & \logica_Seven_Seg|REG5|DOUT\(2))) # (\logica_Seven_Seg|REG5|DOUT\(0) & (!\logica_Seven_Seg|REG5|DOUT\(1) $ (\logica_Seven_Seg|REG5|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100101001001010010010100100100100001001000010010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H5|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X43_Y9_N30
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

-- Location: LABCELL_X43_Y9_N15
\logica_Seven_Seg|H5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H5|rascSaida7seg[5]~5_combout\ = ( \logica_Seven_Seg|REG5|DOUT\(3) & ( (\logica_Seven_Seg|REG5|DOUT\(0) & (\logica_Seven_Seg|REG5|DOUT\(2) & !\logica_Seven_Seg|REG5|DOUT\(1))) ) ) # ( !\logica_Seven_Seg|REG5|DOUT\(3) & ( 
-- (!\logica_Seven_Seg|REG5|DOUT\(0) & (!\logica_Seven_Seg|REG5|DOUT\(2) & \logica_Seven_Seg|REG5|DOUT\(1))) # (\logica_Seven_Seg|REG5|DOUT\(0) & ((!\logica_Seven_Seg|REG5|DOUT\(2)) # (\logica_Seven_Seg|REG5|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110101010100001111010100000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H5|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X43_Y9_N24
\logica_Seven_Seg|H5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H5|rascSaida7seg[6]~6_combout\ = ( \logica_Seven_Seg|REG5|DOUT\(2) & ( (!\logica_Seven_Seg|REG5|DOUT\(3) & (\logica_Seven_Seg|REG5|DOUT\(1) & \logica_Seven_Seg|REG5|DOUT\(0))) # (\logica_Seven_Seg|REG5|DOUT\(3) & 
-- (!\logica_Seven_Seg|REG5|DOUT\(1) & !\logica_Seven_Seg|REG5|DOUT\(0))) ) ) # ( !\logica_Seven_Seg|REG5|DOUT\(2) & ( (!\logica_Seven_Seg|REG5|DOUT\(3) & !\logica_Seven_Seg|REG5|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100001000010010000100100001001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(3),
	datab => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(0),
	dataf => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(2),
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
END structure;


