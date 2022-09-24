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

-- DATE "09/24/2022 10:07:06"

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
	HEX_0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX_1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX_2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX_3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX_4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX_5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Aula8;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- REGA_OUT[0]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[1]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[4]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[5]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[6]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[7]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[0]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[1]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[2]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[4]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[5]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[6]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[7]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[8]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[9]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[10]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[11]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EQUAL_FLAG	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HabilitaRAM	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[0]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[1]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[2]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[3]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[4]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[5]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[6]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[7]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[8]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[0]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[2]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[4]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[6]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[7]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_0[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_0[1]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_0[2]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_0[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_0[4]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_0[5]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_0[6]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_1[0]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_1[1]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_1[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_1[3]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_1[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_1[5]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_1[6]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_2[0]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_2[1]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_2[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_2[3]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_2[4]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_2[5]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_2[6]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_3[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_3[1]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_3[2]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_3[3]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_3[4]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_3[5]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_3[6]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_4[0]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_4[1]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_4[2]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_4[3]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_4[4]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_4[5]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_4[6]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_5[0]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_5[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_5[2]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_5[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_5[4]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_5[5]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX_5[6]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_REGA_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Palavra : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_EQUAL_FLAG : std_logic;
SIGNAL ww_HabilitaRAM : std_logic;
SIGNAL ww_MEM_ADDRESS : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_ADD_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX_0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX_1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX_2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX_3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX_4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX_5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \gravar:detectorSub0|saida~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~2\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \processador|PC|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~6\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \processador|PC|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|decoderInstru1|saida~0_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~10\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \processador|PC|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_wirecell_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \processador|PC|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal10~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \RAM1|dado_out~16_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal10~1_combout\ : std_logic;
SIGNAL \RAM1|dado_out[0]~8_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \processador|REGA|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida~2_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \processador|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida[5]~1_combout\ : std_logic;
SIGNAL \RAM1|ram~543_combout\ : std_logic;
SIGNAL \RAM1|ram~15_q\ : std_logic;
SIGNAL \RAM1|ram~527_combout\ : std_logic;
SIGNAL \RAM1|ram~528_combout\ : std_logic;
SIGNAL \RAM1|dado_out[1]~9_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~2\ : std_logic;
SIGNAL \processador|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \processador|REGA|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \processador|REGA|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|ULA1|Add1~2\ : std_logic;
SIGNAL \processador|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \RAM1|ram~16_q\ : std_logic;
SIGNAL \RAM1|ram~529_combout\ : std_logic;
SIGNAL \RAM1|ram~530_combout\ : std_logic;
SIGNAL \RAM1|dado_out[2]~10_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~6\ : std_logic;
SIGNAL \processador|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \processador|REGA|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~6\ : std_logic;
SIGNAL \processador|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~531_combout\ : std_logic;
SIGNAL \RAM1|ram~532_combout\ : std_logic;
SIGNAL \RAM1|dado_out[3]~11_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal10~3_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal10~2_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~10\ : std_logic;
SIGNAL \processador|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~10\ : std_logic;
SIGNAL \processador|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \processador|REGA|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \processador|REGA|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~533_combout\ : std_logic;
SIGNAL \RAM1|ram~534_combout\ : std_logic;
SIGNAL \RAM1|dado_out[4]~12_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~14\ : std_logic;
SIGNAL \processador|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~14\ : std_logic;
SIGNAL \processador|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \processador|REGA|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \processador|REGA|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~535_combout\ : std_logic;
SIGNAL \RAM1|ram~536_combout\ : std_logic;
SIGNAL \RAM1|dado_out[5]~13_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~18\ : std_logic;
SIGNAL \processador|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \processador|REGA|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~18\ : std_logic;
SIGNAL \processador|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \processador|REGA|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~537_combout\ : std_logic;
SIGNAL \RAM1|ram~538_combout\ : std_logic;
SIGNAL \RAM1|dado_out[6]~14_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~22\ : std_logic;
SIGNAL \processador|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \processador|REGA|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~22\ : std_logic;
SIGNAL \processador|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~539_combout\ : std_logic;
SIGNAL \RAM1|ram~540_combout\ : std_logic;
SIGNAL \RAM1|dado_out[7]~15_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~26\ : std_logic;
SIGNAL \processador|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \processador|REGA|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|ULA1|Add0~26\ : std_logic;
SIGNAL \processador|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \processador|REGA|DOUT[7]~feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~541_combout\ : std_logic;
SIGNAL \RAM1|ram~542_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~14\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \processador|PC|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~18\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \processador|PC|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~22\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \processador|PC|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~26\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \processador|PC|DOUT[7]~feeder_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~30\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \processador|PC|DOUT[8]~feeder_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida[0]~3_combout\ : std_logic;
SIGNAL \decoderPosicao|Equal7~3_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|REG2|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|REG3|DOUT[1]~feeder_combout\ : std_logic;
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
SIGNAL \processador|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \processador|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processador|REGA|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|REGA|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|REGA|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|REGA|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|REGA|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
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
SIGNAL \gravar:detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
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
SIGNAL \logica_Seven_Seg|REG3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
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
SIGNAL \processador|REGA|ALT_INV_DOUT\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \processador|PC|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);

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
HEX_0 <= ww_HEX_0;
HEX_1 <= ww_HEX_1;
HEX_2 <= ww_HEX_2;
HEX_3 <= ww_HEX_3;
HEX_4 <= ww_HEX_4;
HEX_5 <= ww_HEX_5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\processador|REGA|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \processador|REGA|DOUT[7]~DUPLICATE_q\;
\processador|REGA|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \processador|REGA|DOUT[5]~DUPLICATE_q\;
\processador|REGA|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \processador|REGA|DOUT[4]~DUPLICATE_q\;
\processador|REGA|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \processador|REGA|DOUT[3]~DUPLICATE_q\;
\processador|REGA|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \processador|REGA|DOUT[1]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[8]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[6]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[3]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[2]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[1]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[0]~DUPLICATE_q\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
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
\gravar:detectorSub0|ALT_INV_saidaQ~q\ <= NOT \gravar:detectorSub0|saidaQ~q\;
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
\logica_Seven_Seg|REG3|ALT_INV_DOUT\(2) <= NOT \logica_Seven_Seg|REG3|DOUT\(2);
\logica_Seven_Seg|REG3|ALT_INV_DOUT\(1) <= NOT \logica_Seven_Seg|REG3|DOUT\(1);
\logica_Seven_Seg|REG3|ALT_INV_DOUT\(3) <= NOT \logica_Seven_Seg|REG3|DOUT\(3);
\logica_Seven_Seg|REG3|ALT_INV_DOUT\(0) <= NOT \logica_Seven_Seg|REG3|DOUT\(0);
\logica_Seven_Seg|REG2|ALT_INV_DOUT\(2) <= NOT \logica_Seven_Seg|REG2|DOUT\(2);
\logica_Seven_Seg|REG2|ALT_INV_DOUT\(1) <= NOT \logica_Seven_Seg|REG2|DOUT\(1);
\logica_Seven_Seg|REG2|ALT_INV_DOUT\(3) <= NOT \logica_Seven_Seg|REG2|DOUT\(3);
\logica_Seven_Seg|REG2|ALT_INV_DOUT\(0) <= NOT \logica_Seven_Seg|REG2|DOUT\(0);
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\processador|decoderInstru1|ALT_INV_Equal10~0_combout\ <= NOT \processador|decoderInstru1|Equal10~0_combout\;
\processador|ULA1|ALT_INV_Add1~29_sumout\ <= NOT \processador|ULA1|Add1~29_sumout\;
\processador|ULA1|ALT_INV_Add0~29_sumout\ <= NOT \processador|ULA1|Add0~29_sumout\;
\processador|ULA1|ALT_INV_Add1~25_sumout\ <= NOT \processador|ULA1|Add1~25_sumout\;
\processador|ULA1|ALT_INV_Add0~25_sumout\ <= NOT \processador|ULA1|Add0~25_sumout\;
\processador|ULA1|ALT_INV_Add1~21_sumout\ <= NOT \processador|ULA1|Add1~21_sumout\;
\processador|ULA1|ALT_INV_Add0~21_sumout\ <= NOT \processador|ULA1|Add0~21_sumout\;
\processador|ULA1|ALT_INV_Add1~17_sumout\ <= NOT \processador|ULA1|Add1~17_sumout\;
\processador|ULA1|ALT_INV_Add0~17_sumout\ <= NOT \processador|ULA1|Add0~17_sumout\;
\processador|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \processador|ULA1|Add1~13_sumout\;
\processador|ULA1|ALT_INV_Add0~13_sumout\ <= NOT \processador|ULA1|Add0~13_sumout\;
\processador|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \processador|ULA1|Add1~9_sumout\;
\processador|ULA1|ALT_INV_Add0~9_sumout\ <= NOT \processador|ULA1|Add0~9_sumout\;
\processador|ULA1|ALT_INV_Add1~5_sumout\ <= NOT \processador|ULA1|Add1~5_sumout\;
\processador|ULA1|ALT_INV_Add0~5_sumout\ <= NOT \processador|ULA1|Add0~5_sumout\;
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
\processador|REGA|ALT_INV_DOUT\(6) <= NOT \processador|REGA|DOUT\(6);
\processador|REGA|ALT_INV_DOUT\(5) <= NOT \processador|REGA|DOUT\(5);
\processador|REGA|ALT_INV_DOUT\(4) <= NOT \processador|REGA|DOUT\(4);
\processador|REGA|ALT_INV_DOUT\(3) <= NOT \processador|REGA|DOUT\(3);
\processador|REGA|ALT_INV_DOUT\(2) <= NOT \processador|REGA|DOUT\(2);
\processador|REGA|ALT_INV_DOUT\(1) <= NOT \processador|REGA|DOUT\(1);
\processador|REGA|ALT_INV_DOUT\(0) <= NOT \processador|REGA|DOUT\(0);
\processador|PC|ALT_INV_DOUT\(7) <= NOT \processador|PC|DOUT\(7);
\processador|PC|ALT_INV_DOUT\(5) <= NOT \processador|PC|DOUT\(5);
\processador|PC|ALT_INV_DOUT\(4) <= NOT \processador|PC|DOUT\(4);
\processador|PC|ALT_INV_DOUT\(3) <= NOT \processador|PC|DOUT\(3);
\processador|PC|ALT_INV_DOUT\(2) <= NOT \processador|PC|DOUT\(2);
\processador|PC|ALT_INV_DOUT\(1) <= NOT \processador|PC|DOUT\(1);
\processador|PC|ALT_INV_DOUT\(0) <= NOT \processador|PC|DOUT\(0);

-- Location: IOOBUF_X33_Y0_N59
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

-- Location: IOOBUF_X33_Y0_N76
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

-- Location: IOOBUF_X38_Y0_N2
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

-- Location: IOOBUF_X40_Y0_N42
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

-- Location: IOOBUF_X36_Y0_N19
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

-- Location: IOOBUF_X36_Y0_N2
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

-- Location: IOOBUF_X43_Y0_N53
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

-- Location: IOOBUF_X43_Y0_N36
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

-- Location: IOOBUF_X11_Y0_N19
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

-- Location: IOOBUF_X16_Y0_N59
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

-- Location: IOOBUF_X11_Y0_N2
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

-- Location: IOOBUF_X12_Y0_N53
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

-- Location: IOOBUF_X23_Y0_N76
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

-- Location: IOOBUF_X33_Y0_N93
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

-- Location: IOOBUF_X34_Y0_N19
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

-- Location: IOOBUF_X23_Y0_N42
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

-- Location: IOOBUF_X40_Y0_N76
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

-- Location: IOOBUF_X14_Y0_N36
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

-- Location: IOOBUF_X16_Y0_N93
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

-- Location: IOOBUF_X12_Y0_N19
\REGA_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_REGA_OUT(3));

-- Location: IOOBUF_X43_Y0_N19
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

-- Location: IOOBUF_X18_Y0_N53
\REGA_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_REGA_OUT(5));

-- Location: IOOBUF_X19_Y0_N53
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

-- Location: IOOBUF_X16_Y0_N76
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

-- Location: IOOBUF_X36_Y0_N53
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

-- Location: IOOBUF_X43_Y0_N2
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

-- Location: IOOBUF_X54_Y17_N56
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

-- Location: IOOBUF_X38_Y0_N53
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

-- Location: IOOBUF_X24_Y0_N53
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

-- Location: IOOBUF_X22_Y0_N36
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

-- Location: IOOBUF_X24_Y0_N2
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

-- Location: IOOBUF_X36_Y45_N53
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

-- Location: IOOBUF_X50_Y0_N53
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

-- Location: IOOBUF_X20_Y45_N36
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

-- Location: IOOBUF_X22_Y0_N19
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

-- Location: IOOBUF_X54_Y17_N5
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

-- Location: IOOBUF_X52_Y0_N19
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

-- Location: IOOBUF_X34_Y0_N53
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

-- Location: IOOBUF_X12_Y0_N36
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

-- Location: IOOBUF_X12_Y0_N2
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

-- Location: IOOBUF_X16_Y0_N42
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

-- Location: IOOBUF_X40_Y45_N59
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

-- Location: IOOBUF_X44_Y0_N36
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

-- Location: IOOBUF_X34_Y0_N36
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

-- Location: IOOBUF_X51_Y0_N2
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

-- Location: IOOBUF_X22_Y45_N36
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

-- Location: IOOBUF_X34_Y0_N2
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

-- Location: IOOBUF_X12_Y45_N19
\HEX_0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX_0(0));

-- Location: IOOBUF_X48_Y0_N59
\HEX_0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX_0(1));

-- Location: IOOBUF_X54_Y15_N56
\HEX_0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX_0(2));

-- Location: IOOBUF_X12_Y45_N36
\HEX_0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX_0(3));

-- Location: IOOBUF_X43_Y45_N19
\HEX_0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX_0(4));

