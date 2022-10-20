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

-- DATE "10/20/2022 08:13:39"

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

ENTITY 	contador IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	FPGA_RESET_N : IN std_logic;
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	REGA_OUT : OUT std_logic_vector(7 DOWNTO 0);
	HabilitaRAM : OUT std_logic;
	MEM_ADDRESS : OUT std_logic_vector(8 DOWNTO 0);
	MEM_OUTT : OUT std_logic_vector(7 DOWNTO 0);
	enderecoR : OUT std_logic_vector(1 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END contador;

-- Design Ports Information
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- REGA_OUT[0]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[1]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[2]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[4]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[5]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[6]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[7]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HabilitaRAM	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[0]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[2]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[3]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[5]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[6]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[7]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[8]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUTT[0]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUTT[1]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUTT[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUTT[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUTT[4]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUTT[5]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUTT[6]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUTT[7]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoR[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoR[1]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FPGA_RESET_N	=>  Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF contador IS
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
SIGNAL ww_HabilitaRAM : std_logic;
SIGNAL ww_MEM_ADDRESS : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_MEM_OUTT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_enderecoR : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~6\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~10\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~14\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[4]~4_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~18\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \processador|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~18_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~19_combout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[5]~5_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~22\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~26\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~30\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~21_combout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[8]~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~20_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[6]~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~36_combout\ : std_logic;
SIGNAL \ROM1|memROM~27_combout\ : std_logic;
SIGNAL \processador|LOG_DESVIO|SelMuxPC~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~2\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[1]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~17_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[7]~7_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~25_combout\ : std_logic;
SIGNAL \ROM1|memROM~28_combout\ : std_logic;
SIGNAL \ROM1|memROM~29_combout\ : std_logic;
SIGNAL \processador|FLAG|DOUT~1_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida~1_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida~4_combout\ : std_logic;
SIGNAL \KEY_3|saida[0]~1_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida~3_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida~0_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal11~0_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida[4]~2_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~33_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~32_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~31_combout\ : std_logic;
SIGNAL \KEY_3|saida[0]~2_combout\ : std_logic;
SIGNAL \KEY_3|saida[0]~7_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \FF_DEBOUNCER_2|DOUT~feeder_combout\ : std_logic;
SIGNAL \KEY_3|saida[0]~9_combout\ : std_logic;
SIGNAL \RESET_511~0_combout\ : std_logic;
SIGNAL \RESET_508~0_combout\ : std_logic;
SIGNAL \RESET_508~1_combout\ : std_logic;
SIGNAL \FF_DEBOUNCER_2|DOUT~DUPLICATE_q\ : std_logic;
SIGNAL \RESET_510~0_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \KEY_3|saida[0]~4_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \KEY_3|saida[0]~5_combout\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \FF_DEBOUNCER_0|DOUT~feeder_combout\ : std_logic;
SIGNAL \RESET_511~1_combout\ : std_logic;
SIGNAL \RESET_511~2_combout\ : std_logic;
SIGNAL \FF_DEBOUNCER_0|DOUT~q\ : std_logic;
SIGNAL \logica_Seven_Seg|comb~2_combout\ : std_logic;
SIGNAL \KEY_3|saida[0]~3_combout\ : std_logic;
SIGNAL \KEY_3|saida[0]~6_combout\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~30_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \processador|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~51_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~11_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~19feeder_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~52_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~19_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~54_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~35_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~53_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~27_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~43_combout\ : std_logic;
SIGNAL \decoderBloco|Equal7~0_combout\ : std_logic;
SIGNAL \RAM1|ram~567_combout\ : std_logic;
SIGNAL \RAM1|ram~568_combout\ : std_logic;
SIGNAL \RAM1|ram~31_q\ : std_logic;
SIGNAL \RAM1|ram~571_combout\ : std_logic;
SIGNAL \RAM1|ram~572_combout\ : std_logic;
SIGNAL \RAM1|ram~287_q\ : std_logic;
SIGNAL \RAM1|ram~573_combout\ : std_logic;
SIGNAL \RAM1|ram~574_combout\ : std_logic;
SIGNAL \RAM1|ram~519_q\ : std_logic;
SIGNAL \RAM1|ram~576_combout\ : std_logic;
SIGNAL \RAM1|ram~569_combout\ : std_logic;
SIGNAL \RAM1|ram~570_combout\ : std_logic;
SIGNAL \RAM1|ram~271_q\ : std_logic;
SIGNAL \RAM1|ram~559_combout\ : std_logic;
SIGNAL \RAM1|ram~560_combout\ : std_logic;
SIGNAL \RAM1|ram~15_q\ : std_logic;
SIGNAL \RAM1|ram~23feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~561_combout\ : std_logic;
SIGNAL \RAM1|ram~562_combout\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~563_combout\ : std_logic;
SIGNAL \RAM1|ram~564_combout\ : std_logic;
SIGNAL \RAM1|ram~55_q\ : std_logic;
SIGNAL \RAM1|ram~575_combout\ : std_logic;
SIGNAL \RAM1|ram~578_combout\ : std_logic;
SIGNAL \RAM1|ram~579_combout\ : std_logic;
SIGNAL \RAM1|ram~565_combout\ : std_logic;
SIGNAL \RAM1|ram~566_combout\ : std_logic;
SIGNAL \RAM1|ram~111_q\ : std_logic;
SIGNAL \RAM1|ram~577_combout\ : std_logic;
SIGNAL \RAM1|ram~527_combout\ : std_logic;
SIGNAL \SW_9|saida[0]~0_combout\ : std_logic;
SIGNAL \SW_8|saida[0]~0_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \SW_0_7|saida[0]~15_combout\ : std_logic;
SIGNAL \FF_DEBOUNCER_2|DOUT~q\ : std_logic;
SIGNAL \KEY_2|saida[0]~0_combout\ : std_logic;
SIGNAL \KEY_3|saida[0]~10_combout\ : std_logic;
SIGNAL \KEY_3|saida[0]~11_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~2\ : std_logic;
SIGNAL \processador|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add1~2\ : std_logic;
SIGNAL \processador|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~20_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~36_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~12_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~28_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~44_combout\ : std_logic;
SIGNAL \RAM1|ram~272_q\ : std_logic;
SIGNAL \RAM1|ram~288_q\ : std_logic;
SIGNAL \RAM1|ram~528_combout\ : std_logic;
SIGNAL \RAM1|ram~32feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~32_q\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~16feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~16_q\ : std_logic;
SIGNAL \RAM1|ram~600_combout\ : std_logic;
SIGNAL \RAM1|ram~520_q\ : std_logic;
SIGNAL \RAM1|ram~530_combout\ : std_logic;
SIGNAL \RAM1|ram~56_q\ : std_logic;
SIGNAL \RAM1|ram~112_q\ : std_logic;
SIGNAL \RAM1|ram~529_combout\ : std_logic;
SIGNAL \RAM1|ram~531_combout\ : std_logic;
SIGNAL \SW_0_7|saida[1]~7_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~6\ : std_logic;
SIGNAL \processador|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add1~6\ : std_logic;
SIGNAL \processador|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~37_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~13_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~21_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~29feeder_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~29_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~45_combout\ : std_logic;
SIGNAL \RAM1|ram~521_q\ : std_logic;
SIGNAL \RAM1|ram~534_combout\ : std_logic;
SIGNAL \RAM1|ram~289_q\ : std_logic;
SIGNAL \RAM1|ram~273_q\ : std_logic;
SIGNAL \RAM1|ram~532_combout\ : std_logic;
SIGNAL \RAM1|ram~33_q\ : std_logic;
SIGNAL \RAM1|ram~113_q\ : std_logic;
SIGNAL \RAM1|ram~17feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~596_combout\ : std_logic;
SIGNAL \RAM1|ram~57_q\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~533_combout\ : std_logic;
SIGNAL \RAM1|ram~535_combout\ : std_logic;
SIGNAL \SW_0_7|saida[2]~9_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~10\ : std_logic;
SIGNAL \processador|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add1~10\ : std_logic;
SIGNAL \processador|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~30_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~38_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~14_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~22_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~46_combout\ : std_logic;
SIGNAL \RAM1|ram~522_q\ : std_logic;
SIGNAL \RAM1|ram~538_combout\ : std_logic;
SIGNAL \RAM1|ram~114_q\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~58_q\ : std_logic;
SIGNAL \RAM1|ram~536_combout\ : std_logic;
SIGNAL \RAM1|ram~34_q\ : std_logic;
SIGNAL \RAM1|ram~592_combout\ : std_logic;
SIGNAL \RAM1|ram~290_q\ : std_logic;
SIGNAL \RAM1|ram~274_q\ : std_logic;
SIGNAL \RAM1|ram~537_combout\ : std_logic;
SIGNAL \RAM1|ram~539_combout\ : std_logic;
SIGNAL \SW_0_7|saida[3]~10_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~14\ : std_logic;
SIGNAL \processador|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \processador|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~23_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~15feeder_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~15_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~39_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~31feeder_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~31_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~47_combout\ : std_logic;
SIGNAL \RAM1|ram~35_q\ : std_logic;
SIGNAL \RAM1|ram~542_combout\ : std_logic;
SIGNAL \RAM1|ram~275_q\ : std_logic;
SIGNAL \RAM1|ram~541_combout\ : std_logic;
SIGNAL \RAM1|ram~523feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~523_q\ : std_logic;
SIGNAL \RAM1|ram~291_q\ : std_logic;
SIGNAL \RAM1|ram~543_combout\ : std_logic;
SIGNAL \RAM1|ram~59_q\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~27_q\ : std_logic;
SIGNAL \RAM1|ram~540_combout\ : std_logic;
SIGNAL \RAM1|ram~115feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~115_q\ : std_logic;
SIGNAL \RAM1|ram~588_combout\ : std_logic;
SIGNAL \RAM1|ram~544_combout\ : std_logic;
SIGNAL \SW_0_7|saida[4]~11_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~14\ : std_logic;
SIGNAL \processador|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~35_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~34_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~18\ : std_logic;
SIGNAL \processador|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add0~18\ : std_logic;
SIGNAL \processador|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~32feeder_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~32_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~16feeder_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~16_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~40_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~24_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~48_combout\ : std_logic;
SIGNAL \RAM1|ram~28_q\ : std_logic;
SIGNAL \RAM1|ram~548_combout\ : std_logic;
SIGNAL \RAM1|ram~116_q\ : std_logic;
SIGNAL \RAM1|ram~547_combout\ : std_logic;
SIGNAL \RAM1|ram~524_q\ : std_logic;
SIGNAL \RAM1|ram~60_q\ : std_logic;
SIGNAL \RAM1|ram~549_combout\ : std_logic;
SIGNAL \RAM1|ram~292_q\ : std_logic;
SIGNAL \RAM1|ram~36_q\ : std_logic;
SIGNAL \RAM1|ram~20feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~276_q\ : std_logic;
SIGNAL \RAM1|ram~545_combout\ : std_logic;
SIGNAL \RAM1|ram~546_combout\ : std_logic;
SIGNAL \RAM1|ram~550_combout\ : std_logic;
SIGNAL \SW_0_7|saida[5]~12_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~22\ : std_logic;
SIGNAL \processador|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~41_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~25_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~33feeder_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~33_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~17_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~49_combout\ : std_logic;
SIGNAL \RAM1|ram~277_q\ : std_logic;
SIGNAL \RAM1|ram~293_q\ : std_logic;
SIGNAL \RAM1|ram~552_combout\ : std_logic;
SIGNAL \RAM1|ram~117_q\ : std_logic;
SIGNAL \RAM1|ram~61_q\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~29_q\ : std_logic;
SIGNAL \RAM1|ram~551_combout\ : std_logic;
SIGNAL \RAM1|ram~37_q\ : std_logic;
SIGNAL \RAM1|ram~584_combout\ : std_logic;
SIGNAL \RAM1|ram~525_q\ : std_logic;
SIGNAL \RAM1|ram~553_combout\ : std_logic;
SIGNAL \RAM1|ram~554_combout\ : std_logic;
SIGNAL \SW_0_7|saida[6]~13_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~22\ : std_logic;
SIGNAL \processador|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~26\ : std_logic;
SIGNAL \processador|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~42_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~34_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~18_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~26_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~50_combout\ : std_logic;
SIGNAL \RAM1|ram~38_q\ : std_logic;
SIGNAL \RAM1|ram~294_q\ : std_logic;
SIGNAL \RAM1|ram~556_combout\ : std_logic;
SIGNAL \RAM1|ram~526feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~526_q\ : std_logic;
SIGNAL \RAM1|ram~557_combout\ : std_logic;
SIGNAL \RAM1|ram~278feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~278_q\ : std_logic;
SIGNAL \RAM1|ram~118feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~118_q\ : std_logic;
SIGNAL \RAM1|ram~22feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~580_combout\ : std_logic;
SIGNAL \RAM1|ram~62_q\ : std_logic;
SIGNAL \RAM1|ram~30_q\ : std_logic;
SIGNAL \RAM1|ram~555_combout\ : std_logic;
SIGNAL \RAM1|ram~558_combout\ : std_logic;
SIGNAL \SW_0_7|saida[7]~14_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~26\ : std_logic;
SIGNAL \processador|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \processador|FLAG|DOUT~2_combout\ : std_logic;
SIGNAL \processador|FLAG|DOUT~0_combout\ : std_logic;
SIGNAL \processador|FLAG|DOUT~q\ : std_logic;
SIGNAL \processador|MUX2|Equal1~0_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[2]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~22_combout\ : std_logic;
SIGNAL \ROM1|memROM~23_combout\ : std_logic;
SIGNAL \processador|MUX2|Equal2~0_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[3]~3_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~24_combout\ : std_logic;
SIGNAL \ROM1|memROM~26_combout\ : std_logic;
SIGNAL \RAM1|dado_out~0_combout\ : std_logic;
SIGNAL \KEY_3|saida[0]~8_combout\ : std_logic;
SIGNAL \SW_0_7|saida[1]~8_combout\ : std_logic;
SIGNAL \logica_LED|REG_LEDS|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|comb~0_combout\ : std_logic;
SIGNAL \logica_LED|comb~0_combout\ : std_logic;
SIGNAL \logica_LED|REG_LEDS|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \logica_LED|REG_LEDS|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \logica_LED|REG_LEDS|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \logica_LED|REG_LEDS|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \logica_LED|REG_LEDS|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \logica_LED|REG_LEDS|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|comb~1_combout\ : std_logic;
SIGNAL \logica_LED|FlipFlop1|DOUT~0_combout\ : std_logic;
SIGNAL \logica_LED|FlipFlop1|DOUT~q\ : std_logic;
SIGNAL \logica_LED|FlipFlop2|DOUT~0_combout\ : std_logic;
SIGNAL \logica_LED|FlipFlop2|DOUT~q\ : std_logic;
SIGNAL \logica_Seven_Seg|comb~3_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|REG2|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|comb~4_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|REG2|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|REG2|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|comb~5_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \decoderBloco|Equal3~0_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|comb~6_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|H4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|REG3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processador|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \logica_LED|REG_LEDS|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \processador|REG_RET|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FF_DEBOUNCER_0|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \KEY_3|ALT_INV_saida[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \KEY_3|ALT_INV_saida[0]~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~519_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~287_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~271_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~111_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out~0_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_saida~4_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_saida~3_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_saida[4]~2_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ALT_INV_RESET_510~0_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_Equal11~0_combout\ : std_logic;
SIGNAL \processador|REG_RET|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \processador|MUX2|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \processador|MUX2|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \processador|FLAG|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~29_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~28_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~27_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~26_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~25_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~24_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~23_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|REG4|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_Seven_Seg|REG0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \decoderBloco|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~50_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~34_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~26_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~49_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~33_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~25_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~48_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~32_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~24_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~47_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~31_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~23_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~46_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~38_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~30_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~22_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~45_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~37_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~29_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~21_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~44_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~36_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~28_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~20_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~12_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~35_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~27_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~19_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|ALT_INV_registrador~11_q\ : std_logic;
SIGNAL \logica_LED|FlipFlop2|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \logica_LED|FlipFlop1|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~600_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~596_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~592_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~588_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~584_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~580_combout\ : std_logic;
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
SIGNAL \processador|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \FF_DEBOUNCER_2|ALT_INV_DOUT~DUPLICATE_q\ : std_logic;
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
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \processador|FLAG|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \processador|FLAG|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~36_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~579_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~578_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~577_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~576_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~575_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~35_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~34_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~33_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~32_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~31_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~30_combout\ : std_logic;
SIGNAL \KEY_3|ALT_INV_saida[0]~11_combout\ : std_logic;
SIGNAL \KEY_3|ALT_INV_saida[0]~10_combout\ : std_logic;
SIGNAL \SW_8|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \KEY_2|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \SW_9|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \SW_0_7|ALT_INV_saida[0]~15_combout\ : std_logic;
SIGNAL \ALT_INV_RESET_508~1_combout\ : std_logic;
SIGNAL \ALT_INV_RESET_508~0_combout\ : std_logic;
SIGNAL \ALT_INV_RESET_511~2_combout\ : std_logic;
SIGNAL \ALT_INV_RESET_511~1_combout\ : std_logic;
SIGNAL \ALT_INV_RESET_511~0_combout\ : std_logic;
SIGNAL \KEY_3|ALT_INV_saida[0]~9_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~573_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~571_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~569_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~567_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~563_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \decoderBloco|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \SW_0_7|ALT_INV_saida[7]~14_combout\ : std_logic;
SIGNAL \SW_0_7|ALT_INV_saida[6]~13_combout\ : std_logic;
SIGNAL \SW_0_7|ALT_INV_saida[5]~12_combout\ : std_logic;
SIGNAL \SW_0_7|ALT_INV_saida[4]~11_combout\ : std_logic;
SIGNAL \SW_0_7|ALT_INV_saida[3]~10_combout\ : std_logic;
SIGNAL \SW_0_7|ALT_INV_saida[2]~9_combout\ : std_logic;
SIGNAL \SW_0_7|ALT_INV_saida[1]~7_combout\ : std_logic;
SIGNAL \processador|MUX1|ALT_INV_saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~558_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~526_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~294_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~118_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~278_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_saida[6]~6_combout\ : std_logic;
SIGNAL \processador|MUX1|ALT_INV_saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~525_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~293_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~277_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~117_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_saida[5]~5_combout\ : std_logic;
SIGNAL \processador|MUX1|ALT_INV_saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~524_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~116_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~292_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~276_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_saida[4]~4_combout\ : std_logic;
SIGNAL \processador|MUX1|ALT_INV_saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~523_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~291_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~275_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~115_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \processador|MUX1|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~522_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~290_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~274_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~114_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_saida[2]~2_combout\ : std_logic;
SIGNAL \processador|MUX1|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~521_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~289_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~273_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~113_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \processador|MUX1|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~520_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~112_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~288_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~272_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \processador|MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \KEY_3|ALT_INV_saida[0]~7_combout\ : std_logic;
SIGNAL \KEY_3|ALT_INV_saida[0]~6_combout\ : std_logic;
SIGNAL \KEY_3|ALT_INV_saida[0]~5_combout\ : std_logic;
SIGNAL \KEY_3|ALT_INV_saida[0]~4_combout\ : std_logic;
SIGNAL \FF_DEBOUNCER_2|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \KEY_3|ALT_INV_saida[0]~3_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|ALT_INV_comb~2_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
ww_FPGA_RESET_N <= FPGA_RESET_N;
PC_OUT <= ww_PC_OUT;
LEDR <= ww_LEDR;
REGA_OUT <= ww_REGA_OUT;
HabilitaRAM <= ww_HabilitaRAM;
MEM_ADDRESS <= ww_MEM_ADDRESS;
MEM_OUTT <= ww_MEM_OUTT;
enderecoR <= ww_enderecoR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\FF_DEBOUNCER_0|ALT_INV_DOUT~q\ <= NOT \FF_DEBOUNCER_0|DOUT~q\;
\KEY_3|ALT_INV_saida[0]~2_combout\ <= NOT \KEY_3|saida[0]~2_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\KEY_3|ALT_INV_saida[0]~1_combout\ <= NOT \KEY_3|saida[0]~1_combout\;
\RAM1|ALT_INV_ram~527_combout\ <= NOT \RAM1|ram~527_combout\;
\RAM1|ALT_INV_ram~519_q\ <= NOT \RAM1|ram~519_q\;
\RAM1|ALT_INV_ram~287_q\ <= NOT \RAM1|ram~287_q\;
\RAM1|ALT_INV_ram~271_q\ <= NOT \RAM1|ram~271_q\;
\RAM1|ALT_INV_ram~31_q\ <= NOT \RAM1|ram~31_q\;
\RAM1|ALT_INV_ram~111_q\ <= NOT \RAM1|ram~111_q\;
\RAM1|ALT_INV_ram~55_q\ <= NOT \RAM1|ram~55_q\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\RAM1|ALT_INV_ram~15_q\ <= NOT \RAM1|ram~15_q\;
\RAM1|ALT_INV_dado_out~0_combout\ <= NOT \RAM1|dado_out~0_combout\;
\processador|decoderInstru1|ALT_INV_saida~4_combout\ <= NOT \processador|decoderInstru1|saida~4_combout\;
\processador|decoderInstru1|ALT_INV_saida~3_combout\ <= NOT \processador|decoderInstru1|saida~3_combout\;
\processador|decoderInstru1|ALT_INV_saida[4]~2_combout\ <= NOT \processador|decoderInstru1|saida[4]~2_combout\;
\processador|decoderInstru1|ALT_INV_saida~1_combout\ <= NOT \processador|decoderInstru1|saida~1_combout\;
\processador|decoderInstru1|ALT_INV_saida~0_combout\ <= NOT \processador|decoderInstru1|saida~0_combout\;
\ALT_INV_RESET_510~0_combout\ <= NOT \RESET_510~0_combout\;
\logica_Seven_Seg|ALT_INV_comb~1_combout\ <= NOT \logica_Seven_Seg|comb~1_combout\;
\logica_Seven_Seg|ALT_INV_comb~0_combout\ <= NOT \logica_Seven_Seg|comb~0_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\processador|decoderInstru1|ALT_INV_Equal11~0_combout\ <= NOT \processador|decoderInstru1|Equal11~0_combout\;
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
\processador|FLAG|ALT_INV_DOUT~q\ <= NOT \processador|FLAG|DOUT~q\;
\ROM1|ALT_INV_memROM~29_combout\ <= NOT \ROM1|memROM~29_combout\;
\ROM1|ALT_INV_memROM~28_combout\ <= NOT \ROM1|memROM~28_combout\;
\ROM1|ALT_INV_memROM~27_combout\ <= NOT \ROM1|memROM~27_combout\;
\ROM1|ALT_INV_memROM~26_combout\ <= NOT \ROM1|memROM~26_combout\;
\ROM1|ALT_INV_memROM~25_combout\ <= NOT \ROM1|memROM~25_combout\;
\ROM1|ALT_INV_memROM~24_combout\ <= NOT \ROM1|memROM~24_combout\;
\ROM1|ALT_INV_memROM~23_combout\ <= NOT \ROM1|memROM~23_combout\;
\ROM1|ALT_INV_memROM~22_combout\ <= NOT \ROM1|memROM~22_combout\;
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
\logica_Seven_Seg|REG0|ALT_INV_DOUT\(2) <= NOT \logica_Seven_Seg|REG0|DOUT\(2);
\logica_Seven_Seg|REG0|ALT_INV_DOUT\(1) <= NOT \logica_Seven_Seg|REG0|DOUT\(1);
\logica_Seven_Seg|REG0|ALT_INV_DOUT\(3) <= NOT \logica_Seven_Seg|REG0|DOUT\(3);
\logica_Seven_Seg|REG0|ALT_INV_DOUT\(0) <= NOT \logica_Seven_Seg|REG0|DOUT\(0);
\ROM1|ALT_INV_memROM~21_combout\ <= NOT \ROM1|memROM~21_combout\;
\ROM1|ALT_INV_memROM~20_combout\ <= NOT \ROM1|memROM~20_combout\;
\ROM1|ALT_INV_memROM~19_combout\ <= NOT \ROM1|memROM~19_combout\;
\ROM1|ALT_INV_memROM~18_combout\ <= NOT \ROM1|memROM~18_combout\;
\ROM1|ALT_INV_memROM~17_combout\ <= NOT \ROM1|memROM~17_combout\;
\ROM1|ALT_INV_memROM~16_combout\ <= NOT \ROM1|memROM~16_combout\;
\ROM1|ALT_INV_memROM~15_combout\ <= NOT \ROM1|memROM~15_combout\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\decoderBloco|ALT_INV_Equal7~0_combout\ <= NOT \decoderBloco|Equal7~0_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~50_combout\ <= NOT \processador|BANCO_REGISTRADORES|registrador~50_combout\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~42_q\ <= NOT \processador|BANCO_REGISTRADORES|registrador~42_q\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~34_q\ <= NOT \processador|BANCO_REGISTRADORES|registrador~34_q\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~26_q\ <= NOT \processador|BANCO_REGISTRADORES|registrador~26_q\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~18_q\ <= NOT \processador|BANCO_REGISTRADORES|registrador~18_q\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~49_combout\ <= NOT \processador|BANCO_REGISTRADORES|registrador~49_combout\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~41_q\ <= NOT \processador|BANCO_REGISTRADORES|registrador~41_q\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~33_q\ <= NOT \processador|BANCO_REGISTRADORES|registrador~33_q\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~25_q\ <= NOT \processador|BANCO_REGISTRADORES|registrador~25_q\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~17_q\ <= NOT \processador|BANCO_REGISTRADORES|registrador~17_q\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~48_combout\ <= NOT \processador|BANCO_REGISTRADORES|registrador~48_combout\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~40_q\ <= NOT \processador|BANCO_REGISTRADORES|registrador~40_q\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~32_q\ <= NOT \processador|BANCO_REGISTRADORES|registrador~32_q\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~24_q\ <= NOT \processador|BANCO_REGISTRADORES|registrador~24_q\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~16_q\ <= NOT \processador|BANCO_REGISTRADORES|registrador~16_q\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~47_combout\ <= NOT \processador|BANCO_REGISTRADORES|registrador~47_combout\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~39_q\ <= NOT \processador|BANCO_REGISTRADORES|registrador~39_q\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~31_q\ <= NOT \processador|BANCO_REGISTRADORES|registrador~31_q\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~23_q\ <= NOT \processador|BANCO_REGISTRADORES|registrador~23_q\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~15_q\ <= NOT \processador|BANCO_REGISTRADORES|registrador~15_q\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~46_combout\ <= NOT \processador|BANCO_REGISTRADORES|registrador~46_combout\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~38_q\ <= NOT \processador|BANCO_REGISTRADORES|registrador~38_q\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~30_q\ <= NOT \processador|BANCO_REGISTRADORES|registrador~30_q\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~22_q\ <= NOT \processador|BANCO_REGISTRADORES|registrador~22_q\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~14_q\ <= NOT \processador|BANCO_REGISTRADORES|registrador~14_q\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~45_combout\ <= NOT \processador|BANCO_REGISTRADORES|registrador~45_combout\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~37_q\ <= NOT \processador|BANCO_REGISTRADORES|registrador~37_q\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~29_q\ <= NOT \processador|BANCO_REGISTRADORES|registrador~29_q\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~21_q\ <= NOT \processador|BANCO_REGISTRADORES|registrador~21_q\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~13_q\ <= NOT \processador|BANCO_REGISTRADORES|registrador~13_q\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~44_combout\ <= NOT \processador|BANCO_REGISTRADORES|registrador~44_combout\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~36_q\ <= NOT \processador|BANCO_REGISTRADORES|registrador~36_q\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~28_q\ <= NOT \processador|BANCO_REGISTRADORES|registrador~28_q\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~20_q\ <= NOT \processador|BANCO_REGISTRADORES|registrador~20_q\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~12_q\ <= NOT \processador|BANCO_REGISTRADORES|registrador~12_q\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\ <= NOT \processador|BANCO_REGISTRADORES|registrador~43_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~35_q\ <= NOT \processador|BANCO_REGISTRADORES|registrador~35_q\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~27_q\ <= NOT \processador|BANCO_REGISTRADORES|registrador~27_q\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~19_q\ <= NOT \processador|BANCO_REGISTRADORES|registrador~19_q\;
\processador|BANCO_REGISTRADORES|ALT_INV_registrador~11_q\ <= NOT \processador|BANCO_REGISTRADORES|registrador~11_q\;
\logica_LED|FlipFlop2|ALT_INV_DOUT~q\ <= NOT \logica_LED|FlipFlop2|DOUT~q\;
\logica_LED|FlipFlop1|ALT_INV_DOUT~q\ <= NOT \logica_LED|FlipFlop1|DOUT~q\;
\RAM1|ALT_INV_ram~600_combout\ <= NOT \RAM1|ram~600_combout\;
\RAM1|ALT_INV_ram~596_combout\ <= NOT \RAM1|ram~596_combout\;
\RAM1|ALT_INV_ram~592_combout\ <= NOT \RAM1|ram~592_combout\;
\RAM1|ALT_INV_ram~588_combout\ <= NOT \RAM1|ram~588_combout\;
\RAM1|ALT_INV_ram~584_combout\ <= NOT \RAM1|ram~584_combout\;
\RAM1|ALT_INV_ram~580_combout\ <= NOT \RAM1|ram~580_combout\;
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
\processador|PC|ALT_INV_DOUT\(8) <= NOT \processador|PC|DOUT\(8);
\processador|PC|ALT_INV_DOUT\(7) <= NOT \processador|PC|DOUT\(7);
\processador|PC|ALT_INV_DOUT\(6) <= NOT \processador|PC|DOUT\(6);
\processador|PC|ALT_INV_DOUT\(5) <= NOT \processador|PC|DOUT\(5);
\processador|PC|ALT_INV_DOUT\(4) <= NOT \processador|PC|DOUT\(4);
\processador|PC|ALT_INV_DOUT\(3) <= NOT \processador|PC|DOUT\(3);
\processador|PC|ALT_INV_DOUT\(2) <= NOT \processador|PC|DOUT\(2);
\processador|PC|ALT_INV_DOUT\(1) <= NOT \processador|PC|DOUT\(1);
\processador|PC|ALT_INV_DOUT\(0) <= NOT \processador|PC|DOUT\(0);
\FF_DEBOUNCER_2|ALT_INV_DOUT~DUPLICATE_q\ <= NOT \FF_DEBOUNCER_2|DOUT~DUPLICATE_q\;
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
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_FPGA_RESET_N~input_o\ <= NOT \FPGA_RESET_N~input_o\;
\processador|FLAG|ALT_INV_DOUT~2_combout\ <= NOT \processador|FLAG|DOUT~2_combout\;
\processador|FLAG|ALT_INV_DOUT~1_combout\ <= NOT \processador|FLAG|DOUT~1_combout\;
\ROM1|ALT_INV_memROM~36_combout\ <= NOT \ROM1|memROM~36_combout\;
\RAM1|ALT_INV_ram~579_combout\ <= NOT \RAM1|ram~579_combout\;
\RAM1|ALT_INV_ram~578_combout\ <= NOT \RAM1|ram~578_combout\;
\RAM1|ALT_INV_ram~577_combout\ <= NOT \RAM1|ram~577_combout\;
\RAM1|ALT_INV_ram~576_combout\ <= NOT \RAM1|ram~576_combout\;
\RAM1|ALT_INV_ram~575_combout\ <= NOT \RAM1|ram~575_combout\;
\ROM1|ALT_INV_memROM~35_combout\ <= NOT \ROM1|memROM~35_combout\;
\ROM1|ALT_INV_memROM~34_combout\ <= NOT \ROM1|memROM~34_combout\;
\ROM1|ALT_INV_memROM~33_combout\ <= NOT \ROM1|memROM~33_combout\;
\ROM1|ALT_INV_memROM~32_combout\ <= NOT \ROM1|memROM~32_combout\;
\ROM1|ALT_INV_memROM~31_combout\ <= NOT \ROM1|memROM~31_combout\;
\ROM1|ALT_INV_memROM~30_combout\ <= NOT \ROM1|memROM~30_combout\;
\KEY_3|ALT_INV_saida[0]~11_combout\ <= NOT \KEY_3|saida[0]~11_combout\;
\KEY_3|ALT_INV_saida[0]~10_combout\ <= NOT \KEY_3|saida[0]~10_combout\;
\SW_8|ALT_INV_saida[0]~0_combout\ <= NOT \SW_8|saida[0]~0_combout\;
\KEY_2|ALT_INV_saida[0]~0_combout\ <= NOT \KEY_2|saida[0]~0_combout\;
\SW_9|ALT_INV_saida[0]~0_combout\ <= NOT \SW_9|saida[0]~0_combout\;
\SW_0_7|ALT_INV_saida[0]~15_combout\ <= NOT \SW_0_7|saida[0]~15_combout\;
\ALT_INV_RESET_508~1_combout\ <= NOT \RESET_508~1_combout\;
\ALT_INV_RESET_508~0_combout\ <= NOT \RESET_508~0_combout\;
\ALT_INV_RESET_511~2_combout\ <= NOT \RESET_511~2_combout\;
\ALT_INV_RESET_511~1_combout\ <= NOT \RESET_511~1_combout\;
\ALT_INV_RESET_511~0_combout\ <= NOT \RESET_511~0_combout\;
\KEY_3|ALT_INV_saida[0]~9_combout\ <= NOT \KEY_3|saida[0]~9_combout\;
\RAM1|ALT_INV_ram~573_combout\ <= NOT \RAM1|ram~573_combout\;
\RAM1|ALT_INV_ram~571_combout\ <= NOT \RAM1|ram~571_combout\;
\RAM1|ALT_INV_ram~569_combout\ <= NOT \RAM1|ram~569_combout\;
\RAM1|ALT_INV_ram~567_combout\ <= NOT \RAM1|ram~567_combout\;
\RAM1|ALT_INV_ram~565_combout\ <= NOT \RAM1|ram~565_combout\;
\RAM1|ALT_INV_ram~563_combout\ <= NOT \RAM1|ram~563_combout\;
\RAM1|ALT_INV_ram~561_combout\ <= NOT \RAM1|ram~561_combout\;
\RAM1|ALT_INV_ram~559_combout\ <= NOT \RAM1|ram~559_combout\;
\decoderBloco|ALT_INV_Equal3~0_combout\ <= NOT \decoderBloco|Equal3~0_combout\;
\ALT_INV_comb~3_combout\ <= NOT \comb~3_combout\;
\SW_0_7|ALT_INV_saida[7]~14_combout\ <= NOT \SW_0_7|saida[7]~14_combout\;
\SW_0_7|ALT_INV_saida[6]~13_combout\ <= NOT \SW_0_7|saida[6]~13_combout\;
\SW_0_7|ALT_INV_saida[5]~12_combout\ <= NOT \SW_0_7|saida[5]~12_combout\;
\SW_0_7|ALT_INV_saida[4]~11_combout\ <= NOT \SW_0_7|saida[4]~11_combout\;
\SW_0_7|ALT_INV_saida[3]~10_combout\ <= NOT \SW_0_7|saida[3]~10_combout\;
\SW_0_7|ALT_INV_saida[2]~9_combout\ <= NOT \SW_0_7|saida[2]~9_combout\;
\SW_0_7|ALT_INV_saida[1]~7_combout\ <= NOT \SW_0_7|saida[1]~7_combout\;
\processador|MUX1|ALT_INV_saida_MUX[7]~7_combout\ <= NOT \processador|MUX1|saida_MUX[7]~7_combout\;
\RAM1|ALT_INV_ram~558_combout\ <= NOT \RAM1|ram~558_combout\;
\RAM1|ALT_INV_ram~557_combout\ <= NOT \RAM1|ram~557_combout\;
\RAM1|ALT_INV_ram~526_q\ <= NOT \RAM1|ram~526_q\;
\RAM1|ALT_INV_ram~556_combout\ <= NOT \RAM1|ram~556_combout\;
\RAM1|ALT_INV_ram~294_q\ <= NOT \RAM1|ram~294_q\;
\RAM1|ALT_INV_ram~38_q\ <= NOT \RAM1|ram~38_q\;
\RAM1|ALT_INV_ram~555_combout\ <= NOT \RAM1|ram~555_combout\;
\RAM1|ALT_INV_ram~62_q\ <= NOT \RAM1|ram~62_q\;
\RAM1|ALT_INV_ram~30_q\ <= NOT \RAM1|ram~30_q\;
\RAM1|ALT_INV_ram~118_q\ <= NOT \RAM1|ram~118_q\;
\RAM1|ALT_INV_ram~278_q\ <= NOT \RAM1|ram~278_q\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\processador|ULA1|ALT_INV_saida[6]~6_combout\ <= NOT \processador|ULA1|saida[6]~6_combout\;
\processador|MUX1|ALT_INV_saida_MUX[6]~6_combout\ <= NOT \processador|MUX1|saida_MUX[6]~6_combout\;
\RAM1|ALT_INV_ram~554_combout\ <= NOT \RAM1|ram~554_combout\;
\RAM1|ALT_INV_ram~553_combout\ <= NOT \RAM1|ram~553_combout\;
\RAM1|ALT_INV_ram~525_q\ <= NOT \RAM1|ram~525_q\;
\RAM1|ALT_INV_ram~552_combout\ <= NOT \RAM1|ram~552_combout\;
\RAM1|ALT_INV_ram~293_q\ <= NOT \RAM1|ram~293_q\;
\RAM1|ALT_INV_ram~277_q\ <= NOT \RAM1|ram~277_q\;
\RAM1|ALT_INV_ram~117_q\ <= NOT \RAM1|ram~117_q\;
\RAM1|ALT_INV_ram~37_q\ <= NOT \RAM1|ram~37_q\;
\RAM1|ALT_INV_ram~551_combout\ <= NOT \RAM1|ram~551_combout\;
\RAM1|ALT_INV_ram~61_q\ <= NOT \RAM1|ram~61_q\;
\RAM1|ALT_INV_ram~29_q\ <= NOT \RAM1|ram~29_q\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\processador|ULA1|ALT_INV_saida[5]~5_combout\ <= NOT \processador|ULA1|saida[5]~5_combout\;
\processador|MUX1|ALT_INV_saida_MUX[5]~5_combout\ <= NOT \processador|MUX1|saida_MUX[5]~5_combout\;
\RAM1|ALT_INV_ram~550_combout\ <= NOT \RAM1|ram~550_combout\;
\RAM1|ALT_INV_ram~549_combout\ <= NOT \RAM1|ram~549_combout\;
\RAM1|ALT_INV_ram~524_q\ <= NOT \RAM1|ram~524_q\;
\RAM1|ALT_INV_ram~60_q\ <= NOT \RAM1|ram~60_q\;
\RAM1|ALT_INV_ram~548_combout\ <= NOT \RAM1|ram~548_combout\;
\RAM1|ALT_INV_ram~28_q\ <= NOT \RAM1|ram~28_q\;
\RAM1|ALT_INV_ram~547_combout\ <= NOT \RAM1|ram~547_combout\;
\RAM1|ALT_INV_ram~116_q\ <= NOT \RAM1|ram~116_q\;
\RAM1|ALT_INV_ram~546_combout\ <= NOT \RAM1|ram~546_combout\;
\RAM1|ALT_INV_ram~545_combout\ <= NOT \RAM1|ram~545_combout\;
\RAM1|ALT_INV_ram~292_q\ <= NOT \RAM1|ram~292_q\;
\RAM1|ALT_INV_ram~36_q\ <= NOT \RAM1|ram~36_q\;
\RAM1|ALT_INV_ram~276_q\ <= NOT \RAM1|ram~276_q\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\processador|ULA1|ALT_INV_saida[4]~4_combout\ <= NOT \processador|ULA1|saida[4]~4_combout\;
\processador|MUX1|ALT_INV_saida_MUX[4]~4_combout\ <= NOT \processador|MUX1|saida_MUX[4]~4_combout\;
\RAM1|ALT_INV_ram~544_combout\ <= NOT \RAM1|ram~544_combout\;
\RAM1|ALT_INV_ram~543_combout\ <= NOT \RAM1|ram~543_combout\;
\RAM1|ALT_INV_ram~523_q\ <= NOT \RAM1|ram~523_q\;
\RAM1|ALT_INV_ram~291_q\ <= NOT \RAM1|ram~291_q\;
\RAM1|ALT_INV_ram~542_combout\ <= NOT \RAM1|ram~542_combout\;
\RAM1|ALT_INV_ram~35_q\ <= NOT \RAM1|ram~35_q\;
\RAM1|ALT_INV_ram~541_combout\ <= NOT \RAM1|ram~541_combout\;
\RAM1|ALT_INV_ram~275_q\ <= NOT \RAM1|ram~275_q\;
\RAM1|ALT_INV_ram~115_q\ <= NOT \RAM1|ram~115_q\;
\RAM1|ALT_INV_ram~59_q\ <= NOT \RAM1|ram~59_q\;
\RAM1|ALT_INV_ram~540_combout\ <= NOT \RAM1|ram~540_combout\;
\RAM1|ALT_INV_ram~27_q\ <= NOT \RAM1|ram~27_q\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\processador|MUX1|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \processador|MUX1|saida_MUX[3]~3_combout\;
\RAM1|ALT_INV_ram~539_combout\ <= NOT \RAM1|ram~539_combout\;
\RAM1|ALT_INV_ram~538_combout\ <= NOT \RAM1|ram~538_combout\;
\RAM1|ALT_INV_ram~522_q\ <= NOT \RAM1|ram~522_q\;
\RAM1|ALT_INV_ram~537_combout\ <= NOT \RAM1|ram~537_combout\;
\RAM1|ALT_INV_ram~290_q\ <= NOT \RAM1|ram~290_q\;
\RAM1|ALT_INV_ram~274_q\ <= NOT \RAM1|ram~274_q\;
\RAM1|ALT_INV_ram~114_q\ <= NOT \RAM1|ram~114_q\;
\RAM1|ALT_INV_ram~34_q\ <= NOT \RAM1|ram~34_q\;
\RAM1|ALT_INV_ram~536_combout\ <= NOT \RAM1|ram~536_combout\;
\RAM1|ALT_INV_ram~58_q\ <= NOT \RAM1|ram~58_q\;
\RAM1|ALT_INV_ram~26_q\ <= NOT \RAM1|ram~26_q\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\processador|ULA1|ALT_INV_saida[2]~2_combout\ <= NOT \processador|ULA1|saida[2]~2_combout\;
\processador|MUX1|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \processador|MUX1|saida_MUX[2]~2_combout\;
\RAM1|ALT_INV_ram~535_combout\ <= NOT \RAM1|ram~535_combout\;
\RAM1|ALT_INV_ram~534_combout\ <= NOT \RAM1|ram~534_combout\;
\RAM1|ALT_INV_ram~521_q\ <= NOT \RAM1|ram~521_q\;
\RAM1|ALT_INV_ram~533_combout\ <= NOT \RAM1|ram~533_combout\;
\RAM1|ALT_INV_ram~57_q\ <= NOT \RAM1|ram~57_q\;
\RAM1|ALT_INV_ram~25_q\ <= NOT \RAM1|ram~25_q\;
\RAM1|ALT_INV_ram~532_combout\ <= NOT \RAM1|ram~532_combout\;
\RAM1|ALT_INV_ram~289_q\ <= NOT \RAM1|ram~289_q\;
\RAM1|ALT_INV_ram~273_q\ <= NOT \RAM1|ram~273_q\;
\RAM1|ALT_INV_ram~113_q\ <= NOT \RAM1|ram~113_q\;
\RAM1|ALT_INV_ram~33_q\ <= NOT \RAM1|ram~33_q\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\processador|MUX1|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \processador|MUX1|saida_MUX[1]~1_combout\;
\RAM1|ALT_INV_ram~531_combout\ <= NOT \RAM1|ram~531_combout\;
\RAM1|ALT_INV_ram~530_combout\ <= NOT \RAM1|ram~530_combout\;
\RAM1|ALT_INV_ram~520_q\ <= NOT \RAM1|ram~520_q\;
\RAM1|ALT_INV_ram~529_combout\ <= NOT \RAM1|ram~529_combout\;
\RAM1|ALT_INV_ram~56_q\ <= NOT \RAM1|ram~56_q\;
\RAM1|ALT_INV_ram~112_q\ <= NOT \RAM1|ram~112_q\;
\RAM1|ALT_INV_ram~528_combout\ <= NOT \RAM1|ram~528_combout\;
\RAM1|ALT_INV_ram~288_q\ <= NOT \RAM1|ram~288_q\;
\RAM1|ALT_INV_ram~272_q\ <= NOT \RAM1|ram~272_q\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\RAM1|ALT_INV_ram~32_q\ <= NOT \RAM1|ram~32_q\;
\RAM1|ALT_INV_ram~16_q\ <= NOT \RAM1|ram~16_q\;
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\processador|ULA1|ALT_INV_saida[0]~0_combout\ <= NOT \processador|ULA1|saida[0]~0_combout\;
\processador|MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \processador|MUX1|saida_MUX[0]~0_combout\;
\KEY_3|ALT_INV_saida[0]~7_combout\ <= NOT \KEY_3|saida[0]~7_combout\;
\KEY_3|ALT_INV_saida[0]~6_combout\ <= NOT \KEY_3|saida[0]~6_combout\;
\KEY_3|ALT_INV_saida[0]~5_combout\ <= NOT \KEY_3|saida[0]~5_combout\;
\KEY_3|ALT_INV_saida[0]~4_combout\ <= NOT \KEY_3|saida[0]~4_combout\;
\FF_DEBOUNCER_2|ALT_INV_DOUT~q\ <= NOT \FF_DEBOUNCER_2|DOUT~q\;
\KEY_3|ALT_INV_saida[0]~3_combout\ <= NOT \KEY_3|saida[0]~3_combout\;
\logica_Seven_Seg|ALT_INV_comb~2_combout\ <= NOT \logica_Seven_Seg|comb~2_combout\;

-- Location: IOOBUF_X54_Y17_N22
\MEM_OUTT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \KEY_3|saida[0]~8_combout\,
	oe => \KEY_3|saida[0]~7_combout\,
	devoe => ww_devoe,
	o => ww_MEM_OUTT(0));

-- Location: IOOBUF_X54_Y15_N56
\MEM_OUTT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_0_7|saida[1]~7_combout\,
	oe => \SW_0_7|saida[1]~8_combout\,
	devoe => ww_devoe,
	o => ww_MEM_OUTT(1));

-- Location: IOOBUF_X40_Y45_N42
\MEM_OUTT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_0_7|saida[2]~9_combout\,
	oe => \SW_0_7|saida[1]~8_combout\,
	devoe => ww_devoe,
	o => ww_MEM_OUTT(2));

-- Location: IOOBUF_X43_Y45_N2
\MEM_OUTT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_0_7|saida[3]~10_combout\,
	oe => \SW_0_7|saida[1]~8_combout\,
	devoe => ww_devoe,
	o => ww_MEM_OUTT(3));

-- Location: IOOBUF_X38_Y45_N19
\MEM_OUTT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_0_7|saida[4]~11_combout\,
	oe => \SW_0_7|saida[1]~8_combout\,
	devoe => ww_devoe,
	o => ww_MEM_OUTT(4));