-- Location: IOOBUF_X50_Y0_N2
\HEX_0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX_0(5));

-- Location: IOOBUF_X52_Y0_N36
\HEX_0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX_0(6));

-- Location: IOOBUF_X10_Y45_N36
\HEX_1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX_1(0));

-- Location: IOOBUF_X40_Y45_N76
\HEX_1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX_1(1));

-- Location: IOOBUF_X52_Y45_N36
\HEX_1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX_1(2));

-- Location: IOOBUF_X16_Y45_N76
\HEX_1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX_1(3));

-- Location: IOOBUF_X10_Y45_N53
\HEX_1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX_1(4));

-- Location: IOOBUF_X54_Y20_N39
\HEX_1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX_1(5));

-- Location: IOOBUF_X10_Y45_N2
\HEX_1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX_1(6));

-- Location: IOOBUF_X19_Y0_N2
\HEX_2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H2|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX_2(0));

-- Location: IOOBUF_X19_Y0_N19
\HEX_2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H2|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX_2(1));

-- Location: IOOBUF_X29_Y0_N2
\HEX_2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H2|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX_2(2));

-- Location: IOOBUF_X33_Y0_N42
\HEX_2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H2|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX_2(3));

-- Location: IOOBUF_X10_Y0_N59
\HEX_2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H2|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX_2(4));

-- Location: IOOBUF_X19_Y0_N36
\HEX_2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H2|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX_2(5));

-- Location: IOOBUF_X24_Y0_N36
\HEX_2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H2|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX_2(6));

-- Location: IOOBUF_X18_Y0_N2
\HEX_3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H3|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX_3(0));

-- Location: IOOBUF_X18_Y0_N19
\HEX_3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H3|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX_3(1));

-- Location: IOOBUF_X29_Y0_N19
\HEX_3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H3|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX_3(2));

-- Location: IOOBUF_X36_Y0_N36
\HEX_3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H3|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX_3(3));

-- Location: IOOBUF_X11_Y0_N53
\HEX_3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H3|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX_3(4));

-- Location: IOOBUF_X10_Y0_N76
\HEX_3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H3|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX_3(5));

-- Location: IOOBUF_X10_Y0_N42
\HEX_3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H3|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX_3(6));

-- Location: IOOBUF_X29_Y0_N53
\HEX_4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H4|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX_4(0));

-- Location: IOOBUF_X38_Y0_N19
\HEX_4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H4|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX_4(1));

-- Location: IOOBUF_X29_Y0_N36
\HEX_4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H4|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX_4(2));

-- Location: IOOBUF_X54_Y14_N62
\HEX_4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H4|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX_4(3));

-- Location: IOOBUF_X24_Y0_N19
\HEX_4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H4|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX_4(4));

-- Location: IOOBUF_X23_Y0_N59
\HEX_4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H4|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX_4(5));

-- Location: IOOBUF_X38_Y0_N36
\HEX_4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H4|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX_4(6));

-- Location: IOOBUF_X25_Y0_N53
\HEX_5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H5|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX_5(0));

-- Location: IOOBUF_X18_Y0_N36
\HEX_5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H5|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX_5(1));

-- Location: IOOBUF_X25_Y0_N36
\HEX_5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H5|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX_5(2));

-- Location: IOOBUF_X25_Y0_N19
\HEX_5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H5|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX_5(3));

-- Location: IOOBUF_X25_Y0_N2
\HEX_5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H5|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX_5(4));

-- Location: IOOBUF_X23_Y0_N93
\HEX_5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H5|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX_5(5));

-- Location: IOOBUF_X22_Y0_N53
\HEX_5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_Seven_Seg|H5|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX_5(6));

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

-- Location: LABCELL_X10_Y2_N9
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

-- Location: FF_X10_Y2_N10
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

-- Location: LABCELL_X14_Y4_N45
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

-- Location: LABCELL_X14_Y5_N24
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

-- Location: LABCELL_X14_Y6_N30
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

-- Location: LABCELL_X14_Y6_N33
\processador|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~5_sumout\ = SUM(( \processador|PC|DOUT\(1) ) + ( GND ) + ( \processador|incrementaPC|Add0~2\ ))
-- \processador|incrementaPC|Add0~6\ = CARRY(( \processador|PC|DOUT\(1) ) + ( GND ) + ( \processador|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT\(1),
	cin => \processador|incrementaPC|Add0~2\,
	sumout => \processador|incrementaPC|Add0~5_sumout\,
	cout => \processador|incrementaPC|Add0~6\);

-- Location: LABCELL_X14_Y7_N51
\processador|PC|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|PC|DOUT[1]~feeder_combout\ = ( \processador|incrementaPC|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \processador|PC|DOUT[1]~feeder_combout\);

-- Location: FF_X14_Y7_N53
\processador|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|PC|DOUT[1]~feeder_combout\,
	asdata => \ROM1|memROM~2_combout\,
	sload => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y7_N45
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \processador|PC|DOUT\(0) & ( (!\processador|PC|DOUT[1]~DUPLICATE_q\ & (!\processador|PC|DOUT[2]~DUPLICATE_q\ & \processador|PC|DOUT\(3))) # (\processador|PC|DOUT[1]~DUPLICATE_q\ & (\processador|PC|DOUT[2]~DUPLICATE_q\ & 
-- !\processador|PC|DOUT\(3))) ) ) # ( !\processador|PC|DOUT\(0) & ( (\processador|PC|DOUT[1]~DUPLICATE_q\ & (\processador|PC|DOUT[2]~DUPLICATE_q\ & \processador|PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101101000000000010110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(3),
	dataf => \processador|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~2_combout\);

-- Location: FF_X14_Y7_N52
\processador|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|PC|DOUT[1]~feeder_combout\,
	asdata => \ROM1|memROM~2_combout\,
	sload => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(1));

-- Location: LABCELL_X14_Y6_N36
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

-- Location: LABCELL_X14_Y7_N12
\processador|PC|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|PC|DOUT[2]~feeder_combout\ = ( \processador|incrementaPC|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \processador|PC|DOUT[2]~feeder_combout\);

-- Location: FF_X14_Y7_N14
\processador|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|PC|DOUT[2]~feeder_combout\,
	asdata => \processador|decoderInstru1|Equal10~0_combout\,
	sload => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y6_N21