-- Location: IOOBUF_X43_Y45_N53
\MEM_OUTT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_0_7|saida[5]~12_combout\,
	oe => \SW_0_7|saida[1]~8_combout\,
	devoe => ww_devoe,
	o => ww_MEM_OUTT(5));

-- Location: IOOBUF_X54_Y17_N39
\MEM_OUTT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_0_7|saida[6]~13_combout\,
	oe => \SW_0_7|saida[1]~8_combout\,
	devoe => ww_devoe,
	o => ww_MEM_OUTT(6));

-- Location: IOOBUF_X42_Y45_N53
\MEM_OUTT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_0_7|saida[7]~14_combout\,
	oe => \SW_0_7|saida[1]~8_combout\,
	devoe => ww_devoe,
	o => ww_MEM_OUTT(7));

-- Location: IOOBUF_X36_Y45_N53
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

-- Location: IOOBUF_X32_Y45_N42
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

-- Location: IOOBUF_X54_Y14_N62
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

-- Location: IOOBUF_X54_Y14_N79
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

-- Location: IOOBUF_X54_Y16_N39
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

-- Location: IOOBUF_X34_Y45_N36
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

-- Location: IOOBUF_X14_Y0_N36
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

-- Location: IOOBUF_X32_Y45_N76
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

-- Location: IOOBUF_X14_Y0_N53
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

-- Location: IOOBUF_X38_Y45_N53
\REGA_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|BANCO_REGISTRADORES|registrador~43_combout\,
	devoe => ww_devoe,
	o => ww_REGA_OUT(0));

-- Location: IOOBUF_X34_Y45_N53
\REGA_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|BANCO_REGISTRADORES|registrador~44_combout\,
	devoe => ww_devoe,
	o => ww_REGA_OUT(1));

-- Location: IOOBUF_X40_Y45_N76
\REGA_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|BANCO_REGISTRADORES|registrador~45_combout\,
	devoe => ww_devoe,
	o => ww_REGA_OUT(2));

-- Location: IOOBUF_X38_Y45_N2
\REGA_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|BANCO_REGISTRADORES|registrador~46_combout\,
	devoe => ww_devoe,
	o => ww_REGA_OUT(3));

-- Location: IOOBUF_X54_Y16_N22
\REGA_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|BANCO_REGISTRADORES|registrador~47_combout\,
	devoe => ww_devoe,
	o => ww_REGA_OUT(4));

-- Location: IOOBUF_X12_Y0_N53
\REGA_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|BANCO_REGISTRADORES|registrador~48_combout\,
	devoe => ww_devoe,
	o => ww_REGA_OUT(5));

-- Location: IOOBUF_X36_Y45_N36
\REGA_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|BANCO_REGISTRADORES|registrador~49_combout\,
	devoe => ww_devoe,
	o => ww_REGA_OUT(6));

-- Location: IOOBUF_X54_Y15_N39
\REGA_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|BANCO_REGISTRADORES|registrador~50_combout\,
	devoe => ww_devoe,
	o => ww_REGA_OUT(7));

-- Location: IOOBUF_X44_Y45_N53
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

-- Location: IOOBUF_X11_Y0_N53
\MEM_ADDRESS[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~10_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(0));

-- Location: IOOBUF_X36_Y45_N19
\MEM_ADDRESS[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~12_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(1));

-- Location: IOOBUF_X34_Y45_N2
\MEM_ADDRESS[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~14_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(2));

-- Location: IOOBUF_X54_Y14_N96
\MEM_ADDRESS[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~16_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(3));

-- Location: IOOBUF_X34_Y45_N19
\MEM_ADDRESS[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~17_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(4));

-- Location: IOOBUF_X54_Y16_N5
\MEM_ADDRESS[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~19_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(5));

-- Location: IOOBUF_X32_Y45_N59
\MEM_ADDRESS[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~20_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(6));

-- Location: IOOBUF_X38_Y45_N36
\MEM_ADDRESS[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~17_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(7));

-- Location: IOOBUF_X54_Y14_N45
\MEM_ADDRESS[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~21_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(8));

-- Location: IOOBUF_X40_Y45_N59
\enderecoR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_enderecoR(0));

-- Location: IOOBUF_X40_Y45_N93
\enderecoR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~5_combout\,
	devoe => ww_devoe,
	o => ww_enderecoR(1));

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

-- Location: LABCELL_X35_Y6_N30
\processador|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~1_sumout\ = SUM(( \processador|PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \processador|incrementaPC|Add0~2\ = CARRY(( \processador|PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \processador|incrementaPC|Add0~1_sumout\,
	cout => \processador|incrementaPC|Add0~2\);

-- Location: LABCELL_X36_Y6_N15
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \processador|PC|DOUT\(2) & ( (!\processador|PC|DOUT\(1) & (!\processador|PC|DOUT[0]~DUPLICATE_q\ $ (!\processador|PC|DOUT[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~7_combout\);

-- Location: LABCELL_X35_Y6_N33
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

-- Location: LABCELL_X35_Y6_N36
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

-- Location: LABCELL_X35_Y6_N39
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

-- Location: LABCELL_X35_Y6_N42
\processador|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~17_sumout\ = SUM(( \processador|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~14\ ))
-- \processador|incrementaPC|Add0~18\ = CARRY(( \processador|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \processador|incrementaPC|Add0~14\,
	sumout => \processador|incrementaPC|Add0~17_sumout\,
	cout => \processador|incrementaPC|Add0~18\);

-- Location: FF_X35_Y6_N43
\processador|REG_RET|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~17_sumout\,
	ena => \processador|LOG_DESVIO|SelMuxPC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(4));

-- Location: LABCELL_X36_Y4_N54
\processador|MUX2|MUX_OUT[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[4]~4_combout\ = ( \processador|incrementaPC|Add0~17_sumout\ & ( (!\processador|MUX2|Equal2~0_combout\) # ((!\processador|MUX2|Equal1~0_combout\ & (\processador|REG_RET|DOUT\(4))) # (\processador|MUX2|Equal1~0_combout\ & 
-- ((\ROM1|memROM~17_combout\)))) ) ) # ( !\processador|incrementaPC|Add0~17_sumout\ & ( (\processador|MUX2|Equal2~0_combout\ & ((!\processador|MUX2|Equal1~0_combout\ & (\processador|REG_RET|DOUT\(4))) # (\processador|MUX2|Equal1~0_combout\ & 
-- ((\ROM1|memROM~17_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110101110101111111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUX2|ALT_INV_Equal2~0_combout\,
	datab => \processador|MUX2|ALT_INV_Equal1~0_combout\,
	datac => \processador|REG_RET|ALT_INV_DOUT\(4),
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \processador|incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \processador|MUX2|MUX_OUT[4]~4_combout\);

-- Location: FF_X36_Y4_N55
\processador|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUX2|MUX_OUT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y6_N45
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

-- Location: FF_X35_Y6_N46
\processador|REG_RET|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~21_sumout\,
	ena => \processador|LOG_DESVIO|SelMuxPC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(5));

-- Location: FF_X36_Y4_N58
\processador|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUX2|MUX_OUT[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(3));

-- Location: FF_X36_Y4_N41
\processador|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUX2|MUX_OUT[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[2]~DUPLICATE_q\);

-- Location: FF_X36_Y4_N14
\processador|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUX2|MUX_OUT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y4_N21
\ROM1|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~18_combout\ = ( \processador|PC|DOUT[1]~DUPLICATE_q\ & ( (\processador|PC|DOUT[2]~DUPLICATE_q\ & \processador|PC|DOUT[0]~DUPLICATE_q\) ) ) # ( !\processador|PC|DOUT[1]~DUPLICATE_q\ & ( (\processador|PC|DOUT[2]~DUPLICATE_q\ & 
-- (!\processador|PC|DOUT\(3) $ (!\processador|PC|DOUT[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(3),
	datac => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~18_combout\);

-- Location: FF_X36_Y4_N56
\processador|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUX2|MUX_OUT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(4));

-- Location: LABCELL_X36_Y4_N18
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\processador|PC|DOUT[7]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(5) & (!\processador|PC|DOUT\(6) & !\processador|PC|DOUT\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(5),
	datac => \processador|PC|ALT_INV_DOUT\(6),
	datad => \processador|PC|ALT_INV_DOUT\(4),
	dataf => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X35_Y4_N45
\ROM1|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~19_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\processador|PC|DOUT\(8) & \ROM1|memROM~18_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~18_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~19_combout\);

-- Location: LABCELL_X35_Y4_N12
\processador|MUX2|MUX_OUT[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[5]~5_combout\ = ( \processador|MUX2|Equal2~0_combout\ & ( (!\processador|MUX2|Equal1~0_combout\ & (\processador|REG_RET|DOUT\(5))) # (\processador|MUX2|Equal1~0_combout\ & ((\ROM1|memROM~19_combout\))) ) ) # ( 
-- !\processador|MUX2|Equal2~0_combout\ & ( \processador|incrementaPC|Add0~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|incrementaPC|ALT_INV_Add0~21_sumout\,
	datab => \processador|MUX2|ALT_INV_Equal1~0_combout\,
	datac => \processador|REG_RET|ALT_INV_DOUT\(5),
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \processador|MUX2|ALT_INV_Equal2~0_combout\,
	combout => \processador|MUX2|MUX_OUT[5]~5_combout\);

-- Location: FF_X36_Y4_N11
\processador|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX2|MUX_OUT[5]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(5));

-- Location: LABCELL_X35_Y6_N48
\processador|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~25_sumout\ = SUM(( \processador|PC|DOUT\(6) ) + ( GND ) + ( \processador|incrementaPC|Add0~22\ ))
-- \processador|incrementaPC|Add0~26\ = CARRY(( \processador|PC|DOUT\(6) ) + ( GND ) + ( \processador|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT\(6),
	cin => \processador|incrementaPC|Add0~22\,
	sumout => \processador|incrementaPC|Add0~25_sumout\,
	cout => \processador|incrementaPC|Add0~26\);

-- Location: LABCELL_X35_Y6_N51
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

-- Location: LABCELL_X35_Y6_N54
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

-- Location: FF_X35_Y6_N55
\processador|REG_RET|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~33_sumout\,
	ena => \processador|LOG_DESVIO|SelMuxPC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(8));

-- Location: LABCELL_X36_Y6_N12
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \processador|PC|DOUT[0]~DUPLICATE_q\ & ( (\processador|PC|DOUT\(2) & ((!\processador|PC|DOUT[3]~DUPLICATE_q\) # (\processador|PC|DOUT\(1)))) ) ) # ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( 
-- (\processador|PC|DOUT[3]~DUPLICATE_q\ & \processador|PC|DOUT\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111100110000000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~6_combout\);

-- Location: LABCELL_X35_Y6_N18
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( !\processador|PC|DOUT\(5) & ( (!\processador|PC|DOUT[4]~DUPLICATE_q\ & (!\processador|PC|DOUT\(8) & (!\processador|PC|DOUT\(6) & !\processador|PC|DOUT[7]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \processador|PC|ALT_INV_DOUT\(6),
	datad => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~4_combout\);

-- Location: MLABCELL_X37_Y7_N3
\ROM1|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~21_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \ROM1|memROM~21_combout\);

-- Location: MLABCELL_X37_Y4_N27
\processador|MUX2|MUX_OUT[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[8]~8_combout\ = ( \processador|MUX2|Equal1~0_combout\ & ( \processador|incrementaPC|Add0~33_sumout\ & ( (!\processador|MUX2|Equal2~0_combout\) # (\ROM1|memROM~21_combout\) ) ) ) # ( !\processador|MUX2|Equal1~0_combout\ & ( 
-- \processador|incrementaPC|Add0~33_sumout\ & ( (!\processador|MUX2|Equal2~0_combout\) # (\processador|REG_RET|DOUT\(8)) ) ) ) # ( \processador|MUX2|Equal1~0_combout\ & ( !\processador|incrementaPC|Add0~33_sumout\ & ( (\processador|MUX2|Equal2~0_combout\ & 
-- \ROM1|memROM~21_combout\) ) ) ) # ( !\processador|MUX2|Equal1~0_combout\ & ( !\processador|incrementaPC|Add0~33_sumout\ & ( (\processador|REG_RET|DOUT\(8) & \processador|MUX2|Equal2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000000000111111110101111101011111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|REG_RET|ALT_INV_DOUT\(8),
	datac => \processador|MUX2|ALT_INV_Equal2~0_combout\,
	datad => \ROM1|ALT_INV_memROM~21_combout\,
	datae => \processador|MUX2|ALT_INV_Equal1~0_combout\,
	dataf => \processador|incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \processador|MUX2|MUX_OUT[8]~8_combout\);

-- Location: FF_X36_Y4_N35
\processador|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX2|MUX_OUT[8]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(8));

-- Location: LABCELL_X36_Y7_N54
\ROM1|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~20_combout\ = ( \ROM1|memROM~1_combout\ & ( (\ROM1|memROM~7_combout\ & !\processador|PC|DOUT\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \processador|PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~20_combout\);

-- Location: FF_X35_Y6_N49
\processador|REG_RET|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~25_sumout\,
	ena => \processador|LOG_DESVIO|SelMuxPC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(6));

-- Location: LABCELL_X36_Y4_N36
\processador|MUX2|MUX_OUT[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[6]~6_combout\ = ( \processador|incrementaPC|Add0~25_sumout\ & ( (!\processador|MUX2|Equal2~0_combout\) # ((!\processador|MUX2|Equal1~0_combout\ & ((\processador|REG_RET|DOUT\(6)))) # (\processador|MUX2|Equal1~0_combout\ & 
-- (\ROM1|memROM~20_combout\))) ) ) # ( !\processador|incrementaPC|Add0~25_sumout\ & ( (\processador|MUX2|Equal2~0_combout\ & ((!\processador|MUX2|Equal1~0_combout\ & ((\processador|REG_RET|DOUT\(6)))) # (\processador|MUX2|Equal1~0_combout\ & 
-- (\ROM1|memROM~20_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUX2|ALT_INV_Equal2~0_combout\,
	datab => \processador|MUX2|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~20_combout\,
	datad => \processador|REG_RET|ALT_INV_DOUT\(6),
	dataf => \processador|incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \processador|MUX2|MUX_OUT[6]~6_combout\);

-- Location: FF_X36_Y4_N38
\processador|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUX2|MUX_OUT[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(6));

-- Location: FF_X36_Y4_N16
\processador|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUX2|MUX_OUT[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(7));

-- Location: LABCELL_X36_Y7_N9
\ROM1|memROM~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~36_combout\ = ( \processador|PC|DOUT[0]~DUPLICATE_q\ & ( (\processador|PC|DOUT\(2) & !\processador|PC|DOUT[1]~DUPLICATE_q\) ) ) # ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[3]~DUPLICATE_q\ & (\processador|PC|DOUT\(2) & 
-- \processador|PC|DOUT[1]~DUPLICATE_q\)) # (\processador|PC|DOUT[3]~DUPLICATE_q\ & (!\processador|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011010010100000101101000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~36_combout\);

-- Location: LABCELL_X36_Y7_N36
\ROM1|memROM~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~27_combout\ = ( !\processador|PC|DOUT\(7) & ( !\ROM1|memROM~36_combout\ & ( (!\processador|PC|DOUT\(6) & (!\processador|PC|DOUT[4]~DUPLICATE_q\ & (!\processador|PC|DOUT\(5) & !\processador|PC|DOUT\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(6),
	datab => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(5),
	datad => \processador|PC|ALT_INV_DOUT\(8),
	datae => \processador|PC|ALT_INV_DOUT\(7),
	dataf => \ROM1|ALT_INV_memROM~36_combout\,
	combout => \ROM1|memROM~27_combout\);

-- Location: MLABCELL_X34_Y5_N45
\processador|LOG_DESVIO|SelMuxPC~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|LOG_DESVIO|SelMuxPC~0_combout\ = ( !\ROM1|memROM~27_combout\ & ( (\ROM1|memROM~29_combout\ & (\ROM1|memROM~23_combout\ & !\ROM1|memROM~26_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~29_combout\,
	datab => \ROM1|ALT_INV_memROM~23_combout\,
	datad => \ROM1|ALT_INV_memROM~26_combout\,
	dataf => \ROM1|ALT_INV_memROM~27_combout\,
	combout => \processador|LOG_DESVIO|SelMuxPC~0_combout\);

-- Location: FF_X35_Y6_N31
\processador|REG_RET|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~1_sumout\,
	ena => \processador|LOG_DESVIO|SelMuxPC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(0));

-- Location: FF_X37_Y4_N14
\processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUX2|MUX_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(0));

-- Location: LABCELL_X36_Y4_N51
\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \processador|PC|DOUT\(0) & ( (!\processador|PC|DOUT[1]~DUPLICATE_q\ & ((\processador|PC|DOUT[3]~DUPLICATE_q\))) # (\processador|PC|DOUT[1]~DUPLICATE_q\ & (!\processador|PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( 
-- !\processador|PC|DOUT\(0) & ( (\processador|PC|DOUT[2]~DUPLICATE_q\ & ((!\processador|PC|DOUT[1]~DUPLICATE_q\) # (!\processador|PC|DOUT[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000110000111111000011000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~9_combout\);

-- Location: LABCELL_X36_Y4_N33
\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( \ROM1|memROM~9_combout\ & ( (\ROM1|memROM~1_combout\ & !\processador|PC|DOUT\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \processador|PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ROM1|memROM~10_combout\);

-- Location: MLABCELL_X37_Y4_N12
\processador|MUX2|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[0]~0_combout\ = ( \ROM1|memROM~10_combout\ & ( \processador|incrementaPC|Add0~1_sumout\ & ( ((!\processador|MUX2|Equal2~0_combout\) # (\processador|REG_RET|DOUT\(0))) # (\processador|MUX2|Equal1~0_combout\) ) ) ) # ( 
-- !\ROM1|memROM~10_combout\ & ( \processador|incrementaPC|Add0~1_sumout\ & ( (!\processador|MUX2|Equal2~0_combout\) # ((!\processador|MUX2|Equal1~0_combout\ & \processador|REG_RET|DOUT\(0))) ) ) ) # ( \ROM1|memROM~10_combout\ & ( 
-- !\processador|incrementaPC|Add0~1_sumout\ & ( (\processador|MUX2|Equal2~0_combout\ & ((\processador|REG_RET|DOUT\(0)) # (\processador|MUX2|Equal1~0_combout\))) ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\processador|incrementaPC|Add0~1_sumout\ & ( 
-- (!\processador|MUX2|Equal1~0_combout\ & (\processador|REG_RET|DOUT\(0) & \processador|MUX2|Equal2~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000101111111111111000010101111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUX2|ALT_INV_Equal1~0_combout\,
	datac => \processador|REG_RET|ALT_INV_DOUT\(0),
	datad => \processador|MUX2|ALT_INV_Equal2~0_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \processador|incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \processador|MUX2|MUX_OUT[0]~0_combout\);

-- Location: FF_X37_Y4_N13
\processador|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUX2|MUX_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[0]~DUPLICATE_q\);

-- Location: FF_X35_Y6_N34
\processador|REG_RET|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~5_sumout\,
	ena => \processador|LOG_DESVIO|SelMuxPC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(1));

-- Location: LABCELL_X36_Y4_N3
\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( \processador|PC|DOUT[2]~DUPLICATE_q\ & ( (\processador|PC|DOUT\(3) & ((!\processador|PC|DOUT[0]~DUPLICATE_q\) # (\processador|PC|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000001010101010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(3),
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~11_combout\);

-- Location: LABCELL_X36_Y4_N9
\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = ( !\processador|PC|DOUT\(8) & ( (\ROM1|memROM~11_combout\ & \ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \processador|PC|ALT_INV_DOUT\(8),
	combout => \ROM1|memROM~12_combout\);

-- Location: LABCELL_X36_Y4_N12
\processador|MUX2|MUX_OUT[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[1]~1_combout\ = ( \ROM1|memROM~12_combout\ & ( (!\processador|MUX2|Equal2~0_combout\ & (((\processador|incrementaPC|Add0~5_sumout\)))) # (\processador|MUX2|Equal2~0_combout\ & (((\processador|REG_RET|DOUT\(1))) # 
-- (\processador|MUX2|Equal1~0_combout\))) ) ) # ( !\ROM1|memROM~12_combout\ & ( (!\processador|MUX2|Equal2~0_combout\ & (((\processador|incrementaPC|Add0~5_sumout\)))) # (\processador|MUX2|Equal2~0_combout\ & (!\processador|MUX2|Equal1~0_combout\ & 
-- ((\processador|REG_RET|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100100111000011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUX2|ALT_INV_Equal2~0_combout\,
	datab => \processador|MUX2|ALT_INV_Equal1~0_combout\,
	datac => \processador|incrementaPC|ALT_INV_Add0~5_sumout\,
	datad => \processador|REG_RET|ALT_INV_DOUT\(1),
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \processador|MUX2|MUX_OUT[1]~1_combout\);

-- Location: FF_X36_Y4_N13
\processador|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUX2|MUX_OUT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(1));

-- Location: LABCELL_X35_Y6_N6
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(1) & (\processador|PC|DOUT[3]~DUPLICATE_q\ & \processador|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~8_combout\);

-- Location: LABCELL_X35_Y6_N21
\ROM1|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~17_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \ROM1|memROM~17_combout\);

-- Location: FF_X35_Y6_N53
\processador|REG_RET|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~29_sumout\,
	ena => \processador|LOG_DESVIO|SelMuxPC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(7));

-- Location: LABCELL_X36_Y4_N15
\processador|MUX2|MUX_OUT[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[7]~7_combout\ = ( \processador|REG_RET|DOUT\(7) & ( (!\processador|MUX2|Equal2~0_combout\ & (((\processador|incrementaPC|Add0~29_sumout\)))) # (\processador|MUX2|Equal2~0_combout\ & ((!\processador|MUX2|Equal1~0_combout\) # 
-- ((\ROM1|memROM~17_combout\)))) ) ) # ( !\processador|REG_RET|DOUT\(7) & ( (!\processador|MUX2|Equal2~0_combout\ & (((\processador|incrementaPC|Add0~29_sumout\)))) # (\processador|MUX2|Equal2~0_combout\ & (\processador|MUX2|Equal1~0_combout\ & 
-- (\ROM1|memROM~17_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101101000101111011110100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUX2|ALT_INV_Equal2~0_combout\,
	datab => \processador|MUX2|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \processador|incrementaPC|ALT_INV_Add0~29_sumout\,
	dataf => \processador|REG_RET|ALT_INV_DOUT\(7),
	combout => \processador|MUX2|MUX_OUT[7]~7_combout\);

-- Location: FF_X36_Y4_N17
\processador|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUX2|MUX_OUT[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y4_N24
\ROM1|memROM~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~25_combout\ = ( !\processador|PC|DOUT\(5) & ( (!\processador|PC|DOUT[7]~DUPLICATE_q\ & (!\processador|PC|DOUT\(8) & !\processador|PC|DOUT\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(8),
	datad => \processador|PC|ALT_INV_DOUT\(6),
	dataf => \processador|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~25_combout\);

-- Location: LABCELL_X36_Y6_N51
\ROM1|memROM~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~28_combout\ = ( \processador|PC|DOUT\(1) & ( (!\processador|PC|DOUT[4]~DUPLICATE_q\ & (!\processador|PC|DOUT[3]~DUPLICATE_q\ $ (!\processador|PC|DOUT\(2)))) ) ) # ( !\processador|PC|DOUT\(1) & ( (!\processador|PC|DOUT\(2) & 
-- (!\processador|PC|DOUT[3]~DUPLICATE_q\ $ (!\processador|PC|DOUT[4]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~28_combout\);

-- Location: LABCELL_X36_Y7_N45
\ROM1|memROM~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~29_combout\ = ( \ROM1|memROM~28_combout\ & ( (\ROM1|memROM~25_combout\ & !\processador|PC|DOUT[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~25_combout\,
	datad => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~28_combout\,
	combout => \ROM1|memROM~29_combout\);

-- Location: MLABCELL_X34_Y5_N18
\processador|FLAG|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|FLAG|DOUT~1_combout\ = ( \ROM1|memROM~29_combout\ & ( (!\ROM1|memROM~26_combout\ & (!\ROM1|memROM~23_combout\ & !\ROM1|memROM~27_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~26_combout\,
	datab => \ROM1|ALT_INV_memROM~23_combout\,
	datac => \ROM1|ALT_INV_memROM~27_combout\,
	dataf => \ROM1|ALT_INV_memROM~29_combout\,
	combout => \processador|FLAG|DOUT~1_combout\);

-- Location: MLABCELL_X34_Y5_N39
\processador|decoderInstru1|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida~1_combout\ = ( \ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~27_combout\ & (\ROM1|memROM~29_combout\ & \ROM1|memROM~26_combout\)) ) ) # ( !\ROM1|memROM~23_combout\ & ( (\ROM1|memROM~27_combout\ & (!\ROM1|memROM~29_combout\ 
-- & !\ROM1|memROM~26_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~27_combout\,
	datac => \ROM1|ALT_INV_memROM~29_combout\,
	datad => \ROM1|ALT_INV_memROM~26_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \processador|decoderInstru1|saida~1_combout\);

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

-- Location: LABCELL_X36_Y4_N42
\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = ( \processador|PC|DOUT[1]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[2]~DUPLICATE_q\ & \processador|PC|DOUT\(3)) ) ) # ( !\processador|PC|DOUT[1]~DUPLICATE_q\ & ( (\processador|PC|DOUT\(3) & (!\processador|PC|DOUT[0]~DUPLICATE_q\ $ 
-- (!\processador|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(3),
	dataf => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~13_combout\);

-- Location: LABCELL_X36_Y4_N45
\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = ( \ROM1|memROM~1_combout\ & ( (\ROM1|memROM~13_combout\ & !\processador|PC|DOUT\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \processador|PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~14_combout\);

-- Location: LABCELL_X36_Y7_N30
\processador|decoderInstru1|saida~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida~4_combout\ = ( \ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~27_combout\ & !\ROM1|memROM~29_combout\) ) ) # ( !\ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~27_combout\ & (\ROM1|memROM~26_combout\ & 
-- !\ROM1|memROM~29_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~27_combout\,
	datac => \ROM1|ALT_INV_memROM~26_combout\,
	datad => \ROM1|ALT_INV_memROM~29_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \processador|decoderInstru1|saida~4_combout\);

-- Location: LABCELL_X36_Y6_N54
\KEY_3|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \KEY_3|saida[0]~1_combout\ = ( \ROM1|memROM~6_combout\ & ( (!\processador|PC|DOUT\(8) & (\ROM1|memROM~7_combout\ & (!\ROM1|memROM~8_combout\ & \ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \KEY_3|saida[0]~1_combout\);

-- Location: MLABCELL_X37_Y7_N54
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~11_combout\ & ( (\ROM1|memROM~1_combout\ & !\processador|PC|DOUT\(8)) ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~11_combout\ & ( (\ROM1|memROM~1_combout\ & !\processador|PC|DOUT\(8)) ) 
-- ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~11_combout\ & ( (\ROM1|memROM~1_combout\ & !\processador|PC|DOUT\(8)) ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~11_combout\ & ( (\ROM1|memROM~1_combout\ & (\ROM1|memROM~18_combout\ & 
-- !\processador|PC|DOUT\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000001100110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~18_combout\,
	datad => \processador|PC|ALT_INV_DOUT\(8),
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \comb~0_combout\);

-- Location: LABCELL_X36_Y7_N33
\processador|decoderInstru1|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida~3_combout\ = ( \ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~27_combout\ & (\ROM1|memROM~29_combout\ & \ROM1|memROM~26_combout\)) ) ) # ( !\ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~27_combout\ & (\ROM1|memROM~29_combout\ 
-- & !\ROM1|memROM~26_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~27_combout\,
	datac => \ROM1|ALT_INV_memROM~29_combout\,
	datad => \ROM1|ALT_INV_memROM~26_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \processador|decoderInstru1|saida~3_combout\);

-- Location: LABCELL_X36_Y7_N48
\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = ( \processador|decoderInstru1|saida~3_combout\ & ( (!\ROM1|memROM~14_combout\ & (\KEY_3|saida[0]~1_combout\ & !\comb~0_combout\)) ) ) # ( !\processador|decoderInstru1|saida~3_combout\ & ( (!\ROM1|memROM~14_combout\ & 
-- (\processador|decoderInstru1|saida~4_combout\ & (\KEY_3|saida[0]~1_combout\ & !\comb~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida~4_combout\,
	datac => \KEY_3|ALT_INV_saida[0]~1_combout\,
	datad => \ALT_INV_comb~0_combout\,
	dataf => \processador|decoderInstru1|ALT_INV_saida~3_combout\,
	combout => \comb~2_combout\);

-- Location: LABCELL_X36_Y4_N30
\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = ( \processador|PC|DOUT[1]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(0) & (\processador|PC|DOUT\(3) & !\processador|PC|DOUT\(2))) ) ) # ( !\processador|PC|DOUT[1]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(0) & 
-- (\processador|PC|DOUT\(3) & \processador|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(0),
	datac => \processador|PC|ALT_INV_DOUT\(3),
	datad => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~15_combout\);

-- Location: LABCELL_X36_Y4_N0
\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = ( \ROM1|memROM~1_combout\ & ( (\ROM1|memROM~15_combout\ & !\processador|PC|DOUT\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \processador|PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~16_combout\);

-- Location: MLABCELL_X34_Y5_N36
\processador|decoderInstru1|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida~0_combout\ = ( \ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~27_combout\ & (\ROM1|memROM~29_combout\ & \ROM1|memROM~26_combout\)) ) ) # ( !\ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~27_combout\ & (!\ROM1|memROM~29_combout\ 
-- & \ROM1|memROM~26_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~27_combout\,
	datab => \ROM1|ALT_INV_memROM~29_combout\,
	datac => \ROM1|ALT_INV_memROM~26_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \processador|decoderInstru1|saida~0_combout\);

-- Location: LABCELL_X35_Y6_N0
\processador|decoderInstru1|Equal11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal11~0_combout\ = ( \ROM1|memROM~24_combout\ & ( \ROM1|memROM~22_combout\ & ( (\ROM1|memROM~4_combout\ & !\ROM1|memROM~25_combout\) ) ) ) # ( !\ROM1|memROM~24_combout\ & ( \ROM1|memROM~22_combout\ & ( 
-- (\ROM1|memROM~4_combout\ & ((!\ROM1|memROM~28_combout\) # ((!\ROM1|memROM~25_combout\) # (\processador|PC|DOUT[0]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000010110000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~28_combout\,
	datab => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~25_combout\,
	datae => \ROM1|ALT_INV_memROM~24_combout\,
	dataf => \ROM1|ALT_INV_memROM~22_combout\,
	combout => \processador|decoderInstru1|Equal11~0_combout\);

-- Location: LABCELL_X36_Y5_N54
\processador|decoderInstru1|saida[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida[4]~2_combout\ = ( \processador|decoderInstru1|Equal11~0_combout\ & ( (\ROM1|memROM~27_combout\ & !\processador|decoderInstru1|saida~1_combout\) ) ) # ( !\processador|decoderInstru1|Equal11~0_combout\ & ( 
-- !\processador|decoderInstru1|saida~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~27_combout\,
	datac => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	dataf => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	combout => \processador|decoderInstru1|saida[4]~2_combout\);

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

-- Location: LABCELL_X36_Y5_N51
\processador|MUX1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[3]~3_combout\ = ( \comb~2_combout\ & ( \RAM1|ram~539_combout\ & ( (!\processador|decoderInstru1|saida~1_combout\ & ((!\SW[3]~input_o\))) # (\processador|decoderInstru1|saida~1_combout\ & (!\ROM1|memROM~16_combout\)) ) ) ) # ( 
-- !\comb~2_combout\ & ( \RAM1|ram~539_combout\ & ( (!\ROM1|memROM~16_combout\ & \processador|decoderInstru1|saida~1_combout\) ) ) ) # ( \comb~2_combout\ & ( !\RAM1|ram~539_combout\ & ( (!\processador|decoderInstru1|saida~1_combout\ & (((!\SW[3]~input_o\)) # 
-- (\RAM1|dado_out~0_combout\))) # (\processador|decoderInstru1|saida~1_combout\ & (((!\ROM1|memROM~16_combout\)))) ) ) ) # ( !\comb~2_combout\ & ( !\RAM1|ram~539_combout\ & ( (!\processador|decoderInstru1|saida~1_combout\ & (\RAM1|dado_out~0_combout\)) # 
-- (\processador|decoderInstru1|saida~1_combout\ & ((!\ROM1|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111001100111101011100110000000000110011001111000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~0_combout\,
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datae => \ALT_INV_comb~2_combout\,
	dataf => \RAM1|ALT_INV_ram~539_combout\,
	combout => \processador|MUX1|saida_MUX[3]~3_combout\);

-- Location: LABCELL_X36_Y5_N42
\ROM1|memROM~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~33_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~15_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \ROM1|memROM~33_combout\);

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

-- Location: LABCELL_X35_Y3_N6
\processador|MUX1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[2]~2_combout\ = ( \processador|decoderInstru1|saida~1_combout\ & ( \comb~2_combout\ & ( !\ROM1|memROM~14_combout\ ) ) ) # ( !\processador|decoderInstru1|saida~1_combout\ & ( \comb~2_combout\ & ( (!\SW[2]~input_o\) # 
-- ((!\RAM1|ram~535_combout\ & \RAM1|dado_out~0_combout\)) ) ) ) # ( \processador|decoderInstru1|saida~1_combout\ & ( !\comb~2_combout\ & ( !\ROM1|memROM~14_combout\ ) ) ) # ( !\processador|decoderInstru1|saida~1_combout\ & ( !\comb~2_combout\ & ( 
-- (!\RAM1|ram~535_combout\ & \RAM1|dado_out~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100101010101010101011111111000011001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \RAM1|ALT_INV_ram~535_combout\,
	datac => \RAM1|ALT_INV_dado_out~0_combout\,
	datad => \ALT_INV_SW[2]~input_o\,
	datae => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	dataf => \ALT_INV_comb~2_combout\,
	combout => \processador|MUX1|saida_MUX[2]~2_combout\);

-- Location: MLABCELL_X37_Y7_N21
\ROM1|memROM~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~32_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \ROM1|memROM~32_combout\);

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

-- Location: LABCELL_X35_Y7_N48
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (!\processador|PC|DOUT\(2) & (!\processador|PC|DOUT[0]~DUPLICATE_q\ & (!\processador|PC|DOUT[1]~DUPLICATE_q\ & \processador|PC|DOUT[3]~DUPLICATE_q\))) # (\processador|PC|DOUT\(2) & (!\processador|PC|DOUT[3]~DUPLICATE_q\ & 
-- ((\processador|PC|DOUT[1]~DUPLICATE_q\) # (\processador|PC|DOUT[0]~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010110000000000101011000000000010101100000000001010110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(2),
	datab => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM1|memROM~0_combout\);

-- Location: LABCELL_X35_Y7_N21
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & !\processador|PC|DOUT\(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \processador|PC|ALT_INV_DOUT\(8),
	combout => \ROM1|memROM~2_combout\);

-- Location: LABCELL_X36_Y5_N30
\processador|MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[1]~1_combout\ = ( \SW[1]~input_o\ & ( \RAM1|ram~531_combout\ & ( (!\ROM1|memROM~12_combout\ & \processador|decoderInstru1|saida~1_combout\) ) ) ) # ( !\SW[1]~input_o\ & ( \RAM1|ram~531_combout\ & ( 
-- (!\processador|decoderInstru1|saida~1_combout\ & ((\comb~2_combout\))) # (\processador|decoderInstru1|saida~1_combout\ & (!\ROM1|memROM~12_combout\)) ) ) ) # ( \SW[1]~input_o\ & ( !\RAM1|ram~531_combout\ & ( (!\processador|decoderInstru1|saida~1_combout\ 
-- & (\RAM1|dado_out~0_combout\)) # (\processador|decoderInstru1|saida~1_combout\ & ((!\ROM1|memROM~12_combout\))) ) ) ) # ( !\SW[1]~input_o\ & ( !\RAM1|ram~531_combout\ & ( (!\processador|decoderInstru1|saida~1_combout\ & (((\comb~2_combout\)) # 
-- (\RAM1|dado_out~0_combout\))) # (\processador|decoderInstru1|saida~1_combout\ & (((!\ROM1|memROM~12_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110011111100010111000101110000001100111111000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~0_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datad => \ALT_INV_comb~2_combout\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \RAM1|ALT_INV_ram~531_combout\,
	combout => \processador|MUX1|saida_MUX[1]~1_combout\);

-- Location: LABCELL_X36_Y3_N24
\ROM1|memROM~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~31_combout\ = ( \ROM1|memROM~11_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~31_combout\);

-- Location: LABCELL_X36_Y6_N6
\KEY_3|saida[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \KEY_3|saida[0]~2_combout\ = ( \ROM1|memROM~29_combout\ & ( (!\ROM1|memROM~27_combout\ & (\KEY_3|saida[0]~1_combout\ & (!\ROM1|memROM~26_combout\ $ (\ROM1|memROM~23_combout\)))) ) ) # ( !\ROM1|memROM~29_combout\ & ( (!\ROM1|memROM~27_combout\ & 
-- (\KEY_3|saida[0]~1_combout\ & ((\ROM1|memROM~23_combout\) # (\ROM1|memROM~26_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001100000001000000110000001000000001000000100000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~26_combout\,
	datab => \ROM1|ALT_INV_memROM~27_combout\,
	datac => \KEY_3|ALT_INV_saida[0]~1_combout\,
	datad => \ROM1|ALT_INV_memROM~23_combout\,
	dataf => \ROM1|ALT_INV_memROM~29_combout\,
	combout => \KEY_3|saida[0]~2_combout\);

-- Location: LABCELL_X36_Y6_N24
\KEY_3|saida[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \KEY_3|saida[0]~7_combout\ = ( \KEY_3|saida[0]~2_combout\ & ( \RAM1|dado_out~0_combout\ ) ) # ( !\KEY_3|saida[0]~2_combout\ & ( \RAM1|dado_out~0_combout\ ) ) # ( \KEY_3|saida[0]~2_combout\ & ( !\RAM1|dado_out~0_combout\ & ( (!\ROM1|memROM~12_combout\ & 
-- ((!\ROM1|memROM~14_combout\) # ((!\ROM1|memROM~10_combout\ & \ROM1|memROM~19_combout\)))) # (\ROM1|memROM~12_combout\ & (!\ROM1|memROM~14_combout\ & ((!\ROM1|memROM~10_combout\) # (\ROM1|memROM~19_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000001111100011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \KEY_3|ALT_INV_saida[0]~2_combout\,
	dataf => \RAM1|ALT_INV_dado_out~0_combout\,
	combout => \KEY_3|saida[0]~7_combout\);

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

-- Location: LABCELL_X35_Y6_N9
\FF_DEBOUNCER_2|DOUT~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF_DEBOUNCER_2|DOUT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \FF_DEBOUNCER_2|DOUT~feeder_combout\);

-- Location: LABCELL_X36_Y6_N39
\KEY_3|saida[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \KEY_3|saida[0]~9_combout\ = ( \ROM1|memROM~6_combout\ & ( (!\processador|PC|DOUT\(8) & (\ROM1|memROM~7_combout\ & \ROM1|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \KEY_3|saida[0]~9_combout\);

-- Location: LABCELL_X36_Y6_N36
\RESET_511~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RESET_511~0_combout\ = ( \ROM1|memROM~15_combout\ & ( (!\processador|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~8_combout\ & \ROM1|memROM~18_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ROM1|ALT_INV_memROM~18_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RESET_511~0_combout\);

-- Location: LABCELL_X35_Y4_N30
\RESET_508~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RESET_508~0_combout\ = ( \ROM1|memROM~9_combout\ & ( (\ROM1|memROM~1_combout\ & !\processador|PC|DOUT\(8)) ) ) # ( !\ROM1|memROM~9_combout\ & ( (\ROM1|memROM~1_combout\ & (!\processador|PC|DOUT\(8) & \ROM1|memROM~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \processador|PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RESET_508~0_combout\);

-- Location: LABCELL_X35_Y6_N24
\RESET_508~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RESET_508~1_combout\ = ( \processador|decoderInstru1|Equal11~0_combout\ & ( !\RESET_508~0_combout\ & ( (\KEY_3|saida[0]~9_combout\ & (\RESET_511~0_combout\ & (\ROM1|memROM~27_combout\ & \ROM1|memROM~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_3|ALT_INV_saida[0]~9_combout\,
	datab => \ALT_INV_RESET_511~0_combout\,
	datac => \ROM1|ALT_INV_memROM~27_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	dataf => \ALT_INV_RESET_508~0_combout\,
	combout => \RESET_508~1_combout\);

-- Location: FF_X35_Y6_N10
\FF_DEBOUNCER_2|DOUT~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \FF_DEBOUNCER_2|DOUT~feeder_combout\,
	clrn => \ALT_INV_RESET_508~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF_DEBOUNCER_2|DOUT~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y6_N3
\RESET_510~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RESET_510~0_combout\ = ( \ROM1|memROM~11_combout\ & ( (!\processador|PC|DOUT\(8) & (!\ROM1|memROM~9_combout\ & \ROM1|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RESET_510~0_combout\);

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

-- Location: MLABCELL_X34_Y5_N48
\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ( \KEY_3|saida[0]~1_combout\ & ( \ROM1|memROM~29_combout\ & ( (!\ROM1|memROM~14_combout\ & (!\ROM1|memROM~27_combout\ & (!\ROM1|memROM~26_combout\ $ (\ROM1|memROM~23_combout\)))) ) ) ) # ( \KEY_3|saida[0]~1_combout\ & ( 
-- !\ROM1|memROM~29_combout\ & ( (!\ROM1|memROM~14_combout\ & (!\ROM1|memROM~27_combout\ & ((\ROM1|memROM~23_combout\) # (\ROM1|memROM~26_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000001100000000000000000000001000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~26_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~27_combout\,
	datad => \ROM1|ALT_INV_memROM~23_combout\,
	datae => \KEY_3|ALT_INV_saida[0]~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~29_combout\,
	combout => \comb~1_combout\);

-- Location: MLABCELL_X34_Y5_N12
\KEY_3|saida[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \KEY_3|saida[0]~4_combout\ = ( \comb~1_combout\ & ( (\RESET_510~0_combout\ & ((!\ROM1|memROM~19_combout\ & ((!\SW[9]~input_o\))) # (\ROM1|memROM~19_combout\ & (!\FF_DEBOUNCER_2|DOUT~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001110000000100000111000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FF_DEBOUNCER_2|ALT_INV_DOUT~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ALT_INV_RESET_510~0_combout\,
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_comb~1_combout\,
	combout => \KEY_3|saida[0]~4_combout\);

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

-- Location: MLABCELL_X34_Y5_N6
\KEY_3|saida[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \KEY_3|saida[0]~5_combout\ = ( \ROM1|memROM~12_combout\ & ( \comb~1_combout\ & ( (\ROM1|memROM~19_combout\ & \ROM1|memROM~10_combout\) ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \comb~1_combout\ & ( (!\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~10_combout\ & 
-- (!\SW[0]~input_o\)) # (\ROM1|memROM~10_combout\ & ((!\SW[8]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000110000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ALT_INV_comb~1_combout\,
	combout => \KEY_3|saida[0]~5_combout\);

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

-- Location: LABCELL_X36_Y6_N33
\FF_DEBOUNCER_0|DOUT~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF_DEBOUNCER_0|DOUT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \FF_DEBOUNCER_0|DOUT~feeder_combout\);

-- Location: LABCELL_X36_Y4_N48
\RESET_511~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RESET_511~1_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\processador|PC|DOUT\(8) & (\ROM1|memROM~9_combout\ & \ROM1|memROM~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RESET_511~1_combout\);

-- Location: LABCELL_X36_Y6_N45
\RESET_511~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \RESET_511~2_combout\ = ( \ROM1|memROM~27_combout\ & ( \processador|decoderInstru1|Equal11~0_combout\ & ( (\ROM1|memROM~14_combout\ & (\RESET_511~1_combout\ & (\KEY_3|saida[0]~9_combout\ & \RESET_511~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ALT_INV_RESET_511~1_combout\,
	datac => \KEY_3|ALT_INV_saida[0]~9_combout\,
	datad => \ALT_INV_RESET_511~0_combout\,
	datae => \ROM1|ALT_INV_memROM~27_combout\,
	dataf => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	combout => \RESET_511~2_combout\);

-- Location: FF_X36_Y6_N35
\FF_DEBOUNCER_0|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FF_DEBOUNCER_0|DOUT~feeder_combout\,
	clrn => \ALT_INV_RESET_511~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF_DEBOUNCER_0|DOUT~q\);

-- Location: LABCELL_X36_Y4_N6
\logica_Seven_Seg|comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|comb~2_combout\ = ( !\ROM1|memROM~9_combout\ & ( (!\ROM1|memROM~11_combout\ & (\ROM1|memROM~1_combout\ & (!\processador|PC|DOUT\(8) & \ROM1|memROM~18_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \processador|PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~18_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \logica_Seven_Seg|comb~2_combout\);

-- Location: LABCELL_X36_Y6_N30
\KEY_3|saida[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \KEY_3|saida[0]~3_combout\ = ( \KEY_3|saida[0]~2_combout\ & ( (\logica_Seven_Seg|comb~2_combout\ & ((!\ROM1|memROM~14_combout\ & ((!\FF_DEBOUNCER_0|DOUT~q\))) # (\ROM1|memROM~14_combout\ & (!\FPGA_RESET_N~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111000100000000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FPGA_RESET_N~input_o\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \FF_DEBOUNCER_0|ALT_INV_DOUT~q\,
	datad => \logica_Seven_Seg|ALT_INV_comb~2_combout\,
	dataf => \KEY_3|ALT_INV_saida[0]~2_combout\,
	combout => \KEY_3|saida[0]~3_combout\);

-- Location: MLABCELL_X34_Y5_N15
\KEY_3|saida[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \KEY_3|saida[0]~6_combout\ = ( !\KEY_3|saida[0]~3_combout\ & ( (!\KEY_3|saida[0]~4_combout\ & !\KEY_3|saida[0]~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \KEY_3|ALT_INV_saida[0]~4_combout\,
	datad => \KEY_3|ALT_INV_saida[0]~5_combout\,
	dataf => \KEY_3|ALT_INV_saida[0]~3_combout\,
	combout => \KEY_3|saida[0]~6_combout\);

-- Location: MLABCELL_X34_Y5_N30
\processador|MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[0]~0_combout\ = ( \RAM1|dado_out~0_combout\ & ( \KEY_3|saida[0]~6_combout\ & ( (!\processador|decoderInstru1|saida~1_combout\ & (\KEY_3|saida[0]~7_combout\ & (!\RAM1|ram~527_combout\))) # 
-- (\processador|decoderInstru1|saida~1_combout\ & (((!\ROM1|memROM~10_combout\)))) ) ) ) # ( !\RAM1|dado_out~0_combout\ & ( \KEY_3|saida[0]~6_combout\ & ( (!\ROM1|memROM~10_combout\ & \processador|decoderInstru1|saida~1_combout\) ) ) ) # ( 
-- \RAM1|dado_out~0_combout\ & ( !\KEY_3|saida[0]~6_combout\ & ( (!\processador|decoderInstru1|saida~1_combout\ & (\KEY_3|saida[0]~7_combout\)) # (\processador|decoderInstru1|saida~1_combout\ & ((!\ROM1|memROM~10_combout\))) ) ) ) # ( 
-- !\RAM1|dado_out~0_combout\ & ( !\KEY_3|saida[0]~6_combout\ & ( (!\processador|decoderInstru1|saida~1_combout\ & (\KEY_3|saida[0]~7_combout\)) # (\processador|decoderInstru1|saida~1_combout\ & ((!\ROM1|memROM~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111110000010101011111000000000000111100000100010011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_3|ALT_INV_saida[0]~7_combout\,
	datab => \RAM1|ALT_INV_ram~527_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datae => \RAM1|ALT_INV_dado_out~0_combout\,
	dataf => \KEY_3|ALT_INV_saida[0]~6_combout\,
	combout => \processador|MUX1|saida_MUX[0]~0_combout\);

-- Location: LABCELL_X36_Y3_N54
\ROM1|memROM~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~30_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~30_combout\);

-- Location: MLABCELL_X37_Y5_N0
\processador|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~1_sumout\ = SUM(( \processador|BANCO_REGISTRADORES|registrador~43_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & (((\KEY_3|saida[0]~11_combout\)))) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (!\processador|PC|DOUT\(8) & ((\ROM1|memROM~30_combout\)))) ) + ( !VCC ))
-- \processador|ULA1|Add0~2\ = CARRY(( \processador|BANCO_REGISTRADORES|registrador~43_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & (((\KEY_3|saida[0]~11_combout\)))) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (!\processador|PC|DOUT\(8) & ((\ROM1|memROM~30_combout\)))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \KEY_3|ALT_INV_saida[0]~11_combout\,
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	dataf => \ROM1|ALT_INV_memROM~30_combout\,
	cin => GND,
	sumout => \processador|ULA1|Add0~1_sumout\,
	cout => \processador|ULA1|Add0~2\);

-- Location: LABCELL_X35_Y5_N24
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

-- Location: LABCELL_X35_Y5_N27
\processador|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~1_sumout\ = SUM(( \processador|BANCO_REGISTRADORES|registrador~43_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & (((!\KEY_3|saida[0]~11_combout\)))) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (((!\ROM1|memROM~30_combout\)) # (\processador|PC|DOUT\(8)))) ) + ( \processador|ULA1|Add1~34_cout\ ))
-- \processador|ULA1|Add1~2\ = CARRY(( \processador|BANCO_REGISTRADORES|registrador~43_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & (((!\KEY_3|saida[0]~11_combout\)))) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (((!\ROM1|memROM~30_combout\)) # (\processador|PC|DOUT\(8)))) ) + ( \processador|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \KEY_3|ALT_INV_saida[0]~11_combout\,
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	dataf => \ROM1|ALT_INV_memROM~30_combout\,
	cin => \processador|ULA1|Add1~34_cout\,
	sumout => \processador|ULA1|Add1~1_sumout\,
	cout => \processador|ULA1|Add1~2\);

-- Location: MLABCELL_X34_Y5_N0
\processador|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[0]~0_combout\ = ( \processador|ULA1|Add0~1_sumout\ & ( \processador|ULA1|Add1~1_sumout\ & ( ((!\processador|MUX1|saida_MUX[0]~0_combout\ & ((!\processador|decoderInstru1|saida~0_combout\) # 
-- (\processador|BANCO_REGISTRADORES|registrador~43_combout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\) ) ) ) # ( !\processador|ULA1|Add0~1_sumout\ & ( \processador|ULA1|Add1~1_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\ & 
-- (!\processador|MUX1|saida_MUX[0]~0_combout\ & ((!\processador|decoderInstru1|saida~0_combout\) # (\processador|BANCO_REGISTRADORES|registrador~43_combout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\ & 
-- (!\processador|decoderInstru1|saida~0_combout\)) ) ) ) # ( \processador|ULA1|Add0~1_sumout\ & ( !\processador|ULA1|Add1~1_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\ & (!\processador|MUX1|saida_MUX[0]~0_combout\ & 
-- ((!\processador|decoderInstru1|saida~0_combout\) # (\processador|BANCO_REGISTRADORES|registrador~43_combout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\ & (\processador|decoderInstru1|saida~0_combout\)) ) ) ) # ( 
-- !\processador|ULA1|Add0~1_sumout\ & ( !\processador|ULA1|Add1~1_sumout\ & ( (!\processador|MUX1|saida_MUX[0]~0_combout\ & (!\processador|decoderInstru1|saida[4]~2_combout\ & ((!\processador|decoderInstru1|saida~0_combout\) # 
-- (\processador|BANCO_REGISTRADORES|registrador~43_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110000000000100011000101010110001100101010101000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~0_combout\,
	datab => \processador|MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datac => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datad => \processador|decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datae => \processador|ULA1|ALT_INV_Add0~1_sumout\,
	dataf => \processador|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \processador|ULA1|saida[0]~0_combout\);

-- Location: LABCELL_X35_Y7_N39
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \processador|PC|DOUT[1]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[3]~DUPLICATE_q\ & (!\processador|PC|DOUT[0]~DUPLICATE_q\ & !\processador|PC|DOUT\(2))) # (\processador|PC|DOUT[3]~DUPLICATE_q\ & ((\processador|PC|DOUT\(2)))) ) ) 
-- # ( !\processador|PC|DOUT[1]~DUPLICATE_q\ & ( (\processador|PC|DOUT[0]~DUPLICATE_q\ & (\processador|PC|DOUT[3]~DUPLICATE_q\ & \processador|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010110100000000011111010000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~3_combout\);

-- Location: LABCELL_X35_Y7_N42
\processador|BANCO_REGISTRADORES|registrador~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|BANCO_REGISTRADORES|registrador~51_combout\ = ( \processador|decoderInstru1|saida~1_combout\ & ( (!\ROM1|memROM~4_combout\) # ((!\ROM1|memROM~3_combout\ & !\ROM1|memROM~0_combout\)) ) ) # ( !\processador|decoderInstru1|saida~1_combout\ & ( 
-- (\processador|decoderInstru1|saida~4_combout\ & ((!\ROM1|memROM~4_combout\) # ((!\ROM1|memROM~3_combout\ & !\ROM1|memROM~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101010000000001110101011101010111010101110101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \processador|decoderInstru1|ALT_INV_saida~4_combout\,
	dataf => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	combout => \processador|BANCO_REGISTRADORES|registrador~51_combout\);

-- Location: FF_X35_Y6_N28
\processador|BANCO_REGISTRADORES|registrador~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ULA1|saida[0]~0_combout\,
	sload => VCC,
	ena => \processador|BANCO_REGISTRADORES|registrador~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~11_q\);

-- Location: LABCELL_X32_Y5_N0
\processador|BANCO_REGISTRADORES|registrador~19feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|BANCO_REGISTRADORES|registrador~19feeder_combout\ = ( \processador|ULA1|saida[0]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|ULA1|ALT_INV_saida[0]~0_combout\,
	combout => \processador|BANCO_REGISTRADORES|registrador~19feeder_combout\);

-- Location: LABCELL_X35_Y7_N45
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \ROM1|memROM~5_combout\);

-- Location: LABCELL_X35_Y7_N30
\processador|BANCO_REGISTRADORES|registrador~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|BANCO_REGISTRADORES|registrador~52_combout\ = ( \processador|decoderInstru1|saida~1_combout\ & ( (!\ROM1|memROM~5_combout\ & \ROM1|memROM~2_combout\) ) ) # ( !\processador|decoderInstru1|saida~1_combout\ & ( 
-- (\processador|decoderInstru1|saida~4_combout\ & (!\ROM1|memROM~5_combout\ & \ROM1|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~4_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	combout => \processador|BANCO_REGISTRADORES|registrador~52_combout\);

-- Location: FF_X32_Y5_N1
\processador|BANCO_REGISTRADORES|registrador~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|BANCO_REGISTRADORES|registrador~19feeder_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~19_q\);

-- Location: LABCELL_X35_Y7_N33
\processador|BANCO_REGISTRADORES|registrador~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|BANCO_REGISTRADORES|registrador~54_combout\ = ( \ROM1|memROM~0_combout\ & ( (\ROM1|memROM~5_combout\ & (\ROM1|memROM~1_combout\ & ((\processador|decoderInstru1|saida~1_combout\) # (\processador|decoderInstru1|saida~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000110000000100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~4_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \processador|BANCO_REGISTRADORES|registrador~54_combout\);

-- Location: FF_X34_Y5_N2
\processador|BANCO_REGISTRADORES|registrador~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|ULA1|saida[0]~0_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~35_q\);

-- Location: LABCELL_X35_Y7_N18
\processador|BANCO_REGISTRADORES|registrador~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|BANCO_REGISTRADORES|registrador~53_combout\ = ( \processador|decoderInstru1|saida~1_combout\ & ( (!\ROM1|memROM~2_combout\ & \ROM1|memROM~5_combout\) ) ) # ( !\processador|decoderInstru1|saida~1_combout\ & ( 
-- (\processador|decoderInstru1|saida~4_combout\ & (!\ROM1|memROM~2_combout\ & \ROM1|memROM~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|decoderInstru1|ALT_INV_saida~4_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	combout => \processador|BANCO_REGISTRADORES|registrador~53_combout\);

-- Location: FF_X35_Y7_N53
\processador|BANCO_REGISTRADORES|registrador~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ULA1|saida[0]~0_combout\,
	sload => VCC,
	ena => \processador|BANCO_REGISTRADORES|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~27_q\);

-- Location: LABCELL_X35_Y7_N0
\processador|BANCO_REGISTRADORES|registrador~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|BANCO_REGISTRADORES|registrador~43_combout\ = ( \ROM1|memROM~2_combout\ & ( \processador|BANCO_REGISTRADORES|registrador~27_q\ & ( (!\ROM1|memROM~5_combout\ & (\processador|BANCO_REGISTRADORES|registrador~19_q\)) # (\ROM1|memROM~5_combout\ & 
-- ((\processador|BANCO_REGISTRADORES|registrador~35_q\))) ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \processador|BANCO_REGISTRADORES|registrador~27_q\ & ( (\ROM1|memROM~5_combout\) # (\processador|BANCO_REGISTRADORES|registrador~11_q\) ) ) ) # ( 
-- \ROM1|memROM~2_combout\ & ( !\processador|BANCO_REGISTRADORES|registrador~27_q\ & ( (!\ROM1|memROM~5_combout\ & (\processador|BANCO_REGISTRADORES|registrador~19_q\)) # (\ROM1|memROM~5_combout\ & ((\processador|BANCO_REGISTRADORES|registrador~35_q\))) ) ) 
-- ) # ( !\ROM1|memROM~2_combout\ & ( !\processador|BANCO_REGISTRADORES|registrador~27_q\ & ( (\processador|BANCO_REGISTRADORES|registrador~11_q\ & !\ROM1|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000001100110000111101010101111111110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~11_q\,
	datab => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~19_q\,
	datac => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~35_q\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~27_q\,
	combout => \processador|BANCO_REGISTRADORES|registrador~43_combout\);

-- Location: LABCELL_X36_Y6_N57
\decoderBloco|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderBloco|Equal7~0_combout\ = ( \ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~1_combout\) # (\processador|PC|DOUT\(8)) ) ) # ( !\ROM1|memROM~8_combout\ & ( ((!\ROM1|memROM~1_combout\) # ((!\ROM1|memROM~7_combout\ & !\ROM1|memROM~6_combout\))) # 
-- (\processador|PC|DOUT\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111010101111111111101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \decoderBloco|Equal7~0_combout\);

-- Location: MLABCELL_X37_Y6_N6
\RAM1|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~567_combout\ = ( \processador|PC|DOUT\(3) & ( !\processador|PC|DOUT\(8) & ( (!\processador|PC|DOUT[0]~DUPLICATE_q\ & (\ROM1|memROM~1_combout\ & (\processador|PC|DOUT[2]~DUPLICATE_q\ & \processador|PC|DOUT[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \processador|PC|ALT_INV_DOUT\(3),
	dataf => \processador|PC|ALT_INV_DOUT\(8),
	combout => \RAM1|ram~567_combout\);

-- Location: LABCELL_X36_Y3_N39
\RAM1|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~568_combout\ = ( \RAM1|ram~567_combout\ & ( (\ROM1|memROM~27_combout\ & (\decoderBloco|Equal7~0_combout\ & \processador|decoderInstru1|Equal11~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010100000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~27_combout\,
	datac => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datad => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datae => \RAM1|ALT_INV_ram~567_combout\,
	combout => \RAM1|ram~568_combout\);

-- Location: FF_X35_Y4_N53
\RAM1|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~43_combout\,
	sload => VCC,
	ena => \RAM1|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~31_q\);

-- Location: MLABCELL_X37_Y6_N24
\RAM1|ram~571\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~571_combout\ = ( \processador|PC|DOUT[1]~DUPLICATE_q\ & ( !\processador|PC|DOUT\(8) & ( (\processador|PC|DOUT[2]~DUPLICATE_q\ & (\ROM1|memROM~1_combout\ & (\processador|PC|DOUT[0]~DUPLICATE_q\ & \processador|PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(3),
	datae => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(8),
	combout => \RAM1|ram~571_combout\);

-- Location: MLABCELL_X37_Y6_N15
\RAM1|ram~572\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~572_combout\ = ( \RAM1|ram~571_combout\ & ( (\ROM1|memROM~27_combout\ & (\processador|decoderInstru1|Equal11~0_combout\ & \decoderBloco|Equal7~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~27_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datad => \decoderBloco|ALT_INV_Equal7~0_combout\,
	dataf => \RAM1|ALT_INV_ram~571_combout\,
	combout => \RAM1|ram~572_combout\);

-- Location: FF_X35_Y4_N59
\RAM1|ram~287\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~43_combout\,
	sload => VCC,
	ena => \RAM1|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~287_q\);

-- Location: MLABCELL_X37_Y6_N30
\RAM1|ram~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~573_combout\ = ( \processador|PC|DOUT[2]~DUPLICATE_q\ & ( !\processador|PC|DOUT[1]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[0]~DUPLICATE_q\ & (\processador|PC|DOUT\(3) & (\ROM1|memROM~1_combout\ & !\processador|PC|DOUT\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(3),
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \processador|PC|ALT_INV_DOUT\(8),
	datae => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \RAM1|ram~573_combout\);

-- Location: MLABCELL_X37_Y6_N36
\RAM1|ram~574\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~574_combout\ = ( \RAM1|ram~573_combout\ & ( (\ROM1|memROM~27_combout\ & (\processador|decoderInstru1|Equal11~0_combout\ & \decoderBloco|Equal7~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~27_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datad => \decoderBloco|ALT_INV_Equal7~0_combout\,
	dataf => \RAM1|ALT_INV_ram~573_combout\,
	combout => \RAM1|ram~574_combout\);

-- Location: FF_X35_Y7_N56
\RAM1|ram~519\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~43_combout\,
	sload => VCC,
	ena => \RAM1|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~519_q\);

-- Location: LABCELL_X35_Y4_N42
\RAM1|ram~576\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~576_combout\ = ( \RAM1|ram~519_q\ & ( (!\ROM1|memROM~16_combout\ & ((!\ROM1|memROM~19_combout\ & (\RAM1|ram~31_q\)) # (\ROM1|memROM~19_combout\ & ((\RAM1|ram~287_q\))))) # (\ROM1|memROM~16_combout\ & (((\ROM1|memROM~19_combout\)))) ) ) # ( 
-- !\RAM1|ram~519_q\ & ( (!\ROM1|memROM~16_combout\ & ((!\ROM1|memROM~19_combout\ & (\RAM1|ram~31_q\)) # (\ROM1|memROM~19_combout\ & ((\RAM1|ram~287_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010100000011000001010000001111110101000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~31_q\,
	datab => \RAM1|ALT_INV_ram~287_q\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \RAM1|ALT_INV_ram~519_q\,
	combout => \RAM1|ram~576_combout\);

-- Location: MLABCELL_X37_Y6_N0
\RAM1|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~569_combout\ = ( \ROM1|memROM~1_combout\ & ( (\processador|PC|DOUT[0]~DUPLICATE_q\ & (!\processador|PC|DOUT\(8) & (\processador|PC|DOUT[2]~DUPLICATE_q\ & !\processador|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(3),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~569_combout\);

-- Location: LABCELL_X36_Y6_N48
\RAM1|ram~570\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~570_combout\ = ( \processador|decoderInstru1|Equal11~0_combout\ & ( (\decoderBloco|Equal7~0_combout\ & (\RAM1|ram~569_combout\ & \ROM1|memROM~27_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datac => \RAM1|ALT_INV_ram~569_combout\,
	datad => \ROM1|ALT_INV_memROM~27_combout\,
	dataf => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	combout => \RAM1|ram~570_combout\);

-- Location: FF_X34_Y4_N8
\RAM1|ram~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~43_combout\,
	sload => VCC,
	ena => \RAM1|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~271_q\);

-- Location: MLABCELL_X37_Y6_N54
\RAM1|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~559_combout\ = ( \processador|PC|DOUT\(3) & ( !\processador|PC|DOUT\(8) & ( (\ROM1|memROM~1_combout\ & (((\processador|PC|DOUT[2]~DUPLICATE_q\) # (\processador|PC|DOUT[1]~DUPLICATE_q\)) # (\processador|PC|DOUT[0]~DUPLICATE_q\))) ) ) ) # ( 
-- !\processador|PC|DOUT\(3) & ( !\processador|PC|DOUT\(8) & ( (\ROM1|memROM~1_combout\ & (((\processador|PC|DOUT[0]~DUPLICATE_q\ & \processador|PC|DOUT[1]~DUPLICATE_q\)) # (\processador|PC|DOUT[2]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011111000000000111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \processador|PC|ALT_INV_DOUT\(3),
	dataf => \processador|PC|ALT_INV_DOUT\(8),
	combout => \RAM1|ram~559_combout\);

-- Location: LABCELL_X36_Y3_N3
\RAM1|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~560_combout\ = ( !\RAM1|ram~559_combout\ & ( \processador|decoderInstru1|Equal11~0_combout\ & ( (\ROM1|memROM~27_combout\ & \decoderBloco|Equal7~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~27_combout\,
	datac => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datae => \RAM1|ALT_INV_ram~559_combout\,
	dataf => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	combout => \RAM1|ram~560_combout\);

-- Location: FF_X34_Y5_N20
\RAM1|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~43_combout\,
	sload => VCC,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~15_q\);

-- Location: LABCELL_X40_Y4_N6
\RAM1|ram~23feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~23feeder_combout\ = ( \processador|BANCO_REGISTRADORES|registrador~43_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	combout => \RAM1|ram~23feeder_combout\);

-- Location: MLABCELL_X37_Y6_N42
\RAM1|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~561_combout\ = ( \processador|PC|DOUT[1]~DUPLICATE_q\ & ( !\processador|PC|DOUT\(8) & ( (!\processador|PC|DOUT\(3) & (\ROM1|memROM~1_combout\ & (!\processador|PC|DOUT[2]~DUPLICATE_q\ $ (!\processador|PC|DOUT[0]~DUPLICATE_q\)))) ) ) ) # ( 
-- !\processador|PC|DOUT[1]~DUPLICATE_q\ & ( !\processador|PC|DOUT\(8) & ( (\processador|PC|DOUT[2]~DUPLICATE_q\ & (\ROM1|memROM~1_combout\ & (!\processador|PC|DOUT\(3) $ (\processador|PC|DOUT[0]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000001000000000100100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(3),
	datac => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(8),
	combout => \RAM1|ram~561_combout\);

-- Location: LABCELL_X36_Y3_N57
\RAM1|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~562_combout\ = ( \processador|decoderInstru1|Equal11~0_combout\ & ( (\ROM1|memROM~27_combout\ & (\RAM1|ram~561_combout\ & \decoderBloco|Equal7~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~27_combout\,
	datab => \RAM1|ALT_INV_ram~561_combout\,
	datac => \decoderBloco|ALT_INV_Equal7~0_combout\,
	dataf => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	combout => \RAM1|ram~562_combout\);

-- Location: FF_X40_Y4_N8
\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~23feeder_combout\,
	ena => \RAM1|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

-- Location: MLABCELL_X37_Y6_N51
\RAM1|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~563_combout\ = ( !\processador|PC|DOUT[2]~DUPLICATE_q\ & ( (\ROM1|memROM~1_combout\ & (!\processador|PC|DOUT\(8) & (\processador|PC|DOUT\(3) & \processador|PC|DOUT[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \processador|PC|ALT_INV_DOUT\(3),
	datad => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \RAM1|ram~563_combout\);

-- Location: MLABCELL_X37_Y6_N12
\RAM1|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~564_combout\ = ( \RAM1|ram~563_combout\ & ( (\ROM1|memROM~27_combout\ & (\processador|decoderInstru1|Equal11~0_combout\ & \decoderBloco|Equal7~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~27_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datad => \decoderBloco|ALT_INV_Equal7~0_combout\,
	dataf => \RAM1|ALT_INV_ram~563_combout\,
	combout => \RAM1|ram~564_combout\);

-- Location: FF_X35_Y4_N14
\RAM1|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~43_combout\,
	sload => VCC,
	ena => \RAM1|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~55_q\);

-- Location: LABCELL_X35_Y4_N6
\RAM1|ram~575\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~575_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~16_combout\ & \RAM1|ram~55_q\) ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( 
-- \ROM1|memROM~10_combout\ & ( !\ROM1|memROM~14_combout\ & ( (\RAM1|ram~23_q\ & !\ROM1|memROM~16_combout\) ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~14_combout\ & ( (\RAM1|ram~15_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100000011000000001111000011110000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~15_q\,
	datab => \RAM1|ALT_INV_ram~23_q\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \RAM1|ALT_INV_ram~55_q\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM1|ram~575_combout\);

-- Location: MLABCELL_X34_Y4_N9
\RAM1|ram~578\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~578_combout\ = ( \RAM1|ram~575_combout\ & ( \ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~12_combout\ & ((!\ROM1|memROM~19_combout\) # ((!\ROM1|memROM~14_combout\ & \RAM1|ram~271_q\)))) # (\ROM1|memROM~12_combout\ & (!\ROM1|memROM~14_combout\)) ) 
-- ) ) # ( !\RAM1|ram~575_combout\ & ( \ROM1|memROM~17_combout\ & ( ((!\ROM1|memROM~14_combout\ & (\RAM1|ram~271_q\ & \ROM1|memROM~19_combout\))) # (\ROM1|memROM~12_combout\) ) ) ) # ( \RAM1|ram~575_combout\ & ( !\ROM1|memROM~17_combout\ & ( 
-- (!\ROM1|memROM~12_combout\ & ((!\ROM1|memROM~19_combout\) # ((!\ROM1|memROM~14_combout\ & \RAM1|ram~271_q\)))) # (\ROM1|memROM~12_combout\ & (!\ROM1|memROM~14_combout\)) ) ) ) # ( !\RAM1|ram~575_combout\ & ( !\ROM1|memROM~17_combout\ & ( 
-- (!\ROM1|memROM~14_combout\ & (((\RAM1|ram~271_q\ & \ROM1|memROM~19_combout\)) # (\ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000101010111110100010101000001111001011111111101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \RAM1|ALT_INV_ram~271_q\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \RAM1|ALT_INV_ram~575_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~578_combout\);

-- Location: LABCELL_X35_Y4_N15
\RAM1|ram~579\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~579_combout\ = (\ROM1|memROM~14_combout\ & \ROM1|memROM~16_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \RAM1|ram~579_combout\);

-- Location: MLABCELL_X37_Y6_N33
\RAM1|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~565_combout\ = ( \processador|PC|DOUT[1]~DUPLICATE_q\ & ( !\processador|PC|DOUT[2]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[0]~DUPLICATE_q\ & (\processador|PC|DOUT\(3) & (!\processador|PC|DOUT\(8) & \ROM1|memROM~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(3),
	datac => \processador|PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \RAM1|ram~565_combout\);

-- Location: MLABCELL_X37_Y6_N39
\RAM1|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~566_combout\ = ( \RAM1|ram~565_combout\ & ( (\ROM1|memROM~27_combout\ & (\processador|decoderInstru1|Equal11~0_combout\ & \decoderBloco|Equal7~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~27_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datad => \decoderBloco|ALT_INV_Equal7~0_combout\,
	dataf => \RAM1|ALT_INV_ram~565_combout\,
	combout => \RAM1|ram~566_combout\);

-- Location: FF_X34_Y4_N14
\RAM1|ram~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~43_combout\,
	sload => VCC,
	ena => \RAM1|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~111_q\);

-- Location: MLABCELL_X34_Y4_N15
\RAM1|ram~577\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~577_combout\ = ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~19_combout\ & \RAM1|ram~111_q\) ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~19_combout\) # 
-- (!\ROM1|memROM~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \RAM1|ALT_INV_ram~111_q\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~577_combout\);

-- Location: MLABCELL_X34_Y4_N51
\RAM1|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~527_combout\ = ( \RAM1|ram~579_combout\ & ( \RAM1|ram~577_combout\ & ( (\RAM1|ram~578_combout\ & ((!\ROM1|memROM~12_combout\) # (\RAM1|ram~576_combout\))) ) ) ) # ( !\RAM1|ram~579_combout\ & ( \RAM1|ram~577_combout\ & ( (\RAM1|ram~578_combout\ & 
-- ((!\ROM1|memROM~12_combout\) # ((\RAM1|ram~576_combout\ & !\ROM1|memROM~10_combout\)))) ) ) ) # ( \RAM1|ram~579_combout\ & ( !\RAM1|ram~577_combout\ & ( (\ROM1|memROM~12_combout\ & (\RAM1|ram~576_combout\ & (\RAM1|ram~578_combout\ & 
-- \ROM1|memROM~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100001011000010100000101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \RAM1|ALT_INV_ram~576_combout\,
	datac => \RAM1|ALT_INV_ram~578_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	datae => \RAM1|ALT_INV_ram~579_combout\,
	dataf => \RAM1|ALT_INV_ram~577_combout\,
	combout => \RAM1|ram~527_combout\);

-- Location: LABCELL_X36_Y6_N0
\SW_9|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_9|saida[0]~0_combout\ = ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~11_combout\ & ( (!\SW[9]~input_o\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~18_combout\ & !\processador|PC|DOUT\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~18_combout\,
	datad => \processador|PC|ALT_INV_DOUT\(8),
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \SW_9|saida[0]~0_combout\);

-- Location: LABCELL_X36_Y6_N18
\SW_8|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_8|saida[0]~0_combout\ = ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~11_combout\ & ( (!\SW[8]~input_o\ & (!\processador|PC|DOUT\(8) & (!\ROM1|memROM~18_combout\ & \ROM1|memROM~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~18_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \SW_8|saida[0]~0_combout\);

-- Location: MLABCELL_X37_Y6_N48
\comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = ( \ROM1|memROM~11_combout\ & ( (\ROM1|memROM~1_combout\ & (!\processador|PC|DOUT\(8) & (\ROM1|memROM~18_combout\ & \ROM1|memROM~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~18_combout\,
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \comb~3_combout\);

-- Location: LABCELL_X36_Y7_N12
\SW_0_7|saida[0]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_0_7|saida[0]~15_combout\ = ( \KEY_3|saida[0]~1_combout\ & ( \processador|decoderInstru1|saida~3_combout\ & ( (!\SW[0]~input_o\ & (!\comb~0_combout\ & !\ROM1|memROM~14_combout\)) ) ) ) # ( \KEY_3|saida[0]~1_combout\ & ( 
-- !\processador|decoderInstru1|saida~3_combout\ & ( (!\SW[0]~input_o\ & (!\comb~0_combout\ & (!\ROM1|memROM~14_combout\ & \processador|decoderInstru1|saida~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \processador|decoderInstru1|ALT_INV_saida~4_combout\,
	datae => \KEY_3|ALT_INV_saida[0]~1_combout\,
	dataf => \processador|decoderInstru1|ALT_INV_saida~3_combout\,
	combout => \SW_0_7|saida[0]~15_combout\);

-- Location: FF_X35_Y6_N11
\FF_DEBOUNCER_2|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \FF_DEBOUNCER_2|DOUT~feeder_combout\,
	clrn => \ALT_INV_RESET_508~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF_DEBOUNCER_2|DOUT~q\);

-- Location: LABCELL_X35_Y6_N12
\KEY_2|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \KEY_2|saida[0]~0_combout\ = ( \ROM1|memROM~11_combout\ & ( !\FF_DEBOUNCER_2|DOUT~q\ & ( (\ROM1|memROM~18_combout\ & (!\processador|PC|DOUT\(8) & (!\ROM1|memROM~9_combout\ & \ROM1|memROM~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~18_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \FF_DEBOUNCER_2|ALT_INV_DOUT~q\,
	combout => \KEY_2|saida[0]~0_combout\);

-- Location: LABCELL_X35_Y5_N0
\KEY_3|saida[0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \KEY_3|saida[0]~10_combout\ = ( !\SW_0_7|saida[0]~15_combout\ & ( \KEY_2|saida[0]~0_combout\ & ( !\comb~1_combout\ ) ) ) # ( !\SW_0_7|saida[0]~15_combout\ & ( !\KEY_2|saida[0]~0_combout\ & ( (!\comb~1_combout\) # ((!\SW_9|saida[0]~0_combout\ & 
-- (!\SW_8|saida[0]~0_combout\ & !\comb~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110000000000000000000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SW_9|ALT_INV_saida[0]~0_combout\,
	datab => \SW_8|ALT_INV_saida[0]~0_combout\,
	datac => \ALT_INV_comb~3_combout\,
	datad => \ALT_INV_comb~1_combout\,
	datae => \SW_0_7|ALT_INV_saida[0]~15_combout\,
	dataf => \KEY_2|ALT_INV_saida[0]~0_combout\,
	combout => \KEY_3|saida[0]~10_combout\);

-- Location: LABCELL_X35_Y5_N12
\KEY_3|saida[0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \KEY_3|saida[0]~11_combout\ = ( \KEY_3|saida[0]~10_combout\ & ( \KEY_3|saida[0]~7_combout\ & ( (!\KEY_3|saida[0]~3_combout\ & ((!\RAM1|dado_out~0_combout\) # (\RAM1|ram~527_combout\))) ) ) ) # ( \KEY_3|saida[0]~10_combout\ & ( !\KEY_3|saida[0]~7_combout\ 
-- ) ) # ( !\KEY_3|saida[0]~10_combout\ & ( !\KEY_3|saida[0]~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_dado_out~0_combout\,
	datac => \RAM1|ALT_INV_ram~527_combout\,
	datad => \KEY_3|ALT_INV_saida[0]~3_combout\,
	datae => \KEY_3|ALT_INV_saida[0]~10_combout\,
	dataf => \KEY_3|ALT_INV_saida[0]~7_combout\,
	combout => \KEY_3|saida[0]~11_combout\);

-- Location: MLABCELL_X37_Y5_N3
\processador|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~5_sumout\ = SUM(( \processador|BANCO_REGISTRADORES|registrador~44_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & (((\SW_0_7|saida[1]~7_combout\)))) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (!\processador|PC|DOUT\(8) & ((\ROM1|memROM~31_combout\)))) ) + ( \processador|ULA1|Add0~2\ ))
-- \processador|ULA1|Add0~6\ = CARRY(( \processador|BANCO_REGISTRADORES|registrador~44_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & (((\SW_0_7|saida[1]~7_combout\)))) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (!\processador|PC|DOUT\(8) & ((\ROM1|memROM~31_combout\)))) ) + ( \processador|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \SW_0_7|ALT_INV_saida[1]~7_combout\,
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~44_combout\,
	dataf => \ROM1|ALT_INV_memROM~31_combout\,
	cin => \processador|ULA1|Add0~2\,
	sumout => \processador|ULA1|Add0~5_sumout\,
	cout => \processador|ULA1|Add0~6\);

-- Location: LABCELL_X35_Y5_N30
\processador|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~5_sumout\ = SUM(( \processador|BANCO_REGISTRADORES|registrador~44_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & (((!\SW_0_7|saida[1]~7_combout\)))) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (((!\ROM1|memROM~31_combout\)) # (\processador|PC|DOUT\(8)))) ) + ( \processador|ULA1|Add1~2\ ))
-- \processador|ULA1|Add1~6\ = CARRY(( \processador|BANCO_REGISTRADORES|registrador~44_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & (((!\SW_0_7|saida[1]~7_combout\)))) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (((!\ROM1|memROM~31_combout\)) # (\processador|PC|DOUT\(8)))) ) + ( \processador|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \SW_0_7|ALT_INV_saida[1]~7_combout\,
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~44_combout\,
	dataf => \ROM1|ALT_INV_memROM~31_combout\,
	cin => \processador|ULA1|Add1~2\,
	sumout => \processador|ULA1|Add1~5_sumout\,
	cout => \processador|ULA1|Add1~6\);

-- Location: LABCELL_X36_Y5_N36
\processador|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[1]~1_combout\ = ( \processador|ULA1|Add0~5_sumout\ & ( \processador|ULA1|Add1~5_sumout\ & ( ((!\processador|MUX1|saida_MUX[1]~1_combout\ & ((!\processador|decoderInstru1|saida~0_combout\) # 
-- (\processador|BANCO_REGISTRADORES|registrador~44_combout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\) ) ) ) # ( !\processador|ULA1|Add0~5_sumout\ & ( \processador|ULA1|Add1~5_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\ & 
-- (!\processador|MUX1|saida_MUX[1]~1_combout\ & ((!\processador|decoderInstru1|saida~0_combout\) # (\processador|BANCO_REGISTRADORES|registrador~44_combout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\ & 
-- (!\processador|decoderInstru1|saida~0_combout\)) ) ) ) # ( \processador|ULA1|Add0~5_sumout\ & ( !\processador|ULA1|Add1~5_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\ & (!\processador|MUX1|saida_MUX[1]~1_combout\ & 
-- ((!\processador|decoderInstru1|saida~0_combout\) # (\processador|BANCO_REGISTRADORES|registrador~44_combout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\ & (\processador|decoderInstru1|saida~0_combout\)) ) ) ) # ( 
-- !\processador|ULA1|Add0~5_sumout\ & ( !\processador|ULA1|Add1~5_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\ & (!\processador|MUX1|saida_MUX[1]~1_combout\ & ((!\processador|decoderInstru1|saida~0_combout\) # 
-- (\processador|BANCO_REGISTRADORES|registrador~44_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101000000000100110110001000111001110010001001101111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida~0_combout\,
	datac => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~44_combout\,
	datad => \processador|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datae => \processador|ULA1|ALT_INV_Add0~5_sumout\,
	dataf => \processador|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \processador|ULA1|saida[1]~1_combout\);

-- Location: FF_X35_Y7_N32
\processador|BANCO_REGISTRADORES|registrador~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ULA1|saida[1]~1_combout\,
	sload => VCC,
	ena => \processador|BANCO_REGISTRADORES|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~20_q\);

-- Location: FF_X36_Y5_N38
\processador|BANCO_REGISTRADORES|registrador~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|ULA1|saida[1]~1_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~36_q\);

-- Location: FF_X36_Y5_N22
\processador|BANCO_REGISTRADORES|registrador~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ULA1|saida[1]~1_combout\,
	sload => VCC,
	ena => \processador|BANCO_REGISTRADORES|registrador~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~12_q\);

-- Location: FF_X35_Y7_N37
\processador|BANCO_REGISTRADORES|registrador~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ULA1|saida[1]~1_combout\,
	sload => VCC,
	ena => \processador|BANCO_REGISTRADORES|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~28_q\);

-- Location: LABCELL_X35_Y7_N27
\processador|BANCO_REGISTRADORES|registrador~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|BANCO_REGISTRADORES|registrador~44_combout\ = ( \processador|BANCO_REGISTRADORES|registrador~28_q\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~2_combout\) # (\processador|BANCO_REGISTRADORES|registrador~36_q\) ) ) ) # ( 
-- !\processador|BANCO_REGISTRADORES|registrador~28_q\ & ( \ROM1|memROM~5_combout\ & ( (\ROM1|memROM~2_combout\ & \processador|BANCO_REGISTRADORES|registrador~36_q\) ) ) ) # ( \processador|BANCO_REGISTRADORES|registrador~28_q\ & ( !\ROM1|memROM~5_combout\ & 
-- ( (!\ROM1|memROM~2_combout\ & ((\processador|BANCO_REGISTRADORES|registrador~12_q\))) # (\ROM1|memROM~2_combout\ & (\processador|BANCO_REGISTRADORES|registrador~20_q\)) ) ) ) # ( !\processador|BANCO_REGISTRADORES|registrador~28_q\ & ( 
-- !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~2_combout\ & ((\processador|BANCO_REGISTRADORES|registrador~12_q\))) # (\ROM1|memROM~2_combout\ & (\processador|BANCO_REGISTRADORES|registrador~20_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~20_q\,
	datac => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~36_q\,
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~12_q\,
	datae => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~28_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \processador|BANCO_REGISTRADORES|registrador~44_combout\);

-- Location: FF_X35_Y3_N22
\RAM1|ram~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~44_combout\,
	sload => VCC,
	ena => \RAM1|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~272_q\);

-- Location: FF_X36_Y3_N37
\RAM1|ram~288\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~44_combout\,
	sload => VCC,
	ena => \RAM1|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~288_q\);

-- Location: LABCELL_X36_Y3_N9
\RAM1|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~528_combout\ = ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~17_combout\ & ( (\RAM1|ram~288_q\ & (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~16_combout\)) ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~17_combout\ & ( (\RAM1|ram~272_q\ & 
-- (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~16_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~272_q\,
	datab => \RAM1|ALT_INV_ram~288_q\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~528_combout\);

-- Location: LABCELL_X36_Y3_N42
\RAM1|ram~32feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~32feeder_combout\ = ( \processador|BANCO_REGISTRADORES|registrador~44_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~44_combout\,
	combout => \RAM1|ram~32feeder_combout\);

-- Location: FF_X36_Y3_N44
\RAM1|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~32feeder_combout\,
	ena => \RAM1|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~32_q\);

-- Location: FF_X35_Y3_N52
\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~44_combout\,
	sload => VCC,
	ena => \RAM1|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

-- Location: MLABCELL_X37_Y3_N15
\RAM1|ram~16feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~16feeder_combout\ = ( \processador|BANCO_REGISTRADORES|registrador~44_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~44_combout\,
	combout => \RAM1|ram~16feeder_combout\);

-- Location: FF_X37_Y3_N17
\RAM1|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~16feeder_combout\,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~16_q\);

-- Location: LABCELL_X36_Y3_N48
\RAM1|ram~600\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~600_combout\ = ( !\ROM1|memROM~10_combout\ & ( (!\ROM1|memROM~16_combout\ & (!\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~12_combout\ & ((\RAM1|ram~16_q\))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~32_q\))))) ) ) # ( \ROM1|memROM~10_combout\ & ( 
-- (!\ROM1|memROM~16_combout\ & (((\RAM1|ram~24_q\ & (!\ROM1|memROM~12_combout\ & !\ROM1|memROM~17_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101000100010000010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \RAM1|ALT_INV_ram~32_q\,
	datac => \RAM1|ALT_INV_ram~24_q\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	datag => \RAM1|ALT_INV_ram~16_q\,
	combout => \RAM1|ram~600_combout\);

-- Location: FF_X37_Y3_N11
\RAM1|ram~520\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~44_combout\,
	sload => VCC,
	ena => \RAM1|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~520_q\);

-- Location: MLABCELL_X37_Y3_N9
\RAM1|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~530_combout\ = ( \RAM1|ram~520_q\ & ( \ROM1|memROM~17_combout\ & ( (\ROM1|memROM~16_combout\ & (\ROM1|memROM~10_combout\ & \ROM1|memROM~12_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \RAM1|ALT_INV_ram~520_q\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~530_combout\);

-- Location: FF_X34_Y4_N46
\RAM1|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~44_combout\,
	sload => VCC,
	ena => \RAM1|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~56_q\);

-- Location: FF_X34_Y4_N20
\RAM1|ram~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~44_combout\,
	sload => VCC,
	ena => \RAM1|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~112_q\);

-- Location: MLABCELL_X34_Y4_N18
\RAM1|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~529_combout\ = ( \RAM1|ram~112_q\ & ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~12_combout\ & ((!\ROM1|memROM~10_combout\ & ((\ROM1|memROM~16_combout\))) # (\ROM1|memROM~10_combout\ & (\RAM1|ram~56_q\ & !\ROM1|memROM~16_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~112_q\ & ( !\ROM1|memROM~17_combout\ & ( (\ROM1|memROM~10_combout\ & (\RAM1|ram~56_q\ & (!\ROM1|memROM~16_combout\ & !\ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000110100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \RAM1|ALT_INV_ram~56_q\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \RAM1|ALT_INV_ram~112_q\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~529_combout\);

-- Location: LABCELL_X36_Y5_N18
\RAM1|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~531_combout\ = ( \RAM1|ram~530_combout\ & ( \RAM1|ram~529_combout\ & ( ((!\ROM1|memROM~19_combout\ & ((\RAM1|ram~600_combout\))) # (\ROM1|memROM~19_combout\ & (\RAM1|ram~528_combout\))) # (\ROM1|memROM~14_combout\) ) ) ) # ( 
-- !\RAM1|ram~530_combout\ & ( \RAM1|ram~529_combout\ & ( (!\ROM1|memROM~14_combout\ & ((!\ROM1|memROM~19_combout\ & ((\RAM1|ram~600_combout\))) # (\ROM1|memROM~19_combout\ & (\RAM1|ram~528_combout\)))) # (\ROM1|memROM~14_combout\ & 
-- (!\ROM1|memROM~19_combout\)) ) ) ) # ( \RAM1|ram~530_combout\ & ( !\RAM1|ram~529_combout\ & ( (!\ROM1|memROM~14_combout\ & ((!\ROM1|memROM~19_combout\ & ((\RAM1|ram~600_combout\))) # (\ROM1|memROM~19_combout\ & (\RAM1|ram~528_combout\)))) # 
-- (\ROM1|memROM~14_combout\ & (\ROM1|memROM~19_combout\)) ) ) ) # ( !\RAM1|ram~530_combout\ & ( !\RAM1|ram~529_combout\ & ( (!\ROM1|memROM~14_combout\ & ((!\ROM1|memROM~19_combout\ & ((\RAM1|ram~600_combout\))) # (\ROM1|memROM~19_combout\ & 
-- (\RAM1|ram~528_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \RAM1|ALT_INV_ram~528_combout\,
	datad => \RAM1|ALT_INV_ram~600_combout\,
	datae => \RAM1|ALT_INV_ram~530_combout\,
	dataf => \RAM1|ALT_INV_ram~529_combout\,
	combout => \RAM1|ram~531_combout\);

-- Location: LABCELL_X36_Y5_N0
\SW_0_7|saida[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_0_7|saida[1]~7_combout\ = ( \RAM1|ram~531_combout\ & ( (!\comb~2_combout\) # (\SW[1]~input_o\) ) ) # ( !\RAM1|ram~531_combout\ & ( (!\RAM1|dado_out~0_combout\ & ((!\comb~2_combout\) # (\SW[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000110000111100000011000011111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \RAM1|ALT_INV_dado_out~0_combout\,
	datad => \ALT_INV_comb~2_combout\,
	dataf => \RAM1|ALT_INV_ram~531_combout\,
	combout => \SW_0_7|saida[1]~7_combout\);

-- Location: MLABCELL_X37_Y5_N6
\processador|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~9_sumout\ = SUM(( \processador|BANCO_REGISTRADORES|registrador~45_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & (((\SW_0_7|saida[2]~9_combout\)))) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (!\processador|PC|DOUT\(8) & ((\ROM1|memROM~32_combout\)))) ) + ( \processador|ULA1|Add0~6\ ))
-- \processador|ULA1|Add0~10\ = CARRY(( \processador|BANCO_REGISTRADORES|registrador~45_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & (((\SW_0_7|saida[2]~9_combout\)))) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (!\processador|PC|DOUT\(8) & ((\ROM1|memROM~32_combout\)))) ) + ( \processador|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \SW_0_7|ALT_INV_saida[2]~9_combout\,
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~45_combout\,
	dataf => \ROM1|ALT_INV_memROM~32_combout\,
	cin => \processador|ULA1|Add0~6\,
	sumout => \processador|ULA1|Add0~9_sumout\,
	cout => \processador|ULA1|Add0~10\);

-- Location: LABCELL_X35_Y5_N33
\processador|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~9_sumout\ = SUM(( \processador|BANCO_REGISTRADORES|registrador~45_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & (((!\SW_0_7|saida[2]~9_combout\)))) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (((!\ROM1|memROM~32_combout\)) # (\processador|PC|DOUT\(8)))) ) + ( \processador|ULA1|Add1~6\ ))
-- \processador|ULA1|Add1~10\ = CARRY(( \processador|BANCO_REGISTRADORES|registrador~45_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & (((!\SW_0_7|saida[2]~9_combout\)))) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (((!\ROM1|memROM~32_combout\)) # (\processador|PC|DOUT\(8)))) ) + ( \processador|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \SW_0_7|ALT_INV_saida[2]~9_combout\,
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~45_combout\,
	dataf => \ROM1|ALT_INV_memROM~32_combout\,
	cin => \processador|ULA1|Add1~6\,
	sumout => \processador|ULA1|Add1~9_sumout\,
	cout => \processador|ULA1|Add1~10\);

-- Location: LABCELL_X36_Y5_N24
\processador|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[2]~2_combout\ = ( \processador|ULA1|Add0~9_sumout\ & ( \processador|ULA1|Add1~9_sumout\ & ( ((!\processador|MUX1|saida_MUX[2]~2_combout\ & ((!\processador|decoderInstru1|saida~0_combout\) # 
-- (\processador|BANCO_REGISTRADORES|registrador~45_combout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\) ) ) ) # ( !\processador|ULA1|Add0~9_sumout\ & ( \processador|ULA1|Add1~9_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\ & 
-- (!\processador|MUX1|saida_MUX[2]~2_combout\ & ((!\processador|decoderInstru1|saida~0_combout\) # (\processador|BANCO_REGISTRADORES|registrador~45_combout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\ & 
-- (!\processador|decoderInstru1|saida~0_combout\)) ) ) ) # ( \processador|ULA1|Add0~9_sumout\ & ( !\processador|ULA1|Add1~9_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\ & (!\processador|MUX1|saida_MUX[2]~2_combout\ & 
-- ((!\processador|decoderInstru1|saida~0_combout\) # (\processador|BANCO_REGISTRADORES|registrador~45_combout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\ & (\processador|decoderInstru1|saida~0_combout\)) ) ) ) # ( 
-- !\processador|ULA1|Add0~9_sumout\ & ( !\processador|ULA1|Add1~9_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\ & (!\processador|MUX1|saida_MUX[2]~2_combout\ & ((!\processador|decoderInstru1|saida~0_combout\) # 
-- (\processador|BANCO_REGISTRADORES|registrador~45_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010100000100100011011000111000100111001001101010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida~0_combout\,
	datac => \processador|MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~45_combout\,
	datae => \processador|ULA1|ALT_INV_Add0~9_sumout\,
	dataf => \processador|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \processador|ULA1|saida[2]~2_combout\);

-- Location: FF_X36_Y5_N25
\processador|BANCO_REGISTRADORES|registrador~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|ULA1|saida[2]~2_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~37_q\);

-- Location: FF_X36_Y5_N47
\processador|BANCO_REGISTRADORES|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ULA1|saida[2]~2_combout\,
	sload => VCC,
	ena => \processador|BANCO_REGISTRADORES|registrador~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~13_q\);

-- Location: FF_X36_Y5_N11
\processador|BANCO_REGISTRADORES|registrador~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ULA1|saida[2]~2_combout\,
	sload => VCC,
	ena => \processador|BANCO_REGISTRADORES|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~21_q\);

-- Location: LABCELL_X35_Y7_N51
\processador|BANCO_REGISTRADORES|registrador~29feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|BANCO_REGISTRADORES|registrador~29feeder_combout\ = ( \processador|ULA1|saida[2]~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|ULA1|ALT_INV_saida[2]~2_combout\,
	combout => \processador|BANCO_REGISTRADORES|registrador~29feeder_combout\);

-- Location: FF_X35_Y7_N52
\processador|BANCO_REGISTRADORES|registrador~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|BANCO_REGISTRADORES|registrador~29feeder_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~29_q\);

-- Location: LABCELL_X35_Y7_N57
\processador|BANCO_REGISTRADORES|registrador~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|BANCO_REGISTRADORES|registrador~45_combout\ = ( \ROM1|memROM~2_combout\ & ( \processador|BANCO_REGISTRADORES|registrador~29_q\ & ( (!\ROM1|memROM~5_combout\ & ((\processador|BANCO_REGISTRADORES|registrador~21_q\))) # (\ROM1|memROM~5_combout\ 
-- & (\processador|BANCO_REGISTRADORES|registrador~37_q\)) ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \processador|BANCO_REGISTRADORES|registrador~29_q\ & ( (\ROM1|memROM~5_combout\) # (\processador|BANCO_REGISTRADORES|registrador~13_q\) ) ) ) # ( 
-- \ROM1|memROM~2_combout\ & ( !\processador|BANCO_REGISTRADORES|registrador~29_q\ & ( (!\ROM1|memROM~5_combout\ & ((\processador|BANCO_REGISTRADORES|registrador~21_q\))) # (\ROM1|memROM~5_combout\ & (\processador|BANCO_REGISTRADORES|registrador~37_q\)) ) ) 
-- ) # ( !\ROM1|memROM~2_combout\ & ( !\processador|BANCO_REGISTRADORES|registrador~29_q\ & ( (\processador|BANCO_REGISTRADORES|registrador~13_q\ & !\ROM1|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000001011111010100111111001111110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~37_q\,
	datab => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~13_q\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~21_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~29_q\,
	combout => \processador|BANCO_REGISTRADORES|registrador~45_combout\);

-- Location: FF_X35_Y7_N17
\RAM1|ram~521\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~45_combout\,
	sload => VCC,
	ena => \RAM1|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~521_q\);

-- Location: LABCELL_X35_Y3_N27
\RAM1|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~534_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~17_combout\ & ( (\RAM1|ram~521_q\ & (\ROM1|memROM~14_combout\ & \ROM1|memROM~16_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~521_q\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~534_combout\);

-- Location: FF_X40_Y4_N34
\RAM1|ram~289\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~45_combout\,
	sload => VCC,
	ena => \RAM1|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~289_q\);

-- Location: FF_X35_Y3_N44
\RAM1|ram~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~45_combout\,
	sload => VCC,
	ena => \RAM1|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~273_q\);

-- Location: LABCELL_X35_Y3_N42
\RAM1|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~532_combout\ = ( \RAM1|ram~273_q\ & ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~16_combout\ & (!\ROM1|memROM~14_combout\ & ((!\ROM1|memROM~12_combout\) # (\RAM1|ram~289_q\)))) ) ) ) # ( !\RAM1|ram~273_q\ & ( !\ROM1|memROM~17_combout\ & ( 
-- (!\ROM1|memROM~16_combout\ & (\RAM1|ram~289_q\ & (\ROM1|memROM~12_combout\ & !\ROM1|memROM~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000101000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \RAM1|ALT_INV_ram~289_q\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \RAM1|ALT_INV_ram~273_q\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~532_combout\);

-- Location: FF_X36_Y3_N14
\RAM1|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~45_combout\,
	sload => VCC,
	ena => \RAM1|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~33_q\);

-- Location: FF_X35_Y3_N38
\RAM1|ram~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~45_combout\,
	sload => VCC,
	ena => \RAM1|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~113_q\);

-- Location: MLABCELL_X37_Y3_N57
\RAM1|ram~17feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~17feeder_combout\ = ( \processador|BANCO_REGISTRADORES|registrador~45_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~45_combout\,
	combout => \RAM1|ram~17feeder_combout\);

-- Location: FF_X37_Y3_N58
\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~17feeder_combout\,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

-- Location: LABCELL_X35_Y3_N54
\RAM1|ram~596\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~596_combout\ = ( !\ROM1|memROM~16_combout\ & ( (!\ROM1|memROM~14_combout\ & (!\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~12_combout\ & ((\RAM1|ram~17_q\))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~33_q\))))) ) ) # ( \ROM1|memROM~16_combout\ & ( 
-- (\ROM1|memROM~14_combout\ & (((\RAM1|ram~113_q\ & (!\ROM1|memROM~12_combout\ & !\ROM1|memROM~17_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101000100010000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \RAM1|ALT_INV_ram~33_q\,
	datac => \RAM1|ALT_INV_ram~113_q\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	datag => \RAM1|ALT_INV_ram~17_q\,
	combout => \RAM1|ram~596_combout\);

-- Location: FF_X36_Y3_N8
\RAM1|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~45_combout\,
	sload => VCC,
	ena => \RAM1|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~57_q\);

-- Location: FF_X35_Y3_N50
\RAM1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~45_combout\,
	sload => VCC,
	ena => \RAM1|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~25_q\);

-- Location: LABCELL_X35_Y3_N48
\RAM1|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~533_combout\ = ( \RAM1|ram~25_q\ & ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~16_combout\ & (!\ROM1|memROM~12_combout\ & ((!\ROM1|memROM~14_combout\) # (\RAM1|ram~57_q\)))) ) ) ) # ( !\RAM1|ram~25_q\ & ( !\ROM1|memROM~17_combout\ & ( 
-- (!\ROM1|memROM~16_combout\ & (\RAM1|ram~57_q\ & (!\ROM1|memROM~12_combout\ & \ROM1|memROM~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000101000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \RAM1|ALT_INV_ram~57_q\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \RAM1|ALT_INV_ram~25_q\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~533_combout\);

-- Location: LABCELL_X35_Y3_N39
\RAM1|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~535_combout\ = ( \RAM1|ram~596_combout\ & ( \RAM1|ram~533_combout\ & ( (!\ROM1|memROM~19_combout\) # ((!\ROM1|memROM~10_combout\ & ((\RAM1|ram~532_combout\))) # (\ROM1|memROM~10_combout\ & (\RAM1|ram~534_combout\))) ) ) ) # ( 
-- !\RAM1|ram~596_combout\ & ( \RAM1|ram~533_combout\ & ( (!\ROM1|memROM~19_combout\ & (((\ROM1|memROM~10_combout\)))) # (\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~10_combout\ & ((\RAM1|ram~532_combout\))) # (\ROM1|memROM~10_combout\ & 
-- (\RAM1|ram~534_combout\)))) ) ) ) # ( \RAM1|ram~596_combout\ & ( !\RAM1|ram~533_combout\ & ( (!\ROM1|memROM~19_combout\ & (((!\ROM1|memROM~10_combout\)))) # (\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~10_combout\ & ((\RAM1|ram~532_combout\))) # 
-- (\ROM1|memROM~10_combout\ & (\RAM1|ram~534_combout\)))) ) ) ) # ( !\RAM1|ram~596_combout\ & ( !\RAM1|ram~533_combout\ & ( (\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~10_combout\ & ((\RAM1|ram~532_combout\))) # (\ROM1|memROM~10_combout\ & 
-- (\RAM1|ram~534_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101111100110000010100000011111101011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~534_combout\,
	datab => \RAM1|ALT_INV_ram~532_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	datae => \RAM1|ALT_INV_ram~596_combout\,
	dataf => \RAM1|ALT_INV_ram~533_combout\,
	combout => \RAM1|ram~535_combout\);

-- Location: LABCELL_X36_Y5_N57
\SW_0_7|saida[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_0_7|saida[2]~9_combout\ = ( \RAM1|ram~535_combout\ & ( (!\comb~2_combout\) # (\SW[2]~input_o\) ) ) # ( !\RAM1|ram~535_combout\ & ( (!\RAM1|dado_out~0_combout\ & ((!\comb~2_combout\) # (\SW[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000001010101010100000101011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~0_combout\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_comb~2_combout\,
	dataf => \RAM1|ALT_INV_ram~535_combout\,
	combout => \SW_0_7|saida[2]~9_combout\);

-- Location: MLABCELL_X37_Y5_N9
\processador|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~13_sumout\ = SUM(( \processador|BANCO_REGISTRADORES|registrador~46_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & (((\SW_0_7|saida[3]~10_combout\)))) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (!\processador|PC|DOUT\(8) & ((\ROM1|memROM~33_combout\)))) ) + ( \processador|ULA1|Add0~10\ ))
-- \processador|ULA1|Add0~14\ = CARRY(( \processador|BANCO_REGISTRADORES|registrador~46_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & (((\SW_0_7|saida[3]~10_combout\)))) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (!\processador|PC|DOUT\(8) & ((\ROM1|memROM~33_combout\)))) ) + ( \processador|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \SW_0_7|ALT_INV_saida[3]~10_combout\,
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~46_combout\,
	dataf => \ROM1|ALT_INV_memROM~33_combout\,
	cin => \processador|ULA1|Add0~10\,
	sumout => \processador|ULA1|Add0~13_sumout\,
	cout => \processador|ULA1|Add0~14\);

-- Location: LABCELL_X35_Y5_N36
\processador|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~13_sumout\ = SUM(( \processador|BANCO_REGISTRADORES|registrador~46_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & (((!\SW_0_7|saida[3]~10_combout\)))) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (((!\ROM1|memROM~33_combout\)) # (\processador|PC|DOUT\(8)))) ) + ( \processador|ULA1|Add1~10\ ))
-- \processador|ULA1|Add1~14\ = CARRY(( \processador|BANCO_REGISTRADORES|registrador~46_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & (((!\SW_0_7|saida[3]~10_combout\)))) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (((!\ROM1|memROM~33_combout\)) # (\processador|PC|DOUT\(8)))) ) + ( \processador|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \SW_0_7|ALT_INV_saida[3]~10_combout\,
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~46_combout\,
	dataf => \ROM1|ALT_INV_memROM~33_combout\,
	cin => \processador|ULA1|Add1~10\,
	sumout => \processador|ULA1|Add1~13_sumout\,
	cout => \processador|ULA1|Add1~14\);

-- Location: LABCELL_X36_Y5_N12
\processador|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[3]~3_combout\ = ( \processador|ULA1|Add0~13_sumout\ & ( \processador|ULA1|Add1~13_sumout\ & ( ((!\processador|MUX1|saida_MUX[3]~3_combout\ & ((!\processador|decoderInstru1|saida~0_combout\) # 
-- (\processador|BANCO_REGISTRADORES|registrador~46_combout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\) ) ) ) # ( !\processador|ULA1|Add0~13_sumout\ & ( \processador|ULA1|Add1~13_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\ & 
-- (!\processador|MUX1|saida_MUX[3]~3_combout\ & ((!\processador|decoderInstru1|saida~0_combout\) # (\processador|BANCO_REGISTRADORES|registrador~46_combout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\ & 
-- (!\processador|decoderInstru1|saida~0_combout\)) ) ) ) # ( \processador|ULA1|Add0~13_sumout\ & ( !\processador|ULA1|Add1~13_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\ & (!\processador|MUX1|saida_MUX[3]~3_combout\ & 
-- ((!\processador|decoderInstru1|saida~0_combout\) # (\processador|BANCO_REGISTRADORES|registrador~46_combout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\ & (\processador|decoderInstru1|saida~0_combout\)) ) ) ) # ( 
-- !\processador|ULA1|Add0~13_sumout\ & ( !\processador|ULA1|Add1~13_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\ & (!\processador|MUX1|saida_MUX[3]~3_combout\ & ((!\processador|decoderInstru1|saida~0_combout\) # 
-- (\processador|BANCO_REGISTRADORES|registrador~46_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010100000100100011011000111000100111001001101010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida~0_combout\,
	datac => \processador|MUX1|ALT_INV_saida_MUX[3]~3_combout\,
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~46_combout\,
	datae => \processador|ULA1|ALT_INV_Add0~13_sumout\,
	dataf => \processador|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \processador|ULA1|saida[3]~3_combout\);

-- Location: FF_X35_Y7_N19
\processador|BANCO_REGISTRADORES|registrador~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ULA1|saida[3]~3_combout\,
	sload => VCC,
	ena => \processador|BANCO_REGISTRADORES|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~30_q\);

-- Location: FF_X36_Y5_N13
\processador|BANCO_REGISTRADORES|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|ULA1|saida[3]~3_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~38_q\);

-- Location: FF_X36_Y5_N50
\processador|BANCO_REGISTRADORES|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ULA1|saida[3]~3_combout\,
	sload => VCC,
	ena => \processador|BANCO_REGISTRADORES|registrador~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~14_q\);

-- Location: FF_X36_Y5_N55
\processador|BANCO_REGISTRADORES|registrador~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ULA1|saida[3]~3_combout\,
	sload => VCC,
	ena => \processador|BANCO_REGISTRADORES|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~22_q\);

-- Location: LABCELL_X35_Y7_N12
\processador|BANCO_REGISTRADORES|registrador~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|BANCO_REGISTRADORES|registrador~46_combout\ = ( \ROM1|memROM~2_combout\ & ( \processador|BANCO_REGISTRADORES|registrador~22_q\ & ( (!\ROM1|memROM~5_combout\) # (\processador|BANCO_REGISTRADORES|registrador~38_q\) ) ) ) # ( 
-- !\ROM1|memROM~2_combout\ & ( \processador|BANCO_REGISTRADORES|registrador~22_q\ & ( (!\ROM1|memROM~5_combout\ & ((\processador|BANCO_REGISTRADORES|registrador~14_q\))) # (\ROM1|memROM~5_combout\ & (\processador|BANCO_REGISTRADORES|registrador~30_q\)) ) ) 
-- ) # ( \ROM1|memROM~2_combout\ & ( !\processador|BANCO_REGISTRADORES|registrador~22_q\ & ( (\processador|BANCO_REGISTRADORES|registrador~38_q\ & \ROM1|memROM~5_combout\) ) ) ) # ( !\ROM1|memROM~2_combout\ & ( 
-- !\processador|BANCO_REGISTRADORES|registrador~22_q\ & ( (!\ROM1|memROM~5_combout\ & ((\processador|BANCO_REGISTRADORES|registrador~14_q\))) # (\ROM1|memROM~5_combout\ & (\processador|BANCO_REGISTRADORES|registrador~30_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000011001100001111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~30_q\,
	datab => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~38_q\,
	datac => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~14_q\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~22_q\,
	combout => \processador|BANCO_REGISTRADORES|registrador~46_combout\);

-- Location: FF_X35_Y7_N10
\RAM1|ram~522\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~46_combout\,
	sload => VCC,
	ena => \RAM1|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~522_q\);

-- Location: LABCELL_X36_Y5_N45
\RAM1|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~538_combout\ = ( \ROM1|memROM~16_combout\ & ( (\RAM1|ram~522_q\ & (\ROM1|memROM~14_combout\ & (\ROM1|memROM~10_combout\ & \ROM1|memROM~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~522_q\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \RAM1|ram~538_combout\);

-- Location: FF_X37_Y4_N59
\RAM1|ram~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~46_combout\,
	sload => VCC,
	ena => \RAM1|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~114_q\);

-- Location: FF_X36_Y4_N43
\RAM1|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~46_combout\,
	sload => VCC,
	ena => \RAM1|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

-- Location: FF_X34_Y5_N35
\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~46_combout\,
	sload => VCC,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

-- Location: FF_X37_Y4_N41
\RAM1|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~46_combout\,
	sload => VCC,
	ena => \RAM1|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~58_q\);

-- Location: MLABCELL_X37_Y4_N39
\RAM1|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~536_combout\ = ( \RAM1|ram~58_q\ & ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~10_combout\ ) ) ) # ( \RAM1|ram~58_q\ & ( !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~10_combout\ & ((\RAM1|ram~18_q\))) # (\ROM1|memROM~10_combout\ & 
-- (\RAM1|ram~26_q\)) ) ) ) # ( !\RAM1|ram~58_q\ & ( !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~10_combout\ & ((\RAM1|ram~18_q\))) # (\ROM1|memROM~10_combout\ & (\RAM1|ram~26_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~26_q\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \RAM1|ALT_INV_ram~18_q\,
	datae => \RAM1|ALT_INV_ram~58_q\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM1|ram~536_combout\);

-- Location: FF_X36_Y3_N31
\RAM1|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~46_combout\,
	sload => VCC,
	ena => \RAM1|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~34_q\);

-- Location: MLABCELL_X37_Y4_N57
\RAM1|ram~592\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~592_combout\ = ( !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~16_combout\ & ((!\ROM1|memROM~12_combout\ & (((\RAM1|ram~536_combout\)))) # (\ROM1|memROM~12_combout\ & (!\ROM1|memROM~10_combout\ & (\RAM1|ram~34_q\))))) ) ) # ( 
-- \ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~12_combout\ & ((!\ROM1|memROM~16_combout\ & (((\RAM1|ram~536_combout\)))) # (\ROM1|memROM~16_combout\ & (!\ROM1|memROM~10_combout\ & (\RAM1|ram~114_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010000000000000000000000100010101110000000001010101000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \RAM1|ALT_INV_ram~114_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \RAM1|ALT_INV_ram~536_combout\,
	datag => \RAM1|ALT_INV_ram~34_q\,
	combout => \RAM1|ram~592_combout\);

-- Location: FF_X36_Y3_N1
\RAM1|ram~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~46_combout\,
	sload => VCC,
	ena => \RAM1|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~290_q\);

-- Location: FF_X35_Y3_N20
\RAM1|ram~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~46_combout\,
	sload => VCC,
	ena => \RAM1|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~274_q\);

-- Location: LABCELL_X35_Y3_N18
\RAM1|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~537_combout\ = ( \RAM1|ram~274_q\ & ( \ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~14_combout\ & (\RAM1|ram~290_q\ & (!\ROM1|memROM~16_combout\ & !\ROM1|memROM~10_combout\))) ) ) ) # ( !\RAM1|ram~274_q\ & ( \ROM1|memROM~12_combout\ & ( 
-- (!\ROM1|memROM~14_combout\ & (\RAM1|ram~290_q\ & (!\ROM1|memROM~16_combout\ & !\ROM1|memROM~10_combout\))) ) ) ) # ( \RAM1|ram~274_q\ & ( !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~14_combout\ & (!\ROM1|memROM~16_combout\ & !\ROM1|memROM~10_combout\)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \RAM1|ALT_INV_ram~290_q\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	datae => \RAM1|ALT_INV_ram~274_q\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~537_combout\);

-- Location: LABCELL_X36_Y5_N9
\RAM1|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~539_combout\ = ( \RAM1|ram~592_combout\ & ( \RAM1|ram~537_combout\ & ( (!\ROM1|memROM~17_combout\) # ((\ROM1|memROM~19_combout\ & \RAM1|ram~538_combout\)) ) ) ) # ( !\RAM1|ram~592_combout\ & ( \RAM1|ram~537_combout\ & ( (\ROM1|memROM~19_combout\ 
-- & ((!\ROM1|memROM~17_combout\) # (\RAM1|ram~538_combout\))) ) ) ) # ( \RAM1|ram~592_combout\ & ( !\RAM1|ram~537_combout\ & ( (!\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~17_combout\))) # (\ROM1|memROM~19_combout\ & (\RAM1|ram~538_combout\ & 
-- \ROM1|memROM~17_combout\)) ) ) ) # ( !\RAM1|ram~592_combout\ & ( !\RAM1|ram~537_combout\ & ( (\ROM1|memROM~19_combout\ & (\RAM1|ram~538_combout\ & \ROM1|memROM~17_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011110011000000001100110011000000111111111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \RAM1|ALT_INV_ram~538_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \RAM1|ALT_INV_ram~592_combout\,
	dataf => \RAM1|ALT_INV_ram~537_combout\,
	combout => \RAM1|ram~539_combout\);

-- Location: LABCELL_X36_Y5_N3
\SW_0_7|saida[3]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_0_7|saida[3]~10_combout\ = ( \RAM1|ram~539_combout\ & ( (!\comb~2_combout\) # (\SW[3]~input_o\) ) ) # ( !\RAM1|ram~539_combout\ & ( (!\RAM1|dado_out~0_combout\ & ((!\comb~2_combout\) # (\SW[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000001010101010100000101011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~0_combout\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \ALT_INV_comb~2_combout\,
	dataf => \RAM1|ALT_INV_ram~539_combout\,
	combout => \SW_0_7|saida[3]~10_combout\);

-- Location: MLABCELL_X37_Y5_N12
\processador|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~17_sumout\ = SUM(( (!\processador|decoderInstru1|saida~1_combout\ & ((\SW_0_7|saida[4]~11_combout\))) # (\processador|decoderInstru1|saida~1_combout\ & (\ROM1|memROM~17_combout\)) ) + ( 
-- \processador|BANCO_REGISTRADORES|registrador~47_combout\ ) + ( \processador|ULA1|Add0~14\ ))
-- \processador|ULA1|Add0~18\ = CARRY(( (!\processador|decoderInstru1|saida~1_combout\ & ((\SW_0_7|saida[4]~11_combout\))) # (\processador|decoderInstru1|saida~1_combout\ & (\ROM1|memROM~17_combout\)) ) + ( 
-- \processador|BANCO_REGISTRADORES|registrador~47_combout\ ) + ( \processador|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \SW_0_7|ALT_INV_saida[4]~11_combout\,
	dataf => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~47_combout\,
	cin => \processador|ULA1|Add0~14\,
	sumout => \processador|ULA1|Add0~17_sumout\,
	cout => \processador|ULA1|Add0~18\);

-- Location: LABCELL_X35_Y5_N54
\processador|MUX1|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[4]~4_combout\ = ( \ROM1|memROM~17_combout\ & ( \RAM1|ram~544_combout\ & ( (!\SW[4]~input_o\ & (!\processador|decoderInstru1|saida~1_combout\ & \comb~2_combout\)) ) ) ) # ( !\ROM1|memROM~17_combout\ & ( \RAM1|ram~544_combout\ & 
-- ( ((!\SW[4]~input_o\ & \comb~2_combout\)) # (\processador|decoderInstru1|saida~1_combout\) ) ) ) # ( \ROM1|memROM~17_combout\ & ( !\RAM1|ram~544_combout\ & ( (!\processador|decoderInstru1|saida~1_combout\ & (((!\SW[4]~input_o\ & \comb~2_combout\)) # 
-- (\RAM1|dado_out~0_combout\))) ) ) ) # ( !\ROM1|memROM~17_combout\ & ( !\RAM1|ram~544_combout\ & ( (((!\SW[4]~input_o\ & \comb~2_combout\)) # (\processador|decoderInstru1|saida~1_combout\)) # (\RAM1|dado_out~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111011111010100001101000000001111110011110000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~0_combout\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datad => \ALT_INV_comb~2_combout\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \RAM1|ALT_INV_ram~544_combout\,
	combout => \processador|MUX1|saida_MUX[4]~4_combout\);

-- Location: MLABCELL_X37_Y5_N24
\processador|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[4]~4_combout\ = ( \processador|MUX1|saida_MUX[4]~4_combout\ & ( \processador|ULA1|Add1~17_sumout\ & ( (\processador|decoderInstru1|saida[4]~2_combout\ & ((!\processador|decoderInstru1|saida~0_combout\) # 
-- (\processador|ULA1|Add0~17_sumout\))) ) ) ) # ( !\processador|MUX1|saida_MUX[4]~4_combout\ & ( \processador|ULA1|Add1~17_sumout\ & ( (!\processador|decoderInstru1|saida~0_combout\) # ((!\processador|decoderInstru1|saida[4]~2_combout\ & 
-- (\processador|BANCO_REGISTRADORES|registrador~47_combout\)) # (\processador|decoderInstru1|saida[4]~2_combout\ & ((\processador|ULA1|Add0~17_sumout\)))) ) ) ) # ( \processador|MUX1|saida_MUX[4]~4_combout\ & ( !\processador|ULA1|Add1~17_sumout\ & ( 
-- (\processador|decoderInstru1|saida~0_combout\ & (\processador|decoderInstru1|saida[4]~2_combout\ & \processador|ULA1|Add0~17_sumout\)) ) ) ) # ( !\processador|MUX1|saida_MUX[4]~4_combout\ & ( !\processador|ULA1|Add1~17_sumout\ & ( 
-- (!\processador|decoderInstru1|saida~0_combout\ & (!\processador|decoderInstru1|saida[4]~2_combout\)) # (\processador|decoderInstru1|saida~0_combout\ & ((!\processador|decoderInstru1|saida[4]~2_combout\ & 
-- (\processador|BANCO_REGISTRADORES|registrador~47_combout\)) # (\processador|decoderInstru1|saida[4]~2_combout\ & ((\processador|ULA1|Add0~17_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110010011101000000000001000110101110101111110010001000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~0_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datac => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~47_combout\,
	datad => \processador|ULA1|ALT_INV_Add0~17_sumout\,
	datae => \processador|MUX1|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \processador|ULA1|saida[4]~4_combout\);

-- Location: FF_X36_Y5_N7
\processador|BANCO_REGISTRADORES|registrador~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ULA1|saida[4]~4_combout\,
	sload => VCC,
	ena => \processador|BANCO_REGISTRADORES|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~23_q\);

-- Location: MLABCELL_X37_Y5_N33
\processador|BANCO_REGISTRADORES|registrador~15feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|BANCO_REGISTRADORES|registrador~15feeder_combout\ = ( \processador|ULA1|saida[4]~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|ULA1|ALT_INV_saida[4]~4_combout\,
	combout => \processador|BANCO_REGISTRADORES|registrador~15feeder_combout\);

-- Location: FF_X37_Y5_N34
\processador|BANCO_REGISTRADORES|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|BANCO_REGISTRADORES|registrador~15feeder_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~15_q\);

-- Location: FF_X37_Y5_N26
\processador|BANCO_REGISTRADORES|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|ULA1|saida[4]~4_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~39_q\);

-- Location: MLABCELL_X37_Y5_N39
\processador|BANCO_REGISTRADORES|registrador~31feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|BANCO_REGISTRADORES|registrador~31feeder_combout\ = ( \processador|ULA1|saida[4]~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|ULA1|ALT_INV_saida[4]~4_combout\,
	combout => \processador|BANCO_REGISTRADORES|registrador~31feeder_combout\);

-- Location: FF_X37_Y5_N40
\processador|BANCO_REGISTRADORES|registrador~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|BANCO_REGISTRADORES|registrador~31feeder_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~31_q\);

-- Location: LABCELL_X39_Y5_N48
\processador|BANCO_REGISTRADORES|registrador~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|BANCO_REGISTRADORES|registrador~47_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~5_combout\ & ( \processador|BANCO_REGISTRADORES|registrador~39_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~5_combout\ & ( 
-- \processador|BANCO_REGISTRADORES|registrador~31_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~5_combout\ & ( \processador|BANCO_REGISTRADORES|registrador~23_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~5_combout\ & ( 
-- \processador|BANCO_REGISTRADORES|registrador~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~23_q\,
	datab => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~15_q\,
	datac => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~39_q\,
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~31_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \processador|BANCO_REGISTRADORES|registrador~47_combout\);

-- Location: FF_X35_Y4_N20
\RAM1|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~47_combout\,
	sload => VCC,
	ena => \RAM1|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~35_q\);

-- Location: LABCELL_X35_Y4_N18
\RAM1|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~542_combout\ = ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~14_combout\ & (!\ROM1|memROM~16_combout\ & (!\ROM1|memROM~10_combout\ & \RAM1|ram~35_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \RAM1|ALT_INV_ram~35_q\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~542_combout\);

-- Location: FF_X35_Y3_N10
\RAM1|ram~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~47_combout\,
	sload => VCC,
	ena => \RAM1|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~275_q\);

-- Location: LABCELL_X36_Y3_N18
\RAM1|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~541_combout\ = ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~17_combout\ & ( (\RAM1|ram~275_q\ & (!\ROM1|memROM~14_combout\ & !\ROM1|memROM~10_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~275_q\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~541_combout\);

-- Location: LABCELL_X39_Y4_N30
\RAM1|ram~523feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~523feeder_combout\ = ( \processador|BANCO_REGISTRADORES|registrador~47_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~47_combout\,
	combout => \RAM1|ram~523feeder_combout\);

-- Location: FF_X39_Y4_N31
\RAM1|ram~523\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~523feeder_combout\,
	ena => \RAM1|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~523_q\);

-- Location: FF_X35_Y4_N2
\RAM1|ram~291\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~47_combout\,
	sload => VCC,
	ena => \RAM1|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~291_q\);

-- Location: LABCELL_X35_Y4_N0
\RAM1|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~543_combout\ = ( \RAM1|ram~291_q\ & ( \ROM1|memROM~17_combout\ & ( (\ROM1|memROM~16_combout\ & (\RAM1|ram~523_q\ & (\ROM1|memROM~14_combout\ & \ROM1|memROM~10_combout\))) ) ) ) # ( !\RAM1|ram~291_q\ & ( \ROM1|memROM~17_combout\ & ( 
-- (\ROM1|memROM~16_combout\ & (\RAM1|ram~523_q\ & (\ROM1|memROM~14_combout\ & \ROM1|memROM~10_combout\))) ) ) ) # ( \RAM1|ram~291_q\ & ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~16_combout\ & (!\ROM1|memROM~14_combout\ & !\ROM1|memROM~10_combout\)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \RAM1|ALT_INV_ram~523_q\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	datae => \RAM1|ALT_INV_ram~291_q\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~543_combout\);

-- Location: FF_X35_Y4_N25
\RAM1|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~47_combout\,
	sload => VCC,
	ena => \RAM1|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~59_q\);

-- Location: FF_X36_Y4_N2
\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~47_combout\,
	sload => VCC,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

-- Location: FF_X36_Y4_N29
\RAM1|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~47_combout\,
	sload => VCC,
	ena => \RAM1|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~27_q\);

-- Location: LABCELL_X36_Y4_N27
\RAM1|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~540_combout\ = ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~10_combout\ & (\RAM1|ram~19_q\)) # (\ROM1|memROM~10_combout\ & ((\RAM1|ram~27_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~19_q\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \RAM1|ALT_INV_ram~27_q\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~540_combout\);

-- Location: LABCELL_X39_Y4_N3
\RAM1|ram~115feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~115feeder_combout\ = ( \processador|BANCO_REGISTRADORES|registrador~47_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~47_combout\,
	combout => \RAM1|ram~115feeder_combout\);

-- Location: FF_X39_Y4_N5
\RAM1|ram~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~115feeder_combout\,
	ena => \RAM1|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~115_q\);

-- Location: LABCELL_X35_Y4_N24
\RAM1|ram~588\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~588_combout\ = ( !\ROM1|memROM~10_combout\ & ( (!\ROM1|memROM~14_combout\ & (!\ROM1|memROM~16_combout\ & (((\RAM1|ram~540_combout\))))) # (\ROM1|memROM~14_combout\ & (\ROM1|memROM~16_combout\ & (\RAM1|ram~115_q\ & (!\ROM1|memROM~17_combout\)))) 
-- ) ) # ( \ROM1|memROM~10_combout\ & ( (!\ROM1|memROM~16_combout\ & ((!\ROM1|memROM~14_combout\ & (((\RAM1|ram~540_combout\)))) # (\ROM1|memROM~14_combout\ & (\RAM1|ram~59_q\ & (!\ROM1|memROM~17_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000100000000000001000000000010001001100010001000110010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \RAM1|ALT_INV_ram~59_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \RAM1|ALT_INV_ram~540_combout\,
	datag => \RAM1|ALT_INV_ram~115_q\,
	combout => \RAM1|ram~588_combout\);

-- Location: LABCELL_X35_Y4_N36
\RAM1|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~544_combout\ = ( \RAM1|ram~543_combout\ & ( \RAM1|ram~588_combout\ & ( (!\ROM1|memROM~12_combout\ & (((!\ROM1|memROM~19_combout\) # (\RAM1|ram~541_combout\)))) # (\ROM1|memROM~12_combout\ & (((\ROM1|memROM~19_combout\)) # 
-- (\RAM1|ram~542_combout\))) ) ) ) # ( !\RAM1|ram~543_combout\ & ( \RAM1|ram~588_combout\ & ( (!\ROM1|memROM~12_combout\ & (((!\ROM1|memROM~19_combout\) # (\RAM1|ram~541_combout\)))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~542_combout\ & 
-- ((!\ROM1|memROM~19_combout\)))) ) ) ) # ( \RAM1|ram~543_combout\ & ( !\RAM1|ram~588_combout\ & ( (!\ROM1|memROM~12_combout\ & (((\RAM1|ram~541_combout\ & \ROM1|memROM~19_combout\)))) # (\ROM1|memROM~12_combout\ & (((\ROM1|memROM~19_combout\)) # 
-- (\RAM1|ram~542_combout\))) ) ) ) # ( !\RAM1|ram~543_combout\ & ( !\RAM1|ram~588_combout\ & ( (!\ROM1|memROM~12_combout\ & (((\RAM1|ram~541_combout\ & \ROM1|memROM~19_combout\)))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~542_combout\ & 
-- ((!\ROM1|memROM~19_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010011111111011101000011001101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~542_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \RAM1|ALT_INV_ram~541_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \RAM1|ALT_INV_ram~543_combout\,
	dataf => \RAM1|ALT_INV_ram~588_combout\,
	combout => \RAM1|ram~544_combout\);

-- Location: LABCELL_X35_Y5_N21
\SW_0_7|saida[4]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_0_7|saida[4]~11_combout\ = ( \RAM1|dado_out~0_combout\ & ( \RAM1|ram~544_combout\ & ( (!\comb~2_combout\) # (\SW[4]~input_o\) ) ) ) # ( !\RAM1|dado_out~0_combout\ & ( \RAM1|ram~544_combout\ & ( (!\comb~2_combout\) # (\SW[4]~input_o\) ) ) ) # ( 
-- !\RAM1|dado_out~0_combout\ & ( !\RAM1|ram~544_combout\ & ( (!\comb~2_combout\) # (\SW[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011000000000000000011110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_comb~2_combout\,
	datae => \RAM1|ALT_INV_dado_out~0_combout\,
	dataf => \RAM1|ALT_INV_ram~544_combout\,
	combout => \SW_0_7|saida[4]~11_combout\);

-- Location: LABCELL_X35_Y5_N39
\processador|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~17_sumout\ = SUM(( (!\processador|decoderInstru1|saida~1_combout\ & ((!\SW_0_7|saida[4]~11_combout\))) # (\processador|decoderInstru1|saida~1_combout\ & (!\ROM1|memROM~17_combout\)) ) + ( 
-- \processador|BANCO_REGISTRADORES|registrador~47_combout\ ) + ( \processador|ULA1|Add1~14\ ))
-- \processador|ULA1|Add1~18\ = CARRY(( (!\processador|decoderInstru1|saida~1_combout\ & ((!\SW_0_7|saida[4]~11_combout\))) # (\processador|decoderInstru1|saida~1_combout\ & (!\ROM1|memROM~17_combout\)) ) + ( 
-- \processador|BANCO_REGISTRADORES|registrador~47_combout\ ) + ( \processador|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \SW_0_7|ALT_INV_saida[4]~11_combout\,
	dataf => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~47_combout\,
	cin => \processador|ULA1|Add1~14\,
	sumout => \processador|ULA1|Add1~17_sumout\,
	cout => \processador|ULA1|Add1~18\);

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

-- Location: LABCELL_X36_Y7_N21
\processador|MUX1|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[6]~6_combout\ = ( \processador|decoderInstru1|saida~1_combout\ & ( \RAM1|ram~554_combout\ & ( !\ROM1|memROM~20_combout\ ) ) ) # ( !\processador|decoderInstru1|saida~1_combout\ & ( \RAM1|ram~554_combout\ & ( (!\SW[6]~input_o\ & 
-- \comb~2_combout\) ) ) ) # ( \processador|decoderInstru1|saida~1_combout\ & ( !\RAM1|ram~554_combout\ & ( !\ROM1|memROM~20_combout\ ) ) ) # ( !\processador|decoderInstru1|saida~1_combout\ & ( !\RAM1|ram~554_combout\ & ( ((!\SW[6]~input_o\ & 
-- \comb~2_combout\)) # (\RAM1|dado_out~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111001111101010101010101000000000110011001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \RAM1|ALT_INV_dado_out~0_combout\,
	datad => \ALT_INV_comb~2_combout\,
	datae => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	dataf => \RAM1|ALT_INV_ram~554_combout\,
	combout => \processador|MUX1|saida_MUX[6]~6_combout\);

-- Location: MLABCELL_X37_Y7_N36
\ROM1|memROM~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~35_combout\ = ( \ROM1|memROM~7_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ROM1|memROM~35_combout\);

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

-- Location: MLABCELL_X37_Y4_N48
\processador|MUX1|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[5]~5_combout\ = ( \RAM1|dado_out~0_combout\ & ( \processador|decoderInstru1|saida~1_combout\ & ( !\ROM1|memROM~19_combout\ ) ) ) # ( !\RAM1|dado_out~0_combout\ & ( \processador|decoderInstru1|saida~1_combout\ & ( 
-- !\ROM1|memROM~19_combout\ ) ) ) # ( \RAM1|dado_out~0_combout\ & ( !\processador|decoderInstru1|saida~1_combout\ & ( (!\RAM1|ram~550_combout\) # ((!\SW[5]~input_o\ & \comb~2_combout\)) ) ) ) # ( !\RAM1|dado_out~0_combout\ & ( 
-- !\processador|decoderInstru1|saida~1_combout\ & ( (!\SW[5]~input_o\ & \comb~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100111111110000110010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \ALT_INV_comb~2_combout\,
	datad => \RAM1|ALT_INV_ram~550_combout\,
	datae => \RAM1|ALT_INV_dado_out~0_combout\,
	dataf => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	combout => \processador|MUX1|saida_MUX[5]~5_combout\);

-- Location: MLABCELL_X37_Y7_N9
\ROM1|memROM~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~34_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~18_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~18_combout\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~34_combout\);

-- Location: LABCELL_X35_Y5_N42
\processador|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~21_sumout\ = SUM(( \processador|BANCO_REGISTRADORES|registrador~48_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & (((!\SW_0_7|saida[5]~12_combout\)))) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (((!\ROM1|memROM~34_combout\)) # (\processador|PC|DOUT\(8)))) ) + ( \processador|ULA1|Add1~18\ ))
-- \processador|ULA1|Add1~22\ = CARRY(( \processador|BANCO_REGISTRADORES|registrador~48_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & (((!\SW_0_7|saida[5]~12_combout\)))) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (((!\ROM1|memROM~34_combout\)) # (\processador|PC|DOUT\(8)))) ) + ( \processador|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \SW_0_7|ALT_INV_saida[5]~12_combout\,
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~48_combout\,
	dataf => \ROM1|ALT_INV_memROM~34_combout\,
	cin => \processador|ULA1|Add1~18\,
	sumout => \processador|ULA1|Add1~21_sumout\,
	cout => \processador|ULA1|Add1~22\);

-- Location: MLABCELL_X37_Y5_N15
\processador|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~21_sumout\ = SUM(( \processador|BANCO_REGISTRADORES|registrador~48_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & (((\SW_0_7|saida[5]~12_combout\)))) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (!\processador|PC|DOUT\(8) & ((\ROM1|memROM~34_combout\)))) ) + ( \processador|ULA1|Add0~18\ ))
-- \processador|ULA1|Add0~22\ = CARRY(( \processador|BANCO_REGISTRADORES|registrador~48_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & (((\SW_0_7|saida[5]~12_combout\)))) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (!\processador|PC|DOUT\(8) & ((\ROM1|memROM~34_combout\)))) ) + ( \processador|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \SW_0_7|ALT_INV_saida[5]~12_combout\,
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~48_combout\,
	dataf => \ROM1|ALT_INV_memROM~34_combout\,
	cin => \processador|ULA1|Add0~18\,
	sumout => \processador|ULA1|Add0~21_sumout\,
	cout => \processador|ULA1|Add0~22\);

-- Location: MLABCELL_X37_Y5_N42
\processador|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[5]~5_combout\ = ( \processador|ULA1|Add1~21_sumout\ & ( \processador|ULA1|Add0~21_sumout\ & ( ((!\processador|MUX1|saida_MUX[5]~5_combout\ & ((!\processador|decoderInstru1|saida~0_combout\) # 
-- (\processador|BANCO_REGISTRADORES|registrador~48_combout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\) ) ) ) # ( !\processador|ULA1|Add1~21_sumout\ & ( \processador|ULA1|Add0~21_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\ & 
-- (!\processador|MUX1|saida_MUX[5]~5_combout\ & ((!\processador|decoderInstru1|saida~0_combout\) # (\processador|BANCO_REGISTRADORES|registrador~48_combout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\ & 
-- (\processador|decoderInstru1|saida~0_combout\)) ) ) ) # ( \processador|ULA1|Add1~21_sumout\ & ( !\processador|ULA1|Add0~21_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\ & (!\processador|MUX1|saida_MUX[5]~5_combout\ & 
-- ((!\processador|decoderInstru1|saida~0_combout\) # (\processador|BANCO_REGISTRADORES|registrador~48_combout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\ & (!\processador|decoderInstru1|saida~0_combout\)) ) ) ) # ( 
-- !\processador|ULA1|Add1~21_sumout\ & ( !\processador|ULA1|Add0~21_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\ & (!\processador|MUX1|saida_MUX[5]~5_combout\ & ((!\processador|decoderInstru1|saida~0_combout\) # 
-- (\processador|BANCO_REGISTRADORES|registrador~48_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011000000101000101110001010010001110100011011001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~0_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datac => \processador|MUX1|ALT_INV_saida_MUX[5]~5_combout\,
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~48_combout\,
	datae => \processador|ULA1|ALT_INV_Add1~21_sumout\,
	dataf => \processador|ULA1|ALT_INV_Add0~21_sumout\,
	combout => \processador|ULA1|saida[5]~5_combout\);

-- Location: MLABCELL_X37_Y5_N48
\processador|BANCO_REGISTRADORES|registrador~32feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|BANCO_REGISTRADORES|registrador~32feeder_combout\ = ( \processador|ULA1|saida[5]~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|ULA1|ALT_INV_saida[5]~5_combout\,
	combout => \processador|BANCO_REGISTRADORES|registrador~32feeder_combout\);

-- Location: FF_X37_Y5_N49
\processador|BANCO_REGISTRADORES|registrador~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|BANCO_REGISTRADORES|registrador~32feeder_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~32_q\);

-- Location: MLABCELL_X37_Y5_N30
\processador|BANCO_REGISTRADORES|registrador~16feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|BANCO_REGISTRADORES|registrador~16feeder_combout\ = ( \processador|ULA1|saida[5]~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|ULA1|ALT_INV_saida[5]~5_combout\,
	combout => \processador|BANCO_REGISTRADORES|registrador~16feeder_combout\);

-- Location: FF_X37_Y5_N32
\processador|BANCO_REGISTRADORES|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|BANCO_REGISTRADORES|registrador~16feeder_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~16_q\);

-- Location: FF_X37_Y5_N43
\processador|BANCO_REGISTRADORES|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|ULA1|saida[5]~5_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~40_q\);

-- Location: FF_X36_Y6_N22
\processador|BANCO_REGISTRADORES|registrador~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ULA1|saida[5]~5_combout\,
	sload => VCC,
	ena => \processador|BANCO_REGISTRADORES|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~24_q\);

-- Location: LABCELL_X39_Y5_N33
\processador|BANCO_REGISTRADORES|registrador~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|BANCO_REGISTRADORES|registrador~48_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~5_combout\ & ( \processador|BANCO_REGISTRADORES|registrador~40_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~5_combout\ & ( 
-- \processador|BANCO_REGISTRADORES|registrador~32_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~5_combout\ & ( \processador|BANCO_REGISTRADORES|registrador~24_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~5_combout\ & ( 
-- \processador|BANCO_REGISTRADORES|registrador~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~32_q\,
	datab => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~16_q\,
	datac => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~40_q\,
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~24_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \processador|BANCO_REGISTRADORES|registrador~48_combout\);

-- Location: FF_X39_Y4_N37
\RAM1|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~48_combout\,
	sload => VCC,
	ena => \RAM1|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~28_q\);

-- Location: MLABCELL_X34_Y4_N33
\RAM1|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~548_combout\ = ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~17_combout\ & ( (\RAM1|ram~28_q\ & (!\ROM1|memROM~12_combout\ & !\ROM1|memROM~19_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~28_q\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~548_combout\);

-- Location: FF_X34_Y4_N59
\RAM1|ram~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~48_combout\,
	sload => VCC,
	ena => \RAM1|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~116_q\);

-- Location: MLABCELL_X34_Y4_N57
\RAM1|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~547_combout\ = ( \RAM1|ram~116_q\ & ( !\ROM1|memROM~17_combout\ & ( (\ROM1|memROM~16_combout\ & (!\ROM1|memROM~12_combout\ & !\ROM1|memROM~19_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \RAM1|ALT_INV_ram~116_q\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~547_combout\);

-- Location: FF_X39_Y4_N20
\RAM1|ram~524\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~48_combout\,
	sload => VCC,
	ena => \RAM1|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~524_q\);

-- Location: FF_X34_Y4_N38
\RAM1|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~48_combout\,
	sload => VCC,
	ena => \RAM1|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~60_q\);

-- Location: MLABCELL_X34_Y4_N36
\RAM1|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~549_combout\ = ( \RAM1|ram~60_q\ & ( \ROM1|memROM~17_combout\ & ( (\ROM1|memROM~19_combout\ & (\RAM1|ram~524_q\ & (\ROM1|memROM~16_combout\ & \ROM1|memROM~12_combout\))) ) ) ) # ( !\RAM1|ram~60_q\ & ( \ROM1|memROM~17_combout\ & ( 
-- (\ROM1|memROM~19_combout\ & (\RAM1|ram~524_q\ & (\ROM1|memROM~16_combout\ & \ROM1|memROM~12_combout\))) ) ) ) # ( \RAM1|ram~60_q\ & ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~19_combout\ & (!\ROM1|memROM~16_combout\ & !\ROM1|memROM~12_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \RAM1|ALT_INV_ram~524_q\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \RAM1|ALT_INV_ram~60_q\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~549_combout\);

-- Location: FF_X35_Y4_N5
\RAM1|ram~292\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~48_combout\,
	sload => VCC,
	ena => \RAM1|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~292_q\);

-- Location: FF_X35_Y4_N10
\RAM1|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~48_combout\,
	sload => VCC,
	ena => \RAM1|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~36_q\);

-- Location: LABCELL_X32_Y4_N24
\RAM1|ram~20feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~20feeder_combout\ = ( \processador|BANCO_REGISTRADORES|registrador~48_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~48_combout\,
	combout => \RAM1|ram~20feeder_combout\);

-- Location: FF_X32_Y4_N25
\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~20feeder_combout\,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

-- Location: FF_X34_Y4_N2
\RAM1|ram~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~48_combout\,
	sload => VCC,
	ena => \RAM1|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~276_q\);

-- Location: MLABCELL_X34_Y4_N0
\RAM1|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~545_combout\ = ( \RAM1|ram~276_q\ & ( \ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~19_combout\ & ((\RAM1|ram~36_q\))) # (\ROM1|memROM~19_combout\ & (\RAM1|ram~292_q\)) ) ) ) # ( !\RAM1|ram~276_q\ & ( \ROM1|memROM~12_combout\ & ( 
-- (!\ROM1|memROM~19_combout\ & ((\RAM1|ram~36_q\))) # (\ROM1|memROM~19_combout\ & (\RAM1|ram~292_q\)) ) ) ) # ( \RAM1|ram~276_q\ & ( !\ROM1|memROM~12_combout\ & ( (\RAM1|ram~20_q\) # (\ROM1|memROM~19_combout\) ) ) ) # ( !\RAM1|ram~276_q\ & ( 
-- !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~19_combout\ & \RAM1|ram~20_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~292_q\,
	datab => \RAM1|ALT_INV_ram~36_q\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \RAM1|ALT_INV_ram~20_q\,
	datae => \RAM1|ALT_INV_ram~276_q\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~545_combout\);

-- Location: MLABCELL_X34_Y4_N42
\RAM1|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~546_combout\ = ( \RAM1|ram~545_combout\ & ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~16_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \RAM1|ALT_INV_ram~545_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~546_combout\);

-- Location: MLABCELL_X34_Y4_N24
\RAM1|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~550_combout\ = ( \RAM1|ram~549_combout\ & ( \RAM1|ram~546_combout\ & ( (!\ROM1|memROM~14_combout\ & ((!\ROM1|memROM~10_combout\) # ((\RAM1|ram~548_combout\)))) # (\ROM1|memROM~14_combout\ & (((\RAM1|ram~547_combout\)) # 
-- (\ROM1|memROM~10_combout\))) ) ) ) # ( !\RAM1|ram~549_combout\ & ( \RAM1|ram~546_combout\ & ( (!\ROM1|memROM~14_combout\ & ((!\ROM1|memROM~10_combout\) # ((\RAM1|ram~548_combout\)))) # (\ROM1|memROM~14_combout\ & (!\ROM1|memROM~10_combout\ & 
-- ((\RAM1|ram~547_combout\)))) ) ) ) # ( \RAM1|ram~549_combout\ & ( !\RAM1|ram~546_combout\ & ( (!\ROM1|memROM~14_combout\ & (\ROM1|memROM~10_combout\ & (\RAM1|ram~548_combout\))) # (\ROM1|memROM~14_combout\ & (((\RAM1|ram~547_combout\)) # 
-- (\ROM1|memROM~10_combout\))) ) ) ) # ( !\RAM1|ram~549_combout\ & ( !\RAM1|ram~546_combout\ & ( (!\ROM1|memROM~14_combout\ & (\ROM1|memROM~10_combout\ & (\RAM1|ram~548_combout\))) # (\ROM1|memROM~14_combout\ & (!\ROM1|memROM~10_combout\ & 
-- ((\RAM1|ram~547_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \RAM1|ALT_INV_ram~548_combout\,
	datad => \RAM1|ALT_INV_ram~547_combout\,
	datae => \RAM1|ALT_INV_ram~549_combout\,
	dataf => \RAM1|ALT_INV_ram~546_combout\,
	combout => \RAM1|ram~550_combout\);

-- Location: LABCELL_X35_Y5_N6
\SW_0_7|saida[5]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_0_7|saida[5]~12_combout\ = ( \comb~2_combout\ & ( \RAM1|ram~550_combout\ & ( \SW[5]~input_o\ ) ) ) # ( !\comb~2_combout\ & ( \RAM1|ram~550_combout\ ) ) # ( \comb~2_combout\ & ( !\RAM1|ram~550_combout\ & ( (\SW[5]~input_o\ & !\RAM1|dado_out~0_combout\) 
-- ) ) ) # ( !\comb~2_combout\ & ( !\RAM1|ram~550_combout\ & ( !\RAM1|dado_out~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000011110000000011111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \RAM1|ALT_INV_dado_out~0_combout\,
	datae => \ALT_INV_comb~2_combout\,
	dataf => \RAM1|ALT_INV_ram~550_combout\,
	combout => \SW_0_7|saida[5]~12_combout\);

-- Location: MLABCELL_X37_Y5_N18
\processador|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~25_sumout\ = SUM(( \processador|BANCO_REGISTRADORES|registrador~49_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & (((\SW_0_7|saida[6]~13_combout\)))) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (!\processador|PC|DOUT\(8) & ((\ROM1|memROM~35_combout\)))) ) + ( \processador|ULA1|Add0~22\ ))
-- \processador|ULA1|Add0~26\ = CARRY(( \processador|BANCO_REGISTRADORES|registrador~49_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & (((\SW_0_7|saida[6]~13_combout\)))) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (!\processador|PC|DOUT\(8) & ((\ROM1|memROM~35_combout\)))) ) + ( \processador|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \SW_0_7|ALT_INV_saida[6]~13_combout\,
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~49_combout\,
	dataf => \ROM1|ALT_INV_memROM~35_combout\,
	cin => \processador|ULA1|Add0~22\,
	sumout => \processador|ULA1|Add0~25_sumout\,
	cout => \processador|ULA1|Add0~26\);

-- Location: LABCELL_X36_Y7_N24
\processador|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[6]~6_combout\ = ( \processador|ULA1|Add0~25_sumout\ & ( \processador|ULA1|Add1~25_sumout\ & ( ((!\processador|MUX1|saida_MUX[6]~6_combout\ & ((!\processador|decoderInstru1|saida~0_combout\) # 
-- (\processador|BANCO_REGISTRADORES|registrador~49_combout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\) ) ) ) # ( !\processador|ULA1|Add0~25_sumout\ & ( \processador|ULA1|Add1~25_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\ & 
-- (!\processador|MUX1|saida_MUX[6]~6_combout\ & ((!\processador|decoderInstru1|saida~0_combout\) # (\processador|BANCO_REGISTRADORES|registrador~49_combout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\ & 
-- (!\processador|decoderInstru1|saida~0_combout\)) ) ) ) # ( \processador|ULA1|Add0~25_sumout\ & ( !\processador|ULA1|Add1~25_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\ & (!\processador|MUX1|saida_MUX[6]~6_combout\ & 
-- ((!\processador|decoderInstru1|saida~0_combout\) # (\processador|BANCO_REGISTRADORES|registrador~49_combout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\ & (\processador|decoderInstru1|saida~0_combout\)) ) ) ) # ( 
-- !\processador|ULA1|Add0~25_sumout\ & ( !\processador|ULA1|Add1~25_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\ & (!\processador|MUX1|saida_MUX[6]~6_combout\ & ((!\processador|decoderInstru1|saida~0_combout\) # 
-- (\processador|BANCO_REGISTRADORES|registrador~49_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101000000000100110110001000111001110010001001101111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida~0_combout\,
	datac => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~49_combout\,
	datad => \processador|MUX1|ALT_INV_saida_MUX[6]~6_combout\,
	datae => \processador|ULA1|ALT_INV_Add0~25_sumout\,
	dataf => \processador|ULA1|ALT_INV_Add1~25_sumout\,
	combout => \processador|ULA1|saida[6]~6_combout\);

-- Location: FF_X36_Y7_N25
\processador|BANCO_REGISTRADORES|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|ULA1|saida[6]~6_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~41_q\);

-- Location: FF_X36_Y7_N38
\processador|BANCO_REGISTRADORES|registrador~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ULA1|saida[6]~6_combout\,
	sload => VCC,
	ena => \processador|BANCO_REGISTRADORES|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~25_q\);

-- Location: LABCELL_X35_Y7_N36
\processador|BANCO_REGISTRADORES|registrador~33feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|BANCO_REGISTRADORES|registrador~33feeder_combout\ = ( \processador|ULA1|saida[6]~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|ULA1|ALT_INV_saida[6]~6_combout\,
	combout => \processador|BANCO_REGISTRADORES|registrador~33feeder_combout\);

-- Location: FF_X35_Y7_N38
\processador|BANCO_REGISTRADORES|registrador~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|BANCO_REGISTRADORES|registrador~33feeder_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~33_q\);

-- Location: FF_X36_Y7_N20
\processador|BANCO_REGISTRADORES|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ULA1|saida[6]~6_combout\,
	sload => VCC,
	ena => \processador|BANCO_REGISTRADORES|registrador~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~17_q\);

-- Location: LABCELL_X35_Y7_N6
\processador|BANCO_REGISTRADORES|registrador~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|BANCO_REGISTRADORES|registrador~49_combout\ = ( \processador|BANCO_REGISTRADORES|registrador~33_q\ & ( \processador|BANCO_REGISTRADORES|registrador~17_q\ & ( (!\ROM1|memROM~2_combout\) # ((!\ROM1|memROM~5_combout\ & 
-- ((\processador|BANCO_REGISTRADORES|registrador~25_q\))) # (\ROM1|memROM~5_combout\ & (\processador|BANCO_REGISTRADORES|registrador~41_q\))) ) ) ) # ( !\processador|BANCO_REGISTRADORES|registrador~33_q\ & ( 
-- \processador|BANCO_REGISTRADORES|registrador~17_q\ & ( (!\ROM1|memROM~2_combout\ & (((!\ROM1|memROM~5_combout\)))) # (\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~5_combout\ & ((\processador|BANCO_REGISTRADORES|registrador~25_q\))) # (\ROM1|memROM~5_combout\ 
-- & (\processador|BANCO_REGISTRADORES|registrador~41_q\)))) ) ) ) # ( \processador|BANCO_REGISTRADORES|registrador~33_q\ & ( !\processador|BANCO_REGISTRADORES|registrador~17_q\ & ( (!\ROM1|memROM~2_combout\ & (((\ROM1|memROM~5_combout\)))) # 
-- (\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~5_combout\ & ((\processador|BANCO_REGISTRADORES|registrador~25_q\))) # (\ROM1|memROM~5_combout\ & (\processador|BANCO_REGISTRADORES|registrador~41_q\)))) ) ) ) # ( 
-- !\processador|BANCO_REGISTRADORES|registrador~33_q\ & ( !\processador|BANCO_REGISTRADORES|registrador~17_q\ & ( (\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~5_combout\ & ((\processador|BANCO_REGISTRADORES|registrador~25_q\))) # (\ROM1|memROM~5_combout\ & 
-- (\processador|BANCO_REGISTRADORES|registrador~41_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101000000111111010111110011000001011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~41_q\,
	datab => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~25_q\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~33_q\,
	dataf => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~17_q\,
	combout => \processador|BANCO_REGISTRADORES|registrador~49_combout\);

-- Location: FF_X37_Y6_N22
\RAM1|ram~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~49_combout\,
	sload => VCC,
	ena => \RAM1|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~277_q\);

-- Location: FF_X37_Y6_N28
\RAM1|ram~293\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~49_combout\,
	sload => VCC,
	ena => \RAM1|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~293_q\);

-- Location: MLABCELL_X37_Y6_N18
\RAM1|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~552_combout\ = ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~16_combout\ & ( (!\ROM1|memROM~14_combout\ & ((!\ROM1|memROM~12_combout\ & (\RAM1|ram~277_q\)) # (\ROM1|memROM~12_combout\ & ((\RAM1|ram~293_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \RAM1|ALT_INV_ram~277_q\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \RAM1|ALT_INV_ram~293_q\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \RAM1|ram~552_combout\);

-- Location: FF_X35_Y3_N14
\RAM1|ram~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~49_combout\,
	sload => VCC,
	ena => \RAM1|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~117_q\);

-- Location: FF_X36_Y3_N28
\RAM1|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~49_combout\,
	sload => VCC,
	ena => \RAM1|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~61_q\);

-- Location: FF_X37_Y3_N31
\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~49_combout\,
	sload => VCC,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

-- Location: FF_X35_Y3_N2
\RAM1|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~49_combout\,
	sload => VCC,
	ena => \RAM1|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~29_q\);

-- Location: LABCELL_X35_Y3_N0
\RAM1|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~551_combout\ = ( \RAM1|ram~29_q\ & ( \ROM1|memROM~14_combout\ & ( (\RAM1|ram~61_q\ & \ROM1|memROM~10_combout\) ) ) ) # ( !\RAM1|ram~29_q\ & ( \ROM1|memROM~14_combout\ & ( (\RAM1|ram~61_q\ & \ROM1|memROM~10_combout\) ) ) ) # ( \RAM1|ram~29_q\ & ( 
-- !\ROM1|memROM~14_combout\ & ( (\ROM1|memROM~10_combout\) # (\RAM1|ram~21_q\) ) ) ) # ( !\RAM1|ram~29_q\ & ( !\ROM1|memROM~14_combout\ & ( (\RAM1|ram~21_q\ & !\ROM1|memROM~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~61_q\,
	datac => \RAM1|ALT_INV_ram~21_q\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	datae => \RAM1|ALT_INV_ram~29_q\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM1|ram~551_combout\);

-- Location: FF_X36_Y3_N35
\RAM1|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~49_combout\,
	sload => VCC,
	ena => \RAM1|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~37_q\);

-- Location: LABCELL_X35_Y3_N12
\RAM1|ram~584\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~584_combout\ = ( !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~16_combout\ & ((!\ROM1|memROM~12_combout\ & (((\RAM1|ram~551_combout\)))) # (\ROM1|memROM~12_combout\ & (!\ROM1|memROM~10_combout\ & (\RAM1|ram~37_q\))))) ) ) # ( 
-- \ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~12_combout\ & ((!\ROM1|memROM~16_combout\ & (((\RAM1|ram~551_combout\)))) # (\ROM1|memROM~16_combout\ & (!\ROM1|memROM~10_combout\ & (\RAM1|ram~117_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001000000001000000000010101010000010001010111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \RAM1|ALT_INV_ram~117_q\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \RAM1|ALT_INV_ram~551_combout\,
	datag => \RAM1|ALT_INV_ram~37_q\,
	combout => \RAM1|ram~584_combout\);

-- Location: FF_X37_Y6_N46
\RAM1|ram~525\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~49_combout\,
	sload => VCC,
	ena => \RAM1|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~525_q\);

-- Location: MLABCELL_X37_Y4_N42
\RAM1|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~553_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~12_combout\ & ( (\RAM1|ram~525_q\ & (\ROM1|memROM~14_combout\ & \ROM1|memROM~16_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~525_q\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~553_combout\);

-- Location: LABCELL_X36_Y7_N42
\RAM1|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~554_combout\ = ( \RAM1|ram~553_combout\ & ( (!\ROM1|memROM~19_combout\ & (((!\ROM1|memROM~17_combout\ & \RAM1|ram~584_combout\)))) # (\ROM1|memROM~19_combout\ & (((\ROM1|memROM~17_combout\)) # (\RAM1|ram~552_combout\))) ) ) # ( 
-- !\RAM1|ram~553_combout\ & ( (!\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~19_combout\ & ((\RAM1|ram~584_combout\))) # (\ROM1|memROM~19_combout\ & (\RAM1|ram~552_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100001101000000010011110100110001001111010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~552_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \RAM1|ALT_INV_ram~584_combout\,
	dataf => \RAM1|ALT_INV_ram~553_combout\,
	combout => \RAM1|ram~554_combout\);

-- Location: LABCELL_X36_Y7_N6
\SW_0_7|saida[6]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_0_7|saida[6]~13_combout\ = ( \RAM1|ram~554_combout\ & ( (!\comb~2_combout\) # (\SW[6]~input_o\) ) ) # ( !\RAM1|ram~554_combout\ & ( (!\RAM1|dado_out~0_combout\ & ((!\comb~2_combout\) # (\SW[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100000000111100110000000011110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_comb~2_combout\,
	datad => \RAM1|ALT_INV_dado_out~0_combout\,
	dataf => \RAM1|ALT_INV_ram~554_combout\,
	combout => \SW_0_7|saida[6]~13_combout\);

-- Location: LABCELL_X35_Y5_N45
\processador|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~25_sumout\ = SUM(( \processador|BANCO_REGISTRADORES|registrador~49_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & (((!\SW_0_7|saida[6]~13_combout\)))) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (((!\ROM1|memROM~35_combout\)) # (\processador|PC|DOUT\(8)))) ) + ( \processador|ULA1|Add1~22\ ))
-- \processador|ULA1|Add1~26\ = CARRY(( \processador|BANCO_REGISTRADORES|registrador~49_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & (((!\SW_0_7|saida[6]~13_combout\)))) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (((!\ROM1|memROM~35_combout\)) # (\processador|PC|DOUT\(8)))) ) + ( \processador|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \SW_0_7|ALT_INV_saida[6]~13_combout\,
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~49_combout\,
	dataf => \ROM1|ALT_INV_memROM~35_combout\,
	cin => \processador|ULA1|Add1~22\,
	sumout => \processador|ULA1|Add1~25_sumout\,
	cout => \processador|ULA1|Add1~26\);

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

-- Location: MLABCELL_X37_Y4_N3
\processador|MUX1|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[7]~7_combout\ = ( \comb~2_combout\ & ( \RAM1|ram~558_combout\ & ( (!\processador|decoderInstru1|saida~1_combout\ & (!\SW[7]~input_o\)) # (\processador|decoderInstru1|saida~1_combout\ & ((!\ROM1|memROM~17_combout\))) ) ) ) # ( 
-- !\comb~2_combout\ & ( \RAM1|ram~558_combout\ & ( (\processador|decoderInstru1|saida~1_combout\ & !\ROM1|memROM~17_combout\) ) ) ) # ( \comb~2_combout\ & ( !\RAM1|ram~558_combout\ & ( (!\processador|decoderInstru1|saida~1_combout\ & ((!\SW[7]~input_o\) # 
-- ((\RAM1|dado_out~0_combout\)))) # (\processador|decoderInstru1|saida~1_combout\ & (((!\ROM1|memROM~17_combout\)))) ) ) ) # ( !\comb~2_combout\ & ( !\RAM1|ram~558_combout\ & ( (!\processador|decoderInstru1|saida~1_combout\ & ((\RAM1|dado_out~0_combout\))) 
-- # (\processador|decoderInstru1|saida~1_combout\ & (!\ROM1|memROM~17_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011111100101110001111110000110000001100001011100010111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \RAM1|ALT_INV_dado_out~0_combout\,
	datae => \ALT_INV_comb~2_combout\,
	dataf => \RAM1|ALT_INV_ram~558_combout\,
	combout => \processador|MUX1|saida_MUX[7]~7_combout\);

-- Location: MLABCELL_X37_Y5_N21
\processador|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~29_sumout\ = SUM(( (!\processador|decoderInstru1|saida~1_combout\ & ((\SW_0_7|saida[7]~14_combout\))) # (\processador|decoderInstru1|saida~1_combout\ & (\ROM1|memROM~17_combout\)) ) + ( 
-- \processador|BANCO_REGISTRADORES|registrador~50_combout\ ) + ( \processador|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \SW_0_7|ALT_INV_saida[7]~14_combout\,
	dataf => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~50_combout\,
	cin => \processador|ULA1|Add0~26\,
	sumout => \processador|ULA1|Add0~29_sumout\);

-- Location: MLABCELL_X37_Y5_N54
\processador|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[7]~7_combout\ = ( \processador|ULA1|Add0~29_sumout\ & ( \processador|ULA1|Add1~29_sumout\ & ( ((!\processador|MUX1|saida_MUX[7]~7_combout\ & ((!\processador|decoderInstru1|saida~0_combout\) # 
-- (\processador|BANCO_REGISTRADORES|registrador~50_combout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\) ) ) ) # ( !\processador|ULA1|Add0~29_sumout\ & ( \processador|ULA1|Add1~29_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\ & 
-- (!\processador|MUX1|saida_MUX[7]~7_combout\ & ((!\processador|decoderInstru1|saida~0_combout\) # (\processador|BANCO_REGISTRADORES|registrador~50_combout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\ & 
-- (!\processador|decoderInstru1|saida~0_combout\)) ) ) ) # ( \processador|ULA1|Add0~29_sumout\ & ( !\processador|ULA1|Add1~29_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\ & (!\processador|MUX1|saida_MUX[7]~7_combout\ & 
-- ((!\processador|decoderInstru1|saida~0_combout\) # (\processador|BANCO_REGISTRADORES|registrador~50_combout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\ & (\processador|decoderInstru1|saida~0_combout\)) ) ) ) # ( 
-- !\processador|ULA1|Add0~29_sumout\ & ( !\processador|ULA1|Add1~29_sumout\ & ( (!\processador|MUX1|saida_MUX[7]~7_combout\ & (!\processador|decoderInstru1|saida[4]~2_combout\ & ((!\processador|decoderInstru1|saida~0_combout\) # 
-- (\processador|BANCO_REGISTRADORES|registrador~50_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000000000101100000101010110110000101010101011000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~0_combout\,
	datab => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~50_combout\,
	datac => \processador|MUX1|ALT_INV_saida_MUX[7]~7_combout\,
	datad => \processador|decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datae => \processador|ULA1|ALT_INV_Add0~29_sumout\,
	dataf => \processador|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \processador|ULA1|saida[7]~7_combout\);

-- Location: FF_X37_Y5_N55
\processador|BANCO_REGISTRADORES|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|ULA1|saida[7]~7_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~42_q\);

-- Location: FF_X37_Y5_N37
\processador|BANCO_REGISTRADORES|registrador~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ULA1|saida[7]~7_combout\,
	sload => VCC,
	ena => \processador|BANCO_REGISTRADORES|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~34_q\);

-- Location: FF_X37_Y5_N31
\processador|BANCO_REGISTRADORES|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ULA1|saida[7]~7_combout\,
	sload => VCC,
	ena => \processador|BANCO_REGISTRADORES|registrador~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~18_q\);

-- Location: FF_X36_Y6_N4
\processador|BANCO_REGISTRADORES|registrador~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ULA1|saida[7]~7_combout\,
	sload => VCC,
	ena => \processador|BANCO_REGISTRADORES|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~26_q\);

-- Location: LABCELL_X39_Y5_N3
\processador|BANCO_REGISTRADORES|registrador~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|BANCO_REGISTRADORES|registrador~50_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~5_combout\ & ( \processador|BANCO_REGISTRADORES|registrador~42_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~5_combout\ & ( 
-- \processador|BANCO_REGISTRADORES|registrador~34_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~5_combout\ & ( \processador|BANCO_REGISTRADORES|registrador~26_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~5_combout\ & ( 
-- \processador|BANCO_REGISTRADORES|registrador~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~42_q\,
	datab => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~34_q\,
	datac => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~18_q\,
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~26_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \processador|BANCO_REGISTRADORES|registrador~50_combout\);

-- Location: FF_X35_Y4_N41
\RAM1|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~50_combout\,
	sload => VCC,
	ena => \RAM1|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~38_q\);

-- Location: FF_X35_Y4_N56
\RAM1|ram~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~50_combout\,
	sload => VCC,
	ena => \RAM1|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~294_q\);

-- Location: LABCELL_X35_Y4_N54
\RAM1|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~556_combout\ = ( \RAM1|ram~294_q\ & ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~16_combout\ & (!\ROM1|memROM~14_combout\ & ((\RAM1|ram~38_q\) # (\ROM1|memROM~19_combout\)))) ) ) ) # ( !\RAM1|ram~294_q\ & ( !\ROM1|memROM~17_combout\ & ( 
-- (!\ROM1|memROM~16_combout\ & (!\ROM1|memROM~19_combout\ & (!\ROM1|memROM~14_combout\ & \RAM1|ram~38_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000001000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \RAM1|ALT_INV_ram~38_q\,
	datae => \RAM1|ALT_INV_ram~294_q\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~556_combout\);

-- Location: LABCELL_X39_Y4_N15
\RAM1|ram~526feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~526feeder_combout\ = ( \processador|BANCO_REGISTRADORES|registrador~50_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~50_combout\,
	combout => \RAM1|ram~526feeder_combout\);

-- Location: FF_X39_Y4_N16
\RAM1|ram~526\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~526feeder_combout\,
	ena => \RAM1|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~526_q\);

-- Location: LABCELL_X35_Y4_N21
\RAM1|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~557_combout\ = ( \ROM1|memROM~17_combout\ & ( (\ROM1|memROM~14_combout\ & (\ROM1|memROM~16_combout\ & (\RAM1|ram~526_q\ & \ROM1|memROM~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \RAM1|ALT_INV_ram~526_q\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~557_combout\);

-- Location: MLABCELL_X34_Y3_N15
\RAM1|ram~278feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~278feeder_combout\ = ( \processador|BANCO_REGISTRADORES|registrador~50_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~50_combout\,
	combout => \RAM1|ram~278feeder_combout\);

-- Location: FF_X34_Y3_N17
\RAM1|ram~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~278feeder_combout\,
	ena => \RAM1|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~278_q\);

-- Location: MLABCELL_X34_Y3_N21
\RAM1|ram~118feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~118feeder_combout\ = ( \processador|BANCO_REGISTRADORES|registrador~50_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~50_combout\,
	combout => \RAM1|ram~118feeder_combout\);

-- Location: FF_X34_Y3_N23
\RAM1|ram~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~118feeder_combout\,
	ena => \RAM1|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~118_q\);

-- Location: MLABCELL_X34_Y3_N57
\RAM1|ram~22feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~22feeder_combout\ = ( \processador|BANCO_REGISTRADORES|registrador~50_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~50_combout\,
	combout => \RAM1|ram~22feeder_combout\);

-- Location: FF_X34_Y3_N59
\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~22feeder_combout\,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

-- Location: MLABCELL_X34_Y3_N27
\RAM1|ram~580\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~580_combout\ = ( !\ROM1|memROM~16_combout\ & ( (!\ROM1|memROM~14_combout\ & (!\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~19_combout\ & ((\RAM1|ram~22_q\))) # (\ROM1|memROM~19_combout\ & (\RAM1|ram~278_q\))))) ) ) # ( \ROM1|memROM~16_combout\ & ( 
-- (\ROM1|memROM~14_combout\ & (((\RAM1|ram~118_q\ & (!\ROM1|memROM~19_combout\ & !\ROM1|memROM~17_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101000100010000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \RAM1|ALT_INV_ram~278_q\,
	datac => \RAM1|ALT_INV_ram~118_q\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	datag => \RAM1|ALT_INV_ram~22_q\,
	combout => \RAM1|ram~580_combout\);

-- Location: FF_X36_Y3_N50
\RAM1|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~50_combout\,
	sload => VCC,
	ena => \RAM1|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~62_q\);

-- Location: FF_X35_Y3_N32
\RAM1|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~50_combout\,
	sload => VCC,
	ena => \RAM1|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~30_q\);

-- Location: LABCELL_X35_Y3_N30
\RAM1|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~555_combout\ = ( \RAM1|ram~30_q\ & ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~16_combout\ & (!\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~14_combout\) # (\RAM1|ram~62_q\)))) ) ) ) # ( !\RAM1|ram~30_q\ & ( !\ROM1|memROM~17_combout\ & ( 
-- (!\ROM1|memROM~16_combout\ & (\RAM1|ram~62_q\ & (!\ROM1|memROM~19_combout\ & \ROM1|memROM~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000101000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \RAM1|ALT_INV_ram~62_q\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \RAM1|ALT_INV_ram~30_q\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~555_combout\);

-- Location: LABCELL_X35_Y4_N48
\RAM1|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~558_combout\ = ( \RAM1|ram~580_combout\ & ( \RAM1|ram~555_combout\ & ( (!\ROM1|memROM~12_combout\) # ((!\ROM1|memROM~10_combout\ & (\RAM1|ram~556_combout\)) # (\ROM1|memROM~10_combout\ & ((\RAM1|ram~557_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~580_combout\ & ( \RAM1|ram~555_combout\ & ( (!\ROM1|memROM~10_combout\ & (\RAM1|ram~556_combout\ & ((\ROM1|memROM~12_combout\)))) # (\ROM1|memROM~10_combout\ & (((!\ROM1|memROM~12_combout\) # (\RAM1|ram~557_combout\)))) ) ) ) # ( 
-- \RAM1|ram~580_combout\ & ( !\RAM1|ram~555_combout\ & ( (!\ROM1|memROM~10_combout\ & (((!\ROM1|memROM~12_combout\)) # (\RAM1|ram~556_combout\))) # (\ROM1|memROM~10_combout\ & (((\RAM1|ram~557_combout\ & \ROM1|memROM~12_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~580_combout\ & ( !\RAM1|ram~555_combout\ & ( (\ROM1|memROM~12_combout\ & ((!\ROM1|memROM~10_combout\ & (\RAM1|ram~556_combout\)) # (\ROM1|memROM~10_combout\ & ((\RAM1|ram~557_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111110011000100011100110011010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~556_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \RAM1|ALT_INV_ram~557_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \RAM1|ALT_INV_ram~580_combout\,
	dataf => \RAM1|ALT_INV_ram~555_combout\,
	combout => \RAM1|ram~558_combout\);

-- Location: LABCELL_X35_Y4_N33
\SW_0_7|saida[7]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_0_7|saida[7]~14_combout\ = ( \RAM1|ram~558_combout\ & ( (!\comb~2_combout\) # (\SW[7]~input_o\) ) ) # ( !\RAM1|ram~558_combout\ & ( (!\RAM1|dado_out~0_combout\ & ((!\comb~2_combout\) # (\SW[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001010000111100000101000011111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datac => \RAM1|ALT_INV_dado_out~0_combout\,
	datad => \ALT_INV_comb~2_combout\,
	dataf => \RAM1|ALT_INV_ram~558_combout\,
	combout => \SW_0_7|saida[7]~14_combout\);

-- Location: LABCELL_X35_Y5_N48
\processador|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~29_sumout\ = SUM(( \processador|BANCO_REGISTRADORES|registrador~50_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & (!\SW_0_7|saida[7]~14_combout\)) # (\processador|decoderInstru1|saida~1_combout\ & 
-- ((!\ROM1|memROM~17_combout\))) ) + ( \processador|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001001110010011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datab => \SW_0_7|ALT_INV_saida[7]~14_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~50_combout\,
	cin => \processador|ULA1|Add1~26\,
	sumout => \processador|ULA1|Add1~29_sumout\);

-- Location: MLABCELL_X34_Y5_N24
\processador|FLAG|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|FLAG|DOUT~2_combout\ = ( \processador|ULA1|Add1~1_sumout\ & ( \processador|ULA1|Add1~9_sumout\ & ( (!\processador|FLAG|DOUT~1_combout\ & \processador|FLAG|DOUT~q\) ) ) ) # ( !\processador|ULA1|Add1~1_sumout\ & ( 
-- \processador|ULA1|Add1~9_sumout\ & ( (!\processador|FLAG|DOUT~1_combout\ & \processador|FLAG|DOUT~q\) ) ) ) # ( \processador|ULA1|Add1~1_sumout\ & ( !\processador|ULA1|Add1~9_sumout\ & ( (!\processador|FLAG|DOUT~1_combout\ & \processador|FLAG|DOUT~q\) ) ) 
-- ) # ( !\processador|ULA1|Add1~1_sumout\ & ( !\processador|ULA1|Add1~9_sumout\ & ( (!\processador|FLAG|DOUT~1_combout\ & (\processador|FLAG|DOUT~q\)) # (\processador|FLAG|DOUT~1_combout\ & (((!\processador|ULA1|Add1~5_sumout\ & 
-- !\processador|ULA1|Add1~13_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|FLAG|ALT_INV_DOUT~1_combout\,
	datab => \processador|FLAG|ALT_INV_DOUT~q\,
	datac => \processador|ULA1|ALT_INV_Add1~5_sumout\,
	datad => \processador|ULA1|ALT_INV_Add1~13_sumout\,
	datae => \processador|ULA1|ALT_INV_Add1~1_sumout\,
	dataf => \processador|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \processador|FLAG|DOUT~2_combout\);

-- Location: MLABCELL_X34_Y5_N54
\processador|FLAG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|FLAG|DOUT~0_combout\ = ( \processador|ULA1|Add1~29_sumout\ & ( \processador|FLAG|DOUT~2_combout\ & ( !\processador|FLAG|DOUT~1_combout\ ) ) ) # ( !\processador|ULA1|Add1~29_sumout\ & ( \processador|FLAG|DOUT~2_combout\ & ( 
-- (!\processador|FLAG|DOUT~1_combout\) # ((!\processador|ULA1|Add1~17_sumout\ & (!\processador|ULA1|Add1~25_sumout\ & !\processador|ULA1|Add1~21_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|FLAG|ALT_INV_DOUT~1_combout\,
	datab => \processador|ULA1|ALT_INV_Add1~17_sumout\,
	datac => \processador|ULA1|ALT_INV_Add1~25_sumout\,
	datad => \processador|ULA1|ALT_INV_Add1~21_sumout\,
	datae => \processador|ULA1|ALT_INV_Add1~29_sumout\,
	dataf => \processador|FLAG|ALT_INV_DOUT~2_combout\,
	combout => \processador|FLAG|DOUT~0_combout\);

-- Location: FF_X34_Y5_N56
\processador|FLAG|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|FLAG|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|FLAG|DOUT~q\);

-- Location: MLABCELL_X34_Y5_N42
\processador|MUX2|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|Equal1~0_combout\ = ( \ROM1|memROM~27_combout\ & ( (!\ROM1|memROM~29_combout\ & (\ROM1|memROM~26_combout\ & ((!\ROM1|memROM~23_combout\) # (\processador|FLAG|DOUT~q\)))) ) ) # ( !\ROM1|memROM~27_combout\ & ( (\ROM1|memROM~29_combout\ & 
-- (\ROM1|memROM~23_combout\ & !\ROM1|memROM~26_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000000000100010100000000010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~29_combout\,
	datab => \ROM1|ALT_INV_memROM~23_combout\,
	datac => \processador|FLAG|ALT_INV_DOUT~q\,
	datad => \ROM1|ALT_INV_memROM~26_combout\,
	dataf => \ROM1|ALT_INV_memROM~27_combout\,
	combout => \processador|MUX2|Equal1~0_combout\);

-- Location: FF_X35_Y6_N37
\processador|REG_RET|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~9_sumout\,
	ena => \processador|LOG_DESVIO|SelMuxPC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(2));

-- Location: LABCELL_X36_Y4_N39
\processador|MUX2|MUX_OUT[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[2]~2_combout\ = ( \processador|incrementaPC|Add0~9_sumout\ & ( (!\processador|MUX2|Equal2~0_combout\) # ((!\processador|MUX2|Equal1~0_combout\ & (\processador|REG_RET|DOUT\(2))) # (\processador|MUX2|Equal1~0_combout\ & 
-- ((\ROM1|memROM~14_combout\)))) ) ) # ( !\processador|incrementaPC|Add0~9_sumout\ & ( (\processador|MUX2|Equal2~0_combout\ & ((!\processador|MUX2|Equal1~0_combout\ & (\processador|REG_RET|DOUT\(2))) # (\processador|MUX2|Equal1~0_combout\ & 
-- ((\ROM1|memROM~14_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110101110101111111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUX2|ALT_INV_Equal2~0_combout\,
	datab => \processador|MUX2|ALT_INV_Equal1~0_combout\,
	datac => \processador|REG_RET|ALT_INV_DOUT\(2),
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \processador|incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \processador|MUX2|MUX_OUT[2]~2_combout\);

-- Location: FF_X36_Y4_N40
\processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUX2|MUX_OUT[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(2));

-- Location: LABCELL_X36_Y7_N3
\ROM1|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~22_combout\ = ( \processador|PC|DOUT[0]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(2) & ((!\processador|PC|DOUT[1]~DUPLICATE_q\))) # (\processador|PC|DOUT\(2) & (!\processador|PC|DOUT[3]~DUPLICATE_q\)) ) ) # ( 
-- !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[3]~DUPLICATE_q\ & (\processador|PC|DOUT\(2))) # (\processador|PC|DOUT[3]~DUPLICATE_q\ & (!\processador|PC|DOUT\(2) & \processador|PC|DOUT[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011010000010100101101011111010000010101111101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~22_combout\);

-- Location: LABCELL_X36_Y7_N51
\ROM1|memROM~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~23_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~22_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~22_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \ROM1|memROM~23_combout\);

-- Location: MLABCELL_X34_Y5_N21
\processador|MUX2|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|Equal2~0_combout\ = ( \ROM1|memROM~27_combout\ & ( (\ROM1|memROM~26_combout\ & (!\ROM1|memROM~29_combout\ & ((!\ROM1|memROM~23_combout\) # (\processador|FLAG|DOUT~q\)))) ) ) # ( !\ROM1|memROM~27_combout\ & ( (\ROM1|memROM~29_combout\ & 
-- (!\ROM1|memROM~26_combout\ $ (!\ROM1|memROM~23_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001000000010100000100000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~26_combout\,
	datab => \ROM1|ALT_INV_memROM~23_combout\,
	datac => \ROM1|ALT_INV_memROM~29_combout\,
	datad => \processador|FLAG|ALT_INV_DOUT~q\,
	dataf => \ROM1|ALT_INV_memROM~27_combout\,
	combout => \processador|MUX2|Equal2~0_combout\);

-- Location: FF_X35_Y6_N40
\processador|REG_RET|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~13_sumout\,
	ena => \processador|LOG_DESVIO|SelMuxPC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(3));

-- Location: LABCELL_X36_Y4_N57
\processador|MUX2|MUX_OUT[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[3]~3_combout\ = ( \ROM1|memROM~16_combout\ & ( (!\processador|MUX2|Equal2~0_combout\ & (((\processador|incrementaPC|Add0~13_sumout\)))) # (\processador|MUX2|Equal2~0_combout\ & (((\processador|REG_RET|DOUT\(3))) # 
-- (\processador|MUX2|Equal1~0_combout\))) ) ) # ( !\ROM1|memROM~16_combout\ & ( (!\processador|MUX2|Equal2~0_combout\ & (((\processador|incrementaPC|Add0~13_sumout\)))) # (\processador|MUX2|Equal2~0_combout\ & (!\processador|MUX2|Equal1~0_combout\ & 
-- (\processador|REG_RET|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUX2|ALT_INV_Equal2~0_combout\,
	datab => \processador|MUX2|ALT_INV_Equal1~0_combout\,
	datac => \processador|REG_RET|ALT_INV_DOUT\(3),
	datad => \processador|incrementaPC|ALT_INV_Add0~13_sumout\,
	dataf => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \processador|MUX2|MUX_OUT[3]~3_combout\);

-- Location: FF_X36_Y4_N59
\processador|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUX2|MUX_OUT[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y7_N57
\ROM1|memROM~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~24_combout\ = ( \processador|PC|DOUT[4]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[3]~DUPLICATE_q\ & (!\processador|PC|DOUT\(2) & (!\processador|PC|DOUT[0]~DUPLICATE_q\ & !\processador|PC|DOUT[1]~DUPLICATE_q\))) ) ) # ( 
-- !\processador|PC|DOUT[4]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[3]~DUPLICATE_q\ & (\processador|PC|DOUT\(2) & (!\processador|PC|DOUT[0]~DUPLICATE_q\ & \processador|PC|DOUT[1]~DUPLICATE_q\))) # (\processador|PC|DOUT[3]~DUPLICATE_q\ & 
-- (\processador|PC|DOUT[0]~DUPLICATE_q\ & ((!\processador|PC|DOUT\(2)) # (!\processador|PC|DOUT[1]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100100000001010010010010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(2),
	datac => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM1|memROM~24_combout\);

-- Location: LABCELL_X36_Y7_N0
\ROM1|memROM~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~26_combout\ = ( \ROM1|memROM~25_combout\ & ( \ROM1|memROM~24_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~24_combout\,
	dataf => \ROM1|ALT_INV_memROM~25_combout\,
	combout => \ROM1|memROM~26_combout\);

-- Location: LABCELL_X36_Y6_N9
\RAM1|dado_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out~0_combout\ = ( \ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~27_combout\ & (\decoderBloco|Equal7~0_combout\ & ((!\ROM1|memROM~29_combout\) # (\ROM1|memROM~26_combout\)))) ) ) # ( !\ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~27_combout\ & 
-- (\decoderBloco|Equal7~0_combout\ & (!\ROM1|memROM~26_combout\ $ (!\ROM1|memROM~29_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001001000000000000100100000000000110001000000000011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~26_combout\,
	datab => \ROM1|ALT_INV_memROM~27_combout\,
	datac => \ROM1|ALT_INV_memROM~29_combout\,
	datad => \decoderBloco|ALT_INV_Equal7~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|dado_out~0_combout\);

-- Location: LABCELL_X39_Y5_N42
\KEY_3|saida[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \KEY_3|saida[0]~8_combout\ = ( \RAM1|ram~527_combout\ & ( !\KEY_3|saida[0]~5_combout\ & ( (!\KEY_3|saida[0]~4_combout\ & !\KEY_3|saida[0]~3_combout\) ) ) ) # ( !\RAM1|ram~527_combout\ & ( !\KEY_3|saida[0]~5_combout\ & ( (!\RAM1|dado_out~0_combout\ & 
-- (!\KEY_3|saida[0]~4_combout\ & !\KEY_3|saida[0]~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~0_combout\,
	datab => \KEY_3|ALT_INV_saida[0]~4_combout\,
	datac => \KEY_3|ALT_INV_saida[0]~3_combout\,
	datae => \RAM1|ALT_INV_ram~527_combout\,
	dataf => \KEY_3|ALT_INV_saida[0]~5_combout\,
	combout => \KEY_3|saida[0]~8_combout\);

-- Location: MLABCELL_X37_Y7_N15
\SW_0_7|saida[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_0_7|saida[1]~8_combout\ = ( \comb~0_combout\ & ( \ROM1|memROM~14_combout\ & ( (\decoderBloco|Equal7~0_combout\ & ((\processador|decoderInstru1|saida~4_combout\) # (\processador|decoderInstru1|saida~3_combout\))) ) ) ) # ( !\comb~0_combout\ & ( 
-- \ROM1|memROM~14_combout\ & ( (\decoderBloco|Equal7~0_combout\ & ((\processador|decoderInstru1|saida~4_combout\) # (\processador|decoderInstru1|saida~3_combout\))) ) ) ) # ( \comb~0_combout\ & ( !\ROM1|memROM~14_combout\ & ( 
-- (\decoderBloco|Equal7~0_combout\ & ((\processador|decoderInstru1|saida~4_combout\) # (\processador|decoderInstru1|saida~3_combout\))) ) ) ) # ( !\comb~0_combout\ & ( !\ROM1|memROM~14_combout\ & ( (!\KEY_3|saida[0]~1_combout\ & 
-- (\decoderBloco|Equal7~0_combout\ & ((\processador|decoderInstru1|saida~4_combout\) # (\processador|decoderInstru1|saida~3_combout\)))) # (\KEY_3|saida[0]~1_combout\ & (((\processador|decoderInstru1|saida~4_combout\) # 
-- (\processador|decoderInstru1|saida~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101110111000000110011001100000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_3|ALT_INV_saida[0]~1_combout\,
	datab => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datac => \processador|decoderInstru1|ALT_INV_saida~3_combout\,
	datad => \processador|decoderInstru1|ALT_INV_saida~4_combout\,
	datae => \ALT_INV_comb~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \SW_0_7|saida[1]~8_combout\);

-- Location: LABCELL_X35_Y12_N51
\logica_LED|REG_LEDS|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|REG_LEDS|DOUT[0]~feeder_combout\ = ( \processador|BANCO_REGISTRADORES|registrador~43_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	combout => \logica_LED|REG_LEDS|DOUT[0]~feeder_combout\);

-- Location: MLABCELL_X37_Y7_N42
\logica_Seven_Seg|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|comb~0_combout\ = ( \ROM1|memROM~6_combout\ & ( !\ROM1|memROM~7_combout\ & ( (!\ROM1|memROM~8_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~13_combout\ & !\processador|PC|DOUT\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \processador|PC|ALT_INV_DOUT\(8),
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \logica_Seven_Seg|comb~0_combout\);

-- Location: MLABCELL_X37_Y7_N33
\logica_LED|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|comb~0_combout\ = ( \processador|decoderInstru1|Equal11~0_combout\ & ( \logica_Seven_Seg|comb~0_combout\ & ( (\ROM1|memROM~27_combout\ & !\comb~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~27_combout\,
	datad => \ALT_INV_comb~0_combout\,
	datae => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	dataf => \logica_Seven_Seg|ALT_INV_comb~0_combout\,
	combout => \logica_LED|comb~0_combout\);

-- Location: FF_X35_Y12_N52
\logica_LED|REG_LEDS|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \logica_LED|REG_LEDS|DOUT[0]~feeder_combout\,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(0));

-- Location: LABCELL_X35_Y12_N30
\logica_LED|REG_LEDS|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|REG_LEDS|DOUT[1]~feeder_combout\ = ( \processador|BANCO_REGISTRADORES|registrador~44_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~44_combout\,
	combout => \logica_LED|REG_LEDS|DOUT[1]~feeder_combout\);

-- Location: FF_X35_Y12_N31
\logica_LED|REG_LEDS|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \logica_LED|REG_LEDS|DOUT[1]~feeder_combout\,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(1));

-- Location: LABCELL_X35_Y12_N15
\logica_LED|REG_LEDS|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|REG_LEDS|DOUT[2]~feeder_combout\ = ( \processador|BANCO_REGISTRADORES|registrador~45_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~45_combout\,
	combout => \logica_LED|REG_LEDS|DOUT[2]~feeder_combout\);

-- Location: FF_X35_Y12_N16
\logica_LED|REG_LEDS|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \logica_LED|REG_LEDS|DOUT[2]~feeder_combout\,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(2));

-- Location: LABCELL_X35_Y12_N9
\logica_LED|REG_LEDS|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|REG_LEDS|DOUT[3]~feeder_combout\ = ( \processador|BANCO_REGISTRADORES|registrador~46_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~46_combout\,
	combout => \logica_LED|REG_LEDS|DOUT[3]~feeder_combout\);

-- Location: FF_X35_Y12_N10
\logica_LED|REG_LEDS|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \logica_LED|REG_LEDS|DOUT[3]~feeder_combout\,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(3));

-- Location: LABCELL_X39_Y5_N36
\logica_LED|REG_LEDS|DOUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|REG_LEDS|DOUT[4]~feeder_combout\ = ( \processador|BANCO_REGISTRADORES|registrador~47_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~47_combout\,
	combout => \logica_LED|REG_LEDS|DOUT[4]~feeder_combout\);

-- Location: FF_X39_Y5_N37
\logica_LED|REG_LEDS|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \logica_LED|REG_LEDS|DOUT[4]~feeder_combout\,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(4));

-- Location: LABCELL_X39_Y5_N9
\logica_LED|REG_LEDS|DOUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|REG_LEDS|DOUT[5]~feeder_combout\ = ( \processador|BANCO_REGISTRADORES|registrador~48_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~48_combout\,
	combout => \logica_LED|REG_LEDS|DOUT[5]~feeder_combout\);

-- Location: FF_X39_Y5_N10
\logica_LED|REG_LEDS|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \logica_LED|REG_LEDS|DOUT[5]~feeder_combout\,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(5));

-- Location: LABCELL_X35_Y12_N39
\logica_LED|REG_LEDS|DOUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|REG_LEDS|DOUT[6]~feeder_combout\ = ( \processador|BANCO_REGISTRADORES|registrador~49_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~49_combout\,
	combout => \logica_LED|REG_LEDS|DOUT[6]~feeder_combout\);

-- Location: FF_X35_Y12_N40
\logica_LED|REG_LEDS|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \logica_LED|REG_LEDS|DOUT[6]~feeder_combout\,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(6));

-- Location: FF_X35_Y12_N43
\logica_LED|REG_LEDS|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~50_combout\,
	sload => VCC,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(7));

-- Location: MLABCELL_X37_Y7_N18
\logica_Seven_Seg|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|comb~1_combout\ = ( \logica_Seven_Seg|comb~0_combout\ & ( (\processador|decoderInstru1|Equal11~0_combout\ & \ROM1|memROM~27_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datac => \ROM1|ALT_INV_memROM~27_combout\,
	dataf => \logica_Seven_Seg|ALT_INV_comb~0_combout\,
	combout => \logica_Seven_Seg|comb~1_combout\);

-- Location: MLABCELL_X34_Y7_N36
\logica_LED|FlipFlop1|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|FlipFlop1|DOUT~0_combout\ = ( \logica_LED|FlipFlop1|DOUT~q\ & ( \logica_Seven_Seg|comb~1_combout\ & ( (!\ROM1|memROM~10_combout\) # (((\ROM1|memROM~12_combout\) # (\ROM1|memROM~19_combout\)) # 
-- (\processador|BANCO_REGISTRADORES|registrador~43_combout\)) ) ) ) # ( !\logica_LED|FlipFlop1|DOUT~q\ & ( \logica_Seven_Seg|comb~1_combout\ & ( (\ROM1|memROM~10_combout\ & (\processador|BANCO_REGISTRADORES|registrador~43_combout\ & 
-- (!\ROM1|memROM~19_combout\ & !\ROM1|memROM~12_combout\))) ) ) ) # ( \logica_LED|FlipFlop1|DOUT~q\ & ( !\logica_Seven_Seg|comb~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100010000000000001011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \logica_LED|FlipFlop1|ALT_INV_DOUT~q\,
	dataf => \logica_Seven_Seg|ALT_INV_comb~1_combout\,
	combout => \logica_LED|FlipFlop1|DOUT~0_combout\);

-- Location: FF_X34_Y7_N37
\logica_LED|FlipFlop1|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \logica_LED|FlipFlop1|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|FlipFlop1|DOUT~q\);

-- Location: MLABCELL_X34_Y7_N33
\logica_LED|FlipFlop2|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|FlipFlop2|DOUT~0_combout\ = ( \logica_LED|FlipFlop2|DOUT~q\ & ( \logica_Seven_Seg|comb~1_combout\ & ( (!\RESET_510~0_combout\) # ((\ROM1|memROM~19_combout\) # (\processador|BANCO_REGISTRADORES|registrador~43_combout\)) ) ) ) # ( 
-- !\logica_LED|FlipFlop2|DOUT~q\ & ( \logica_Seven_Seg|comb~1_combout\ & ( (\RESET_510~0_combout\ & (\processador|BANCO_REGISTRADORES|registrador~43_combout\ & !\ROM1|memROM~19_combout\)) ) ) ) # ( \logica_LED|FlipFlop2|DOUT~q\ & ( 
-- !\logica_Seven_Seg|comb~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000101000000001010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RESET_510~0_combout\,
	datac => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \logica_LED|FlipFlop2|ALT_INV_DOUT~q\,
	dataf => \logica_Seven_Seg|ALT_INV_comb~1_combout\,
	combout => \logica_LED|FlipFlop2|DOUT~0_combout\);

-- Location: FF_X34_Y7_N35
\logica_LED|FlipFlop2|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \logica_LED|FlipFlop2|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|FlipFlop2|DOUT~q\);

-- Location: MLABCELL_X37_Y7_N51
\logica_Seven_Seg|comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|comb~3_combout\ = ( \logica_Seven_Seg|comb~0_combout\ & ( (\ROM1|memROM~27_combout\ & (\processador|decoderInstru1|Equal11~0_combout\ & \logica_Seven_Seg|comb~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~27_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datac => \logica_Seven_Seg|ALT_INV_comb~2_combout\,
	dataf => \logica_Seven_Seg|ALT_INV_comb~0_combout\,
	combout => \logica_Seven_Seg|comb~3_combout\);

-- Location: FF_X41_Y4_N23
\logica_Seven_Seg|REG0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~44_combout\,
	sload => VCC,
	ena => \logica_Seven_Seg|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG0|DOUT\(1));

-- Location: FF_X41_Y4_N53
\logica_Seven_Seg|REG0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~43_combout\,
	sload => VCC,
	ena => \logica_Seven_Seg|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG0|DOUT\(0));

-- Location: FF_X41_Y4_N38
\logica_Seven_Seg|REG0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~45_combout\,
	sload => VCC,
	ena => \logica_Seven_Seg|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG0|DOUT\(2));

-- Location: FF_X41_Y4_N20
\logica_Seven_Seg|REG0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~46_combout\,
	sload => VCC,
	ena => \logica_Seven_Seg|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG0|DOUT\(3));

-- Location: LABCELL_X41_Y4_N39
\logica_Seven_Seg|H0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[0]~0_combout\ = ( \logica_Seven_Seg|REG0|DOUT\(3) & ( (\logica_Seven_Seg|REG0|DOUT\(0) & (!\logica_Seven_Seg|REG0|DOUT\(1) $ (!\logica_Seven_Seg|REG0|DOUT\(2)))) ) ) # ( !\logica_Seven_Seg|REG0|DOUT\(3) & ( 
-- (!\logica_Seven_Seg|REG0|DOUT\(1) & (!\logica_Seven_Seg|REG0|DOUT\(0) $ (!\logica_Seven_Seg|REG0|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010001000001000101000100000010001001000100001000100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	datab => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	datad => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X41_Y4_N54
\logica_Seven_Seg|H0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[1]~1_combout\ = ( \logica_Seven_Seg|REG0|DOUT\(3) & ( (!\logica_Seven_Seg|REG0|DOUT\(0) & (\logica_Seven_Seg|REG0|DOUT\(2))) # (\logica_Seven_Seg|REG0|DOUT\(0) & ((\logica_Seven_Seg|REG0|DOUT\(1)))) ) ) # ( 
-- !\logica_Seven_Seg|REG0|DOUT\(3) & ( (\logica_Seven_Seg|REG0|DOUT\(2) & (!\logica_Seven_Seg|REG0|DOUT\(0) $ (!\logica_Seven_Seg|REG0|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101000001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X41_Y4_N57
\logica_Seven_Seg|H0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[2]~2_combout\ = ( \logica_Seven_Seg|REG0|DOUT\(3) & ( (\logica_Seven_Seg|REG0|DOUT\(2) & ((!\logica_Seven_Seg|REG0|DOUT\(0)) # (\logica_Seven_Seg|REG0|DOUT\(1)))) ) ) # ( !\logica_Seven_Seg|REG0|DOUT\(3) & ( 
-- (!\logica_Seven_Seg|REG0|DOUT\(0) & (!\logica_Seven_Seg|REG0|DOUT\(2) & \logica_Seven_Seg|REG0|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000100010001100110010001000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X41_Y4_N51
\logica_Seven_Seg|H0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[3]~3_combout\ = ( \logica_Seven_Seg|REG0|DOUT\(3) & ( (\logica_Seven_Seg|REG0|DOUT\(1) & (!\logica_Seven_Seg|REG0|DOUT\(2) $ (\logica_Seven_Seg|REG0|DOUT\(0)))) ) ) # ( !\logica_Seven_Seg|REG0|DOUT\(3) & ( 
-- (!\logica_Seven_Seg|REG0|DOUT\(1) & (!\logica_Seven_Seg|REG0|DOUT\(2) $ (!\logica_Seven_Seg|REG0|DOUT\(0)))) # (\logica_Seven_Seg|REG0|DOUT\(1) & (\logica_Seven_Seg|REG0|DOUT\(2) & \logica_Seven_Seg|REG0|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100101000010101010010101010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	dataf => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X41_Y4_N18
\logica_Seven_Seg|H0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[4]~4_combout\ = (!\logica_Seven_Seg|REG0|DOUT\(1) & ((!\logica_Seven_Seg|REG0|DOUT\(2) & (\logica_Seven_Seg|REG0|DOUT\(0))) # (\logica_Seven_Seg|REG0|DOUT\(2) & ((!\logica_Seven_Seg|REG0|DOUT\(3)))))) # 
-- (\logica_Seven_Seg|REG0|DOUT\(1) & (\logica_Seven_Seg|REG0|DOUT\(0) & ((!\logica_Seven_Seg|REG0|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101000000011101010100000001110101010000000111010101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X41_Y4_N21
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

-- Location: LABCELL_X41_Y4_N36
\logica_Seven_Seg|H0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[6]~6_combout\ = ( \logica_Seven_Seg|REG0|DOUT\(3) & ( (!\logica_Seven_Seg|REG0|DOUT\(0) & (!\logica_Seven_Seg|REG0|DOUT\(1) & \logica_Seven_Seg|REG0|DOUT\(2))) ) ) # ( !\logica_Seven_Seg|REG0|DOUT\(3) & ( 
-- (!\logica_Seven_Seg|REG0|DOUT\(1) & ((!\logica_Seven_Seg|REG0|DOUT\(2)))) # (\logica_Seven_Seg|REG0|DOUT\(1) & (\logica_Seven_Seg|REG0|DOUT\(0) & \logica_Seven_Seg|REG0|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000011111100000000001100000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X40_Y4_N24
\logica_Seven_Seg|REG2|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|REG2|DOUT[0]~feeder_combout\ = ( \processador|BANCO_REGISTRADORES|registrador~43_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	combout => \logica_Seven_Seg|REG2|DOUT[0]~feeder_combout\);

-- Location: MLABCELL_X34_Y6_N48
\logica_Seven_Seg|comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|comb~4_combout\ = ( \processador|decoderInstru1|Equal11~0_combout\ & ( \logica_Seven_Seg|comb~0_combout\ & ( (\ROM1|memROM~27_combout\ & (\ROM1|memROM~19_combout\ & \RESET_510~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~27_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ALT_INV_RESET_510~0_combout\,
	datae => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	dataf => \logica_Seven_Seg|ALT_INV_comb~0_combout\,
	combout => \logica_Seven_Seg|comb~4_combout\);

-- Location: FF_X40_Y4_N26
\logica_Seven_Seg|REG2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \logica_Seven_Seg|REG2|DOUT[0]~feeder_combout\,
	ena => \logica_Seven_Seg|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG2|DOUT\(0));

-- Location: LABCELL_X40_Y4_N54
\logica_Seven_Seg|REG2|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|REG2|DOUT[2]~feeder_combout\ = ( \processador|BANCO_REGISTRADORES|registrador~45_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~45_combout\,
	combout => \logica_Seven_Seg|REG2|DOUT[2]~feeder_combout\);

-- Location: FF_X40_Y4_N55
\logica_Seven_Seg|REG2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \logica_Seven_Seg|REG2|DOUT[2]~feeder_combout\,
	ena => \logica_Seven_Seg|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG2|DOUT\(2));

-- Location: FF_X40_Y4_N2
\logica_Seven_Seg|REG2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~44_combout\,
	sload => VCC,
	ena => \logica_Seven_Seg|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG2|DOUT\(1));

-- Location: LABCELL_X40_Y4_N18
\logica_Seven_Seg|REG2|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|REG2|DOUT[3]~feeder_combout\ = ( \processador|BANCO_REGISTRADORES|registrador~46_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~46_combout\,
	combout => \logica_Seven_Seg|REG2|DOUT[3]~feeder_combout\);

-- Location: FF_X40_Y4_N20
\logica_Seven_Seg|REG2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \logica_Seven_Seg|REG2|DOUT[3]~feeder_combout\,
	ena => \logica_Seven_Seg|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG2|DOUT\(3));

-- Location: LABCELL_X40_Y4_N39
\logica_Seven_Seg|H2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[0]~0_combout\ = ( \logica_Seven_Seg|REG2|DOUT\(3) & ( (\logica_Seven_Seg|REG2|DOUT\(0) & (!\logica_Seven_Seg|REG2|DOUT\(2) $ (!\logica_Seven_Seg|REG2|DOUT\(1)))) ) ) # ( !\logica_Seven_Seg|REG2|DOUT\(3) & ( 
-- (!\logica_Seven_Seg|REG2|DOUT\(1) & (!\logica_Seven_Seg|REG2|DOUT\(0) $ (!\logica_Seven_Seg|REG2|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000000000011001100000000000010001010001000001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X40_Y4_N30
\logica_Seven_Seg|H2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[1]~1_combout\ = ( \logica_Seven_Seg|REG2|DOUT\(1) & ( (!\logica_Seven_Seg|REG2|DOUT\(0) & ((\logica_Seven_Seg|REG2|DOUT\(2)))) # (\logica_Seven_Seg|REG2|DOUT\(0) & (\logica_Seven_Seg|REG2|DOUT\(3))) ) ) # ( 
-- !\logica_Seven_Seg|REG2|DOUT\(1) & ( (\logica_Seven_Seg|REG2|DOUT\(2) & (!\logica_Seven_Seg|REG2|DOUT\(3) $ (!\logica_Seven_Seg|REG2|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010001101010011010100010010000100100011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	datab => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	datae => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X40_Y4_N15
\logica_Seven_Seg|H2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[2]~2_combout\ = ( \logica_Seven_Seg|REG2|DOUT\(0) & ( (\logica_Seven_Seg|REG2|DOUT\(3) & (\logica_Seven_Seg|REG2|DOUT\(2) & \logica_Seven_Seg|REG2|DOUT\(1))) ) ) # ( !\logica_Seven_Seg|REG2|DOUT\(0) & ( 
-- (!\logica_Seven_Seg|REG2|DOUT\(3) & (!\logica_Seven_Seg|REG2|DOUT\(2) & \logica_Seven_Seg|REG2|DOUT\(1))) # (\logica_Seven_Seg|REG2|DOUT\(3) & (\logica_Seven_Seg|REG2|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110100101000001011010010100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X40_Y4_N36
\logica_Seven_Seg|H2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[3]~3_combout\ = ( \logica_Seven_Seg|REG2|DOUT\(3) & ( (\logica_Seven_Seg|REG2|DOUT\(1) & (!\logica_Seven_Seg|REG2|DOUT\(0) $ (\logica_Seven_Seg|REG2|DOUT\(2)))) ) ) # ( !\logica_Seven_Seg|REG2|DOUT\(3) & ( 
-- (!\logica_Seven_Seg|REG2|DOUT\(0) & (\logica_Seven_Seg|REG2|DOUT\(2) & !\logica_Seven_Seg|REG2|DOUT\(1))) # (\logica_Seven_Seg|REG2|DOUT\(0) & (!\logica_Seven_Seg|REG2|DOUT\(2) $ (\logica_Seven_Seg|REG2|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101100001011000010110000100001001000010010000100100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X40_Y4_N42
\logica_Seven_Seg|H2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[4]~4_combout\ = ( \logica_Seven_Seg|REG2|DOUT\(2) & ( \logica_Seven_Seg|REG2|DOUT\(0) & ( !\logica_Seven_Seg|REG2|DOUT\(3) ) ) ) # ( !\logica_Seven_Seg|REG2|DOUT\(2) & ( \logica_Seven_Seg|REG2|DOUT\(0) & ( 
-- (!\logica_Seven_Seg|REG2|DOUT\(1)) # (!\logica_Seven_Seg|REG2|DOUT\(3)) ) ) ) # ( \logica_Seven_Seg|REG2|DOUT\(2) & ( !\logica_Seven_Seg|REG2|DOUT\(0) & ( (!\logica_Seven_Seg|REG2|DOUT\(1) & !\logica_Seven_Seg|REG2|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000011111010111110101111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	datae => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X40_Y4_N48
\logica_Seven_Seg|H2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[5]~5_combout\ = ( \logica_Seven_Seg|REG2|DOUT\(3) & ( (\logica_Seven_Seg|REG2|DOUT\(0) & (\logica_Seven_Seg|REG2|DOUT\(2) & !\logica_Seven_Seg|REG2|DOUT\(1))) ) ) # ( !\logica_Seven_Seg|REG2|DOUT\(3) & ( 
-- (!\logica_Seven_Seg|REG2|DOUT\(0) & (!\logica_Seven_Seg|REG2|DOUT\(2) & \logica_Seven_Seg|REG2|DOUT\(1))) # (\logica_Seven_Seg|REG2|DOUT\(0) & ((!\logica_Seven_Seg|REG2|DOUT\(2)) # (\logica_Seven_Seg|REG2|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110101001101010011010100110100010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X40_Y4_N51
\logica_Seven_Seg|H2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[6]~6_combout\ = ( \logica_Seven_Seg|REG2|DOUT\(3) & ( (!\logica_Seven_Seg|REG2|DOUT\(0) & (\logica_Seven_Seg|REG2|DOUT\(2) & !\logica_Seven_Seg|REG2|DOUT\(1))) ) ) # ( !\logica_Seven_Seg|REG2|DOUT\(3) & ( 
-- (!\logica_Seven_Seg|REG2|DOUT\(2) & ((!\logica_Seven_Seg|REG2|DOUT\(1)))) # (\logica_Seven_Seg|REG2|DOUT\(2) & (\logica_Seven_Seg|REG2|DOUT\(0) & \logica_Seven_Seg|REG2|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000010001110011000001000100100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X37_Y7_N48
\logica_Seven_Seg|comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|comb~5_combout\ = ( \comb~3_combout\ & ( (\ROM1|memROM~27_combout\ & (\processador|decoderInstru1|Equal11~0_combout\ & \logica_Seven_Seg|comb~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~27_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datad => \logica_Seven_Seg|ALT_INV_comb~0_combout\,
	dataf => \ALT_INV_comb~3_combout\,
	combout => \logica_Seven_Seg|comb~5_combout\);

-- Location: FF_X41_Y4_N8
\logica_Seven_Seg|REG3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~44_combout\,
	sload => VCC,
	ena => \logica_Seven_Seg|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG3|DOUT\(1));

-- Location: FF_X41_Y4_N17
\logica_Seven_Seg|REG3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~46_combout\,
	sload => VCC,
	ena => \logica_Seven_Seg|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG3|DOUT\(3));

-- Location: FF_X41_Y4_N11
\logica_Seven_Seg|REG3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~45_combout\,
	sload => VCC,
	ena => \logica_Seven_Seg|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG3|DOUT\(2));

-- Location: FF_X41_Y4_N14
\logica_Seven_Seg|REG3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~43_combout\,
	sload => VCC,
	ena => \logica_Seven_Seg|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG3|DOUT\(0));

-- Location: LABCELL_X41_Y4_N24
\logica_Seven_Seg|H3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[0]~0_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(0) & ( (!\logica_Seven_Seg|REG3|DOUT\(1) & (!\logica_Seven_Seg|REG3|DOUT\(3) $ (\logica_Seven_Seg|REG3|DOUT\(2)))) # (\logica_Seven_Seg|REG3|DOUT\(1) & 
-- (\logica_Seven_Seg|REG3|DOUT\(3) & !\logica_Seven_Seg|REG3|DOUT\(2))) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(0) & ( (!\logica_Seven_Seg|REG3|DOUT\(1) & (!\logica_Seven_Seg|REG3|DOUT\(3) & \logica_Seven_Seg|REG3|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100010011001001000101001100100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datad => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X41_Y4_N48
\logica_Seven_Seg|H3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[1]~1_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(0) & ( (!\logica_Seven_Seg|REG3|DOUT\(3) & (!\logica_Seven_Seg|REG3|DOUT\(1) & \logica_Seven_Seg|REG3|DOUT\(2))) # (\logica_Seven_Seg|REG3|DOUT\(3) & 
-- (\logica_Seven_Seg|REG3|DOUT\(1))) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(0) & ( (\logica_Seven_Seg|REG3|DOUT\(2) & ((\logica_Seven_Seg|REG3|DOUT\(1)) # (\logica_Seven_Seg|REG3|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100000011110000110000001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X41_Y4_N27
\logica_Seven_Seg|H3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[2]~2_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(0) & ( (\logica_Seven_Seg|REG3|DOUT\(1) & (\logica_Seven_Seg|REG3|DOUT\(3) & \logica_Seven_Seg|REG3|DOUT\(2))) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(0) & ( 
-- (!\logica_Seven_Seg|REG3|DOUT\(3) & (\logica_Seven_Seg|REG3|DOUT\(1) & !\logica_Seven_Seg|REG3|DOUT\(2))) # (\logica_Seven_Seg|REG3|DOUT\(3) & ((\logica_Seven_Seg|REG3|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001101000011010000110100001100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X41_Y4_N12
\logica_Seven_Seg|H3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[3]~3_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(3) & ( (\logica_Seven_Seg|REG3|DOUT\(1) & (!\logica_Seven_Seg|REG3|DOUT\(2) $ (\logica_Seven_Seg|REG3|DOUT\(0)))) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(3) & ( 
-- (!\logica_Seven_Seg|REG3|DOUT\(2) & (!\logica_Seven_Seg|REG3|DOUT\(1) & \logica_Seven_Seg|REG3|DOUT\(0))) # (\logica_Seven_Seg|REG3|DOUT\(2) & (!\logica_Seven_Seg|REG3|DOUT\(1) $ (\logica_Seven_Seg|REG3|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010011001010001001001100100100010000100010010001000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X41_Y4_N15
\logica_Seven_Seg|H3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[4]~4_combout\ = (!\logica_Seven_Seg|REG3|DOUT\(1) & ((!\logica_Seven_Seg|REG3|DOUT\(2) & (\logica_Seven_Seg|REG3|DOUT\(0))) # (\logica_Seven_Seg|REG3|DOUT\(2) & ((!\logica_Seven_Seg|REG3|DOUT\(3)))))) # 
-- (\logica_Seven_Seg|REG3|DOUT\(1) & (((\logica_Seven_Seg|REG3|DOUT\(0) & !\logica_Seven_Seg|REG3|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111100001000010011110000100001001111000010000100111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	datad => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X41_Y4_N6
\logica_Seven_Seg|H3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[5]~5_combout\ = ( \logica_Seven_Seg|REG3|DOUT\(3) & ( (\logica_Seven_Seg|REG3|DOUT\(0) & (\logica_Seven_Seg|REG3|DOUT\(2) & !\logica_Seven_Seg|REG3|DOUT\(1))) ) ) # ( !\logica_Seven_Seg|REG3|DOUT\(3) & ( 
-- (!\logica_Seven_Seg|REG3|DOUT\(0) & (!\logica_Seven_Seg|REG3|DOUT\(2) & \logica_Seven_Seg|REG3|DOUT\(1))) # (\logica_Seven_Seg|REG3|DOUT\(0) & ((!\logica_Seven_Seg|REG3|DOUT\(2)) # (\logica_Seven_Seg|REG3|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110011001100001111001100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X41_Y4_N9
\logica_Seven_Seg|H3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[6]~6_combout\ = (!\logica_Seven_Seg|REG3|DOUT\(0) & (!\logica_Seven_Seg|REG3|DOUT\(1) & (!\logica_Seven_Seg|REG3|DOUT\(3) $ (\logica_Seven_Seg|REG3|DOUT\(2))))) # (\logica_Seven_Seg|REG3|DOUT\(0) & 
-- (!\logica_Seven_Seg|REG3|DOUT\(3) & (!\logica_Seven_Seg|REG3|DOUT\(1) $ (\logica_Seven_Seg|REG3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000011000101000000001100010100000000110001010000000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datad => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X37_Y7_N24
\decoderBloco|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderBloco|Equal3~0_combout\ = ( \ROM1|memROM~6_combout\ & ( !\ROM1|memROM~7_combout\ & ( (!\ROM1|memROM~8_combout\ & (!\processador|PC|DOUT\(8) & \ROM1|memROM~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \decoderBloco|Equal3~0_combout\);

-- Location: MLABCELL_X37_Y7_N0
\logica_Seven_Seg|comb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|comb~6_combout\ = ( \ROM1|memROM~27_combout\ & ( (\decoderBloco|Equal3~0_combout\ & (\processador|decoderInstru1|Equal11~0_combout\ & (\ROM1|memROM~14_combout\ & \logica_Seven_Seg|comb~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderBloco|ALT_INV_Equal3~0_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \logica_Seven_Seg|ALT_INV_comb~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~27_combout\,
	combout => \logica_Seven_Seg|comb~6_combout\);

-- Location: FF_X41_Y4_N32
\logica_Seven_Seg|REG4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~43_combout\,
	sload => VCC,
	ena => \logica_Seven_Seg|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG4|DOUT\(0));

-- Location: FF_X41_Y4_N2
\logica_Seven_Seg|REG4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~44_combout\,
	sload => VCC,
	ena => \logica_Seven_Seg|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG4|DOUT\(1));

-- Location: FF_X41_Y4_N4
\logica_Seven_Seg|REG4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~45_combout\,
	sload => VCC,
	ena => \logica_Seven_Seg|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG4|DOUT\(2));

-- Location: FF_X41_Y4_N35
\logica_Seven_Seg|REG4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|BANCO_REGISTRADORES|registrador~46_combout\,
	sload => VCC,
	ena => \logica_Seven_Seg|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG4|DOUT\(3));

-- Location: LABCELL_X41_Y4_N42
\logica_Seven_Seg|H4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[0]~0_combout\ = ( \logica_Seven_Seg|REG4|DOUT\(3) & ( (\logica_Seven_Seg|REG4|DOUT\(0) & (!\logica_Seven_Seg|REG4|DOUT\(1) $ (!\logica_Seven_Seg|REG4|DOUT\(2)))) ) ) # ( !\logica_Seven_Seg|REG4|DOUT\(3) & ( 
-- (!\logica_Seven_Seg|REG4|DOUT\(1) & (!\logica_Seven_Seg|REG4|DOUT\(0) $ (!\logica_Seven_Seg|REG4|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000000000011001100000000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X41_Y4_N45
\logica_Seven_Seg|H4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[1]~1_combout\ = ( \logica_Seven_Seg|REG4|DOUT\(3) & ( (!\logica_Seven_Seg|REG4|DOUT\(0) & ((\logica_Seven_Seg|REG4|DOUT\(2)))) # (\logica_Seven_Seg|REG4|DOUT\(0) & (\logica_Seven_Seg|REG4|DOUT\(1))) ) ) # ( 
-- !\logica_Seven_Seg|REG4|DOUT\(3) & ( (\logica_Seven_Seg|REG4|DOUT\(2) & (!\logica_Seven_Seg|REG4|DOUT\(1) $ (!\logica_Seven_Seg|REG4|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011000010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	datab => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	datad => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	dataf => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X41_Y4_N0
\logica_Seven_Seg|H4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[2]~2_combout\ = ( \logica_Seven_Seg|REG4|DOUT\(1) & ( (!\logica_Seven_Seg|REG4|DOUT\(3) & (!\logica_Seven_Seg|REG4|DOUT\(0) & !\logica_Seven_Seg|REG4|DOUT\(2))) # (\logica_Seven_Seg|REG4|DOUT\(3) & 
-- ((\logica_Seven_Seg|REG4|DOUT\(2)))) ) ) # ( !\logica_Seven_Seg|REG4|DOUT\(1) & ( (\logica_Seven_Seg|REG4|DOUT\(3) & (!\logica_Seven_Seg|REG4|DOUT\(0) & \logica_Seven_Seg|REG4|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100100001011000010100000100000001001000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	datab => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	datac => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	datae => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X41_Y4_N30
\logica_Seven_Seg|H4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[3]~3_combout\ = (!\logica_Seven_Seg|REG4|DOUT\(1) & (!\logica_Seven_Seg|REG4|DOUT\(3) & (!\logica_Seven_Seg|REG4|DOUT\(2) $ (!\logica_Seven_Seg|REG4|DOUT\(0))))) # (\logica_Seven_Seg|REG4|DOUT\(1) & 
-- ((!\logica_Seven_Seg|REG4|DOUT\(2) & (\logica_Seven_Seg|REG4|DOUT\(3) & !\logica_Seven_Seg|REG4|DOUT\(0))) # (\logica_Seven_Seg|REG4|DOUT\(2) & ((\logica_Seven_Seg|REG4|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010010010001001001001001000100100100100100010010010010010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	datab => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	datad => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X41_Y4_N33
\logica_Seven_Seg|H4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[4]~4_combout\ = ( \logica_Seven_Seg|REG4|DOUT\(0) & ( (!\logica_Seven_Seg|REG4|DOUT\(3)) # ((!\logica_Seven_Seg|REG4|DOUT\(1) & !\logica_Seven_Seg|REG4|DOUT\(2))) ) ) # ( !\logica_Seven_Seg|REG4|DOUT\(0) & ( 
-- (!\logica_Seven_Seg|REG4|DOUT\(1) & (\logica_Seven_Seg|REG4|DOUT\(2) & !\logica_Seven_Seg|REG4|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000011111111100010001111111110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	datab => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	dataf => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X40_Y4_N3
\logica_Seven_Seg|H4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[5]~5_combout\ = ( \logica_Seven_Seg|REG4|DOUT\(1) & ( (!\logica_Seven_Seg|REG4|DOUT\(3) & ((!\logica_Seven_Seg|REG4|DOUT\(2)) # (\logica_Seven_Seg|REG4|DOUT\(0)))) ) ) # ( !\logica_Seven_Seg|REG4|DOUT\(1) & ( 
-- (\logica_Seven_Seg|REG4|DOUT\(0) & (!\logica_Seven_Seg|REG4|DOUT\(3) $ (\logica_Seven_Seg|REG4|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100101101000001010101000000000101001011010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	datae => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X40_Y4_N12
\logica_Seven_Seg|H4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[6]~6_combout\ = ( \logica_Seven_Seg|REG4|DOUT\(0) & ( (!\logica_Seven_Seg|REG4|DOUT\(3) & (!\logica_Seven_Seg|REG4|DOUT\(2) $ (\logica_Seven_Seg|REG4|DOUT\(1)))) ) ) # ( !\logica_Seven_Seg|REG4|DOUT\(0) & ( 
-- (!\logica_Seven_Seg|REG4|DOUT\(1) & (!\logica_Seven_Seg|REG4|DOUT\(2) $ (\logica_Seven_Seg|REG4|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000011000000001100001100000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	datac => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	datad => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	dataf => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[6]~6_combout\);

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

-- Location: LABCELL_X36_Y39_N0
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