\processador|decoderInstru1|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida~0_combout\ = ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( (\processador|PC|DOUT[2]~DUPLICATE_q\ & (\processador|PC|DOUT\(1) & \processador|PC|DOUT[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \processador|decoderInstru1|saida~0_combout\);

-- Location: FF_X14_Y7_N1
\processador|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|PC|DOUT[3]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y6_N39
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

-- Location: LABCELL_X14_Y7_N0
\processador|PC|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|PC|DOUT[3]~feeder_combout\ = ( \processador|incrementaPC|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|incrementaPC|ALT_INV_Add0~13_sumout\,
	combout => \processador|PC|DOUT[3]~feeder_combout\);

-- Location: FF_X14_Y7_N2
\processador|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|PC|DOUT[3]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(3));

-- Location: LABCELL_X14_Y7_N33
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( \processador|PC|DOUT\(0) & ( ((!\processador|PC|DOUT\(3) & !\processador|PC|DOUT[2]~DUPLICATE_q\)) # (\processador|PC|DOUT\(1)) ) ) # ( !\processador|PC|DOUT\(0) & ( ((\processador|PC|DOUT\(1)) # 
-- (\processador|PC|DOUT[2]~DUPLICATE_q\)) # (\processador|PC|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111010111111111111110100000111111111010000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(3),
	datac => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(1),
	dataf => \processador|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~1_combout\);

-- Location: MLABCELL_X13_Y7_N36
\ROM1|memROM~1_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_wirecell_combout\ = ( !\ROM1|memROM~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~1_wirecell_combout\);

-- Location: FF_X14_Y7_N40
\processador|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|PC|DOUT[0]~feeder_combout\,
	asdata => \ROM1|memROM~1_wirecell_combout\,
	sload => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y7_N39
\processador|PC|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|PC|DOUT[0]~feeder_combout\ = ( \processador|incrementaPC|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \processador|PC|DOUT[0]~feeder_combout\);

-- Location: FF_X14_Y7_N41
\processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|PC|DOUT[0]~feeder_combout\,
	asdata => \ROM1|memROM~1_wirecell_combout\,
	sload => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(0));

-- Location: LABCELL_X14_Y7_N42
\processador|decoderInstru1|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal10~0_combout\ = ( \processador|PC|DOUT[2]~DUPLICATE_q\ & ( (\processador|PC|DOUT\(0) & (!\processador|PC|DOUT[1]~DUPLICATE_q\ & \processador|PC|DOUT\(3))) ) ) # ( !\processador|PC|DOUT[2]~DUPLICATE_q\ & ( 
-- (\processador|PC|DOUT\(0) & (\processador|PC|DOUT[1]~DUPLICATE_q\ & \processador|PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(0),
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(3),
	dataf => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \processador|decoderInstru1|Equal10~0_combout\);

-- Location: LABCELL_X14_Y7_N21
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \processador|PC|DOUT\(0) & ( (!\processador|PC|DOUT[1]~DUPLICATE_q\ & ((\processador|PC|DOUT\(3)) # (\processador|PC|DOUT[2]~DUPLICATE_q\))) # (\processador|PC|DOUT[1]~DUPLICATE_q\ & ((!\processador|PC|DOUT[2]~DUPLICATE_q\) # 
-- (!\processador|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111111110100101111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(3),
	dataf => \processador|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~0_combout\);

-- Location: FF_X14_Y7_N13
\processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|PC|DOUT[2]~feeder_combout\,
	asdata => \processador|decoderInstru1|Equal10~0_combout\,
	sload => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(2));

-- Location: LABCELL_X14_Y7_N15
\RAM1|dado_out~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out~16_combout\ = ( !\processador|PC|DOUT\(0) & ( (!\processador|PC|DOUT[1]~DUPLICATE_q\ & ((\processador|PC|DOUT[3]~DUPLICATE_q\) # (\processador|PC|DOUT\(2)))) # (\processador|PC|DOUT[1]~DUPLICATE_q\ & ((!\processador|PC|DOUT\(2)) # 
-- (!\processador|PC|DOUT[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111010010111111111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(0),
	combout => \RAM1|dado_out~16_combout\);

-- Location: LABCELL_X14_Y7_N36
\processador|decoderInstru1|Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal10~1_combout\ = ( !\processador|PC|DOUT[2]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[1]~DUPLICATE_q\ & (!\processador|PC|DOUT[3]~DUPLICATE_q\ & !\processador|PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \processador|decoderInstru1|Equal10~1_combout\);

-- Location: LABCELL_X14_Y8_N57
\RAM1|dado_out[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[0]~8_combout\ = ( \RAM1|ram~527_combout\ & ( (!\RAM1|dado_out~16_combout\) # ((!\processador|decoderInstru1|Equal10~0_combout\ & !\ROM1|memROM~0_combout\)) ) ) # ( !\RAM1|ram~527_combout\ & ( !\RAM1|dado_out~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111010111100001111101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~0_combout\,
	datac => \RAM1|ALT_INV_dado_out~16_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \RAM1|ALT_INV_ram~527_combout\,
	combout => \RAM1|dado_out[0]~8_combout\);

-- Location: LABCELL_X14_Y8_N30
\processador|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~1_sumout\ = SUM(( (!\RAM1|dado_out~16_combout\ & ((!\processador|decoderInstru1|Equal10~1_combout\ & ((\RAM1|dado_out[0]~8_combout\))) # (\processador|decoderInstru1|Equal10~1_combout\ & (!\ROM1|memROM~1_combout\)))) # 
-- (\RAM1|dado_out~16_combout\ & (((\RAM1|dado_out[0]~8_combout\)))) ) + ( \processador|REGA|DOUT\(0) ) + ( !VCC ))
-- \processador|ULA1|Add0~2\ = CARRY(( (!\RAM1|dado_out~16_combout\ & ((!\processador|decoderInstru1|Equal10~1_combout\ & ((\RAM1|dado_out[0]~8_combout\))) # (\processador|decoderInstru1|Equal10~1_combout\ & (!\ROM1|memROM~1_combout\)))) # 
-- (\RAM1|dado_out~16_combout\ & (((\RAM1|dado_out[0]~8_combout\)))) ) + ( \processador|REGA|DOUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010000011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~16_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \RAM1|ALT_INV_dado_out[0]~8_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \processador|ULA1|Add0~1_sumout\,
	cout => \processador|ULA1|Add0~2\);

-- Location: LABCELL_X14_Y8_N9
\processador|REGA|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|REGA|DOUT[0]~feeder_combout\ = \processador|ULA1|Add0~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ULA1|ALT_INV_Add0~1_sumout\,
	combout => \processador|REGA|DOUT[0]~feeder_combout\);

-- Location: MLABCELL_X13_Y7_N45
\processador|decoderInstru1|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida~2_combout\ = ( !\processador|PC|DOUT\(2) & ( (!\processador|PC|DOUT[1]~DUPLICATE_q\ & (!\processador|PC|DOUT[3]~DUPLICATE_q\ & !\processador|PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(2),
	combout => \processador|decoderInstru1|saida~2_combout\);

-- Location: MLABCELL_X13_Y8_N12
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

-- Location: MLABCELL_X13_Y8_N15
\processador|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~1_sumout\ = SUM(( (!\RAM1|dado_out~16_combout\ & ((!\processador|decoderInstru1|Equal10~1_combout\ & ((!\RAM1|dado_out[0]~8_combout\))) # (\processador|decoderInstru1|Equal10~1_combout\ & (\ROM1|memROM~1_combout\)))) # 
-- (\RAM1|dado_out~16_combout\ & (((!\RAM1|dado_out[0]~8_combout\)))) ) + ( \processador|REGA|DOUT\(0) ) + ( \processador|ULA1|Add1~34_cout\ ))
-- \processador|ULA1|Add1~2\ = CARRY(( (!\RAM1|dado_out~16_combout\ & ((!\processador|decoderInstru1|Equal10~1_combout\ & ((!\RAM1|dado_out[0]~8_combout\))) # (\processador|decoderInstru1|Equal10~1_combout\ & (\ROM1|memROM~1_combout\)))) # 
-- (\RAM1|dado_out~16_combout\ & (((!\RAM1|dado_out[0]~8_combout\)))) ) + ( \processador|REGA|DOUT\(0) ) + ( \processador|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111011100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~16_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datad => \RAM1|ALT_INV_dado_out[0]~8_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(0),
	cin => \processador|ULA1|Add1~34_cout\,
	sumout => \processador|ULA1|Add1~1_sumout\,
	cout => \processador|ULA1|Add1~2\);

-- Location: MLABCELL_X13_Y8_N42
\processador|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[0]~0_combout\ = ( \processador|ULA1|Add1~1_sumout\ & ( (!\processador|decoderInstru1|saida~2_combout\) # (!\ROM1|memROM~1_combout\) ) ) # ( !\processador|ULA1|Add1~1_sumout\ & ( (\processador|decoderInstru1|saida~2_combout\ & 
-- !\ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000011111111101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~2_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \processador|ULA1|saida[0]~0_combout\);

-- Location: MLABCELL_X13_Y7_N57
\processador|decoderInstru1|saida[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida[5]~1_combout\ = ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( \processador|PC|DOUT[3]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[1]~DUPLICATE_q\) # (!\processador|PC|DOUT\(2)) ) ) ) # ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & 
-- ( !\processador|PC|DOUT[3]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111010111110100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datae => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \processador|decoderInstru1|saida[5]~1_combout\);

-- Location: FF_X14_Y8_N11
\processador|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|REGA|DOUT[0]~feeder_combout\,
	asdata => \processador|ULA1|saida[0]~0_combout\,
	sload => \RAM1|ALT_INV_dado_out~16_combout\,
	ena => \processador|decoderInstru1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(0));

-- Location: MLABCELL_X13_Y7_N18
\RAM1|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~543_combout\ = ( !\processador|PC|DOUT[3]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[1]~DUPLICATE_q\ & (!\processador|PC|DOUT\(2) & \processador|PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \RAM1|ram~543_combout\);

-- Location: FF_X14_Y8_N26
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
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~15_q\);

-- Location: LABCELL_X14_Y8_N12
\RAM1|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~527_combout\ = ( !\ROM1|memROM~2_combout\ & ( (\RAM1|ram~15_q\ & \ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~15_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~527_combout\);

-- Location: LABCELL_X14_Y7_N30
\RAM1|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~528_combout\ = ( \RAM1|ram~527_combout\ & ( (!\processador|decoderInstru1|Equal10~0_combout\ & !\ROM1|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|decoderInstru1|ALT_INV_Equal10~0_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \RAM1|ALT_INV_ram~527_combout\,
	combout => \RAM1|ram~528_combout\);

-- Location: LABCELL_X14_Y7_N9
\RAM1|dado_out[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[1]~9_combout\ = ( \RAM1|ram~530_combout\ ) # ( !\RAM1|ram~530_combout\ & ( !\RAM1|dado_out~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_dado_out~16_combout\,
	dataf => \RAM1|ALT_INV_ram~530_combout\,
	combout => \RAM1|dado_out[1]~9_combout\);

-- Location: LABCELL_X14_Y8_N33
\processador|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~5_sumout\ = SUM(( (!\RAM1|dado_out~16_combout\ & ((!\processador|decoderInstru1|Equal10~1_combout\ & ((\RAM1|dado_out[1]~9_combout\))) # (\processador|decoderInstru1|Equal10~1_combout\ & (\ROM1|memROM~2_combout\)))) # 
-- (\RAM1|dado_out~16_combout\ & (((\RAM1|dado_out[1]~9_combout\)))) ) + ( \processador|REGA|DOUT\(1) ) + ( \processador|ULA1|Add0~2\ ))
-- \processador|ULA1|Add0~6\ = CARRY(( (!\RAM1|dado_out~16_combout\ & ((!\processador|decoderInstru1|Equal10~1_combout\ & ((\RAM1|dado_out[1]~9_combout\))) # (\processador|decoderInstru1|Equal10~1_combout\ & (\ROM1|memROM~2_combout\)))) # 
-- (\RAM1|dado_out~16_combout\ & (((\RAM1|dado_out[1]~9_combout\)))) ) + ( \processador|REGA|DOUT\(1) ) + ( \processador|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~16_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \RAM1|ALT_INV_dado_out[1]~9_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(1),
	cin => \processador|ULA1|Add0~2\,
	sumout => \processador|ULA1|Add0~5_sumout\,
	cout => \processador|ULA1|Add0~6\);

-- Location: LABCELL_X14_Y8_N54
\processador|REGA|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|REGA|DOUT[1]~feeder_combout\ = \processador|ULA1|Add0~5_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ULA1|ALT_INV_Add0~5_sumout\,
	combout => \processador|REGA|DOUT[1]~feeder_combout\);

-- Location: FF_X14_Y8_N55
\processador|REGA|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|REGA|DOUT[1]~feeder_combout\,
	asdata => \processador|ULA1|saida[1]~1_combout\,
	sload => \RAM1|ALT_INV_dado_out~16_combout\,
	ena => \processador|decoderInstru1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT[1]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y8_N18
\processador|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~5_sumout\ = SUM(( (!\RAM1|dado_out~16_combout\ & ((!\processador|decoderInstru1|Equal10~1_combout\ & ((!\RAM1|dado_out[1]~9_combout\))) # (\processador|decoderInstru1|Equal10~1_combout\ & (!\ROM1|memROM~2_combout\)))) # 
-- (\RAM1|dado_out~16_combout\ & (((!\RAM1|dado_out[1]~9_combout\)))) ) + ( \processador|REGA|DOUT[1]~DUPLICATE_q\ ) + ( \processador|ULA1|Add1~2\ ))
-- \processador|ULA1|Add1~6\ = CARRY(( (!\RAM1|dado_out~16_combout\ & ((!\processador|decoderInstru1|Equal10~1_combout\ & ((!\RAM1|dado_out[1]~9_combout\))) # (\processador|decoderInstru1|Equal10~1_combout\ & (!\ROM1|memROM~2_combout\)))) # 
-- (\RAM1|dado_out~16_combout\ & (((!\RAM1|dado_out[1]~9_combout\)))) ) + ( \processador|REGA|DOUT[1]~DUPLICATE_q\ ) + ( \processador|ULA1|Add1~2\ ))

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
	dataf => \processador|REGA|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \processador|ULA1|Add1~2\,
	sumout => \processador|ULA1|Add1~5_sumout\,
	cout => \processador|ULA1|Add1~6\);

-- Location: LABCELL_X14_Y8_N24
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

-- Location: FF_X14_Y8_N56
\processador|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|REGA|DOUT[1]~feeder_combout\,
	asdata => \processador|ULA1|saida[1]~1_combout\,
	sload => \RAM1|ALT_INV_dado_out~16_combout\,
	ena => \processador|decoderInstru1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(1));

-- Location: FF_X14_Y7_N32
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
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~16_q\);

-- Location: LABCELL_X14_Y7_N3
\RAM1|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~529_combout\ = ( \RAM1|ram~16_q\ & ( (!\processador|PC|DOUT[0]~DUPLICATE_q\) # ((!\processador|PC|DOUT\(3) & (!\processador|PC|DOUT\(1) & !\processador|PC|DOUT[2]~DUPLICATE_q\)) # (\processador|PC|DOUT\(3) & (\processador|PC|DOUT\(1) & 
-- \processador|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111100000011111111110000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(3),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \RAM1|ALT_INV_ram~16_q\,
	combout => \RAM1|ram~529_combout\);

-- Location: LABCELL_X14_Y7_N24
\RAM1|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~530_combout\ = ( \RAM1|ram~529_combout\ & ( (\ROM1|memROM~1_combout\ & !\ROM1|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \RAM1|ALT_INV_ram~529_combout\,
	combout => \RAM1|ram~530_combout\);

-- Location: MLABCELL_X13_Y8_N57
\RAM1|dado_out[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[2]~10_combout\ = ( \RAM1|ram~531_combout\ & ( (!\RAM1|dado_out~16_combout\) # ((!\processador|decoderInstru1|Equal10~0_combout\ & !\ROM1|memROM~0_combout\)) ) ) # ( !\RAM1|ram~531_combout\ & ( !\RAM1|dado_out~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111100110011001111110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_dado_out~16_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal10~0_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \RAM1|ALT_INV_ram~531_combout\,
	combout => \RAM1|dado_out[2]~10_combout\);

-- Location: LABCELL_X14_Y8_N36
\processador|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~9_sumout\ = SUM(( (!\processador|decoderInstru1|Equal10~1_combout\ & (((\RAM1|dado_out[2]~10_combout\)))) # (\processador|decoderInstru1|Equal10~1_combout\ & ((!\RAM1|dado_out~16_combout\ & 
-- (\processador|decoderInstru1|Equal10~0_combout\)) # (\RAM1|dado_out~16_combout\ & ((\RAM1|dado_out[2]~10_combout\))))) ) + ( \processador|REGA|DOUT\(2) ) + ( \processador|ULA1|Add0~6\ ))
-- \processador|ULA1|Add0~10\ = CARRY(( (!\processador|decoderInstru1|Equal10~1_combout\ & (((\RAM1|dado_out[2]~10_combout\)))) # (\processador|decoderInstru1|Equal10~1_combout\ & ((!\RAM1|dado_out~16_combout\ & 
-- (\processador|decoderInstru1|Equal10~0_combout\)) # (\RAM1|dado_out~16_combout\ & ((\RAM1|dado_out[2]~10_combout\))))) ) + ( \processador|REGA|DOUT\(2) ) + ( \processador|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datab => \RAM1|ALT_INV_dado_out~16_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal10~0_combout\,
	datad => \RAM1|ALT_INV_dado_out[2]~10_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(2),
	cin => \processador|ULA1|Add0~6\,
	sumout => \processador|ULA1|Add0~9_sumout\,
	cout => \processador|ULA1|Add0~10\);

-- Location: LABCELL_X14_Y8_N3
\processador|REGA|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|REGA|DOUT[2]~feeder_combout\ = \processador|ULA1|Add0~9_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA1|ALT_INV_Add0~9_sumout\,
	combout => \processador|REGA|DOUT[2]~feeder_combout\);

-- Location: MLABCELL_X13_Y8_N21
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

-- Location: LABCELL_X14_Y8_N21
\processador|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[2]~2_combout\ = (!\processador|decoderInstru1|saida~2_combout\ & ((\processador|ULA1|Add1~9_sumout\))) # (\processador|decoderInstru1|saida~2_combout\ & (\processador|decoderInstru1|Equal10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~2_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal10~0_combout\,
	datad => \processador|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \processador|ULA1|saida[2]~2_combout\);

-- Location: FF_X14_Y8_N4
\processador|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|REGA|DOUT[2]~feeder_combout\,
	asdata => \processador|ULA1|saida[2]~2_combout\,
	sload => \RAM1|ALT_INV_dado_out~16_combout\,
	ena => \processador|decoderInstru1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(2));

-- Location: FF_X13_Y4_N13
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
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

-- Location: LABCELL_X14_Y7_N18
\RAM1|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~531_combout\ = (\RAM1|ram~17_q\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~17_q\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~531_combout\);

-- Location: LABCELL_X17_Y4_N12
\RAM1|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~532_combout\ = ( \RAM1|ram~531_combout\ & ( !\ROM1|memROM~0_combout\ & ( !\processador|decoderInstru1|Equal10~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|decoderInstru1|ALT_INV_Equal10~0_combout\,
	datae => \RAM1|ALT_INV_ram~531_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~532_combout\);

-- Location: MLABCELL_X13_Y7_N6
\RAM1|dado_out[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[3]~11_combout\ = ( \RAM1|dado_out~16_combout\ & ( \RAM1|ram~534_combout\ ) ) # ( !\RAM1|dado_out~16_combout\ & ( \RAM1|ram~534_combout\ ) ) # ( !\RAM1|dado_out~16_combout\ & ( !\RAM1|ram~534_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM1|ALT_INV_dado_out~16_combout\,
	dataf => \RAM1|ALT_INV_ram~534_combout\,
	combout => \RAM1|dado_out[3]~11_combout\);

-- Location: LABCELL_X14_Y7_N48
\processador|decoderInstru1|Equal10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal10~3_combout\ = ( \processador|PC|DOUT[3]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[0]~DUPLICATE_q\ & ((!\processador|PC|DOUT[2]~DUPLICATE_q\) # (!\processador|PC|DOUT[1]~DUPLICATE_q\))) ) ) # ( 
-- !\processador|PC|DOUT[3]~DUPLICATE_q\ & ( (\processador|PC|DOUT[2]~DUPLICATE_q\ & !\processador|PC|DOUT[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000011111100000000001111110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \processador|decoderInstru1|Equal10~3_combout\);

-- Location: LABCELL_X14_Y7_N27
\processador|decoderInstru1|Equal10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal10~2_combout\ = ( !\processador|PC|DOUT[3]~DUPLICATE_q\ & ( (\processador|PC|DOUT[1]~DUPLICATE_q\ & (!\processador|PC|DOUT[0]~DUPLICATE_q\ & !\processador|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \processador|decoderInstru1|Equal10~2_combout\);

-- Location: MLABCELL_X13_Y8_N24
\processador|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~13_sumout\ = SUM(( (!\RAM1|dado_out[3]~11_combout\) # ((!\processador|decoderInstru1|Equal10~3_combout\ & (\processador|decoderInstru1|Equal10~1_combout\ & !\processador|decoderInstru1|Equal10~2_combout\))) ) + ( 
-- \processador|REGA|DOUT[3]~DUPLICATE_q\ ) + ( \processador|ULA1|Add1~10\ ))
-- \processador|ULA1|Add1~14\ = CARRY(( (!\RAM1|dado_out[3]~11_combout\) # ((!\processador|decoderInstru1|Equal10~3_combout\ & (\processador|decoderInstru1|Equal10~1_combout\ & !\processador|decoderInstru1|Equal10~2_combout\))) ) + ( 
-- \processador|REGA|DOUT[3]~DUPLICATE_q\ ) + ( \processador|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~3_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datad => \RAM1|ALT_INV_dado_out[3]~11_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \processador|ULA1|Add1~10\,
	sumout => \processador|ULA1|Add1~13_sumout\,
	cout => \processador|ULA1|Add1~14\);

-- Location: MLABCELL_X13_Y8_N3
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

-- Location: FF_X13_Y8_N55
\processador|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|REGA|DOUT[3]~feeder_combout\,
	asdata => \processador|ULA1|saida[3]~3_combout\,
	sload => \RAM1|ALT_INV_dado_out~16_combout\,
	ena => \processador|decoderInstru1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(3));

-- Location: LABCELL_X14_Y8_N39
\processador|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~13_sumout\ = SUM(( (\RAM1|dado_out[3]~11_combout\ & ((!\processador|decoderInstru1|Equal10~1_combout\) # (\RAM1|dado_out~16_combout\))) ) + ( \processador|REGA|DOUT\(3) ) + ( \processador|ULA1|Add0~10\ ))
-- \processador|ULA1|Add0~14\ = CARRY(( (\RAM1|dado_out[3]~11_combout\ & ((!\processador|decoderInstru1|Equal10~1_combout\) # (\RAM1|dado_out~16_combout\))) ) + ( \processador|REGA|DOUT\(3) ) + ( \processador|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datac => \RAM1|ALT_INV_dado_out~16_combout\,
	datad => \RAM1|ALT_INV_dado_out[3]~11_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(3),
	cin => \processador|ULA1|Add0~10\,
	sumout => \processador|ULA1|Add0~13_sumout\,
	cout => \processador|ULA1|Add0~14\);

-- Location: MLABCELL_X13_Y8_N54
\processador|REGA|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|REGA|DOUT[3]~feeder_combout\ = ( \processador|ULA1|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|ULA1|ALT_INV_Add0~13_sumout\,
	combout => \processador|REGA|DOUT[3]~feeder_combout\);

-- Location: FF_X13_Y8_N56
\processador|REGA|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|REGA|DOUT[3]~feeder_combout\,
	asdata => \processador|ULA1|saida[3]~3_combout\,
	sload => \RAM1|ALT_INV_dado_out~16_combout\,
	ena => \processador|decoderInstru1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT[3]~DUPLICATE_q\);

-- Location: FF_X13_Y7_N41
\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

-- Location: MLABCELL_X13_Y7_N12
\RAM1|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~533_combout\ = ( !\processador|decoderInstru1|Equal10~0_combout\ & ( !\ROM1|memROM~0_combout\ & ( \RAM1|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~18_q\,
	datae => \processador|decoderInstru1|ALT_INV_Equal10~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~533_combout\);

-- Location: MLABCELL_X13_Y7_N51
\RAM1|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~534_combout\ = ( \ROM1|memROM~1_combout\ & ( \RAM1|ram~533_combout\ & ( !\ROM1|memROM~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \RAM1|ALT_INV_ram~533_combout\,
	combout => \RAM1|ram~534_combout\);

-- Location: LABCELL_X14_Y8_N27
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

-- Location: MLABCELL_X13_Y8_N27
\processador|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~17_sumout\ = SUM(( (!\RAM1|dado_out[4]~12_combout\) # ((!\processador|decoderInstru1|Equal10~3_combout\ & (\processador|decoderInstru1|Equal10~1_combout\ & !\processador|decoderInstru1|Equal10~2_combout\))) ) + ( 
-- \processador|REGA|DOUT[4]~DUPLICATE_q\ ) + ( \processador|ULA1|Add1~14\ ))
-- \processador|ULA1|Add1~18\ = CARRY(( (!\RAM1|dado_out[4]~12_combout\) # ((!\processador|decoderInstru1|Equal10~3_combout\ & (\processador|decoderInstru1|Equal10~1_combout\ & !\processador|decoderInstru1|Equal10~2_combout\))) ) + ( 
-- \processador|REGA|DOUT[4]~DUPLICATE_q\ ) + ( \processador|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~3_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datad => \RAM1|ALT_INV_dado_out[4]~12_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \processador|ULA1|Add1~14\,
	sumout => \processador|ULA1|Add1~17_sumout\,
	cout => \processador|ULA1|Add1~18\);

-- Location: MLABCELL_X13_Y8_N45
\processador|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[4]~4_combout\ = (!\processador|decoderInstru1|saida~2_combout\ & \processador|ULA1|Add1~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~2_combout\,
	datad => \processador|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \processador|ULA1|saida[4]~4_combout\);

-- Location: FF_X13_Y8_N49
\processador|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|REGA|DOUT[4]~feeder_combout\,
	asdata => \processador|ULA1|saida[4]~4_combout\,
	sload => \RAM1|ALT_INV_dado_out~16_combout\,
	ena => \processador|decoderInstru1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(4));

-- Location: LABCELL_X14_Y8_N42
\processador|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~17_sumout\ = SUM(( (\RAM1|dado_out[4]~12_combout\ & ((!\processador|decoderInstru1|Equal10~1_combout\) # (\RAM1|dado_out~16_combout\))) ) + ( \processador|REGA|DOUT\(4) ) + ( \processador|ULA1|Add0~14\ ))
-- \processador|ULA1|Add0~18\ = CARRY(( (\RAM1|dado_out[4]~12_combout\ & ((!\processador|decoderInstru1|Equal10~1_combout\) # (\RAM1|dado_out~16_combout\))) ) + ( \processador|REGA|DOUT\(4) ) + ( \processador|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datac => \RAM1|ALT_INV_dado_out~16_combout\,
	datad => \RAM1|ALT_INV_dado_out[4]~12_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(4),
	cin => \processador|ULA1|Add0~14\,
	sumout => \processador|ULA1|Add0~17_sumout\,
	cout => \processador|ULA1|Add0~18\);

-- Location: MLABCELL_X13_Y8_N48
\processador|REGA|DOUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|REGA|DOUT[4]~feeder_combout\ = \processador|ULA1|Add0~17_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ULA1|ALT_INV_Add0~17_sumout\,
	combout => \processador|REGA|DOUT[4]~feeder_combout\);

-- Location: FF_X13_Y8_N50
\processador|REGA|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|REGA|DOUT[4]~feeder_combout\,
	asdata => \processador|ULA1|saida[4]~4_combout\,
	sload => \RAM1|ALT_INV_dado_out~16_combout\,
	ena => \processador|decoderInstru1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT[4]~DUPLICATE_q\);

-- Location: FF_X14_Y8_N17
\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

-- Location: LABCELL_X14_Y8_N15
\RAM1|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~535_combout\ = ( !\ROM1|memROM~2_combout\ & ( (\ROM1|memROM~1_combout\ & \RAM1|ram~19_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \RAM1|ALT_INV_ram~19_q\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~535_combout\);

-- Location: LABCELL_X14_Y8_N6
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

-- Location: MLABCELL_X13_Y7_N21
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

-- Location: LABCELL_X14_Y8_N45
\processador|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~21_sumout\ = SUM(( (!\processador|decoderInstru1|Equal10~1_combout\ & (((\RAM1|dado_out[5]~13_combout\)))) # (\processador|decoderInstru1|Equal10~1_combout\ & ((!\RAM1|dado_out~16_combout\ & (\ROM1|memROM~0_combout\)) # 
-- (\RAM1|dado_out~16_combout\ & ((\RAM1|dado_out[5]~13_combout\))))) ) + ( \processador|REGA|DOUT[5]~DUPLICATE_q\ ) + ( \processador|ULA1|Add0~18\ ))
-- \processador|ULA1|Add0~22\ = CARRY(( (!\processador|decoderInstru1|Equal10~1_combout\ & (((\RAM1|dado_out[5]~13_combout\)))) # (\processador|decoderInstru1|Equal10~1_combout\ & ((!\RAM1|dado_out~16_combout\ & (\ROM1|memROM~0_combout\)) # 
-- (\RAM1|dado_out~16_combout\ & ((\RAM1|dado_out[5]~13_combout\))))) ) + ( \processador|REGA|DOUT[5]~DUPLICATE_q\ ) + ( \processador|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datab => \RAM1|ALT_INV_dado_out~16_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \RAM1|ALT_INV_dado_out[5]~13_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \processador|ULA1|Add0~18\,
	sumout => \processador|ULA1|Add0~21_sumout\,
	cout => \processador|ULA1|Add0~22\);

-- Location: MLABCELL_X13_Y8_N0
\processador|REGA|DOUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|REGA|DOUT[5]~feeder_combout\ = ( \processador|ULA1|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|ULA1|ALT_INV_Add0~21_sumout\,
	combout => \processador|REGA|DOUT[5]~feeder_combout\);

-- Location: FF_X13_Y8_N1
\processador|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|REGA|DOUT[5]~feeder_combout\,
	asdata => \processador|ULA1|saida[5]~5_combout\,
	sload => \RAM1|ALT_INV_dado_out~16_combout\,
	ena => \processador|decoderInstru1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(5));

-- Location: MLABCELL_X13_Y8_N30
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

-- Location: MLABCELL_X13_Y8_N51
\processador|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[5]~5_combout\ = ( \processador|ULA1|Add1~21_sumout\ & ( (!\processador|decoderInstru1|saida~2_combout\) # (\ROM1|memROM~0_combout\) ) ) # ( !\processador|ULA1|Add1~21_sumout\ & ( (\processador|decoderInstru1|saida~2_combout\ & 
-- \ROM1|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~2_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \processador|ULA1|saida[5]~5_combout\);

-- Location: FF_X13_Y8_N2
\processador|REGA|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|REGA|DOUT[5]~feeder_combout\,
	asdata => \processador|ULA1|saida[5]~5_combout\,
	sload => \RAM1|ALT_INV_dado_out~16_combout\,
	ena => \processador|decoderInstru1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT[5]~DUPLICATE_q\);

-- Location: FF_X13_Y7_N5
\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

-- Location: MLABCELL_X13_Y7_N24
\RAM1|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~537_combout\ = ( !\processador|decoderInstru1|Equal10~0_combout\ & ( !\ROM1|memROM~0_combout\ & ( \RAM1|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~20_q\,
	datae => \processador|decoderInstru1|ALT_INV_Equal10~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~537_combout\);

-- Location: MLABCELL_X13_Y7_N30
\RAM1|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~538_combout\ = ( \ROM1|memROM~1_combout\ & ( \RAM1|ram~537_combout\ & ( !\ROM1|memROM~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \RAM1|ALT_INV_ram~537_combout\,
	combout => \RAM1|ram~538_combout\);

-- Location: LABCELL_X14_Y7_N57
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

-- Location: LABCELL_X14_Y8_N48
\processador|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~25_sumout\ = SUM(( (\RAM1|dado_out[6]~14_combout\ & ((!\processador|decoderInstru1|Equal10~1_combout\) # ((\processador|decoderInstru1|Equal10~2_combout\) # (\processador|decoderInstru1|Equal10~3_combout\)))) ) + ( 
-- \processador|REGA|DOUT\(6) ) + ( \processador|ULA1|Add0~22\ ))
-- \processador|ULA1|Add0~26\ = CARRY(( (\RAM1|dado_out[6]~14_combout\ & ((!\processador|decoderInstru1|Equal10~1_combout\) # ((\processador|decoderInstru1|Equal10~2_combout\) # (\processador|decoderInstru1|Equal10~3_combout\)))) ) + ( 
-- \processador|REGA|DOUT\(6) ) + ( \processador|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal10~3_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datad => \RAM1|ALT_INV_dado_out[6]~14_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(6),
	cin => \processador|ULA1|Add0~22\,
	sumout => \processador|ULA1|Add0~25_sumout\,
	cout => \processador|ULA1|Add0~26\);

-- Location: LABCELL_X14_Y8_N18
\processador|REGA|DOUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|REGA|DOUT[6]~feeder_combout\ = \processador|ULA1|Add0~25_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ULA1|ALT_INV_Add0~25_sumout\,
	combout => \processador|REGA|DOUT[6]~feeder_combout\);

-- Location: MLABCELL_X13_Y8_N33
\processador|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~25_sumout\ = SUM(( (!\RAM1|dado_out[6]~14_combout\) # ((!\RAM1|dado_out~16_combout\ & \processador|decoderInstru1|Equal10~1_combout\)) ) + ( \processador|REGA|DOUT\(6) ) + ( \processador|ULA1|Add1~22\ ))
-- \processador|ULA1|Add1~26\ = CARRY(( (!\RAM1|dado_out[6]~14_combout\) # ((!\RAM1|dado_out~16_combout\ & \processador|decoderInstru1|Equal10~1_combout\)) ) + ( \processador|REGA|DOUT\(6) ) + ( \processador|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111001011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~16_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datac => \RAM1|ALT_INV_dado_out[6]~14_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(6),
	cin => \processador|ULA1|Add1~22\,
	sumout => \processador|ULA1|Add1~25_sumout\,
	cout => \processador|ULA1|Add1~26\);

-- Location: LABCELL_X14_Y8_N0
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

-- Location: FF_X14_Y8_N20
\processador|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|REGA|DOUT[6]~feeder_combout\,
	asdata => \processador|ULA1|saida[6]~6_combout\,
	sload => \RAM1|ALT_INV_dado_out~16_combout\,
	ena => \processador|decoderInstru1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(6));

-- Location: FF_X14_Y7_N29
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
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

-- Location: LABCELL_X14_Y7_N6
\RAM1|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~539_combout\ = ( !\ROM1|memROM~2_combout\ & ( (\RAM1|ram~21_q\ & \ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~21_q\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~539_combout\);

-- Location: LABCELL_X14_Y7_N54
\RAM1|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~540_combout\ = ( \RAM1|ram~539_combout\ & ( (!\processador|decoderInstru1|Equal10~0_combout\ & !\ROM1|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|decoderInstru1|ALT_INV_Equal10~0_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \RAM1|ALT_INV_ram~539_combout\,
	combout => \RAM1|ram~540_combout\);

-- Location: LABCELL_X14_Y6_N27
\RAM1|dado_out[7]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[7]~15_combout\ = ( \RAM1|dado_out~16_combout\ & ( \RAM1|ram~542_combout\ ) ) # ( !\RAM1|dado_out~16_combout\ & ( \RAM1|ram~542_combout\ ) ) # ( !\RAM1|dado_out~16_combout\ & ( !\RAM1|ram~542_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM1|ALT_INV_dado_out~16_combout\,
	dataf => \RAM1|ALT_INV_ram~542_combout\,
	combout => \RAM1|dado_out[7]~15_combout\);

-- Location: MLABCELL_X13_Y8_N36
\processador|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~29_sumout\ = SUM(( (!\RAM1|dado_out[7]~15_combout\) # ((!\processador|decoderInstru1|Equal10~3_combout\ & (!\processador|decoderInstru1|Equal10~2_combout\ & \processador|decoderInstru1|Equal10~1_combout\))) ) + ( 
-- \processador|REGA|DOUT[7]~DUPLICATE_q\ ) + ( \processador|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~3_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datad => \RAM1|ALT_INV_dado_out[7]~15_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \processador|ULA1|Add1~26\,
	sumout => \processador|ULA1|Add1~29_sumout\);

-- Location: MLABCELL_X13_Y8_N6
\processador|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[7]~7_combout\ = (!\processador|decoderInstru1|saida~2_combout\ & \processador|ULA1|Add1~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|decoderInstru1|ALT_INV_saida~2_combout\,
	datad => \processador|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \processador|ULA1|saida[7]~7_combout\);

-- Location: FF_X13_Y8_N11
\processador|REGA|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|REGA|DOUT[7]~feeder_combout\,
	asdata => \processador|ULA1|saida[7]~7_combout\,
	sload => \RAM1|ALT_INV_dado_out~16_combout\,
	ena => \processador|decoderInstru1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y8_N51
\processador|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~29_sumout\ = SUM(( (\RAM1|dado_out[7]~15_combout\ & ((!\processador|decoderInstru1|Equal10~1_combout\) # ((\processador|decoderInstru1|Equal10~2_combout\) # (\processador|decoderInstru1|Equal10~3_combout\)))) ) + ( 
-- \processador|REGA|DOUT[7]~DUPLICATE_q\ ) + ( \processador|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal10~3_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datad => \RAM1|ALT_INV_dado_out[7]~15_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \processador|ULA1|Add0~26\,
	sumout => \processador|ULA1|Add0~29_sumout\);

-- Location: MLABCELL_X13_Y8_N9
\processador|REGA|DOUT[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|REGA|DOUT[7]~feeder_combout\ = ( \processador|ULA1|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|ULA1|ALT_INV_Add0~29_sumout\,
	combout => \processador|REGA|DOUT[7]~feeder_combout\);

-- Location: FF_X13_Y8_N10
\processador|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|REGA|DOUT[7]~feeder_combout\,
	asdata => \processador|ULA1|saida[7]~7_combout\,
	sload => \RAM1|ALT_INV_dado_out~16_combout\,
	ena => \processador|decoderInstru1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(7));

-- Location: FF_X14_Y6_N23
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
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

-- Location: LABCELL_X14_Y6_N18
\RAM1|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~541_combout\ = ( !\ROM1|memROM~0_combout\ & ( (\RAM1|ram~22_q\ & !\processador|decoderInstru1|Equal10~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~22_q\,
	datad => \processador|decoderInstru1|ALT_INV_Equal10~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~541_combout\);

-- Location: LABCELL_X14_Y6_N12
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

-- Location: LABCELL_X14_Y6_N42
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

-- Location: LABCELL_X14_Y4_N18
\processador|PC|DOUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|PC|DOUT[4]~feeder_combout\ = ( \processador|incrementaPC|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \processador|PC|DOUT[4]~feeder_combout\);

-- Location: FF_X14_Y4_N19
\processador|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|PC|DOUT[4]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(4));

-- Location: LABCELL_X14_Y6_N45
\processador|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~21_sumout\ = SUM(( \processador|PC|DOUT\(5) ) + ( GND ) + ( \processador|incrementaPC|Add0~18\ ))
-- \processador|incrementaPC|Add0~22\ = CARRY(( \processador|PC|DOUT\(5) ) + ( GND ) + ( \processador|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT\(5),
	cin => \processador|incrementaPC|Add0~18\,
	sumout => \processador|incrementaPC|Add0~21_sumout\,
	cout => \processador|incrementaPC|Add0~22\);

-- Location: LABCELL_X14_Y6_N6
\processador|PC|DOUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|PC|DOUT[5]~feeder_combout\ = \processador|incrementaPC|Add0~21_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \processador|PC|DOUT[5]~feeder_combout\);

-- Location: FF_X14_Y6_N8
\processador|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|PC|DOUT[5]~feeder_combout\,
	asdata => \ROM1|memROM~0_combout\,
	sload => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(5));

-- Location: FF_X14_Y6_N2
\processador|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|PC|DOUT[6]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y6_N48
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

-- Location: LABCELL_X14_Y6_N0
\processador|PC|DOUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|PC|DOUT[6]~feeder_combout\ = ( \processador|incrementaPC|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \processador|PC|DOUT[6]~feeder_combout\);

-- Location: FF_X14_Y6_N1
\processador|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|PC|DOUT[6]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(6));

-- Location: LABCELL_X14_Y6_N51
\processador|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~29_sumout\ = SUM(( \processador|PC|DOUT\(7) ) + ( GND ) + ( \processador|incrementaPC|Add0~26\ ))
-- \processador|incrementaPC|Add0~30\ = CARRY(( \processador|PC|DOUT\(7) ) + ( GND ) + ( \processador|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT\(7),
	cin => \processador|incrementaPC|Add0~26\,
	sumout => \processador|incrementaPC|Add0~29_sumout\,
	cout => \processador|incrementaPC|Add0~30\);

-- Location: LABCELL_X14_Y4_N21
\processador|PC|DOUT[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|PC|DOUT[7]~feeder_combout\ = ( \processador|incrementaPC|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \processador|PC|DOUT[7]~feeder_combout\);

-- Location: FF_X14_Y4_N22
\processador|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|PC|DOUT[7]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(7));

-- Location: FF_X14_Y6_N17
\processador|PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|PC|DOUT[8]~feeder_combout\,
	asdata => \ROM1|memROM~0_combout\,
	sload => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[8]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y6_N54
\processador|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~33_sumout\ = SUM(( \processador|PC|DOUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	cin => \processador|incrementaPC|Add0~30\,
	sumout => \processador|incrementaPC|Add0~33_sumout\);

-- Location: LABCELL_X14_Y6_N15
\processador|PC|DOUT[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|PC|DOUT[8]~feeder_combout\ = \processador|incrementaPC|Add0~33_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \processador|PC|DOUT[8]~feeder_combout\);

-- Location: FF_X14_Y6_N16
\processador|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|PC|DOUT[8]~feeder_combout\,
	asdata => \ROM1|memROM~0_combout\,
	sload => \processador|decoderInstru1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(8));

-- Location: LABCELL_X14_Y6_N3
\processador|decoderInstru1|saida[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida[0]~3_combout\ = ( \processador|PC|DOUT[0]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[2]~DUPLICATE_q\) # ((!\processador|PC|DOUT\(1)) # (!\processador|PC|DOUT[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111110111111101111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \processador|decoderInstru1|saida[0]~3_combout\);

-- Location: LABCELL_X14_Y4_N42
\decoderPosicao|Equal7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderPosicao|Equal7~3_combout\ = ( \processador|PC|DOUT\(1) & ( (!\processador|PC|DOUT[3]~DUPLICATE_q\ & (\processador|PC|DOUT[2]~DUPLICATE_q\ & \processador|PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(1),
	combout => \decoderPosicao|Equal7~3_combout\);

-- Location: FF_X14_Y4_N2
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
	ena => \decoderPosicao|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG2|DOUT\(0));

-- Location: FF_X14_Y4_N44
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
	ena => \decoderPosicao|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG2|DOUT\(2));

-- Location: LABCELL_X14_Y4_N3
\logica_Seven_Seg|REG2|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|REG2|DOUT[1]~feeder_combout\ = ( \processador|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|REG2|DOUT[1]~feeder_combout\);

-- Location: FF_X14_Y4_N5
\logica_Seven_Seg|REG2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \logica_Seven_Seg|REG2|DOUT[1]~feeder_combout\,
	ena => \decoderPosicao|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG2|DOUT\(1));

-- Location: FF_X14_Y4_N47
\logica_Seven_Seg|REG2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \decoderPosicao|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG2|DOUT\(3));

-- Location: LABCELL_X14_Y4_N30
\logica_Seven_Seg|H2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[0]~0_combout\ = (!\logica_Seven_Seg|REG2|DOUT\(2) & (\logica_Seven_Seg|REG2|DOUT\(0) & (!\logica_Seven_Seg|REG2|DOUT\(1) $ (\logica_Seven_Seg|REG2|DOUT\(3))))) # (\logica_Seven_Seg|REG2|DOUT\(2) & 
-- (!\logica_Seven_Seg|REG2|DOUT\(1) & (!\logica_Seven_Seg|REG2|DOUT\(0) $ (\logica_Seven_Seg|REG2|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000010100011000000001010001100000000101000110000000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X14_Y4_N36
\logica_Seven_Seg|H2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[1]~1_combout\ = ( \logica_Seven_Seg|REG2|DOUT\(2) & ( (!\logica_Seven_Seg|REG2|DOUT\(3) & (!\logica_Seven_Seg|REG2|DOUT\(0) $ (!\logica_Seven_Seg|REG2|DOUT\(1)))) # (\logica_Seven_Seg|REG2|DOUT\(3) & 
-- ((!\logica_Seven_Seg|REG2|DOUT\(0)) # (\logica_Seven_Seg|REG2|DOUT\(1)))) ) ) # ( !\logica_Seven_Seg|REG2|DOUT\(2) & ( (\logica_Seven_Seg|REG2|DOUT\(3) & (\logica_Seven_Seg|REG2|DOUT\(0) & \logica_Seven_Seg|REG2|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100111100111100110011110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	datad => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X14_Y4_N33
\logica_Seven_Seg|H2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[2]~2_combout\ = (!\logica_Seven_Seg|REG2|DOUT\(2) & (!\logica_Seven_Seg|REG2|DOUT\(0) & (!\logica_Seven_Seg|REG2|DOUT\(3) & \logica_Seven_Seg|REG2|DOUT\(1)))) # (\logica_Seven_Seg|REG2|DOUT\(2) & 
-- (\logica_Seven_Seg|REG2|DOUT\(3) & ((!\logica_Seven_Seg|REG2|DOUT\(0)) # (\logica_Seven_Seg|REG2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	datad => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X14_Y4_N24
\logica_Seven_Seg|H2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[3]~3_combout\ = ( \logica_Seven_Seg|REG2|DOUT\(2) & ( (!\logica_Seven_Seg|REG2|DOUT\(1) & (!\logica_Seven_Seg|REG2|DOUT\(0) & !\logica_Seven_Seg|REG2|DOUT\(3))) # (\logica_Seven_Seg|REG2|DOUT\(1) & 
-- (\logica_Seven_Seg|REG2|DOUT\(0))) ) ) # ( !\logica_Seven_Seg|REG2|DOUT\(2) & ( (!\logica_Seven_Seg|REG2|DOUT\(1) & (\logica_Seven_Seg|REG2|DOUT\(0) & !\logica_Seven_Seg|REG2|DOUT\(3))) # (\logica_Seven_Seg|REG2|DOUT\(1) & 
-- (!\logica_Seven_Seg|REG2|DOUT\(0) & \logica_Seven_Seg|REG2|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001010000000010100101000010100101000001011010010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	datad => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	dataf => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X13_Y4_N12
\logica_Seven_Seg|H2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[4]~4_combout\ = ( \logica_Seven_Seg|REG2|DOUT\(3) & ( (!\logica_Seven_Seg|REG2|DOUT\(1) & (!\logica_Seven_Seg|REG2|DOUT\(2) & \logica_Seven_Seg|REG2|DOUT\(0))) ) ) # ( !\logica_Seven_Seg|REG2|DOUT\(3) & ( 
-- ((!\logica_Seven_Seg|REG2|DOUT\(1) & \logica_Seven_Seg|REG2|DOUT\(2))) # (\logica_Seven_Seg|REG2|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	datab => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	dataf => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X13_Y4_N45
\logica_Seven_Seg|H2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[5]~5_combout\ = ( !\logica_Seven_Seg|REG2|DOUT\(1) & ( \logica_Seven_Seg|REG2|DOUT\(3) & ( (\logica_Seven_Seg|REG2|DOUT\(0) & \logica_Seven_Seg|REG2|DOUT\(2)) ) ) ) # ( \logica_Seven_Seg|REG2|DOUT\(1) & ( 
-- !\logica_Seven_Seg|REG2|DOUT\(3) & ( (!\logica_Seven_Seg|REG2|DOUT\(2)) # (\logica_Seven_Seg|REG2|DOUT\(0)) ) ) ) # ( !\logica_Seven_Seg|REG2|DOUT\(1) & ( !\logica_Seven_Seg|REG2|DOUT\(3) & ( (\logica_Seven_Seg|REG2|DOUT\(0) & 
-- !\logica_Seven_Seg|REG2|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000111101011111010100000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	datae => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X13_Y4_N36
\logica_Seven_Seg|H2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[6]~6_combout\ = ( \logica_Seven_Seg|REG2|DOUT\(3) & ( (\logica_Seven_Seg|REG2|DOUT\(2) & (!\logica_Seven_Seg|REG2|DOUT\(0) & !\logica_Seven_Seg|REG2|DOUT\(1))) ) ) # ( !\logica_Seven_Seg|REG2|DOUT\(3) & ( 
-- (!\logica_Seven_Seg|REG2|DOUT\(2) & ((!\logica_Seven_Seg|REG2|DOUT\(1)))) # (\logica_Seven_Seg|REG2|DOUT\(2) & (\logica_Seven_Seg|REG2|DOUT\(0) & \logica_Seven_Seg|REG2|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000011110011000000001100110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	datad => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X13_Y4_N48
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

-- Location: LABCELL_X14_Y4_N12
\decoderPosicao|Equal7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderPosicao|Equal7~2_combout\ = ( !\processador|PC|DOUT[2]~DUPLICATE_q\ & ( (\processador|PC|DOUT[3]~DUPLICATE_q\ & (!\processador|PC|DOUT\(1) & \processador|PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \decoderPosicao|Equal7~2_combout\);

-- Location: FF_X13_Y4_N50
\logica_Seven_Seg|REG3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \logica_Seven_Seg|REG3|DOUT[1]~feeder_combout\,
	ena => \decoderPosicao|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG3|DOUT\(1));

-- Location: FF_X13_Y4_N34
\logica_Seven_Seg|REG3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \decoderPosicao|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG3|DOUT\(3));

-- Location: FF_X13_Y4_N53
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
	ena => \decoderPosicao|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG3|DOUT\(2));

-- Location: FF_X13_Y4_N32
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
	ena => \decoderPosicao|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG3|DOUT\(0));

-- Location: MLABCELL_X13_Y4_N6
\logica_Seven_Seg|H3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[0]~0_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(0) & ( (!\logica_Seven_Seg|REG3|DOUT\(1) & (!\logica_Seven_Seg|REG3|DOUT\(3) $ (\logica_Seven_Seg|REG3|DOUT\(2)))) # (\logica_Seven_Seg|REG3|DOUT\(1) & 
-- (\logica_Seven_Seg|REG3|DOUT\(3) & !\logica_Seven_Seg|REG3|DOUT\(2))) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(0) & ( (!\logica_Seven_Seg|REG3|DOUT\(1) & (!\logica_Seven_Seg|REG3|DOUT\(3) & \logica_Seven_Seg|REG3|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010010010100100101001001010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X13_Y4_N9
\logica_Seven_Seg|H3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[1]~1_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(2) & ( (!\logica_Seven_Seg|REG3|DOUT\(1) & (!\logica_Seven_Seg|REG3|DOUT\(3) $ (!\logica_Seven_Seg|REG3|DOUT\(0)))) # (\logica_Seven_Seg|REG3|DOUT\(1) & 
-- ((!\logica_Seven_Seg|REG3|DOUT\(0)) # (\logica_Seven_Seg|REG3|DOUT\(3)))) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(2) & ( (\logica_Seven_Seg|REG3|DOUT\(1) & (\logica_Seven_Seg|REG3|DOUT\(3) & \logica_Seven_Seg|REG3|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101111001011110010111100101111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X13_Y4_N24
\logica_Seven_Seg|H3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[2]~2_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(3) & ( \logica_Seven_Seg|REG3|DOUT\(0) & ( (\logica_Seven_Seg|REG3|DOUT\(2) & \logica_Seven_Seg|REG3|DOUT\(1)) ) ) ) # ( \logica_Seven_Seg|REG3|DOUT\(3) & ( 
-- !\logica_Seven_Seg|REG3|DOUT\(0) & ( \logica_Seven_Seg|REG3|DOUT\(2) ) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(3) & ( !\logica_Seven_Seg|REG3|DOUT\(0) & ( (!\logica_Seven_Seg|REG3|DOUT\(2) & \logica_Seven_Seg|REG3|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010101010101010100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	datae => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X13_Y4_N39
\logica_Seven_Seg|H3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[3]~3_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(2) & ( (!\logica_Seven_Seg|REG3|DOUT\(1) & (!\logica_Seven_Seg|REG3|DOUT\(0) & !\logica_Seven_Seg|REG3|DOUT\(3))) # (\logica_Seven_Seg|REG3|DOUT\(1) & 
-- (\logica_Seven_Seg|REG3|DOUT\(0))) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(2) & ( (!\logica_Seven_Seg|REG3|DOUT\(1) & (\logica_Seven_Seg|REG3|DOUT\(0) & !\logica_Seven_Seg|REG3|DOUT\(3))) # (\logica_Seven_Seg|REG3|DOUT\(1) & 
-- (!\logica_Seven_Seg|REG3|DOUT\(0) & \logica_Seven_Seg|REG3|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001010000000010100101000010100101000001011010010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	datad => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X13_Y4_N54
\logica_Seven_Seg|H3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[4]~4_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(3) & ( \logica_Seven_Seg|REG3|DOUT\(0) & ( (!\logica_Seven_Seg|REG3|DOUT\(2) & !\logica_Seven_Seg|REG3|DOUT\(1)) ) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(3) & ( 
-- \logica_Seven_Seg|REG3|DOUT\(0) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(3) & ( !\logica_Seven_Seg|REG3|DOUT\(0) & ( (\logica_Seven_Seg|REG3|DOUT\(2) & !\logica_Seven_Seg|REG3|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000011111111111111111010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	datae => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X13_Y4_N3
\logica_Seven_Seg|H3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[5]~5_combout\ = ( !\logica_Seven_Seg|REG3|DOUT\(3) & ( \logica_Seven_Seg|REG3|DOUT\(1) & ( (!\logica_Seven_Seg|REG3|DOUT\(2)) # (\logica_Seven_Seg|REG3|DOUT\(0)) ) ) ) # ( \logica_Seven_Seg|REG3|DOUT\(3) & ( 
-- !\logica_Seven_Seg|REG3|DOUT\(1) & ( (\logica_Seven_Seg|REG3|DOUT\(2) & \logica_Seven_Seg|REG3|DOUT\(0)) ) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(3) & ( !\logica_Seven_Seg|REG3|DOUT\(1) & ( (!\logica_Seven_Seg|REG3|DOUT\(2) & 
-- \logica_Seven_Seg|REG3|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000001010000010110101111101011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	datae => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X13_Y4_N21
\logica_Seven_Seg|H3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[6]~6_combout\ = ( !\logica_Seven_Seg|REG3|DOUT\(3) & ( \logica_Seven_Seg|REG3|DOUT\(1) & ( (\logica_Seven_Seg|REG3|DOUT\(2) & \logica_Seven_Seg|REG3|DOUT\(0)) ) ) ) # ( \logica_Seven_Seg|REG3|DOUT\(3) & ( 
-- !\logica_Seven_Seg|REG3|DOUT\(1) & ( (\logica_Seven_Seg|REG3|DOUT\(2) & !\logica_Seven_Seg|REG3|DOUT\(0)) ) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(3) & ( !\logica_Seven_Seg|REG3|DOUT\(1) & ( !\logica_Seven_Seg|REG3|DOUT\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010010100000101000000000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	datae => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X13_Y7_N0
\decoderPosicao|Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderPosicao|Equal7~1_combout\ = ( \processador|PC|DOUT[0]~DUPLICATE_q\ & ( !\processador|PC|DOUT\(2) & ( (\processador|PC|DOUT[1]~DUPLICATE_q\ & \processador|PC|DOUT[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(2),
	combout => \decoderPosicao|Equal7~1_combout\);

-- Location: FF_X13_Y7_N10
\logica_Seven_Seg|REG4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \decoderPosicao|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG4|DOUT\(3));

-- Location: FF_X14_Y7_N23
\logica_Seven_Seg|REG4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \decoderPosicao|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG4|DOUT\(2));

-- Location: FF_X14_Y7_N8
\logica_Seven_Seg|REG4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \decoderPosicao|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG4|DOUT\(1));

-- Location: FF_X14_Y7_N59
\logica_Seven_Seg|REG4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \decoderPosicao|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG4|DOUT\(0));

-- Location: MLABCELL_X18_Y7_N12
\logica_Seven_Seg|H4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[0]~0_combout\ = ( \logica_Seven_Seg|REG4|DOUT\(1) & ( \logica_Seven_Seg|REG4|DOUT\(0) & ( (\logica_Seven_Seg|REG4|DOUT\(3) & !\logica_Seven_Seg|REG4|DOUT\(2)) ) ) ) # ( !\logica_Seven_Seg|REG4|DOUT\(1) & ( 
-- \logica_Seven_Seg|REG4|DOUT\(0) & ( !\logica_Seven_Seg|REG4|DOUT\(3) $ (\logica_Seven_Seg|REG4|DOUT\(2)) ) ) ) # ( !\logica_Seven_Seg|REG4|DOUT\(1) & ( !\logica_Seven_Seg|REG4|DOUT\(0) & ( (!\logica_Seven_Seg|REG4|DOUT\(3) & 
-- \logica_Seven_Seg|REG4|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000000000000011001100001100110011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	datad => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	datae => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X18_Y7_N21
\logica_Seven_Seg|H4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[1]~1_combout\ = ( \logica_Seven_Seg|REG4|DOUT\(1) & ( \logica_Seven_Seg|REG4|DOUT\(2) & ( (!\logica_Seven_Seg|REG4|DOUT\(0)) # (\logica_Seven_Seg|REG4|DOUT\(3)) ) ) ) # ( !\logica_Seven_Seg|REG4|DOUT\(1) & ( 
-- \logica_Seven_Seg|REG4|DOUT\(2) & ( !\logica_Seven_Seg|REG4|DOUT\(0) $ (!\logica_Seven_Seg|REG4|DOUT\(3)) ) ) ) # ( \logica_Seven_Seg|REG4|DOUT\(1) & ( !\logica_Seven_Seg|REG4|DOUT\(2) & ( (\logica_Seven_Seg|REG4|DOUT\(0) & 
-- \logica_Seven_Seg|REG4|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010101011010010110101010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	datae => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X18_Y7_N24
\logica_Seven_Seg|H4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[2]~2_combout\ = ( \logica_Seven_Seg|REG4|DOUT\(1) & ( \logica_Seven_Seg|REG4|DOUT\(0) & ( (\logica_Seven_Seg|REG4|DOUT\(3) & \logica_Seven_Seg|REG4|DOUT\(2)) ) ) ) # ( \logica_Seven_Seg|REG4|DOUT\(1) & ( 
-- !\logica_Seven_Seg|REG4|DOUT\(0) & ( !\logica_Seven_Seg|REG4|DOUT\(3) $ (\logica_Seven_Seg|REG4|DOUT\(2)) ) ) ) # ( !\logica_Seven_Seg|REG4|DOUT\(1) & ( !\logica_Seven_Seg|REG4|DOUT\(0) & ( (\logica_Seven_Seg|REG4|DOUT\(3) & 
-- \logica_Seven_Seg|REG4|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011110011000011001100000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	datad => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	datae => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X18_Y7_N30
\logica_Seven_Seg|H4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[3]~3_combout\ = ( \logica_Seven_Seg|REG4|DOUT\(1) & ( \logica_Seven_Seg|REG4|DOUT\(0) & ( \logica_Seven_Seg|REG4|DOUT\(2) ) ) ) # ( !\logica_Seven_Seg|REG4|DOUT\(1) & ( \logica_Seven_Seg|REG4|DOUT\(0) & ( 
-- (!\logica_Seven_Seg|REG4|DOUT\(3) & !\logica_Seven_Seg|REG4|DOUT\(2)) ) ) ) # ( \logica_Seven_Seg|REG4|DOUT\(1) & ( !\logica_Seven_Seg|REG4|DOUT\(0) & ( (\logica_Seven_Seg|REG4|DOUT\(3) & !\logica_Seven_Seg|REG4|DOUT\(2)) ) ) ) # ( 
-- !\logica_Seven_Seg|REG4|DOUT\(1) & ( !\logica_Seven_Seg|REG4|DOUT\(0) & ( (!\logica_Seven_Seg|REG4|DOUT\(3) & \logica_Seven_Seg|REG4|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100110000000011001100000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	datad => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	datae => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X18_Y7_N36
\logica_Seven_Seg|H4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[4]~4_combout\ = ( \logica_Seven_Seg|REG4|DOUT\(1) & ( \logica_Seven_Seg|REG4|DOUT\(0) & ( !\logica_Seven_Seg|REG4|DOUT\(3) ) ) ) # ( !\logica_Seven_Seg|REG4|DOUT\(1) & ( \logica_Seven_Seg|REG4|DOUT\(0) & ( 
-- (!\logica_Seven_Seg|REG4|DOUT\(3)) # (!\logica_Seven_Seg|REG4|DOUT\(2)) ) ) ) # ( !\logica_Seven_Seg|REG4|DOUT\(1) & ( !\logica_Seven_Seg|REG4|DOUT\(0) & ( (!\logica_Seven_Seg|REG4|DOUT\(3) & \logica_Seven_Seg|REG4|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000000000000011111111110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	datad => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	datae => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X18_Y7_N57
\logica_Seven_Seg|H4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[5]~5_combout\ = ( \logica_Seven_Seg|REG4|DOUT\(1) & ( \logica_Seven_Seg|REG4|DOUT\(2) & ( (\logica_Seven_Seg|REG4|DOUT\(0) & !\logica_Seven_Seg|REG4|DOUT\(3)) ) ) ) # ( !\logica_Seven_Seg|REG4|DOUT\(1) & ( 
-- \logica_Seven_Seg|REG4|DOUT\(2) & ( (\logica_Seven_Seg|REG4|DOUT\(0) & \logica_Seven_Seg|REG4|DOUT\(3)) ) ) ) # ( \logica_Seven_Seg|REG4|DOUT\(1) & ( !\logica_Seven_Seg|REG4|DOUT\(2) & ( !\logica_Seven_Seg|REG4|DOUT\(3) ) ) ) # ( 
-- !\logica_Seven_Seg|REG4|DOUT\(1) & ( !\logica_Seven_Seg|REG4|DOUT\(2) & ( (\logica_Seven_Seg|REG4|DOUT\(0) & !\logica_Seven_Seg|REG4|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000111100001111000000000101000001010101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	datae => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X18_Y7_N48
\logica_Seven_Seg|H4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[6]~6_combout\ = ( \logica_Seven_Seg|REG4|DOUT\(1) & ( \logica_Seven_Seg|REG4|DOUT\(0) & ( (!\logica_Seven_Seg|REG4|DOUT\(3) & \logica_Seven_Seg|REG4|DOUT\(2)) ) ) ) # ( !\logica_Seven_Seg|REG4|DOUT\(1) & ( 
-- \logica_Seven_Seg|REG4|DOUT\(0) & ( (!\logica_Seven_Seg|REG4|DOUT\(3) & !\logica_Seven_Seg|REG4|DOUT\(2)) ) ) ) # ( !\logica_Seven_Seg|REG4|DOUT\(1) & ( !\logica_Seven_Seg|REG4|DOUT\(0) & ( !\logica_Seven_Seg|REG4|DOUT\(3) $ 
-- (\logica_Seven_Seg|REG4|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011000000000000000011001100000000000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	datad => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	datae => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X14_Y4_N15
\decoderPosicao|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderPosicao|Equal7~0_combout\ = ( \processador|PC|DOUT[0]~DUPLICATE_q\ & ( (\processador|PC|DOUT[3]~DUPLICATE_q\ & (!\processador|PC|DOUT\(1) & \processador|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \decoderPosicao|Equal7~0_combout\);

-- Location: FF_X14_Y4_N32
\logica_Seven_Seg|REG5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \decoderPosicao|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG5|DOUT\(1));

-- Location: FF_X14_Y4_N17
\logica_Seven_Seg|REG5|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \decoderPosicao|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG5|DOUT\(3));

-- Location: FF_X14_Y4_N10
\logica_Seven_Seg|REG5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \decoderPosicao|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG5|DOUT\(2));

-- Location: FF_X14_Y4_N14
\logica_Seven_Seg|REG5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \decoderPosicao|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG5|DOUT\(0));

-- Location: LABCELL_X14_Y4_N27
\logica_Seven_Seg|H5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H5|rascSaida7seg[0]~0_combout\ = ( \logica_Seven_Seg|REG5|DOUT\(0) & ( (!\logica_Seven_Seg|REG5|DOUT\(1) & (!\logica_Seven_Seg|REG5|DOUT\(3) $ (\logica_Seven_Seg|REG5|DOUT\(2)))) # (\logica_Seven_Seg|REG5|DOUT\(1) & 
-- (\logica_Seven_Seg|REG5|DOUT\(3) & !\logica_Seven_Seg|REG5|DOUT\(2))) ) ) # ( !\logica_Seven_Seg|REG5|DOUT\(0) & ( (!\logica_Seven_Seg|REG5|DOUT\(1) & (!\logica_Seven_Seg|REG5|DOUT\(3) & \logica_Seven_Seg|REG5|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000011000011001100001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(3),
	datad => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H5|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X14_Y4_N57
\logica_Seven_Seg|H5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H5|rascSaida7seg[1]~1_combout\ = ( \logica_Seven_Seg|REG5|DOUT\(1) & ( (!\logica_Seven_Seg|REG5|DOUT\(0) & (\logica_Seven_Seg|REG5|DOUT\(2))) # (\logica_Seven_Seg|REG5|DOUT\(0) & ((\logica_Seven_Seg|REG5|DOUT\(3)))) ) ) # ( 
-- !\logica_Seven_Seg|REG5|DOUT\(1) & ( (\logica_Seven_Seg|REG5|DOUT\(2) & (!\logica_Seven_Seg|REG5|DOUT\(0) $ (!\logica_Seven_Seg|REG5|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010001000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(2),
	datab => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(3),
	dataf => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H5|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X14_Y4_N54
\logica_Seven_Seg|H5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H5|rascSaida7seg[2]~2_combout\ = ( \logica_Seven_Seg|REG5|DOUT\(3) & ( (\logica_Seven_Seg|REG5|DOUT\(2) & ((!\logica_Seven_Seg|REG5|DOUT\(0)) # (\logica_Seven_Seg|REG5|DOUT\(1)))) ) ) # ( !\logica_Seven_Seg|REG5|DOUT\(3) & ( 
-- (!\logica_Seven_Seg|REG5|DOUT\(2) & (!\logica_Seven_Seg|REG5|DOUT\(0) & \logica_Seven_Seg|REG5|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001000101010001010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(2),
	datab => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H5|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X14_Y4_N48
\logica_Seven_Seg|H5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H5|rascSaida7seg[3]~3_combout\ = ( \logica_Seven_Seg|REG5|DOUT\(3) & ( (\logica_Seven_Seg|REG5|DOUT\(1) & (!\logica_Seven_Seg|REG5|DOUT\(2) $ (\logica_Seven_Seg|REG5|DOUT\(0)))) ) ) # ( !\logica_Seven_Seg|REG5|DOUT\(3) & ( 
-- (!\logica_Seven_Seg|REG5|DOUT\(2) & (\logica_Seven_Seg|REG5|DOUT\(0) & !\logica_Seven_Seg|REG5|DOUT\(1))) # (\logica_Seven_Seg|REG5|DOUT\(2) & (!\logica_Seven_Seg|REG5|DOUT\(0) $ (\logica_Seven_Seg|REG5|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101100001011000010110000100001001000010010000100100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(2),
	datab => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H5|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X14_Y4_N6
\logica_Seven_Seg|H5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H5|rascSaida7seg[4]~4_combout\ = ( \logica_Seven_Seg|REG5|DOUT\(2) & ( \logica_Seven_Seg|REG5|DOUT\(0) & ( !\logica_Seven_Seg|REG5|DOUT\(3) ) ) ) # ( !\logica_Seven_Seg|REG5|DOUT\(2) & ( \logica_Seven_Seg|REG5|DOUT\(0) & ( 
-- (!\logica_Seven_Seg|REG5|DOUT\(3)) # (!\logica_Seven_Seg|REG5|DOUT\(1)) ) ) ) # ( \logica_Seven_Seg|REG5|DOUT\(2) & ( !\logica_Seven_Seg|REG5|DOUT\(0) & ( (!\logica_Seven_Seg|REG5|DOUT\(3) & !\logica_Seven_Seg|REG5|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000000000011111111110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(3),
	datad => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(1),
	datae => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H5|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X14_Y4_N51
\logica_Seven_Seg|H5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H5|rascSaida7seg[5]~5_combout\ = ( \logica_Seven_Seg|REG5|DOUT\(1) & ( (!\logica_Seven_Seg|REG5|DOUT\(3) & ((!\logica_Seven_Seg|REG5|DOUT\(2)) # (\logica_Seven_Seg|REG5|DOUT\(0)))) ) ) # ( !\logica_Seven_Seg|REG5|DOUT\(1) & ( 
-- (\logica_Seven_Seg|REG5|DOUT\(0) & (!\logica_Seven_Seg|REG5|DOUT\(2) $ (\logica_Seven_Seg|REG5|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100100001001000010010000110110000101100001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(2),
	datab => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(3),
	dataf => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H5|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X14_Y4_N39
\logica_Seven_Seg|H5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H5|rascSaida7seg[6]~6_combout\ = ( \logica_Seven_Seg|REG5|DOUT\(0) & ( (!\logica_Seven_Seg|REG5|DOUT\(3) & (!\logica_Seven_Seg|REG5|DOUT\(1) $ (\logica_Seven_Seg|REG5|DOUT\(2)))) ) ) # ( !\logica_Seven_Seg|REG5|DOUT\(0) & ( 
-- (!\logica_Seven_Seg|REG5|DOUT\(1) & (!\logica_Seven_Seg|REG5|DOUT\(3) $ (\logica_Seven_Seg|REG5|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101010100000010100001010000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(3),
	datad => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG5|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H5|rascSaida7seg[6]~6_combout\);

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


