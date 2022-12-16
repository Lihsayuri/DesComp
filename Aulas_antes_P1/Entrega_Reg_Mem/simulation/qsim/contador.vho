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

-- DATE "10/20/2022 09:01:12"

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
SIGNAL \MEM_OUTT[0]~output_o\ : std_logic;
SIGNAL \MEM_OUTT[1]~output_o\ : std_logic;
SIGNAL \MEM_OUTT[2]~output_o\ : std_logic;
SIGNAL \MEM_OUTT[3]~output_o\ : std_logic;
SIGNAL \MEM_OUTT[4]~output_o\ : std_logic;
SIGNAL \MEM_OUTT[5]~output_o\ : std_logic;
SIGNAL \MEM_OUTT[6]~output_o\ : std_logic;
SIGNAL \MEM_OUTT[7]~output_o\ : std_logic;
SIGNAL \PC_OUT[0]~output_o\ : std_logic;
SIGNAL \PC_OUT[1]~output_o\ : std_logic;
SIGNAL \PC_OUT[2]~output_o\ : std_logic;
SIGNAL \PC_OUT[3]~output_o\ : std_logic;
SIGNAL \PC_OUT[4]~output_o\ : std_logic;
SIGNAL \PC_OUT[5]~output_o\ : std_logic;
SIGNAL \PC_OUT[6]~output_o\ : std_logic;
SIGNAL \PC_OUT[7]~output_o\ : std_logic;
SIGNAL \PC_OUT[8]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \REGA_OUT[0]~output_o\ : std_logic;
SIGNAL \REGA_OUT[1]~output_o\ : std_logic;
SIGNAL \REGA_OUT[2]~output_o\ : std_logic;
SIGNAL \REGA_OUT[3]~output_o\ : std_logic;
SIGNAL \REGA_OUT[4]~output_o\ : std_logic;
SIGNAL \REGA_OUT[5]~output_o\ : std_logic;
SIGNAL \REGA_OUT[6]~output_o\ : std_logic;
SIGNAL \REGA_OUT[7]~output_o\ : std_logic;
SIGNAL \HabilitaRAM~output_o\ : std_logic;
SIGNAL \MEM_ADDRESS[0]~output_o\ : std_logic;
SIGNAL \MEM_ADDRESS[1]~output_o\ : std_logic;
SIGNAL \MEM_ADDRESS[2]~output_o\ : std_logic;
SIGNAL \MEM_ADDRESS[3]~output_o\ : std_logic;
SIGNAL \MEM_ADDRESS[4]~output_o\ : std_logic;
SIGNAL \MEM_ADDRESS[5]~output_o\ : std_logic;
SIGNAL \MEM_ADDRESS[6]~output_o\ : std_logic;
SIGNAL \MEM_ADDRESS[7]~output_o\ : std_logic;
SIGNAL \MEM_ADDRESS[8]~output_o\ : std_logic;
SIGNAL \enderecoR[0]~output_o\ : std_logic;
SIGNAL \enderecoR[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \ROM1|memROM~22_combout\ : std_logic;
SIGNAL \ROM1|memROM~23_combout\ : std_logic;
SIGNAL \ROM1|memROM~24_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~20_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~2\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~6\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~10\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~14\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~18\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~22\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~26\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \ROM1|memROM~28_combout\ : std_logic;
SIGNAL \ROM1|memROM~29_combout\ : std_logic;
SIGNAL \processador|LOG_DESVIO|SelMuxPC~0_combout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[7]~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~36_combout\ : std_logic;
SIGNAL \ROM1|memROM~27_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida~1_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida~0_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal11~0_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida[4]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida~3_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \KEY_3|saida[0]~1_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \RAM1|ram~563_combout\ : std_logic;
SIGNAL \RAM1|ram~564_combout\ : std_logic;
SIGNAL \RAM1|ram~59_q\ : std_logic;
SIGNAL \RAM1|ram~559_combout\ : std_logic;
SIGNAL \RAM1|ram~560_combout\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~561_combout\ : std_logic;
SIGNAL \RAM1|ram~562_combout\ : std_logic;
SIGNAL \RAM1|ram~27_q\ : std_logic;
SIGNAL \RAM1|ram~540_combout\ : std_logic;
SIGNAL \RAM1|ram~565_combout\ : std_logic;
SIGNAL \RAM1|ram~566_combout\ : std_logic;
SIGNAL \RAM1|ram~115_q\ : std_logic;
SIGNAL \RAM1|ram~588_combout\ : std_logic;
SIGNAL \RAM1|ram~569_combout\ : std_logic;
SIGNAL \RAM1|ram~570_combout\ : std_logic;
SIGNAL \RAM1|ram~275_q\ : std_logic;
SIGNAL \RAM1|ram~541_combout\ : std_logic;
SIGNAL \RAM1|ram~567_combout\ : std_logic;
SIGNAL \RAM1|ram~568_combout\ : std_logic;
SIGNAL \RAM1|ram~35_q\ : std_logic;
SIGNAL \RAM1|ram~542_combout\ : std_logic;
SIGNAL \RAM1|ram~573_combout\ : std_logic;
SIGNAL \RAM1|ram~574_combout\ : std_logic;
SIGNAL \RAM1|ram~523_q\ : std_logic;
SIGNAL \RAM1|ram~571_combout\ : std_logic;
SIGNAL \RAM1|ram~572_combout\ : std_logic;
SIGNAL \RAM1|ram~291_q\ : std_logic;
SIGNAL \RAM1|ram~543_combout\ : std_logic;
SIGNAL \RAM1|ram~544_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \SW_0_7|saida[4]~11_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~33_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~32_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~31_combout\ : std_logic;
SIGNAL \KEY_3|saida[0]~2_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY_3|saida[0]~9_combout\ : std_logic;
SIGNAL \RESET_511~1_combout\ : std_logic;
SIGNAL \RESET_511~0_combout\ : std_logic;
SIGNAL \RESET_511~2_combout\ : std_logic;
SIGNAL \FF_DEBOUNCER_0|DOUT~q\ : std_logic;
SIGNAL \logica_Seven_Seg|comb~2_combout\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \KEY_3|saida[0]~3_combout\ : std_logic;
SIGNAL \RESET_510~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \RESET_508~0_combout\ : std_logic;
SIGNAL \RESET_508~1_combout\ : std_logic;
SIGNAL \FF_DEBOUNCER_2|DOUT~q\ : std_logic;
SIGNAL \KEY_3|saida[0]~4_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \KEY_3|saida[0]~5_combout\ : std_logic;
SIGNAL \KEY_3|saida[0]~6_combout\ : std_logic;
SIGNAL \KEY_3|saida[0]~7_combout\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~30_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \processador|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~51_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~11_q\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~52_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~19_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~53_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~27_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~54_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~35_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~43_combout\ : std_logic;
SIGNAL \RAM1|ram~31_q\ : std_logic;
SIGNAL \RAM1|ram~287_q\ : std_logic;
SIGNAL \RAM1|ram~519_q\ : std_logic;
SIGNAL \RAM1|ram~576_combout\ : std_logic;
SIGNAL \RAM1|ram~111_q\ : std_logic;
SIGNAL \RAM1|ram~577_combout\ : std_logic;
SIGNAL \RAM1|ram~271_q\ : std_logic;
SIGNAL \RAM1|ram~15_q\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~55_q\ : std_logic;
SIGNAL \RAM1|ram~575_combout\ : std_logic;
SIGNAL \RAM1|ram~578_combout\ : std_logic;
SIGNAL \RAM1|ram~579_combout\ : std_logic;
SIGNAL \RAM1|ram~527_combout\ : std_logic;
SIGNAL \SW_0_7|saida[0]~15_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \SW_9|saida[0]~0_combout\ : std_logic;
SIGNAL \KEY_2|saida[0]~0_combout\ : std_logic;
SIGNAL \SW_8|saida[0]~0_combout\ : std_logic;
SIGNAL \KEY_3|saida[0]~10_combout\ : std_logic;
SIGNAL \KEY_3|saida[0]~11_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~2\ : std_logic;
SIGNAL \processador|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add1~2\ : std_logic;
SIGNAL \processador|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~12_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~20_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~28_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~36_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~44_combout\ : std_logic;
SIGNAL \RAM1|ram~32_q\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~16_q\ : std_logic;
SIGNAL \RAM1|ram~600_combout\ : std_logic;
SIGNAL \RAM1|ram~272_q\ : std_logic;
SIGNAL \RAM1|ram~288_q\ : std_logic;
SIGNAL \RAM1|ram~528_combout\ : std_logic;
SIGNAL \RAM1|ram~56_q\ : std_logic;
SIGNAL \RAM1|ram~112_q\ : std_logic;
SIGNAL \RAM1|ram~529_combout\ : std_logic;
SIGNAL \RAM1|ram~520_q\ : std_logic;
SIGNAL \RAM1|ram~530_combout\ : std_logic;
SIGNAL \RAM1|ram~531_combout\ : std_logic;
SIGNAL \SW_0_7|saida[1]~7_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~6\ : std_logic;
SIGNAL \processador|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add1~6\ : std_logic;
SIGNAL \processador|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~13_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~21_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~29_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~37_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~45_combout\ : std_logic;
SIGNAL \RAM1|ram~33_q\ : std_logic;
SIGNAL \RAM1|ram~113_q\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~596_combout\ : std_logic;
SIGNAL \RAM1|ram~289_q\ : std_logic;
SIGNAL \RAM1|ram~273_q\ : std_logic;
SIGNAL \RAM1|ram~532_combout\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~57_q\ : std_logic;
SIGNAL \RAM1|ram~533_combout\ : std_logic;
SIGNAL \RAM1|ram~521_q\ : std_logic;
SIGNAL \RAM1|ram~534_combout\ : std_logic;
SIGNAL \RAM1|ram~535_combout\ : std_logic;
SIGNAL \SW_0_7|saida[2]~9_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~10\ : std_logic;
SIGNAL \processador|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add1~10\ : std_logic;
SIGNAL \processador|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~14_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~22_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~30_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~38_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~46_combout\ : std_logic;
SIGNAL \RAM1|ram~114_q\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~58_q\ : std_logic;
SIGNAL \RAM1|ram~536_combout\ : std_logic;
SIGNAL \RAM1|ram~34_q\ : std_logic;
SIGNAL \RAM1|ram~592_combout\ : std_logic;
SIGNAL \RAM1|ram~290_q\ : std_logic;
SIGNAL \RAM1|ram~274_q\ : std_logic;
SIGNAL \RAM1|ram~537_combout\ : std_logic;
SIGNAL \RAM1|ram~522_q\ : std_logic;
SIGNAL \RAM1|ram~538_combout\ : std_logic;
SIGNAL \RAM1|ram~539_combout\ : std_logic;
SIGNAL \SW_0_7|saida[3]~10_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~14\ : std_logic;
SIGNAL \processador|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~15_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~23_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~31_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~39_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~47_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~14\ : std_logic;
SIGNAL \processador|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~34_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~18\ : std_logic;
SIGNAL \processador|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~16_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~24_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~32_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~40_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~48_combout\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~276_q\ : std_logic;
SIGNAL \RAM1|ram~36_q\ : std_logic;
SIGNAL \RAM1|ram~292_q\ : std_logic;
SIGNAL \RAM1|ram~545_combout\ : std_logic;
SIGNAL \RAM1|ram~546_combout\ : std_logic;
SIGNAL \RAM1|ram~116_q\ : std_logic;
SIGNAL \RAM1|ram~547_combout\ : std_logic;
SIGNAL \RAM1|ram~28_q\ : std_logic;
SIGNAL \RAM1|ram~548_combout\ : std_logic;
SIGNAL \RAM1|ram~524_q\ : std_logic;
SIGNAL \RAM1|ram~60_q\ : std_logic;
SIGNAL \RAM1|ram~549_combout\ : std_logic;
SIGNAL \RAM1|ram~550_combout\ : std_logic;
SIGNAL \SW_0_7|saida[5]~12_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~18\ : std_logic;
SIGNAL \processador|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~35_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~22\ : std_logic;
SIGNAL \processador|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~17_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~25_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~33_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~41_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~49_combout\ : std_logic;
SIGNAL \RAM1|ram~117_q\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~29_q\ : std_logic;
SIGNAL \RAM1|ram~61_q\ : std_logic;
SIGNAL \RAM1|ram~551_combout\ : std_logic;
SIGNAL \RAM1|ram~37_q\ : std_logic;
SIGNAL \RAM1|ram~584_combout\ : std_logic;
SIGNAL \RAM1|ram~277_q\ : std_logic;
SIGNAL \RAM1|ram~293_q\ : std_logic;
SIGNAL \RAM1|ram~552_combout\ : std_logic;
SIGNAL \RAM1|ram~525_q\ : std_logic;
SIGNAL \RAM1|ram~553_combout\ : std_logic;
SIGNAL \RAM1|ram~554_combout\ : std_logic;
SIGNAL \SW_0_7|saida[6]~13_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~22\ : std_logic;
SIGNAL \processador|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \RAM1|ram~278_q\ : std_logic;
SIGNAL \RAM1|ram~118_q\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~580_combout\ : std_logic;
SIGNAL \RAM1|ram~62_q\ : std_logic;
SIGNAL \RAM1|ram~30_q\ : std_logic;
SIGNAL \RAM1|ram~555_combout\ : std_logic;
SIGNAL \RAM1|ram~38_q\ : std_logic;
SIGNAL \RAM1|ram~294_q\ : std_logic;
SIGNAL \RAM1|ram~556_combout\ : std_logic;
SIGNAL \RAM1|ram~526_q\ : std_logic;
SIGNAL \RAM1|ram~557_combout\ : std_logic;
SIGNAL \RAM1|ram~558_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \SW_0_7|saida[7]~14_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~26\ : std_logic;
SIGNAL \processador|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~18_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~26_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~34_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~42_q\ : std_logic;
SIGNAL \processador|BANCO_REGISTRADORES|registrador~50_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~26\ : std_logic;
SIGNAL \processador|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \processador|FLAG|DOUT~1_combout\ : std_logic;
SIGNAL \processador|FLAG|DOUT~2_combout\ : std_logic;
SIGNAL \processador|FLAG|DOUT~0_combout\ : std_logic;
SIGNAL \processador|FLAG|DOUT~q\ : std_logic;
SIGNAL \processador|MUX2|Equal1~0_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[6]~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~25_combout\ : std_logic;
SIGNAL \ROM1|memROM~26_combout\ : std_logic;
SIGNAL \processador|MUX2|Equal2~0_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[3]~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[2]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[1]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~18_combout\ : std_logic;
SIGNAL \ROM1|memROM~19_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[5]~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~17_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[4]~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~21_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~30\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[8]~8_combout\ : std_logic;
SIGNAL \decoderBloco|Equal7~0_combout\ : std_logic;
SIGNAL \RAM1|dado_out~0_combout\ : std_logic;
SIGNAL \KEY_3|saida[0]~8_combout\ : std_logic;
SIGNAL \SW_0_7|saida[1]~8_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|comb~0_combout\ : std_logic;
SIGNAL \logica_LED|comb~0_combout\ : std_logic;
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
SIGNAL \logica_Seven_Seg|comb~4_combout\ : std_logic;
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
SIGNAL \processador|MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \KEY_3|ALT_INV_saida[0]~7_combout\ : std_logic;
SIGNAL \KEY_3|ALT_INV_saida[0]~6_combout\ : std_logic;
SIGNAL \KEY_3|ALT_INV_saida[0]~5_combout\ : std_logic;
SIGNAL \KEY_3|ALT_INV_saida[0]~4_combout\ : std_logic;
SIGNAL \FF_DEBOUNCER_2|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \KEY_3|ALT_INV_saida[0]~3_combout\ : std_logic;
SIGNAL \logica_Seven_Seg|ALT_INV_comb~2_combout\ : std_logic;
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
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;

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
\processador|MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \processador|MUX1|saida_MUX[0]~0_combout\;
\KEY_3|ALT_INV_saida[0]~7_combout\ <= NOT \KEY_3|saida[0]~7_combout\;
\KEY_3|ALT_INV_saida[0]~6_combout\ <= NOT \KEY_3|saida[0]~6_combout\;
\KEY_3|ALT_INV_saida[0]~5_combout\ <= NOT \KEY_3|saida[0]~5_combout\;
\KEY_3|ALT_INV_saida[0]~4_combout\ <= NOT \KEY_3|saida[0]~4_combout\;
\FF_DEBOUNCER_2|ALT_INV_DOUT~q\ <= NOT \FF_DEBOUNCER_2|DOUT~q\;
\KEY_3|ALT_INV_saida[0]~3_combout\ <= NOT \KEY_3|saida[0]~3_combout\;
\logica_Seven_Seg|ALT_INV_comb~2_combout\ <= NOT \logica_Seven_Seg|comb~2_combout\;
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
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;

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
	o => \MEM_OUTT[0]~output_o\);

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
	o => \MEM_OUTT[1]~output_o\);

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
	o => \MEM_OUTT[2]~output_o\);

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
	o => \MEM_OUTT[3]~output_o\);

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
	o => \MEM_OUTT[4]~output_o\);

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
	o => \MEM_OUTT[5]~output_o\);

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
	o => \MEM_OUTT[6]~output_o\);

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
	o => \MEM_OUTT[7]~output_o\);

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
	o => \PC_OUT[0]~output_o\);

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
	o => \PC_OUT[1]~output_o\);

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
	o => \PC_OUT[2]~output_o\);

\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(3),
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
	i => \processador|PC|DOUT\(4),
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
	i => \processador|PC|DOUT\(5),
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
	i => \processador|PC|DOUT\(6),
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
	i => \processador|PC|DOUT\(7),
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
	i => \processador|PC|DOUT\(8),
	devoe => ww_devoe,
	o => \PC_OUT[8]~output_o\);

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
	o => \LEDR[0]~output_o\);

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
	o => \LEDR[1]~output_o\);

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
	o => \LEDR[2]~output_o\);

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
	o => \LEDR[3]~output_o\);

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
	o => \LEDR[4]~output_o\);

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
	o => \LEDR[5]~output_o\);

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
	o => \LEDR[6]~output_o\);

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
	o => \LEDR[7]~output_o\);

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
	o => \LEDR[8]~output_o\);

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
	o => \LEDR[9]~output_o\);

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
	o => \REGA_OUT[0]~output_o\);

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
	o => \REGA_OUT[1]~output_o\);

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
	o => \REGA_OUT[2]~output_o\);

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
	o => \REGA_OUT[3]~output_o\);

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
	o => \REGA_OUT[4]~output_o\);

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
	o => \REGA_OUT[5]~output_o\);

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
	o => \REGA_OUT[6]~output_o\);

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
	o => \REGA_OUT[7]~output_o\);

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
	o => \HabilitaRAM~output_o\);

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
	o => \MEM_ADDRESS[0]~output_o\);

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
	o => \MEM_ADDRESS[1]~output_o\);

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
	o => \MEM_ADDRESS[2]~output_o\);

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
	o => \MEM_ADDRESS[3]~output_o\);

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
	o => \MEM_ADDRESS[4]~output_o\);

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
	o => \MEM_ADDRESS[5]~output_o\);

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
	o => \MEM_ADDRESS[6]~output_o\);

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
	o => \MEM_ADDRESS[7]~output_o\);

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
	o => \MEM_ADDRESS[8]~output_o\);

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
	o => \enderecoR[0]~output_o\);

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
	o => \enderecoR[1]~output_o\);

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
	o => \HEX0[0]~output_o\);

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
	o => \HEX0[1]~output_o\);

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
	o => \HEX0[2]~output_o\);

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
	o => \HEX0[3]~output_o\);

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
	o => \HEX0[4]~output_o\);

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
	o => \HEX0[5]~output_o\);

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
	o => \HEX0[6]~output_o\);

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
	o => \HEX1[0]~output_o\);

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
	o => \HEX1[1]~output_o\);

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
	o => \HEX1[2]~output_o\);

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
	o => \HEX1[3]~output_o\);

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
	o => \HEX1[4]~output_o\);

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
	o => \HEX1[5]~output_o\);

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
	o => \HEX1[6]~output_o\);

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
	o => \HEX2[0]~output_o\);

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
	o => \HEX2[1]~output_o\);

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
	o => \HEX2[2]~output_o\);

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
	o => \HEX2[3]~output_o\);

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
	o => \HEX2[4]~output_o\);

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
	o => \HEX2[5]~output_o\);

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
	o => \HEX2[6]~output_o\);

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
	o => \HEX3[0]~output_o\);

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
	o => \HEX3[1]~output_o\);

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
	o => \HEX3[2]~output_o\);

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
	o => \HEX3[3]~output_o\);

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
	o => \HEX3[4]~output_o\);

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
	o => \HEX3[5]~output_o\);

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
	o => \HEX3[6]~output_o\);

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
	o => \HEX4[0]~output_o\);

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
	o => \HEX4[1]~output_o\);

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
	o => \HEX4[2]~output_o\);

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
	o => \HEX4[3]~output_o\);

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
	o => \HEX4[4]~output_o\);

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
	o => \HEX4[5]~output_o\);

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
	o => \HEX4[6]~output_o\);

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
	o => \HEX5[0]~output_o\);

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
	o => \HEX5[1]~output_o\);

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
	o => \HEX5[2]~output_o\);

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
	o => \HEX5[3]~output_o\);

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
	o => \HEX5[4]~output_o\);

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
	o => \HEX5[5]~output_o\);

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
	o => \HEX5[6]~output_o\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = (!\processador|PC|DOUT\(0) & (\processador|PC|DOUT\(3) & (!\processador|PC|DOUT\(1) $ (!\processador|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101000000000000010100000000000001010000000000000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~15_combout\);

\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = (!\processador|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & \ROM1|memROM~15_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \ROM1|memROM~16_combout\);

\ROM1|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~22_combout\ = (!\processador|PC|DOUT\(0) & (!\processador|PC|DOUT\(2) & ((!\processador|PC|DOUT\(1)) # (!\processador|PC|DOUT\(3))))) # (\processador|PC|DOUT\(0) & ((!\processador|PC|DOUT\(1) & (\processador|PC|DOUT\(2) & 
-- \processador|PC|DOUT\(3))) # (\processador|PC|DOUT\(1) & (!\processador|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000010010100101100001001010010110000100101001011000010010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~22_combout\);

\ROM1|memROM~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~23_combout\ = (\ROM1|memROM~4_combout\ & !\ROM1|memROM~22_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~22_combout\,
	combout => \ROM1|memROM~23_combout\);

\ROM1|memROM~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~24_combout\ = ( \processador|PC|DOUT\(4) & ( (!\processador|PC|DOUT\(0) & (!\processador|PC|DOUT\(1) & (!\processador|PC|DOUT\(2) & !\processador|PC|DOUT\(3)))) ) ) # ( !\processador|PC|DOUT\(4) & ( (!\processador|PC|DOUT\(0) & 
-- (\processador|PC|DOUT\(1) & (\processador|PC|DOUT\(2) & !\processador|PC|DOUT\(3)))) # (\processador|PC|DOUT\(0) & (\processador|PC|DOUT\(3) & ((!\processador|PC|DOUT\(1)) # (!\processador|PC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010100100000000000000000000010010101001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	datae => \processador|PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~24_combout\);

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = (!\processador|PC|DOUT\(1) & (\processador|PC|DOUT\(2) & (!\processador|PC|DOUT\(0) $ (!\processador|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001000000001000000100000000100000010000000010000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~7_combout\);

\ROM1|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~20_combout\ = (!\processador|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & \ROM1|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ROM1|memROM~20_combout\);

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

\ROM1|memROM~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~28_combout\ = (!\processador|PC|DOUT\(1) & (!\processador|PC|DOUT\(2) & (!\processador|PC|DOUT\(4) $ (!\processador|PC|DOUT\(3))))) # (\processador|PC|DOUT\(1) & (!\processador|PC|DOUT\(4) & (!\processador|PC|DOUT\(2) $ 
-- (!\processador|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001010100000010000101010000001000010101000000100001010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(4),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~28_combout\);

\ROM1|memROM~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~29_combout\ = (!\processador|PC|DOUT\(0) & (\ROM1|memROM~25_combout\ & \ROM1|memROM~28_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \ROM1|ALT_INV_memROM~25_combout\,
	datac => \ROM1|ALT_INV_memROM~28_combout\,
	combout => \ROM1|memROM~29_combout\);

\processador|LOG_DESVIO|SelMuxPC~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|LOG_DESVIO|SelMuxPC~0_combout\ = (\ROM1|memROM~23_combout\ & (!\ROM1|memROM~26_combout\ & (!\ROM1|memROM~27_combout\ & \ROM1|memROM~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~23_combout\,
	datab => \ROM1|ALT_INV_memROM~26_combout\,
	datac => \ROM1|ALT_INV_memROM~27_combout\,
	datad => \ROM1|ALT_INV_memROM~29_combout\,
	combout => \processador|LOG_DESVIO|SelMuxPC~0_combout\);

\processador|REG_RET|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|incrementaPC|Add0~29_sumout\,
	ena => \processador|LOG_DESVIO|SelMuxPC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(7));

\processador|MUX2|MUX_OUT[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[7]~7_combout\ = ( \processador|REG_RET|DOUT\(7) & ( (!\processador|MUX2|Equal2~0_combout\ & (((\processador|incrementaPC|Add0~29_sumout\)))) # (\processador|MUX2|Equal2~0_combout\ & (((!\processador|MUX2|Equal1~0_combout\)) # 
-- (\ROM1|memROM~17_combout\))) ) ) # ( !\processador|REG_RET|DOUT\(7) & ( (!\processador|MUX2|Equal2~0_combout\ & (((\processador|incrementaPC|Add0~29_sumout\)))) # (\processador|MUX2|Equal2~0_combout\ & (\ROM1|memROM~17_combout\ & 
-- (\processador|MUX2|Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \processador|MUX2|ALT_INV_Equal2~0_combout\,
	datac => \processador|MUX2|ALT_INV_Equal1~0_combout\,
	datad => \processador|incrementaPC|ALT_INV_Add0~29_sumout\,
	datae => \processador|REG_RET|ALT_INV_DOUT\(7),
	combout => \processador|MUX2|MUX_OUT[7]~7_combout\);

\processador|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX2|MUX_OUT[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(7));

\ROM1|memROM~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~36_combout\ = (!\processador|PC|DOUT\(0) & ((!\processador|PC|DOUT\(2) & ((\processador|PC|DOUT\(3)))) # (\processador|PC|DOUT\(2) & (\processador|PC|DOUT\(1) & !\processador|PC|DOUT\(3))))) # (\processador|PC|DOUT\(0) & 
-- (!\processador|PC|DOUT\(1) & (\processador|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011010100100000001101010010000000110101001000000011010100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~36_combout\);

\ROM1|memROM~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~27_combout\ = ( !\processador|PC|DOUT\(8) & ( !\ROM1|memROM~36_combout\ & ( (!\processador|PC|DOUT\(4) & (!\processador|PC|DOUT\(5) & (!\processador|PC|DOUT\(6) & !\processador|PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(4),
	datab => \processador|PC|ALT_INV_DOUT\(5),
	datac => \processador|PC|ALT_INV_DOUT\(6),
	datad => \processador|PC|ALT_INV_DOUT\(7),
	datae => \processador|PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~36_combout\,
	combout => \ROM1|memROM~27_combout\);

\processador|decoderInstru1|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida~1_combout\ = (!\ROM1|memROM~29_combout\ & (\ROM1|memROM~27_combout\ & (!\ROM1|memROM~26_combout\ & !\ROM1|memROM~23_combout\))) # (\ROM1|memROM~29_combout\ & (!\ROM1|memROM~27_combout\ & (\ROM1|memROM~26_combout\ & 
-- \ROM1|memROM~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000100001000000000010000100000000001000010000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~29_combout\,
	datab => \ROM1|ALT_INV_memROM~27_combout\,
	datac => \ROM1|ALT_INV_memROM~26_combout\,
	datad => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \processador|decoderInstru1|saida~1_combout\);

\processador|decoderInstru1|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida~0_combout\ = (!\ROM1|memROM~27_combout\ & (\ROM1|memROM~26_combout\ & (!\ROM1|memROM~29_combout\ $ (\ROM1|memROM~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000100000010000000010000001000000001000000100000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~29_combout\,
	datab => \ROM1|ALT_INV_memROM~27_combout\,
	datac => \ROM1|ALT_INV_memROM~26_combout\,
	datad => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \processador|decoderInstru1|saida~0_combout\);

\processador|decoderInstru1|Equal11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal11~0_combout\ = ( \ROM1|memROM~25_combout\ & ( \ROM1|memROM~28_combout\ & ( (\processador|PC|DOUT\(0) & (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~22_combout\ & !\ROM1|memROM~24_combout\))) ) ) ) # ( 
-- !\ROM1|memROM~25_combout\ & ( \ROM1|memROM~28_combout\ & ( (\ROM1|memROM~4_combout\ & !\ROM1|memROM~22_combout\) ) ) ) # ( \ROM1|memROM~25_combout\ & ( !\ROM1|memROM~28_combout\ & ( (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~22_combout\ & 
-- !\ROM1|memROM~24_combout\)) ) ) ) # ( !\ROM1|memROM~25_combout\ & ( !\ROM1|memROM~28_combout\ & ( (\ROM1|memROM~4_combout\ & !\ROM1|memROM~22_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000000000000110000001100000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~22_combout\,
	datad => \ROM1|ALT_INV_memROM~24_combout\,
	datae => \ROM1|ALT_INV_memROM~25_combout\,
	dataf => \ROM1|ALT_INV_memROM~28_combout\,
	combout => \processador|decoderInstru1|Equal11~0_combout\);

\processador|decoderInstru1|saida[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida[4]~2_combout\ = (!\processador|decoderInstru1|saida~1_combout\ & ((!\processador|decoderInstru1|Equal11~0_combout\) # (\ROM1|memROM~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000011010000110100001101000011010000110100001101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~27_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datac => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	combout => \processador|decoderInstru1|saida[4]~2_combout\);

\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = (!\processador|PC|DOUT\(0) & (\processador|PC|DOUT\(2) & ((!\processador|PC|DOUT\(1)) # (!\processador|PC|DOUT\(3))))) # (\processador|PC|DOUT\(0) & ((!\processador|PC|DOUT\(1) & ((\processador|PC|DOUT\(3)))) # 
-- (\processador|PC|DOUT\(1) & (!\processador|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101001011100000110100101110000011010010111000001101001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~9_combout\);

\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( \ROM1|memROM~18_combout\ & ( (!\processador|PC|DOUT\(8) & \ROM1|memROM~1_combout\) ) ) # ( !\ROM1|memROM~18_combout\ & ( (!\processador|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & ((\ROM1|memROM~11_combout\) # 
-- (\ROM1|memROM~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010001000100010001000000010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~18_combout\,
	combout => \comb~0_combout\);

\processador|decoderInstru1|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida~3_combout\ = (\ROM1|memROM~29_combout\ & (!\ROM1|memROM~27_combout\ & (!\ROM1|memROM~26_combout\ $ (\ROM1|memROM~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000100010000000000010001000000000001000100000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~29_combout\,
	datab => \ROM1|ALT_INV_memROM~27_combout\,
	datac => \ROM1|ALT_INV_memROM~26_combout\,
	datad => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \processador|decoderInstru1|saida~3_combout\);

\processador|decoderInstru1|saida~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida~4_combout\ = (!\ROM1|memROM~27_combout\ & (!\ROM1|memROM~29_combout\ & ((\ROM1|memROM~26_combout\) # (\ROM1|memROM~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000000011100000000000001110000000000000111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~23_combout\,
	datab => \ROM1|ALT_INV_memROM~26_combout\,
	datac => \ROM1|ALT_INV_memROM~27_combout\,
	datad => \ROM1|ALT_INV_memROM~29_combout\,
	combout => \processador|decoderInstru1|saida~4_combout\);

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = (\processador|PC|DOUT\(2) & ((!\processador|PC|DOUT\(0) & ((\processador|PC|DOUT\(3)))) # (\processador|PC|DOUT\(0) & ((!\processador|PC|DOUT\(3)) # (\processador|PC|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001011000001010000101100000101000010110000010100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~6_combout\);

\KEY_3|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \KEY_3|saida[0]~1_combout\ = ( !\ROM1|memROM~8_combout\ & ( (!\processador|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~6_combout\ & \ROM1|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \KEY_3|saida[0]~1_combout\);

\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = ( \KEY_3|saida[0]~1_combout\ & ( (!\ROM1|memROM~14_combout\ & (!\comb~0_combout\ & ((\processador|decoderInstru1|saida~4_combout\) # (\processador|decoderInstru1|saida~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010001000100000000000000000000000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \processador|decoderInstru1|ALT_INV_saida~3_combout\,
	datad => \processador|decoderInstru1|ALT_INV_saida~4_combout\,
	datae => \KEY_3|ALT_INV_saida[0]~1_combout\,
	combout => \comb~2_combout\);

\RAM1|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~563_combout\ = ( !\processador|PC|DOUT\(8) & ( (\ROM1|memROM~1_combout\ & (\processador|PC|DOUT\(0) & (\processador|PC|DOUT\(3) & !\processador|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(0),
	datac => \processador|PC|ALT_INV_DOUT\(3),
	datad => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|PC|ALT_INV_DOUT\(8),
	combout => \RAM1|ram~563_combout\);

\RAM1|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~564_combout\ = (\decoderBloco|Equal7~0_combout\ & (\ROM1|memROM~27_combout\ & (\processador|decoderInstru1|Equal11~0_combout\ & \RAM1|ram~563_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datab => \ROM1|ALT_INV_memROM~27_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datad => \RAM1|ALT_INV_ram~563_combout\,
	combout => \RAM1|ram~564_combout\);

\RAM1|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~47_combout\,
	ena => \RAM1|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~59_q\);

\RAM1|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~559_combout\ = ( \processador|PC|DOUT\(1) & ( !\processador|PC|DOUT\(8) & ( (\ROM1|memROM~1_combout\ & (((\processador|PC|DOUT\(2)) # (\processador|PC|DOUT\(3))) # (\processador|PC|DOUT\(0)))) ) ) ) # ( !\processador|PC|DOUT\(1) & ( 
-- !\processador|PC|DOUT\(8) & ( (\ROM1|memROM~1_combout\ & (((\processador|PC|DOUT\(0) & \processador|PC|DOUT\(3))) # (\processador|PC|DOUT\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010101000101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(0),
	datac => \processador|PC|ALT_INV_DOUT\(3),
	datad => \processador|PC|ALT_INV_DOUT\(2),
	datae => \processador|PC|ALT_INV_DOUT\(1),
	dataf => \processador|PC|ALT_INV_DOUT\(8),
	combout => \RAM1|ram~559_combout\);

\RAM1|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~560_combout\ = (\decoderBloco|Equal7~0_combout\ & (\ROM1|memROM~27_combout\ & (\processador|decoderInstru1|Equal11~0_combout\ & !\RAM1|ram~559_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datab => \ROM1|ALT_INV_memROM~27_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datad => \RAM1|ALT_INV_ram~559_combout\,
	combout => \RAM1|ram~560_combout\);

\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~47_combout\,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

\RAM1|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~561_combout\ = ( \processador|PC|DOUT\(1) & ( !\processador|PC|DOUT\(8) & ( (\ROM1|memROM~1_combout\ & (!\processador|PC|DOUT\(3) & (!\processador|PC|DOUT\(0) $ (!\processador|PC|DOUT\(2))))) ) ) ) # ( !\processador|PC|DOUT\(1) & ( 
-- !\processador|PC|DOUT\(8) & ( (\ROM1|memROM~1_combout\ & (\processador|PC|DOUT\(2) & (!\processador|PC|DOUT\(0) $ (\processador|PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000001000100000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(0),
	datac => \processador|PC|ALT_INV_DOUT\(3),
	datad => \processador|PC|ALT_INV_DOUT\(2),
	datae => \processador|PC|ALT_INV_DOUT\(1),
	dataf => \processador|PC|ALT_INV_DOUT\(8),
	combout => \RAM1|ram~561_combout\);

\RAM1|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~562_combout\ = (\decoderBloco|Equal7~0_combout\ & (\ROM1|memROM~27_combout\ & (\processador|decoderInstru1|Equal11~0_combout\ & \RAM1|ram~561_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datab => \ROM1|ALT_INV_memROM~27_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datad => \RAM1|ALT_INV_ram~561_combout\,
	combout => \RAM1|ram~562_combout\);

\RAM1|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~47_combout\,
	ena => \RAM1|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~27_q\);

\RAM1|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~540_combout\ = ( \ROM1|memROM~10_combout\ & ( !\ROM1|memROM~17_combout\ & ( \RAM1|ram~27_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~17_combout\ & ( \RAM1|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~19_q\,
	datab => \RAM1|ALT_INV_ram~27_q\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~540_combout\);

\RAM1|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~565_combout\ = ( \processador|PC|DOUT\(1) & ( !\processador|PC|DOUT\(8) & ( (\ROM1|memROM~1_combout\ & (!\processador|PC|DOUT\(0) & (\processador|PC|DOUT\(3) & !\processador|PC|DOUT\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(0),
	datac => \processador|PC|ALT_INV_DOUT\(3),
	datad => \processador|PC|ALT_INV_DOUT\(2),
	datae => \processador|PC|ALT_INV_DOUT\(1),
	dataf => \processador|PC|ALT_INV_DOUT\(8),
	combout => \RAM1|ram~565_combout\);

\RAM1|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~566_combout\ = (\decoderBloco|Equal7~0_combout\ & (\ROM1|memROM~27_combout\ & (\processador|decoderInstru1|Equal11~0_combout\ & \RAM1|ram~565_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datab => \ROM1|ALT_INV_memROM~27_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datad => \RAM1|ALT_INV_ram~565_combout\,
	combout => \RAM1|ram~566_combout\);

\RAM1|ram~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~47_combout\,
	ena => \RAM1|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~115_q\);

\RAM1|ram~588\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~588_combout\ = ( !\ROM1|memROM~10_combout\ & ( (!\ROM1|memROM~16_combout\ & ((((!\ROM1|memROM~14_combout\ & \RAM1|ram~540_combout\))))) # (\ROM1|memROM~16_combout\ & (!\ROM1|memROM~17_combout\ & (\RAM1|ram~115_q\ & (\ROM1|memROM~14_combout\)))) 
-- ) ) # ( \ROM1|memROM~10_combout\ & ( (!\ROM1|memROM~16_combout\ & ((!\ROM1|memROM~14_combout\ & (((\RAM1|ram~540_combout\)))) # (\ROM1|memROM~14_combout\ & (!\ROM1|memROM~17_combout\ & (\RAM1|ram~59_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000010000000000000100011001100000000101100110000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \RAM1|ALT_INV_ram~59_q\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \RAM1|ALT_INV_ram~540_combout\,
	datag => \RAM1|ALT_INV_ram~115_q\,
	combout => \RAM1|ram~588_combout\);

\RAM1|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~569_combout\ = ( !\processador|PC|DOUT\(8) & ( (\ROM1|memROM~1_combout\ & (\processador|PC|DOUT\(0) & (!\processador|PC|DOUT\(3) & \processador|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(0),
	datac => \processador|PC|ALT_INV_DOUT\(3),
	datad => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|PC|ALT_INV_DOUT\(8),
	combout => \RAM1|ram~569_combout\);

\RAM1|ram~570\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~570_combout\ = (\decoderBloco|Equal7~0_combout\ & (\ROM1|memROM~27_combout\ & (\processador|decoderInstru1|Equal11~0_combout\ & \RAM1|ram~569_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datab => \ROM1|ALT_INV_memROM~27_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datad => \RAM1|ALT_INV_ram~569_combout\,
	combout => \RAM1|ram~570_combout\);

\RAM1|ram~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~47_combout\,
	ena => \RAM1|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~275_q\);

\RAM1|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~541_combout\ = ( !\ROM1|memROM~16_combout\ & ( (\RAM1|ram~275_q\ & (!\ROM1|memROM~17_combout\ & (!\ROM1|memROM~14_combout\ & !\ROM1|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~275_q\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \RAM1|ram~541_combout\);

\RAM1|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~567_combout\ = ( \processador|PC|DOUT\(1) & ( !\processador|PC|DOUT\(8) & ( (\ROM1|memROM~1_combout\ & (!\processador|PC|DOUT\(0) & (\processador|PC|DOUT\(3) & \processador|PC|DOUT\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(0),
	datac => \processador|PC|ALT_INV_DOUT\(3),
	datad => \processador|PC|ALT_INV_DOUT\(2),
	datae => \processador|PC|ALT_INV_DOUT\(1),
	dataf => \processador|PC|ALT_INV_DOUT\(8),
	combout => \RAM1|ram~567_combout\);

\RAM1|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~568_combout\ = (\decoderBloco|Equal7~0_combout\ & (\ROM1|memROM~27_combout\ & (\processador|decoderInstru1|Equal11~0_combout\ & \RAM1|ram~567_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datab => \ROM1|ALT_INV_memROM~27_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datad => \RAM1|ALT_INV_ram~567_combout\,
	combout => \RAM1|ram~568_combout\);

\RAM1|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~47_combout\,
	ena => \RAM1|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~35_q\);

\RAM1|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~542_combout\ = ( !\ROM1|memROM~14_combout\ & ( (\RAM1|ram~35_q\ & (!\ROM1|memROM~17_combout\ & (!\ROM1|memROM~16_combout\ & !\ROM1|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~35_q\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM1|ram~542_combout\);

\RAM1|ram~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~573_combout\ = ( !\processador|PC|DOUT\(1) & ( !\processador|PC|DOUT\(8) & ( (\ROM1|memROM~1_combout\ & (!\processador|PC|DOUT\(0) & (\processador|PC|DOUT\(3) & \processador|PC|DOUT\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(0),
	datac => \processador|PC|ALT_INV_DOUT\(3),
	datad => \processador|PC|ALT_INV_DOUT\(2),
	datae => \processador|PC|ALT_INV_DOUT\(1),
	dataf => \processador|PC|ALT_INV_DOUT\(8),
	combout => \RAM1|ram~573_combout\);

\RAM1|ram~574\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~574_combout\ = (\decoderBloco|Equal7~0_combout\ & (\ROM1|memROM~27_combout\ & (\processador|decoderInstru1|Equal11~0_combout\ & \RAM1|ram~573_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datab => \ROM1|ALT_INV_memROM~27_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datad => \RAM1|ALT_INV_ram~573_combout\,
	combout => \RAM1|ram~574_combout\);

\RAM1|ram~523\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~47_combout\,
	ena => \RAM1|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~523_q\);

\RAM1|ram~571\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~571_combout\ = ( \processador|PC|DOUT\(1) & ( !\processador|PC|DOUT\(8) & ( (\ROM1|memROM~1_combout\ & (\processador|PC|DOUT\(0) & (\processador|PC|DOUT\(3) & \processador|PC|DOUT\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(0),
	datac => \processador|PC|ALT_INV_DOUT\(3),
	datad => \processador|PC|ALT_INV_DOUT\(2),
	datae => \processador|PC|ALT_INV_DOUT\(1),
	dataf => \processador|PC|ALT_INV_DOUT\(8),
	combout => \RAM1|ram~571_combout\);

\RAM1|ram~572\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~572_combout\ = (\decoderBloco|Equal7~0_combout\ & (\ROM1|memROM~27_combout\ & (\processador|decoderInstru1|Equal11~0_combout\ & \RAM1|ram~571_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datab => \ROM1|ALT_INV_memROM~27_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datad => \RAM1|ALT_INV_ram~571_combout\,
	combout => \RAM1|ram~572_combout\);

\RAM1|ram~291\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~47_combout\,
	ena => \RAM1|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~291_q\);

\RAM1|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~543_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~16_combout\ & ( (\RAM1|ram~523_q\ & (\ROM1|memROM~10_combout\ & \ROM1|memROM~17_combout\)) ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~16_combout\ & ( 
-- (!\ROM1|memROM~10_combout\ & (!\ROM1|memROM~17_combout\ & \RAM1|ram~291_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~523_q\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \RAM1|ALT_INV_ram~291_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \RAM1|ram~543_combout\);

\RAM1|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~544_combout\ = ( \ROM1|memROM~19_combout\ & ( \ROM1|memROM~12_combout\ & ( \RAM1|ram~543_combout\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( \ROM1|memROM~12_combout\ & ( \RAM1|ram~542_combout\ ) ) ) # ( \ROM1|memROM~19_combout\ & ( 
-- !\ROM1|memROM~12_combout\ & ( \RAM1|ram~541_combout\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( !\ROM1|memROM~12_combout\ & ( \RAM1|ram~588_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~588_combout\,
	datab => \RAM1|ALT_INV_ram~541_combout\,
	datac => \RAM1|ALT_INV_ram~542_combout\,
	datad => \RAM1|ALT_INV_ram~543_combout\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~544_combout\);

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\processador|MUX1|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[4]~4_combout\ = ( \RAM1|ram~544_combout\ & ( \SW[4]~input_o\ & ( (!\ROM1|memROM~17_combout\ & \processador|decoderInstru1|saida~1_combout\) ) ) ) # ( !\RAM1|ram~544_combout\ & ( \SW[4]~input_o\ & ( 
-- (!\processador|decoderInstru1|saida~1_combout\ & ((\RAM1|dado_out~0_combout\))) # (\processador|decoderInstru1|saida~1_combout\ & (!\ROM1|memROM~17_combout\)) ) ) ) # ( \RAM1|ram~544_combout\ & ( !\SW[4]~input_o\ & ( 
-- (!\processador|decoderInstru1|saida~1_combout\ & ((\comb~2_combout\))) # (\processador|decoderInstru1|saida~1_combout\ & (!\ROM1|memROM~17_combout\)) ) ) ) # ( !\RAM1|ram~544_combout\ & ( !\SW[4]~input_o\ & ( (!\processador|decoderInstru1|saida~1_combout\ 
-- & (((\RAM1|dado_out~0_combout\) # (\comb~2_combout\)))) # (\processador|decoderInstru1|saida~1_combout\ & (!\ROM1|memROM~17_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111011101110001011100010111000100010111011100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datac => \ALT_INV_comb~2_combout\,
	datad => \RAM1|ALT_INV_dado_out~0_combout\,
	datae => \RAM1|ALT_INV_ram~544_combout\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \processador|MUX1|saida_MUX[4]~4_combout\);

\SW_0_7|saida[4]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_0_7|saida[4]~11_combout\ = (!\comb~2_combout\ & ((!\RAM1|dado_out~0_combout\) # ((\RAM1|ram~544_combout\)))) # (\comb~2_combout\ & (\SW[4]~input_o\ & ((!\RAM1|dado_out~0_combout\) # (\RAM1|ram~544_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101011001111100010101100111110001010110011111000101011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~2_combout\,
	datab => \RAM1|ALT_INV_dado_out~0_combout\,
	datac => \RAM1|ALT_INV_ram~544_combout\,
	datad => \ALT_INV_SW[4]~input_o\,
	combout => \SW_0_7|saida[4]~11_combout\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\processador|MUX1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[3]~3_combout\ = ( \RAM1|ram~539_combout\ & ( \SW[3]~input_o\ & ( (!\ROM1|memROM~16_combout\ & \processador|decoderInstru1|saida~1_combout\) ) ) ) # ( !\RAM1|ram~539_combout\ & ( \SW[3]~input_o\ & ( 
-- (!\processador|decoderInstru1|saida~1_combout\ & ((\RAM1|dado_out~0_combout\))) # (\processador|decoderInstru1|saida~1_combout\ & (!\ROM1|memROM~16_combout\)) ) ) ) # ( \RAM1|ram~539_combout\ & ( !\SW[3]~input_o\ & ( 
-- (!\processador|decoderInstru1|saida~1_combout\ & ((\comb~2_combout\))) # (\processador|decoderInstru1|saida~1_combout\ & (!\ROM1|memROM~16_combout\)) ) ) ) # ( !\RAM1|ram~539_combout\ & ( !\SW[3]~input_o\ & ( (!\processador|decoderInstru1|saida~1_combout\ 
-- & (((\RAM1|dado_out~0_combout\) # (\comb~2_combout\)))) # (\processador|decoderInstru1|saida~1_combout\ & (!\ROM1|memROM~16_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111011101110001011100010111000100010111011100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datac => \ALT_INV_comb~2_combout\,
	datad => \RAM1|ALT_INV_dado_out~0_combout\,
	datae => \RAM1|ALT_INV_ram~539_combout\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \processador|MUX1|saida_MUX[3]~3_combout\);

\ROM1|memROM~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~33_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~15_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \ROM1|memROM~33_combout\);

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\processador|MUX1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[2]~2_combout\ = ( \RAM1|ram~535_combout\ & ( \SW[2]~input_o\ & ( (!\ROM1|memROM~14_combout\ & \processador|decoderInstru1|saida~1_combout\) ) ) ) # ( !\RAM1|ram~535_combout\ & ( \SW[2]~input_o\ & ( 
-- (!\processador|decoderInstru1|saida~1_combout\ & ((\RAM1|dado_out~0_combout\))) # (\processador|decoderInstru1|saida~1_combout\ & (!\ROM1|memROM~14_combout\)) ) ) ) # ( \RAM1|ram~535_combout\ & ( !\SW[2]~input_o\ & ( 
-- (!\processador|decoderInstru1|saida~1_combout\ & ((\comb~2_combout\))) # (\processador|decoderInstru1|saida~1_combout\ & (!\ROM1|memROM~14_combout\)) ) ) ) # ( !\RAM1|ram~535_combout\ & ( !\SW[2]~input_o\ & ( (!\processador|decoderInstru1|saida~1_combout\ 
-- & (((\RAM1|dado_out~0_combout\) # (\comb~2_combout\)))) # (\processador|decoderInstru1|saida~1_combout\ & (!\ROM1|memROM~14_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111011101110001011100010111000100010111011100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datac => \ALT_INV_comb~2_combout\,
	datad => \RAM1|ALT_INV_dado_out~0_combout\,
	datae => \RAM1|ALT_INV_ram~535_combout\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \processador|MUX1|saida_MUX[2]~2_combout\);

\ROM1|memROM~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~32_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~13_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \ROM1|memROM~32_combout\);

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\processador|MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[1]~1_combout\ = ( \RAM1|ram~531_combout\ & ( \SW[1]~input_o\ & ( (!\ROM1|memROM~12_combout\ & \processador|decoderInstru1|saida~1_combout\) ) ) ) # ( !\RAM1|ram~531_combout\ & ( \SW[1]~input_o\ & ( 
-- (!\processador|decoderInstru1|saida~1_combout\ & ((\RAM1|dado_out~0_combout\))) # (\processador|decoderInstru1|saida~1_combout\ & (!\ROM1|memROM~12_combout\)) ) ) ) # ( \RAM1|ram~531_combout\ & ( !\SW[1]~input_o\ & ( 
-- (!\processador|decoderInstru1|saida~1_combout\ & ((\comb~2_combout\))) # (\processador|decoderInstru1|saida~1_combout\ & (!\ROM1|memROM~12_combout\)) ) ) ) # ( !\RAM1|ram~531_combout\ & ( !\SW[1]~input_o\ & ( (!\processador|decoderInstru1|saida~1_combout\ 
-- & (((\RAM1|dado_out~0_combout\) # (\comb~2_combout\)))) # (\processador|decoderInstru1|saida~1_combout\ & (!\ROM1|memROM~12_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111011101110001011100010111000100010111011100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datac => \ALT_INV_comb~2_combout\,
	datad => \RAM1|ALT_INV_dado_out~0_combout\,
	datae => \RAM1|ALT_INV_ram~531_combout\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \processador|MUX1|saida_MUX[1]~1_combout\);

\ROM1|memROM~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~31_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~11_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \ROM1|memROM~31_combout\);

\KEY_3|saida[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \KEY_3|saida[0]~2_combout\ = ( \ROM1|memROM~23_combout\ & ( (\KEY_3|saida[0]~1_combout\ & (!\ROM1|memROM~27_combout\ & ((!\ROM1|memROM~29_combout\) # (\ROM1|memROM~26_combout\)))) ) ) # ( !\ROM1|memROM~23_combout\ & ( (\KEY_3|saida[0]~1_combout\ & 
-- (!\ROM1|memROM~27_combout\ & (!\ROM1|memROM~29_combout\ $ (!\ROM1|memROM~26_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001000000010000000101000000010000010000000100000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_3|ALT_INV_saida[0]~1_combout\,
	datab => \ROM1|ALT_INV_memROM~29_combout\,
	datac => \ROM1|ALT_INV_memROM~27_combout\,
	datad => \ROM1|ALT_INV_memROM~26_combout\,
	datae => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \KEY_3|saida[0]~2_combout\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\KEY_3|saida[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \KEY_3|saida[0]~9_combout\ = (!\processador|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~6_combout\ & \ROM1|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \KEY_3|saida[0]~9_combout\);

\RESET_511~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RESET_511~1_combout\ = (!\processador|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~9_combout\ & \ROM1|memROM~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RESET_511~1_combout\);

\RESET_511~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RESET_511~0_combout\ = ( \ROM1|memROM~18_combout\ & ( (!\processador|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~8_combout\ & \ROM1|memROM~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~18_combout\,
	combout => \RESET_511~0_combout\);

\RESET_511~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \RESET_511~2_combout\ = ( \RESET_511~1_combout\ & ( \RESET_511~0_combout\ & ( (\ROM1|memROM~14_combout\ & (\ROM1|memROM~27_combout\ & (\processador|decoderInstru1|Equal11~0_combout\ & \KEY_3|saida[0]~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~27_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datad => \KEY_3|ALT_INV_saida[0]~9_combout\,
	datae => \ALT_INV_RESET_511~1_combout\,
	dataf => \ALT_INV_RESET_511~0_combout\,
	combout => \RESET_511~2_combout\);

\FF_DEBOUNCER_0|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	clrn => \ALT_INV_RESET_511~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF_DEBOUNCER_0|DOUT~q\);

\logica_Seven_Seg|comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|comb~2_combout\ = ( \ROM1|memROM~18_combout\ & ( (!\processador|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~9_combout\ & !\ROM1|memROM~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~18_combout\,
	combout => \logica_Seven_Seg|comb~2_combout\);

\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

\KEY_3|saida[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \KEY_3|saida[0]~3_combout\ = ( \FPGA_RESET_N~input_o\ & ( (!\ROM1|memROM~14_combout\ & (\KEY_3|saida[0]~2_combout\ & (!\FF_DEBOUNCER_0|DOUT~q\ & \logica_Seven_Seg|comb~2_combout\))) ) ) # ( !\FPGA_RESET_N~input_o\ & ( (\KEY_3|saida[0]~2_combout\ & 
-- (\logica_Seven_Seg|comb~2_combout\ & ((!\FF_DEBOUNCER_0|DOUT~q\) # (\ROM1|memROM~14_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110001000000000010000000000000001100010000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \KEY_3|ALT_INV_saida[0]~2_combout\,
	datac => \FF_DEBOUNCER_0|ALT_INV_DOUT~q\,
	datad => \logica_Seven_Seg|ALT_INV_comb~2_combout\,
	datae => \ALT_INV_FPGA_RESET_N~input_o\,
	combout => \KEY_3|saida[0]~3_combout\);

\RESET_510~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RESET_510~0_combout\ = (!\processador|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~9_combout\ & \ROM1|memROM~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RESET_510~0_combout\);

\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ( \ROM1|memROM~26_combout\ & ( \ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~14_combout\ & (\KEY_3|saida[0]~1_combout\ & !\ROM1|memROM~27_combout\)) ) ) ) # ( !\ROM1|memROM~26_combout\ & ( \ROM1|memROM~23_combout\ & ( 
-- (!\ROM1|memROM~14_combout\ & (\KEY_3|saida[0]~1_combout\ & (!\ROM1|memROM~29_combout\ & !\ROM1|memROM~27_combout\))) ) ) ) # ( \ROM1|memROM~26_combout\ & ( !\ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~14_combout\ & (\KEY_3|saida[0]~1_combout\ & 
-- (!\ROM1|memROM~29_combout\ & !\ROM1|memROM~27_combout\))) ) ) ) # ( !\ROM1|memROM~26_combout\ & ( !\ROM1|memROM~23_combout\ & ( (!\ROM1|memROM~14_combout\ & (\KEY_3|saida[0]~1_combout\ & (\ROM1|memROM~29_combout\ & !\ROM1|memROM~27_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000001000000000000000100000000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \KEY_3|ALT_INV_saida[0]~1_combout\,
	datac => \ROM1|ALT_INV_memROM~29_combout\,
	datad => \ROM1|ALT_INV_memROM~27_combout\,
	datae => \ROM1|ALT_INV_memROM~26_combout\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \comb~1_combout\);

\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\RESET_508~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RESET_508~0_combout\ = (!\processador|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & ((\ROM1|memROM~11_combout\) # (\ROM1|memROM~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010000000100010001000000010001000100000001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RESET_508~0_combout\);

\RESET_508~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RESET_508~1_combout\ = ( !\RESET_508~0_combout\ & ( \RESET_511~0_combout\ & ( (\ROM1|memROM~14_combout\ & (\ROM1|memROM~27_combout\ & (\processador|decoderInstru1|Equal11~0_combout\ & \KEY_3|saida[0]~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~27_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datad => \KEY_3|ALT_INV_saida[0]~9_combout\,
	datae => \ALT_INV_RESET_508~0_combout\,
	dataf => \ALT_INV_RESET_511~0_combout\,
	combout => \RESET_508~1_combout\);

\FF_DEBOUNCER_2|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => VCC,
	clrn => \ALT_INV_RESET_508~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF_DEBOUNCER_2|DOUT~q\);

\KEY_3|saida[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \KEY_3|saida[0]~4_combout\ = ( \FF_DEBOUNCER_2|DOUT~q\ & ( (!\ROM1|memROM~19_combout\ & (\RESET_510~0_combout\ & (\comb~1_combout\ & !\SW[9]~input_o\))) ) ) # ( !\FF_DEBOUNCER_2|DOUT~q\ & ( (\RESET_510~0_combout\ & (\comb~1_combout\ & ((!\SW[9]~input_o\) 
-- # (\ROM1|memROM~19_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000001000000100000000000000011000000010000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ALT_INV_RESET_510~0_combout\,
	datac => \ALT_INV_comb~1_combout\,
	datad => \ALT_INV_SW[9]~input_o\,
	datae => \FF_DEBOUNCER_2|ALT_INV_DOUT~q\,
	combout => \KEY_3|saida[0]~4_combout\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\KEY_3|saida[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \KEY_3|saida[0]~5_combout\ = ( \comb~1_combout\ & ( \SW[8]~input_o\ & ( (!\ROM1|memROM~10_combout\ & (!\ROM1|memROM~12_combout\ & (!\ROM1|memROM~19_combout\ & !\SW[0]~input_o\))) # (\ROM1|memROM~10_combout\ & (\ROM1|memROM~12_combout\ & 
-- (\ROM1|memROM~19_combout\))) ) ) ) # ( \comb~1_combout\ & ( !\SW[8]~input_o\ & ( (!\ROM1|memROM~10_combout\ & (!\ROM1|memROM~12_combout\ & (!\ROM1|memROM~19_combout\ & !\SW[0]~input_o\))) # (\ROM1|memROM~10_combout\ & (!\ROM1|memROM~12_combout\ $ 
-- ((\ROM1|memROM~19_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000010100000100000000000000001000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_comb~1_combout\,
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \KEY_3|saida[0]~5_combout\);

\KEY_3|saida[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \KEY_3|saida[0]~6_combout\ = ( !\KEY_3|saida[0]~4_combout\ & ( !\KEY_3|saida[0]~5_combout\ & ( !\KEY_3|saida[0]~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \KEY_3|ALT_INV_saida[0]~3_combout\,
	datae => \KEY_3|ALT_INV_saida[0]~4_combout\,
	dataf => \KEY_3|ALT_INV_saida[0]~5_combout\,
	combout => \KEY_3|saida[0]~6_combout\);

\KEY_3|saida[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \KEY_3|saida[0]~7_combout\ = ( \KEY_3|saida[0]~2_combout\ & ( \RAM1|dado_out~0_combout\ ) ) # ( !\KEY_3|saida[0]~2_combout\ & ( \RAM1|dado_out~0_combout\ ) ) # ( \KEY_3|saida[0]~2_combout\ & ( !\RAM1|dado_out~0_combout\ & ( (!\ROM1|memROM~10_combout\ & 
-- ((!\ROM1|memROM~14_combout\) # ((!\ROM1|memROM~12_combout\ & \ROM1|memROM~19_combout\)))) # (\ROM1|memROM~10_combout\ & (!\ROM1|memROM~14_combout\ & ((!\ROM1|memROM~12_combout\) # (\ROM1|memROM~19_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000001111100011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \KEY_3|ALT_INV_saida[0]~2_combout\,
	dataf => \RAM1|ALT_INV_dado_out~0_combout\,
	combout => \KEY_3|saida[0]~7_combout\);

\processador|MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[0]~0_combout\ = ( \KEY_3|saida[0]~6_combout\ & ( \KEY_3|saida[0]~7_combout\ & ( (!\processador|decoderInstru1|saida~1_combout\ & (((\RAM1|dado_out~0_combout\ & !\RAM1|ram~527_combout\)))) # 
-- (\processador|decoderInstru1|saida~1_combout\ & (!\ROM1|memROM~10_combout\)) ) ) ) # ( !\KEY_3|saida[0]~6_combout\ & ( \KEY_3|saida[0]~7_combout\ & ( (!\ROM1|memROM~10_combout\) # (!\processador|decoderInstru1|saida~1_combout\) ) ) ) # ( 
-- \KEY_3|saida[0]~6_combout\ & ( !\KEY_3|saida[0]~7_combout\ & ( (!\ROM1|memROM~10_combout\ & \processador|decoderInstru1|saida~1_combout\) ) ) ) # ( !\KEY_3|saida[0]~6_combout\ & ( !\KEY_3|saida[0]~7_combout\ & ( (!\ROM1|memROM~10_combout\ & 
-- \processador|decoderInstru1|saida~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001011101110111011100010111000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datac => \RAM1|ALT_INV_dado_out~0_combout\,
	datad => \RAM1|ALT_INV_ram~527_combout\,
	datae => \KEY_3|ALT_INV_saida[0]~6_combout\,
	dataf => \KEY_3|ALT_INV_saida[0]~7_combout\,
	combout => \processador|MUX1|saida_MUX[0]~0_combout\);

\ROM1|memROM~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~30_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~9_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ROM1|memROM~30_combout\);

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

\processador|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~1_sumout\ = SUM(( \processador|BANCO_REGISTRADORES|registrador~43_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & (!\KEY_3|saida[0]~11_combout\)) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (((!\ROM1|memROM~30_combout\) # (\processador|PC|DOUT\(8))))) ) + ( \processador|ULA1|Add1~34_cout\ ))
-- \processador|ULA1|Add1~2\ = CARRY(( \processador|BANCO_REGISTRADORES|registrador~43_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & (!\KEY_3|saida[0]~11_combout\)) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (((!\ROM1|memROM~30_combout\) # (\processador|PC|DOUT\(8))))) ) + ( \processador|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100111001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datab => \KEY_3|ALT_INV_saida[0]~11_combout\,
	datac => \processador|PC|ALT_INV_DOUT\(8),
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	dataf => \ROM1|ALT_INV_memROM~30_combout\,
	cin => \processador|ULA1|Add1~34_cout\,
	sumout => \processador|ULA1|Add1~1_sumout\,
	cout => \processador|ULA1|Add1~2\);

\processador|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[0]~0_combout\ = ( \processador|ULA1|Add0~1_sumout\ & ( \processador|ULA1|Add1~1_sumout\ & ( ((!\processador|MUX1|saida_MUX[0]~0_combout\ & ((!\processador|decoderInstru1|saida~0_combout\) # 
-- (\processador|BANCO_REGISTRADORES|registrador~43_combout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\) ) ) ) # ( !\processador|ULA1|Add0~1_sumout\ & ( \processador|ULA1|Add1~1_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\ & 
-- (!\processador|MUX1|saida_MUX[0]~0_combout\ & ((!\processador|decoderInstru1|saida~0_combout\) # (\processador|BANCO_REGISTRADORES|registrador~43_combout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\ & 
-- (!\processador|decoderInstru1|saida~0_combout\)) ) ) ) # ( \processador|ULA1|Add0~1_sumout\ & ( !\processador|ULA1|Add1~1_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\ & (!\processador|MUX1|saida_MUX[0]~0_combout\ & 
-- ((!\processador|decoderInstru1|saida~0_combout\) # (\processador|BANCO_REGISTRADORES|registrador~43_combout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\ & (\processador|decoderInstru1|saida~0_combout\)) ) ) ) # ( 
-- !\processador|ULA1|Add0~1_sumout\ & ( !\processador|ULA1|Add1~1_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\ & (!\processador|MUX1|saida_MUX[0]~0_combout\ & ((!\processador|decoderInstru1|saida~0_combout\) # 
-- (\processador|BANCO_REGISTRADORES|registrador~43_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000000000101101010000010110111010000010101011111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~0_combout\,
	datab => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datac => \processador|decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datad => \processador|MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datae => \processador|ULA1|ALT_INV_Add0~1_sumout\,
	dataf => \processador|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \processador|ULA1|saida[0]~0_combout\);

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (!\processador|PC|DOUT\(2) & (!\processador|PC|DOUT\(0) & (!\processador|PC|DOUT\(1) & \processador|PC|DOUT\(3)))) # (\processador|PC|DOUT\(2) & (!\processador|PC|DOUT\(3) & ((\processador|PC|DOUT\(1)) # 
-- (\processador|PC|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011110000000000001111000000000000111100000000000011110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~0_combout\);

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (!\processador|PC|DOUT\(0) & (\processador|PC|DOUT\(1) & (!\processador|PC|DOUT\(2) $ (\processador|PC|DOUT\(3))))) # (\processador|PC|DOUT\(0) & (((\processador|PC|DOUT\(2) & \processador|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000111001000000000011100100000000001110010000000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~3_combout\);

\processador|BANCO_REGISTRADORES|registrador~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|BANCO_REGISTRADORES|registrador~51_combout\ = ( \processador|decoderInstru1|saida~4_combout\ & ( (!\ROM1|memROM~4_combout\) # ((!\ROM1|memROM~0_combout\ & !\ROM1|memROM~3_combout\)) ) ) # ( !\processador|decoderInstru1|saida~4_combout\ & ( 
-- (\processador|decoderInstru1|saida~1_combout\ & ((!\ROM1|memROM~4_combout\) # ((!\ROM1|memROM~0_combout\ & !\ROM1|memROM~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111000111110001111100000000000111110001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datae => \processador|decoderInstru1|ALT_INV_saida~4_combout\,
	combout => \processador|BANCO_REGISTRADORES|registrador~51_combout\);

\processador|BANCO_REGISTRADORES|registrador~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|ULA1|saida[0]~0_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~11_q\);

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = (!\processador|PC|DOUT\(8) & (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~2_combout\);

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = (\ROM1|memROM~3_combout\ & \ROM1|memROM~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \ROM1|memROM~5_combout\);

\processador|BANCO_REGISTRADORES|registrador~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|BANCO_REGISTRADORES|registrador~52_combout\ = (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~5_combout\ & ((\processador|decoderInstru1|saida~4_combout\) # (\processador|decoderInstru1|saida~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100000001000100010000000100010001000000010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datad => \processador|decoderInstru1|ALT_INV_saida~4_combout\,
	combout => \processador|BANCO_REGISTRADORES|registrador~52_combout\);

\processador|BANCO_REGISTRADORES|registrador~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|ULA1|saida[0]~0_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~19_q\);

\processador|BANCO_REGISTRADORES|registrador~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|BANCO_REGISTRADORES|registrador~53_combout\ = (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~5_combout\ & ((\processador|decoderInstru1|saida~4_combout\) # (\processador|decoderInstru1|saida~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010000000100010001000000010001000100000001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datad => \processador|decoderInstru1|ALT_INV_saida~4_combout\,
	combout => \processador|BANCO_REGISTRADORES|registrador~53_combout\);

\processador|BANCO_REGISTRADORES|registrador~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|ULA1|saida[0]~0_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~27_q\);

\processador|BANCO_REGISTRADORES|registrador~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|BANCO_REGISTRADORES|registrador~54_combout\ = ( \processador|decoderInstru1|saida~4_combout\ & ( (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & \ROM1|memROM~5_combout\)) ) ) # ( !\processador|decoderInstru1|saida~4_combout\ & ( 
-- (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~5_combout\ & \processador|decoderInstru1|saida~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000010000000100000000000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datae => \processador|decoderInstru1|ALT_INV_saida~4_combout\,
	combout => \processador|BANCO_REGISTRADORES|registrador~54_combout\);

\processador|BANCO_REGISTRADORES|registrador~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|ULA1|saida[0]~0_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~35_q\);

\processador|BANCO_REGISTRADORES|registrador~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|BANCO_REGISTRADORES|registrador~43_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~5_combout\ & ( \processador|BANCO_REGISTRADORES|registrador~35_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~5_combout\ & ( 
-- \processador|BANCO_REGISTRADORES|registrador~27_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~5_combout\ & ( \processador|BANCO_REGISTRADORES|registrador~19_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~5_combout\ & ( 
-- \processador|BANCO_REGISTRADORES|registrador~11_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~11_q\,
	datab => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~19_q\,
	datac => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~27_q\,
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~35_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \processador|BANCO_REGISTRADORES|registrador~43_combout\);

\RAM1|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~43_combout\,
	ena => \RAM1|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~31_q\);

\RAM1|ram~287\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~43_combout\,
	ena => \RAM1|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~287_q\);

\RAM1|ram~519\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~43_combout\,
	ena => \RAM1|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~519_q\);

\RAM1|ram~576\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~576_combout\ = ( \RAM1|ram~519_q\ & ( (!\ROM1|memROM~19_combout\ & (!\ROM1|memROM~16_combout\ & (\RAM1|ram~31_q\))) # (\ROM1|memROM~19_combout\ & (((\RAM1|ram~287_q\)) # (\ROM1|memROM~16_combout\))) ) ) # ( !\RAM1|ram~519_q\ & ( 
-- (!\ROM1|memROM~16_combout\ & ((!\ROM1|memROM~19_combout\ & (\RAM1|ram~31_q\)) # (\ROM1|memROM~19_combout\ & ((\RAM1|ram~287_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100001000010011000001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \RAM1|ALT_INV_ram~31_q\,
	datad => \RAM1|ALT_INV_ram~287_q\,
	datae => \RAM1|ALT_INV_ram~519_q\,
	combout => \RAM1|ram~576_combout\);

\RAM1|ram~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~43_combout\,
	ena => \RAM1|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~111_q\);

\RAM1|ram~577\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~577_combout\ = ( \RAM1|ram~111_q\ & ( (!\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~19_combout\) # ((!\ROM1|memROM~16_combout\ & !\ROM1|memROM~10_combout\)))) ) ) # ( !\RAM1|ram~111_q\ & ( (!\ROM1|memROM~16_combout\ & (!\ROM1|memROM~17_combout\ & 
-- ((!\ROM1|memROM~19_combout\) # (!\ROM1|memROM~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000000000111010100000000011001000000000001110101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \RAM1|ALT_INV_ram~111_q\,
	combout => \RAM1|ram~577_combout\);

\RAM1|ram~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~43_combout\,
	ena => \RAM1|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~271_q\);

\RAM1|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~43_combout\,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~15_q\);

\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~43_combout\,
	ena => \RAM1|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

\RAM1|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~43_combout\,
	ena => \RAM1|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~55_q\);

\RAM1|ram~575\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~575_combout\ = ( \RAM1|ram~23_q\ & ( \RAM1|ram~55_q\ & ( (!\ROM1|memROM~14_combout\ & (!\ROM1|memROM~16_combout\ & ((\RAM1|ram~15_q\) # (\ROM1|memROM~10_combout\)))) # (\ROM1|memROM~14_combout\ & (!\ROM1|memROM~16_combout\ $ 
-- ((!\ROM1|memROM~10_combout\)))) ) ) ) # ( !\RAM1|ram~23_q\ & ( \RAM1|ram~55_q\ & ( (!\ROM1|memROM~14_combout\ & (!\ROM1|memROM~16_combout\ & (!\ROM1|memROM~10_combout\ & \RAM1|ram~15_q\))) # (\ROM1|memROM~14_combout\ & (!\ROM1|memROM~16_combout\ $ 
-- ((!\ROM1|memROM~10_combout\)))) ) ) ) # ( \RAM1|ram~23_q\ & ( !\RAM1|ram~55_q\ & ( (!\ROM1|memROM~14_combout\ & (!\ROM1|memROM~16_combout\ & ((\RAM1|ram~15_q\) # (\ROM1|memROM~10_combout\)))) # (\ROM1|memROM~14_combout\ & (\ROM1|memROM~16_combout\ & 
-- (!\ROM1|memROM~10_combout\))) ) ) ) # ( !\RAM1|ram~23_q\ & ( !\RAM1|ram~55_q\ & ( (!\ROM1|memROM~10_combout\ & ((!\ROM1|memROM~14_combout\ & (!\ROM1|memROM~16_combout\ & \RAM1|ram~15_q\)) # (\ROM1|memROM~14_combout\ & (\ROM1|memROM~16_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010010000000110001001100000010100100101000001110010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \RAM1|ALT_INV_ram~15_q\,
	datae => \RAM1|ALT_INV_ram~23_q\,
	dataf => \RAM1|ALT_INV_ram~55_q\,
	combout => \RAM1|ram~575_combout\);

\RAM1|ram~578\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~578_combout\ = ( \RAM1|ram~271_q\ & ( \RAM1|ram~575_combout\ & ( (!\ROM1|memROM~14_combout\) # ((!\ROM1|memROM~12_combout\ & !\ROM1|memROM~19_combout\)) ) ) ) # ( !\RAM1|ram~271_q\ & ( \RAM1|ram~575_combout\ & ( (!\ROM1|memROM~12_combout\ & 
-- (!\ROM1|memROM~19_combout\)) # (\ROM1|memROM~12_combout\ & ((!\ROM1|memROM~14_combout\))) ) ) ) # ( \RAM1|ram~271_q\ & ( !\RAM1|ram~575_combout\ & ( (!\ROM1|memROM~12_combout\ & (\ROM1|memROM~19_combout\ & (!\ROM1|memROM~14_combout\))) # 
-- (\ROM1|memROM~12_combout\ & (((!\ROM1|memROM~14_combout\) # (\ROM1|memROM~17_combout\)))) ) ) ) # ( !\RAM1|ram~271_q\ & ( !\RAM1|ram~575_combout\ & ( (\ROM1|memROM~12_combout\ & ((!\ROM1|memROM~14_combout\) # (\ROM1|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010101011100000111010111011000110110001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \RAM1|ALT_INV_ram~271_q\,
	dataf => \RAM1|ALT_INV_ram~575_combout\,
	combout => \RAM1|ram~578_combout\);

\RAM1|ram~579\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~579_combout\ = (\ROM1|memROM~14_combout\ & \ROM1|memROM~16_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \RAM1|ram~579_combout\);

\RAM1|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~527_combout\ = ( \RAM1|ram~578_combout\ & ( \RAM1|ram~579_combout\ & ( (!\ROM1|memROM~12_combout\ & (((\RAM1|ram~577_combout\)))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~576_combout\ & ((\RAM1|ram~577_combout\) # (\ROM1|memROM~10_combout\)))) ) 
-- ) ) # ( \RAM1|ram~578_combout\ & ( !\RAM1|ram~579_combout\ & ( (\RAM1|ram~577_combout\ & ((!\ROM1|memROM~12_combout\) # ((!\ROM1|memROM~10_combout\ & \RAM1|ram~576_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010111000000000000000000000000110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \RAM1|ALT_INV_ram~576_combout\,
	datad => \RAM1|ALT_INV_ram~577_combout\,
	datae => \RAM1|ALT_INV_ram~578_combout\,
	dataf => \RAM1|ALT_INV_ram~579_combout\,
	combout => \RAM1|ram~527_combout\);

\SW_0_7|saida[0]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_0_7|saida[0]~15_combout\ = ( \processador|decoderInstru1|saida~4_combout\ & ( \KEY_3|saida[0]~1_combout\ & ( (!\ROM1|memROM~14_combout\ & (!\comb~0_combout\ & !\SW[0]~input_o\)) ) ) ) # ( !\processador|decoderInstru1|saida~4_combout\ & ( 
-- \KEY_3|saida[0]~1_combout\ & ( (!\ROM1|memROM~14_combout\ & (!\comb~0_combout\ & (!\SW[0]~input_o\ & \processador|decoderInstru1|saida~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \processador|decoderInstru1|ALT_INV_saida~3_combout\,
	datae => \processador|decoderInstru1|ALT_INV_saida~4_combout\,
	dataf => \KEY_3|ALT_INV_saida[0]~1_combout\,
	combout => \SW_0_7|saida[0]~15_combout\);

\comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = ( \ROM1|memROM~18_combout\ & ( (!\processador|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~9_combout\ & \ROM1|memROM~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~18_combout\,
	combout => \comb~3_combout\);

\SW_9|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_9|saida[0]~0_combout\ = ( !\ROM1|memROM~18_combout\ & ( !\SW[9]~input_o\ & ( (!\processador|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~9_combout\ & \ROM1|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~18_combout\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \SW_9|saida[0]~0_combout\);

\KEY_2|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \KEY_2|saida[0]~0_combout\ = ( \ROM1|memROM~18_combout\ & ( !\FF_DEBOUNCER_2|DOUT~q\ & ( (!\processador|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~9_combout\ & \ROM1|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~18_combout\,
	dataf => \FF_DEBOUNCER_2|ALT_INV_DOUT~q\,
	combout => \KEY_2|saida[0]~0_combout\);

\SW_8|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_8|saida[0]~0_combout\ = ( !\ROM1|memROM~18_combout\ & ( !\SW[8]~input_o\ & ( (!\processador|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~9_combout\ & !\ROM1|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~18_combout\,
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \SW_8|saida[0]~0_combout\);

\KEY_3|saida[0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \KEY_3|saida[0]~10_combout\ = ( \KEY_2|saida[0]~0_combout\ & ( \SW_8|saida[0]~0_combout\ & ( (!\comb~1_combout\ & !\SW_0_7|saida[0]~15_combout\) ) ) ) # ( !\KEY_2|saida[0]~0_combout\ & ( \SW_8|saida[0]~0_combout\ & ( (!\comb~1_combout\ & 
-- !\SW_0_7|saida[0]~15_combout\) ) ) ) # ( \KEY_2|saida[0]~0_combout\ & ( !\SW_8|saida[0]~0_combout\ & ( (!\comb~1_combout\ & !\SW_0_7|saida[0]~15_combout\) ) ) ) # ( !\KEY_2|saida[0]~0_combout\ & ( !\SW_8|saida[0]~0_combout\ & ( 
-- (!\SW_0_7|saida[0]~15_combout\ & ((!\comb~1_combout\) # ((!\comb~3_combout\ & !\SW_9|saida[0]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~1_combout\,
	datab => \SW_0_7|ALT_INV_saida[0]~15_combout\,
	datac => \ALT_INV_comb~3_combout\,
	datad => \SW_9|ALT_INV_saida[0]~0_combout\,
	datae => \KEY_2|ALT_INV_saida[0]~0_combout\,
	dataf => \SW_8|ALT_INV_saida[0]~0_combout\,
	combout => \KEY_3|saida[0]~10_combout\);

\KEY_3|saida[0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \KEY_3|saida[0]~11_combout\ = ( \KEY_3|saida[0]~10_combout\ & ( \KEY_3|saida[0]~7_combout\ & ( (!\KEY_3|saida[0]~3_combout\ & ((!\RAM1|dado_out~0_combout\) # (\RAM1|ram~527_combout\))) ) ) ) # ( \KEY_3|saida[0]~10_combout\ & ( !\KEY_3|saida[0]~7_combout\ 
-- ) ) # ( !\KEY_3|saida[0]~10_combout\ & ( !\KEY_3|saida[0]~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000001011101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~0_combout\,
	datab => \RAM1|ALT_INV_ram~527_combout\,
	datad => \KEY_3|ALT_INV_saida[0]~3_combout\,
	datae => \KEY_3|ALT_INV_saida[0]~10_combout\,
	dataf => \KEY_3|ALT_INV_saida[0]~7_combout\,
	combout => \KEY_3|saida[0]~11_combout\);

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
	lut_mask => "1011000000000000101101010000010110111010000010101011111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~0_combout\,
	datab => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~44_combout\,
	datac => \processador|decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datad => \processador|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datae => \processador|ULA1|ALT_INV_Add0~5_sumout\,
	dataf => \processador|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \processador|ULA1|saida[1]~1_combout\);

\processador|BANCO_REGISTRADORES|registrador~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|ULA1|saida[1]~1_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~12_q\);

\processador|BANCO_REGISTRADORES|registrador~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|ULA1|saida[1]~1_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~20_q\);

\processador|BANCO_REGISTRADORES|registrador~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|ULA1|saida[1]~1_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~28_q\);

\processador|BANCO_REGISTRADORES|registrador~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|ULA1|saida[1]~1_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~36_q\);

\processador|BANCO_REGISTRADORES|registrador~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|BANCO_REGISTRADORES|registrador~44_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~5_combout\ & ( \processador|BANCO_REGISTRADORES|registrador~36_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~5_combout\ & ( 
-- \processador|BANCO_REGISTRADORES|registrador~28_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~5_combout\ & ( \processador|BANCO_REGISTRADORES|registrador~20_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~5_combout\ & ( 
-- \processador|BANCO_REGISTRADORES|registrador~12_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~12_q\,
	datab => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~20_q\,
	datac => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~28_q\,
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~36_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \processador|BANCO_REGISTRADORES|registrador~44_combout\);

\RAM1|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~44_combout\,
	ena => \RAM1|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~32_q\);

\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~44_combout\,
	ena => \RAM1|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

\RAM1|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~44_combout\,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~16_q\);

\RAM1|ram~600\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~600_combout\ = ( !\ROM1|memROM~10_combout\ & ( (!\ROM1|memROM~16_combout\ & (!\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~12_combout\ & ((\RAM1|ram~16_q\))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~32_q\))))) ) ) # ( \ROM1|memROM~10_combout\ & ( 
-- (!\ROM1|memROM~12_combout\ & (((\RAM1|ram~24_q\ & (!\ROM1|memROM~16_combout\ & !\ROM1|memROM~17_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100000000000010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \RAM1|ALT_INV_ram~32_q\,
	datac => \RAM1|ALT_INV_ram~24_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	datag => \RAM1|ALT_INV_ram~16_q\,
	combout => \RAM1|ram~600_combout\);

\RAM1|ram~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~44_combout\,
	ena => \RAM1|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~272_q\);

\RAM1|ram~288\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~44_combout\,
	ena => \RAM1|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~288_q\);

\RAM1|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~528_combout\ = ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~16_combout\ & ( (!\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~12_combout\ & (\RAM1|ram~272_q\)) # (\ROM1|memROM~12_combout\ & ((\RAM1|ram~288_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~272_q\,
	datab => \RAM1|ALT_INV_ram~288_q\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \RAM1|ram~528_combout\);

\RAM1|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~44_combout\,
	ena => \RAM1|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~56_q\);

\RAM1|ram~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~44_combout\,
	ena => \RAM1|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~112_q\);

\RAM1|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~529_combout\ = ( \ROM1|memROM~10_combout\ & ( !\ROM1|memROM~17_combout\ & ( (\RAM1|ram~56_q\ & (!\ROM1|memROM~12_combout\ & !\ROM1|memROM~16_combout\)) ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~17_combout\ & ( 
-- (!\ROM1|memROM~12_combout\ & (\ROM1|memROM~16_combout\ & \RAM1|ram~112_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100010000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~56_q\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \RAM1|ALT_INV_ram~112_q\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~529_combout\);

\RAM1|ram~520\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~44_combout\,
	ena => \RAM1|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~520_q\);

\RAM1|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~530_combout\ = ( \ROM1|memROM~16_combout\ & ( (\RAM1|ram~520_q\ & (\ROM1|memROM~12_combout\ & (\ROM1|memROM~10_combout\ & \ROM1|memROM~17_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~520_q\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \RAM1|ram~530_combout\);

\RAM1|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~531_combout\ = ( \ROM1|memROM~19_combout\ & ( \ROM1|memROM~14_combout\ & ( \RAM1|ram~530_combout\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( \ROM1|memROM~14_combout\ & ( \RAM1|ram~529_combout\ ) ) ) # ( \ROM1|memROM~19_combout\ & ( 
-- !\ROM1|memROM~14_combout\ & ( \RAM1|ram~528_combout\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( !\ROM1|memROM~14_combout\ & ( \RAM1|ram~600_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~600_combout\,
	datab => \RAM1|ALT_INV_ram~528_combout\,
	datac => \RAM1|ALT_INV_ram~529_combout\,
	datad => \RAM1|ALT_INV_ram~530_combout\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM1|ram~531_combout\);

\SW_0_7|saida[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_0_7|saida[1]~7_combout\ = (!\comb~2_combout\ & ((!\RAM1|dado_out~0_combout\) # ((\RAM1|ram~531_combout\)))) # (\comb~2_combout\ & (\SW[1]~input_o\ & ((!\RAM1|dado_out~0_combout\) # (\RAM1|ram~531_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101011001111100010101100111110001010110011111000101011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~2_combout\,
	datab => \RAM1|ALT_INV_dado_out~0_combout\,
	datac => \RAM1|ALT_INV_ram~531_combout\,
	datad => \ALT_INV_SW[1]~input_o\,
	combout => \SW_0_7|saida[1]~7_combout\);

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
	lut_mask => "1011000000000000101101010000010110111010000010101011111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~0_combout\,
	datab => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~45_combout\,
	datac => \processador|decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datad => \processador|MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	datae => \processador|ULA1|ALT_INV_Add0~9_sumout\,
	dataf => \processador|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \processador|ULA1|saida[2]~2_combout\);

\processador|BANCO_REGISTRADORES|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|ULA1|saida[2]~2_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~13_q\);

\processador|BANCO_REGISTRADORES|registrador~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|ULA1|saida[2]~2_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~21_q\);

\processador|BANCO_REGISTRADORES|registrador~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|ULA1|saida[2]~2_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~29_q\);

\processador|BANCO_REGISTRADORES|registrador~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|ULA1|saida[2]~2_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~37_q\);

\processador|BANCO_REGISTRADORES|registrador~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|BANCO_REGISTRADORES|registrador~45_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~5_combout\ & ( \processador|BANCO_REGISTRADORES|registrador~37_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~5_combout\ & ( 
-- \processador|BANCO_REGISTRADORES|registrador~29_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~5_combout\ & ( \processador|BANCO_REGISTRADORES|registrador~21_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~5_combout\ & ( 
-- \processador|BANCO_REGISTRADORES|registrador~13_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~13_q\,
	datab => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~21_q\,
	datac => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~29_q\,
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~37_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \processador|BANCO_REGISTRADORES|registrador~45_combout\);

\RAM1|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~45_combout\,
	ena => \RAM1|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~33_q\);

\RAM1|ram~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~45_combout\,
	ena => \RAM1|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~113_q\);

\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~45_combout\,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

\RAM1|ram~596\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~596_combout\ = ( !\ROM1|memROM~16_combout\ & ( (!\ROM1|memROM~17_combout\ & (!\ROM1|memROM~14_combout\ & ((!\ROM1|memROM~12_combout\ & ((\RAM1|ram~17_q\))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~33_q\))))) ) ) # ( \ROM1|memROM~16_combout\ & ( 
-- ((!\ROM1|memROM~17_combout\ & (\RAM1|ram~113_q\ & (\ROM1|memROM~14_combout\ & !\ROM1|memROM~12_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000000000000000000000110001000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~33_q\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \RAM1|ALT_INV_ram~113_q\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	datag => \RAM1|ALT_INV_ram~17_q\,
	combout => \RAM1|ram~596_combout\);

\RAM1|ram~289\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~45_combout\,
	ena => \RAM1|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~289_q\);

\RAM1|ram~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~45_combout\,
	ena => \RAM1|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~273_q\);

\RAM1|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~532_combout\ = ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~17_combout\ & ( (\RAM1|ram~289_q\ & (!\ROM1|memROM~14_combout\ & !\ROM1|memROM~16_combout\)) ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~17_combout\ & ( 
-- (!\ROM1|memROM~14_combout\ & (!\ROM1|memROM~16_combout\ & \RAM1|ram~273_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000010000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~289_q\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \RAM1|ALT_INV_ram~273_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~532_combout\);

\RAM1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~45_combout\,
	ena => \RAM1|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~25_q\);

\RAM1|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~45_combout\,
	ena => \RAM1|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~57_q\);

\RAM1|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~533_combout\ = ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~16_combout\ & ( (!\ROM1|memROM~12_combout\ & ((!\ROM1|memROM~14_combout\ & (\RAM1|ram~25_q\)) # (\ROM1|memROM~14_combout\ & ((\RAM1|ram~57_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~25_q\,
	datab => \RAM1|ALT_INV_ram~57_q\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \RAM1|ram~533_combout\);

\RAM1|ram~521\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~45_combout\,
	ena => \RAM1|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~521_q\);

\RAM1|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~534_combout\ = ( \ROM1|memROM~16_combout\ & ( (\RAM1|ram~521_q\ & (\ROM1|memROM~14_combout\ & (\ROM1|memROM~17_combout\ & \ROM1|memROM~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~521_q\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \RAM1|ram~534_combout\);

\RAM1|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~535_combout\ = ( \ROM1|memROM~19_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM1|ram~534_combout\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM1|ram~533_combout\ ) ) ) # ( \ROM1|memROM~19_combout\ & ( 
-- !\ROM1|memROM~10_combout\ & ( \RAM1|ram~532_combout\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~596_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~596_combout\,
	datab => \RAM1|ALT_INV_ram~532_combout\,
	datac => \RAM1|ALT_INV_ram~533_combout\,
	datad => \RAM1|ALT_INV_ram~534_combout\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~535_combout\);

\SW_0_7|saida[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_0_7|saida[2]~9_combout\ = (!\comb~2_combout\ & ((!\RAM1|dado_out~0_combout\) # ((\RAM1|ram~535_combout\)))) # (\comb~2_combout\ & (\SW[2]~input_o\ & ((!\RAM1|dado_out~0_combout\) # (\RAM1|ram~535_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101011001111100010101100111110001010110011111000101011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~2_combout\,
	datab => \RAM1|ALT_INV_dado_out~0_combout\,
	datac => \RAM1|ALT_INV_ram~535_combout\,
	datad => \ALT_INV_SW[2]~input_o\,
	combout => \SW_0_7|saida[2]~9_combout\);

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

\processador|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~13_sumout\ = SUM(( \processador|BANCO_REGISTRADORES|registrador~46_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & (!\SW_0_7|saida[3]~10_combout\)) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (((!\ROM1|memROM~33_combout\) # (\processador|PC|DOUT\(8))))) ) + ( \processador|ULA1|Add1~10\ ))
-- \processador|ULA1|Add1~14\ = CARRY(( \processador|BANCO_REGISTRADORES|registrador~46_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & (!\SW_0_7|saida[3]~10_combout\)) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (((!\ROM1|memROM~33_combout\) # (\processador|PC|DOUT\(8))))) ) + ( \processador|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100111001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datab => \SW_0_7|ALT_INV_saida[3]~10_combout\,
	datac => \processador|PC|ALT_INV_DOUT\(8),
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~46_combout\,
	dataf => \ROM1|ALT_INV_memROM~33_combout\,
	cin => \processador|ULA1|Add1~10\,
	sumout => \processador|ULA1|Add1~13_sumout\,
	cout => \processador|ULA1|Add1~14\);

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
	lut_mask => "1011000000000000101101010000010110111010000010101011111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~0_combout\,
	datab => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~46_combout\,
	datac => \processador|decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datad => \processador|MUX1|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \processador|ULA1|ALT_INV_Add0~13_sumout\,
	dataf => \processador|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \processador|ULA1|saida[3]~3_combout\);

\processador|BANCO_REGISTRADORES|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|ULA1|saida[3]~3_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~14_q\);

\processador|BANCO_REGISTRADORES|registrador~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|ULA1|saida[3]~3_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~22_q\);

\processador|BANCO_REGISTRADORES|registrador~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|ULA1|saida[3]~3_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~30_q\);

\processador|BANCO_REGISTRADORES|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|ULA1|saida[3]~3_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~38_q\);

\processador|BANCO_REGISTRADORES|registrador~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|BANCO_REGISTRADORES|registrador~46_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~5_combout\ & ( \processador|BANCO_REGISTRADORES|registrador~38_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~5_combout\ & ( 
-- \processador|BANCO_REGISTRADORES|registrador~30_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~5_combout\ & ( \processador|BANCO_REGISTRADORES|registrador~22_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~5_combout\ & ( 
-- \processador|BANCO_REGISTRADORES|registrador~14_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~14_q\,
	datab => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~22_q\,
	datac => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~30_q\,
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~38_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \processador|BANCO_REGISTRADORES|registrador~46_combout\);

\RAM1|ram~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~46_combout\,
	ena => \RAM1|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~114_q\);

\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~46_combout\,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

\RAM1|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~46_combout\,
	ena => \RAM1|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

\RAM1|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~46_combout\,
	ena => \RAM1|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~58_q\);

\RAM1|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~536_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~14_combout\ & ( \RAM1|ram~58_q\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( !\ROM1|memROM~14_combout\ & ( \RAM1|ram~26_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~14_combout\ & ( 
-- \RAM1|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~18_q\,
	datab => \RAM1|ALT_INV_ram~26_q\,
	datad => \RAM1|ALT_INV_ram~58_q\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM1|ram~536_combout\);

\RAM1|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~46_combout\,
	ena => \RAM1|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~34_q\);

\RAM1|ram~592\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~592_combout\ = ( !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~16_combout\ & ((!\ROM1|memROM~12_combout\ & (((\RAM1|ram~536_combout\)))) # (\ROM1|memROM~12_combout\ & (!\ROM1|memROM~10_combout\ & (\RAM1|ram~34_q\))))) ) ) # ( 
-- \ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~12_combout\ & ((!\ROM1|memROM~16_combout\ & (((\RAM1|ram~536_combout\)))) # (\ROM1|memROM~16_combout\ & (!\ROM1|memROM~10_combout\ & (\RAM1|ram~114_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001000000000100000000011001100000010001100111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \RAM1|ALT_INV_ram~114_q\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \RAM1|ALT_INV_ram~536_combout\,
	datag => \RAM1|ALT_INV_ram~34_q\,
	combout => \RAM1|ram~592_combout\);

\RAM1|ram~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~46_combout\,
	ena => \RAM1|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~290_q\);

\RAM1|ram~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~46_combout\,
	ena => \RAM1|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~274_q\);

\RAM1|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~537_combout\ = ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~14_combout\ & ( (\RAM1|ram~290_q\ & (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~16_combout\)) ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~14_combout\ & ( 
-- (!\ROM1|memROM~10_combout\ & (!\ROM1|memROM~16_combout\ & \RAM1|ram~274_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000010000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~290_q\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \RAM1|ALT_INV_ram~274_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM1|ram~537_combout\);

\RAM1|ram~522\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~46_combout\,
	ena => \RAM1|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~522_q\);

\RAM1|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~538_combout\ = ( \ROM1|memROM~16_combout\ & ( (\RAM1|ram~522_q\ & (\ROM1|memROM~12_combout\ & (\ROM1|memROM~14_combout\ & \ROM1|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~522_q\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \RAM1|ram~538_combout\);

\RAM1|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~539_combout\ = ( \ROM1|memROM~19_combout\ & ( \ROM1|memROM~17_combout\ & ( \RAM1|ram~538_combout\ ) ) ) # ( \ROM1|memROM~19_combout\ & ( !\ROM1|memROM~17_combout\ & ( \RAM1|ram~537_combout\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( 
-- !\ROM1|memROM~17_combout\ & ( \RAM1|ram~592_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~592_combout\,
	datab => \RAM1|ALT_INV_ram~537_combout\,
	datad => \RAM1|ALT_INV_ram~538_combout\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~539_combout\);

\SW_0_7|saida[3]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_0_7|saida[3]~10_combout\ = (!\comb~2_combout\ & ((!\RAM1|dado_out~0_combout\) # ((\RAM1|ram~539_combout\)))) # (\comb~2_combout\ & (\SW[3]~input_o\ & ((!\RAM1|dado_out~0_combout\) # (\RAM1|ram~539_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101011001111100010101100111110001010110011111000101011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~2_combout\,
	datab => \RAM1|ALT_INV_dado_out~0_combout\,
	datac => \RAM1|ALT_INV_ram~539_combout\,
	datad => \ALT_INV_SW[3]~input_o\,
	combout => \SW_0_7|saida[3]~10_combout\);

\processador|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~17_sumout\ = SUM(( \processador|BANCO_REGISTRADORES|registrador~47_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & ((\SW_0_7|saida[4]~11_combout\))) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (\ROM1|memROM~17_combout\)) ) + ( \processador|ULA1|Add0~14\ ))
-- \processador|ULA1|Add0~18\ = CARRY(( \processador|BANCO_REGISTRADORES|registrador~47_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & ((\SW_0_7|saida[4]~11_combout\))) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (\ROM1|memROM~17_combout\)) ) + ( \processador|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~47_combout\,
	dataf => \SW_0_7|ALT_INV_saida[4]~11_combout\,
	cin => \processador|ULA1|Add0~14\,
	sumout => \processador|ULA1|Add0~17_sumout\,
	cout => \processador|ULA1|Add0~18\);

\processador|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[4]~4_combout\ = ( \processador|ULA1|Add0~17_sumout\ & ( \processador|ULA1|Add1~17_sumout\ & ( ((!\processador|MUX1|saida_MUX[4]~4_combout\ & ((!\processador|decoderInstru1|saida~0_combout\) # 
-- (\processador|BANCO_REGISTRADORES|registrador~47_combout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\) ) ) ) # ( !\processador|ULA1|Add0~17_sumout\ & ( \processador|ULA1|Add1~17_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\ & 
-- (!\processador|MUX1|saida_MUX[4]~4_combout\ & ((!\processador|decoderInstru1|saida~0_combout\) # (\processador|BANCO_REGISTRADORES|registrador~47_combout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\ & 
-- (!\processador|decoderInstru1|saida~0_combout\)) ) ) ) # ( \processador|ULA1|Add0~17_sumout\ & ( !\processador|ULA1|Add1~17_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\ & (!\processador|MUX1|saida_MUX[4]~4_combout\ & 
-- ((!\processador|decoderInstru1|saida~0_combout\) # (\processador|BANCO_REGISTRADORES|registrador~47_combout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\ & (\processador|decoderInstru1|saida~0_combout\)) ) ) ) # ( 
-- !\processador|ULA1|Add0~17_sumout\ & ( !\processador|ULA1|Add1~17_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\ & (!\processador|MUX1|saida_MUX[4]~4_combout\ & ((!\processador|decoderInstru1|saida~0_combout\) # 
-- (\processador|BANCO_REGISTRADORES|registrador~47_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000000000101101010000010110111010000010101011111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~0_combout\,
	datab => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~47_combout\,
	datac => \processador|decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datad => \processador|MUX1|ALT_INV_saida_MUX[4]~4_combout\,
	datae => \processador|ULA1|ALT_INV_Add0~17_sumout\,
	dataf => \processador|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \processador|ULA1|saida[4]~4_combout\);

\processador|BANCO_REGISTRADORES|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|ULA1|saida[4]~4_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~15_q\);

\processador|BANCO_REGISTRADORES|registrador~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|ULA1|saida[4]~4_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~23_q\);

\processador|BANCO_REGISTRADORES|registrador~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|ULA1|saida[4]~4_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~31_q\);

\processador|BANCO_REGISTRADORES|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|ULA1|saida[4]~4_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~39_q\);

\processador|BANCO_REGISTRADORES|registrador~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|BANCO_REGISTRADORES|registrador~47_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~5_combout\ & ( \processador|BANCO_REGISTRADORES|registrador~39_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~5_combout\ & ( 
-- \processador|BANCO_REGISTRADORES|registrador~31_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~5_combout\ & ( \processador|BANCO_REGISTRADORES|registrador~23_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~5_combout\ & ( 
-- \processador|BANCO_REGISTRADORES|registrador~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~15_q\,
	datab => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~23_q\,
	datac => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~31_q\,
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~39_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \processador|BANCO_REGISTRADORES|registrador~47_combout\);

\processador|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~17_sumout\ = SUM(( \processador|BANCO_REGISTRADORES|registrador~47_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & ((!\SW_0_7|saida[4]~11_combout\))) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (!\ROM1|memROM~17_combout\)) ) + ( \processador|ULA1|Add1~14\ ))
-- \processador|ULA1|Add1~18\ = CARRY(( \processador|BANCO_REGISTRADORES|registrador~47_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & ((!\SW_0_7|saida[4]~11_combout\))) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (!\ROM1|memROM~17_combout\)) ) + ( \processador|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011010111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~47_combout\,
	dataf => \SW_0_7|ALT_INV_saida[4]~11_combout\,
	cin => \processador|ULA1|Add1~14\,
	sumout => \processador|ULA1|Add1~17_sumout\,
	cout => \processador|ULA1|Add1~18\);

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\processador|MUX1|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[5]~5_combout\ = ( \RAM1|ram~550_combout\ & ( \SW[5]~input_o\ & ( (!\ROM1|memROM~19_combout\ & \processador|decoderInstru1|saida~1_combout\) ) ) ) # ( !\RAM1|ram~550_combout\ & ( \SW[5]~input_o\ & ( 
-- (!\processador|decoderInstru1|saida~1_combout\ & ((\RAM1|dado_out~0_combout\))) # (\processador|decoderInstru1|saida~1_combout\ & (!\ROM1|memROM~19_combout\)) ) ) ) # ( \RAM1|ram~550_combout\ & ( !\SW[5]~input_o\ & ( 
-- (!\processador|decoderInstru1|saida~1_combout\ & ((\comb~2_combout\))) # (\processador|decoderInstru1|saida~1_combout\ & (!\ROM1|memROM~19_combout\)) ) ) ) # ( !\RAM1|ram~550_combout\ & ( !\SW[5]~input_o\ & ( (!\processador|decoderInstru1|saida~1_combout\ 
-- & (((\RAM1|dado_out~0_combout\) # (\comb~2_combout\)))) # (\processador|decoderInstru1|saida~1_combout\ & (!\ROM1|memROM~19_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111011101110001011100010111000100010111011100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datac => \ALT_INV_comb~2_combout\,
	datad => \RAM1|ALT_INV_dado_out~0_combout\,
	datae => \RAM1|ALT_INV_ram~550_combout\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \processador|MUX1|saida_MUX[5]~5_combout\);

\ROM1|memROM~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~34_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~18_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~18_combout\,
	combout => \ROM1|memROM~34_combout\);

\processador|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~21_sumout\ = SUM(( \processador|BANCO_REGISTRADORES|registrador~48_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & (\SW_0_7|saida[5]~12_combout\)) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (((!\processador|PC|DOUT\(8) & \ROM1|memROM~34_combout\)))) ) + ( \processador|ULA1|Add0~18\ ))
-- \processador|ULA1|Add0~22\ = CARRY(( \processador|BANCO_REGISTRADORES|registrador~48_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & (\SW_0_7|saida[5]~12_combout\)) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (((!\processador|PC|DOUT\(8) & \ROM1|memROM~34_combout\)))) ) + ( \processador|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110111011000110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datab => \SW_0_7|ALT_INV_saida[5]~12_combout\,
	datac => \processador|PC|ALT_INV_DOUT\(8),
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~48_combout\,
	dataf => \ROM1|ALT_INV_memROM~34_combout\,
	cin => \processador|ULA1|Add0~18\,
	sumout => \processador|ULA1|Add0~21_sumout\,
	cout => \processador|ULA1|Add0~22\);

\processador|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[5]~5_combout\ = ( \processador|ULA1|Add0~21_sumout\ & ( \processador|ULA1|Add1~21_sumout\ & ( ((!\processador|MUX1|saida_MUX[5]~5_combout\ & ((!\processador|decoderInstru1|saida~0_combout\) # 
-- (\processador|BANCO_REGISTRADORES|registrador~48_combout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\) ) ) ) # ( !\processador|ULA1|Add0~21_sumout\ & ( \processador|ULA1|Add1~21_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\ & 
-- (!\processador|MUX1|saida_MUX[5]~5_combout\ & ((!\processador|decoderInstru1|saida~0_combout\) # (\processador|BANCO_REGISTRADORES|registrador~48_combout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\ & 
-- (!\processador|decoderInstru1|saida~0_combout\)) ) ) ) # ( \processador|ULA1|Add0~21_sumout\ & ( !\processador|ULA1|Add1~21_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\ & (!\processador|MUX1|saida_MUX[5]~5_combout\ & 
-- ((!\processador|decoderInstru1|saida~0_combout\) # (\processador|BANCO_REGISTRADORES|registrador~48_combout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\ & (\processador|decoderInstru1|saida~0_combout\)) ) ) ) # ( 
-- !\processador|ULA1|Add0~21_sumout\ & ( !\processador|ULA1|Add1~21_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\ & (!\processador|MUX1|saida_MUX[5]~5_combout\ & ((!\processador|decoderInstru1|saida~0_combout\) # 
-- (\processador|BANCO_REGISTRADORES|registrador~48_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000000000101101010000010110111010000010101011111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~0_combout\,
	datab => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~48_combout\,
	datac => \processador|decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datad => \processador|MUX1|ALT_INV_saida_MUX[5]~5_combout\,
	datae => \processador|ULA1|ALT_INV_Add0~21_sumout\,
	dataf => \processador|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \processador|ULA1|saida[5]~5_combout\);

\processador|BANCO_REGISTRADORES|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|ULA1|saida[5]~5_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~16_q\);

\processador|BANCO_REGISTRADORES|registrador~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|ULA1|saida[5]~5_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~24_q\);

\processador|BANCO_REGISTRADORES|registrador~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|ULA1|saida[5]~5_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~32_q\);

\processador|BANCO_REGISTRADORES|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|ULA1|saida[5]~5_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~40_q\);

\processador|BANCO_REGISTRADORES|registrador~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|BANCO_REGISTRADORES|registrador~48_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~5_combout\ & ( \processador|BANCO_REGISTRADORES|registrador~40_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~5_combout\ & ( 
-- \processador|BANCO_REGISTRADORES|registrador~32_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~5_combout\ & ( \processador|BANCO_REGISTRADORES|registrador~24_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~5_combout\ & ( 
-- \processador|BANCO_REGISTRADORES|registrador~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~16_q\,
	datab => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~24_q\,
	datac => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~32_q\,
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~40_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \processador|BANCO_REGISTRADORES|registrador~48_combout\);

\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~48_combout\,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

\RAM1|ram~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~48_combout\,
	ena => \RAM1|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~276_q\);

\RAM1|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~48_combout\,
	ena => \RAM1|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~36_q\);

\RAM1|ram~292\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~48_combout\,
	ena => \RAM1|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~292_q\);

\RAM1|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~545_combout\ = ( \ROM1|memROM~19_combout\ & ( \ROM1|memROM~12_combout\ & ( \RAM1|ram~292_q\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( \ROM1|memROM~12_combout\ & ( \RAM1|ram~36_q\ ) ) ) # ( \ROM1|memROM~19_combout\ & ( !\ROM1|memROM~12_combout\ & ( 
-- \RAM1|ram~276_q\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( !\ROM1|memROM~12_combout\ & ( \RAM1|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~20_q\,
	datab => \RAM1|ALT_INV_ram~276_q\,
	datac => \RAM1|ALT_INV_ram~36_q\,
	datad => \RAM1|ALT_INV_ram~292_q\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~545_combout\);

\RAM1|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~546_combout\ = ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~16_combout\ & ( \RAM1|ram~545_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~545_combout\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \RAM1|ram~546_combout\);

\RAM1|ram~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~48_combout\,
	ena => \RAM1|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~116_q\);

\RAM1|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~547_combout\ = ( \ROM1|memROM~16_combout\ & ( (\RAM1|ram~116_q\ & (!\ROM1|memROM~19_combout\ & (!\ROM1|memROM~12_combout\ & !\ROM1|memROM~17_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~116_q\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \RAM1|ram~547_combout\);

\RAM1|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~48_combout\,
	ena => \RAM1|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~28_q\);

\RAM1|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~548_combout\ = ( !\ROM1|memROM~17_combout\ & ( (\RAM1|ram~28_q\ & (!\ROM1|memROM~19_combout\ & (!\ROM1|memROM~16_combout\ & !\ROM1|memROM~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~28_q\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~548_combout\);

\RAM1|ram~524\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~48_combout\,
	ena => \RAM1|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~524_q\);

\RAM1|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~48_combout\,
	ena => \RAM1|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~60_q\);

\RAM1|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~549_combout\ = ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ & ( (\RAM1|ram~524_q\ & (\ROM1|memROM~19_combout\ & \ROM1|memROM~12_combout\)) ) ) ) # ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~16_combout\ & ( 
-- (!\ROM1|memROM~19_combout\ & (!\ROM1|memROM~12_combout\ & \RAM1|ram~60_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~524_q\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \RAM1|ALT_INV_ram~60_q\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \RAM1|ram~549_combout\);

\RAM1|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~550_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM1|ram~549_combout\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM1|ram~548_combout\ ) ) ) # ( \ROM1|memROM~14_combout\ & ( 
-- !\ROM1|memROM~10_combout\ & ( \RAM1|ram~547_combout\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~546_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~546_combout\,
	datab => \RAM1|ALT_INV_ram~547_combout\,
	datac => \RAM1|ALT_INV_ram~548_combout\,
	datad => \RAM1|ALT_INV_ram~549_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~550_combout\);

\SW_0_7|saida[5]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_0_7|saida[5]~12_combout\ = (!\comb~2_combout\ & ((!\RAM1|dado_out~0_combout\) # ((\RAM1|ram~550_combout\)))) # (\comb~2_combout\ & (\SW[5]~input_o\ & ((!\RAM1|dado_out~0_combout\) # (\RAM1|ram~550_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101011001111100010101100111110001010110011111000101011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~2_combout\,
	datab => \RAM1|ALT_INV_dado_out~0_combout\,
	datac => \RAM1|ALT_INV_ram~550_combout\,
	datad => \ALT_INV_SW[5]~input_o\,
	combout => \SW_0_7|saida[5]~12_combout\);

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

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\processador|MUX1|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[6]~6_combout\ = ( \RAM1|ram~554_combout\ & ( \SW[6]~input_o\ & ( (!\ROM1|memROM~20_combout\ & \processador|decoderInstru1|saida~1_combout\) ) ) ) # ( !\RAM1|ram~554_combout\ & ( \SW[6]~input_o\ & ( 
-- (!\processador|decoderInstru1|saida~1_combout\ & ((\RAM1|dado_out~0_combout\))) # (\processador|decoderInstru1|saida~1_combout\ & (!\ROM1|memROM~20_combout\)) ) ) ) # ( \RAM1|ram~554_combout\ & ( !\SW[6]~input_o\ & ( 
-- (!\processador|decoderInstru1|saida~1_combout\ & ((\comb~2_combout\))) # (\processador|decoderInstru1|saida~1_combout\ & (!\ROM1|memROM~20_combout\)) ) ) ) # ( !\RAM1|ram~554_combout\ & ( !\SW[6]~input_o\ & ( (!\processador|decoderInstru1|saida~1_combout\ 
-- & (((\RAM1|dado_out~0_combout\) # (\comb~2_combout\)))) # (\processador|decoderInstru1|saida~1_combout\ & (!\ROM1|memROM~20_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111011101110001011100010111000100010111011100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datac => \ALT_INV_comb~2_combout\,
	datad => \RAM1|ALT_INV_dado_out~0_combout\,
	datae => \RAM1|ALT_INV_ram~554_combout\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \processador|MUX1|saida_MUX[6]~6_combout\);

\ROM1|memROM~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~35_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ROM1|memROM~35_combout\);

\processador|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~25_sumout\ = SUM(( \processador|BANCO_REGISTRADORES|registrador~49_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & (\SW_0_7|saida[6]~13_combout\)) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (((!\processador|PC|DOUT\(8) & \ROM1|memROM~35_combout\)))) ) + ( \processador|ULA1|Add0~22\ ))
-- \processador|ULA1|Add0~26\ = CARRY(( \processador|BANCO_REGISTRADORES|registrador~49_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & (\SW_0_7|saida[6]~13_combout\)) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (((!\processador|PC|DOUT\(8) & \ROM1|memROM~35_combout\)))) ) + ( \processador|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110111011000110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datab => \SW_0_7|ALT_INV_saida[6]~13_combout\,
	datac => \processador|PC|ALT_INV_DOUT\(8),
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~49_combout\,
	dataf => \ROM1|ALT_INV_memROM~35_combout\,
	cin => \processador|ULA1|Add0~22\,
	sumout => \processador|ULA1|Add0~25_sumout\,
	cout => \processador|ULA1|Add0~26\);

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
	lut_mask => "1011000000000000101101010000010110111010000010101011111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~0_combout\,
	datab => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~49_combout\,
	datac => \processador|decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datad => \processador|MUX1|ALT_INV_saida_MUX[6]~6_combout\,
	datae => \processador|ULA1|ALT_INV_Add0~25_sumout\,
	dataf => \processador|ULA1|ALT_INV_Add1~25_sumout\,
	combout => \processador|ULA1|saida[6]~6_combout\);

\processador|BANCO_REGISTRADORES|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|ULA1|saida[6]~6_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~17_q\);

\processador|BANCO_REGISTRADORES|registrador~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|ULA1|saida[6]~6_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~25_q\);

\processador|BANCO_REGISTRADORES|registrador~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|ULA1|saida[6]~6_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~33_q\);

\processador|BANCO_REGISTRADORES|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|ULA1|saida[6]~6_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~41_q\);

\processador|BANCO_REGISTRADORES|registrador~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|BANCO_REGISTRADORES|registrador~49_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~5_combout\ & ( \processador|BANCO_REGISTRADORES|registrador~41_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~5_combout\ & ( 
-- \processador|BANCO_REGISTRADORES|registrador~33_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~5_combout\ & ( \processador|BANCO_REGISTRADORES|registrador~25_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~5_combout\ & ( 
-- \processador|BANCO_REGISTRADORES|registrador~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~17_q\,
	datab => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~25_q\,
	datac => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~33_q\,
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~41_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \processador|BANCO_REGISTRADORES|registrador~49_combout\);

\RAM1|ram~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~49_combout\,
	ena => \RAM1|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~117_q\);

\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~49_combout\,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

\RAM1|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~49_combout\,
	ena => \RAM1|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~29_q\);

\RAM1|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~49_combout\,
	ena => \RAM1|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~61_q\);

\RAM1|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~551_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~14_combout\ & ( \RAM1|ram~61_q\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( !\ROM1|memROM~14_combout\ & ( \RAM1|ram~29_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~14_combout\ & ( 
-- \RAM1|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~21_q\,
	datab => \RAM1|ALT_INV_ram~29_q\,
	datad => \RAM1|ALT_INV_ram~61_q\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM1|ram~551_combout\);

\RAM1|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~49_combout\,
	ena => \RAM1|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~37_q\);

\RAM1|ram~584\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~584_combout\ = ( !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~16_combout\ & ((!\ROM1|memROM~12_combout\ & (((\RAM1|ram~551_combout\)))) # (\ROM1|memROM~12_combout\ & (!\ROM1|memROM~10_combout\ & (\RAM1|ram~37_q\))))) ) ) # ( 
-- \ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~12_combout\ & ((!\ROM1|memROM~16_combout\ & (((\RAM1|ram~551_combout\)))) # (\ROM1|memROM~16_combout\ & (!\ROM1|memROM~10_combout\ & (\RAM1|ram~117_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001000000000100000000011001100000010001100111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \RAM1|ALT_INV_ram~117_q\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \RAM1|ALT_INV_ram~551_combout\,
	datag => \RAM1|ALT_INV_ram~37_q\,
	combout => \RAM1|ram~584_combout\);

\RAM1|ram~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~49_combout\,
	ena => \RAM1|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~277_q\);

\RAM1|ram~293\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~49_combout\,
	ena => \RAM1|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~293_q\);

\RAM1|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~552_combout\ = ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~16_combout\ & ((!\ROM1|memROM~12_combout\ & (\RAM1|ram~277_q\)) # (\ROM1|memROM~12_combout\ & ((\RAM1|ram~293_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~277_q\,
	datab => \RAM1|ALT_INV_ram~293_q\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM1|ram~552_combout\);

\RAM1|ram~525\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~49_combout\,
	ena => \RAM1|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~525_q\);

\RAM1|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~553_combout\ = ( \ROM1|memROM~16_combout\ & ( (\RAM1|ram~525_q\ & (\ROM1|memROM~10_combout\ & (\ROM1|memROM~14_combout\ & \ROM1|memROM~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~525_q\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \RAM1|ram~553_combout\);

\RAM1|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~554_combout\ = ( \ROM1|memROM~19_combout\ & ( \ROM1|memROM~17_combout\ & ( \RAM1|ram~553_combout\ ) ) ) # ( \ROM1|memROM~19_combout\ & ( !\ROM1|memROM~17_combout\ & ( \RAM1|ram~552_combout\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( 
-- !\ROM1|memROM~17_combout\ & ( \RAM1|ram~584_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~584_combout\,
	datab => \RAM1|ALT_INV_ram~552_combout\,
	datad => \RAM1|ALT_INV_ram~553_combout\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~554_combout\);

\SW_0_7|saida[6]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_0_7|saida[6]~13_combout\ = (!\comb~2_combout\ & ((!\RAM1|dado_out~0_combout\) # ((\RAM1|ram~554_combout\)))) # (\comb~2_combout\ & (\SW[6]~input_o\ & ((!\RAM1|dado_out~0_combout\) # (\RAM1|ram~554_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101011001111100010101100111110001010110011111000101011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~2_combout\,
	datab => \RAM1|ALT_INV_dado_out~0_combout\,
	datac => \RAM1|ALT_INV_ram~554_combout\,
	datad => \ALT_INV_SW[6]~input_o\,
	combout => \SW_0_7|saida[6]~13_combout\);

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

\RAM1|ram~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~50_combout\,
	ena => \RAM1|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~278_q\);

\RAM1|ram~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~50_combout\,
	ena => \RAM1|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~118_q\);

\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~50_combout\,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

\RAM1|ram~580\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~580_combout\ = ( !\ROM1|memROM~16_combout\ & ( (!\ROM1|memROM~14_combout\ & (!\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~19_combout\ & ((\RAM1|ram~22_q\))) # (\ROM1|memROM~19_combout\ & (\RAM1|ram~278_q\))))) ) ) # ( \ROM1|memROM~16_combout\ & ( 
-- ((\ROM1|memROM~14_combout\ & (\RAM1|ram~118_q\ & (!\ROM1|memROM~17_combout\ & !\ROM1|memROM~19_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000000000000000110000000001000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~278_q\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \RAM1|ALT_INV_ram~118_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	datag => \RAM1|ALT_INV_ram~22_q\,
	combout => \RAM1|ram~580_combout\);

\RAM1|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~50_combout\,
	ena => \RAM1|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~62_q\);

\RAM1|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~50_combout\,
	ena => \RAM1|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~30_q\);

\RAM1|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~555_combout\ = ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~16_combout\ & ( (\RAM1|ram~62_q\ & (!\ROM1|memROM~19_combout\ & !\ROM1|memROM~17_combout\)) ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~16_combout\ & ( 
-- (!\ROM1|memROM~19_combout\ & (!\ROM1|memROM~17_combout\ & \RAM1|ram~30_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000010000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~62_q\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \RAM1|ALT_INV_ram~30_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \RAM1|ram~555_combout\);

\RAM1|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~50_combout\,
	ena => \RAM1|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~38_q\);

\RAM1|ram~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~50_combout\,
	ena => \RAM1|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~294_q\);

\RAM1|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~556_combout\ = ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~16_combout\ & ( (!\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~19_combout\ & (\RAM1|ram~38_q\)) # (\ROM1|memROM~19_combout\ & ((\RAM1|ram~294_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~38_q\,
	datab => \RAM1|ALT_INV_ram~294_q\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \RAM1|ram~556_combout\);

\RAM1|ram~526\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~50_combout\,
	ena => \RAM1|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~526_q\);

\RAM1|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~557_combout\ = ( \ROM1|memROM~17_combout\ & ( (\RAM1|ram~526_q\ & (\ROM1|memROM~19_combout\ & (\ROM1|memROM~16_combout\ & \ROM1|memROM~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~526_q\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~557_combout\);

\RAM1|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~558_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~12_combout\ & ( \RAM1|ram~557_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~12_combout\ & ( \RAM1|ram~556_combout\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( 
-- !\ROM1|memROM~12_combout\ & ( \RAM1|ram~555_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~12_combout\ & ( \RAM1|ram~580_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~580_combout\,
	datab => \RAM1|ALT_INV_ram~555_combout\,
	datac => \RAM1|ALT_INV_ram~556_combout\,
	datad => \RAM1|ALT_INV_ram~557_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~558_combout\);

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\processador|MUX1|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[7]~7_combout\ = ( \RAM1|ram~558_combout\ & ( \SW[7]~input_o\ & ( (!\ROM1|memROM~17_combout\ & \processador|decoderInstru1|saida~1_combout\) ) ) ) # ( !\RAM1|ram~558_combout\ & ( \SW[7]~input_o\ & ( 
-- (!\processador|decoderInstru1|saida~1_combout\ & ((\RAM1|dado_out~0_combout\))) # (\processador|decoderInstru1|saida~1_combout\ & (!\ROM1|memROM~17_combout\)) ) ) ) # ( \RAM1|ram~558_combout\ & ( !\SW[7]~input_o\ & ( 
-- (!\processador|decoderInstru1|saida~1_combout\ & ((\comb~2_combout\))) # (\processador|decoderInstru1|saida~1_combout\ & (!\ROM1|memROM~17_combout\)) ) ) ) # ( !\RAM1|ram~558_combout\ & ( !\SW[7]~input_o\ & ( (!\processador|decoderInstru1|saida~1_combout\ 
-- & (((\RAM1|dado_out~0_combout\) # (\comb~2_combout\)))) # (\processador|decoderInstru1|saida~1_combout\ & (!\ROM1|memROM~17_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111011101110001011100010111000100010111011100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datac => \ALT_INV_comb~2_combout\,
	datad => \RAM1|ALT_INV_dado_out~0_combout\,
	datae => \RAM1|ALT_INV_ram~558_combout\,
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \processador|MUX1|saida_MUX[7]~7_combout\);

\SW_0_7|saida[7]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_0_7|saida[7]~14_combout\ = (!\comb~2_combout\ & ((!\RAM1|dado_out~0_combout\) # ((\RAM1|ram~558_combout\)))) # (\comb~2_combout\ & (\SW[7]~input_o\ & ((!\RAM1|dado_out~0_combout\) # (\RAM1|ram~558_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101011001111100010101100111110001010110011111000101011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~2_combout\,
	datab => \RAM1|ALT_INV_dado_out~0_combout\,
	datac => \RAM1|ALT_INV_ram~558_combout\,
	datad => \ALT_INV_SW[7]~input_o\,
	combout => \SW_0_7|saida[7]~14_combout\);

\processador|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~29_sumout\ = SUM(( \processador|BANCO_REGISTRADORES|registrador~50_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & ((\SW_0_7|saida[7]~14_combout\))) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (\ROM1|memROM~17_combout\)) ) + ( \processador|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~50_combout\,
	dataf => \SW_0_7|ALT_INV_saida[7]~14_combout\,
	cin => \processador|ULA1|Add0~26\,
	sumout => \processador|ULA1|Add0~29_sumout\);

\processador|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[7]~7_combout\ = ( \processador|ULA1|Add0~29_sumout\ & ( \processador|ULA1|Add1~29_sumout\ & ( ((!\processador|MUX1|saida_MUX[7]~7_combout\ & ((!\processador|decoderInstru1|saida~0_combout\) # 
-- (\processador|BANCO_REGISTRADORES|registrador~50_combout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\) ) ) ) # ( !\processador|ULA1|Add0~29_sumout\ & ( \processador|ULA1|Add1~29_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\ & 
-- (!\processador|MUX1|saida_MUX[7]~7_combout\ & ((!\processador|decoderInstru1|saida~0_combout\) # (\processador|BANCO_REGISTRADORES|registrador~50_combout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\ & 
-- (!\processador|decoderInstru1|saida~0_combout\)) ) ) ) # ( \processador|ULA1|Add0~29_sumout\ & ( !\processador|ULA1|Add1~29_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\ & (!\processador|MUX1|saida_MUX[7]~7_combout\ & 
-- ((!\processador|decoderInstru1|saida~0_combout\) # (\processador|BANCO_REGISTRADORES|registrador~50_combout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\ & (\processador|decoderInstru1|saida~0_combout\)) ) ) ) # ( 
-- !\processador|ULA1|Add0~29_sumout\ & ( !\processador|ULA1|Add1~29_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\ & (!\processador|MUX1|saida_MUX[7]~7_combout\ & ((!\processador|decoderInstru1|saida~0_combout\) # 
-- (\processador|BANCO_REGISTRADORES|registrador~50_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000000000101101010000010110111010000010101011111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~0_combout\,
	datab => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~50_combout\,
	datac => \processador|decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datad => \processador|MUX1|ALT_INV_saida_MUX[7]~7_combout\,
	datae => \processador|ULA1|ALT_INV_Add0~29_sumout\,
	dataf => \processador|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \processador|ULA1|saida[7]~7_combout\);

\processador|BANCO_REGISTRADORES|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|ULA1|saida[7]~7_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~18_q\);

\processador|BANCO_REGISTRADORES|registrador~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|ULA1|saida[7]~7_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~26_q\);

\processador|BANCO_REGISTRADORES|registrador~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|ULA1|saida[7]~7_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~34_q\);

\processador|BANCO_REGISTRADORES|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|ULA1|saida[7]~7_combout\,
	ena => \processador|BANCO_REGISTRADORES|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|BANCO_REGISTRADORES|registrador~42_q\);

\processador|BANCO_REGISTRADORES|registrador~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|BANCO_REGISTRADORES|registrador~50_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~5_combout\ & ( \processador|BANCO_REGISTRADORES|registrador~42_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~5_combout\ & ( 
-- \processador|BANCO_REGISTRADORES|registrador~34_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~5_combout\ & ( \processador|BANCO_REGISTRADORES|registrador~26_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~5_combout\ & ( 
-- \processador|BANCO_REGISTRADORES|registrador~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~18_q\,
	datab => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~26_q\,
	datac => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~34_q\,
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~42_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \processador|BANCO_REGISTRADORES|registrador~50_combout\);

\processador|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~29_sumout\ = SUM(( \processador|BANCO_REGISTRADORES|registrador~50_combout\ ) + ( (!\processador|decoderInstru1|saida~1_combout\ & ((!\SW_0_7|saida[7]~14_combout\))) # (\processador|decoderInstru1|saida~1_combout\ & 
-- (!\ROM1|memROM~17_combout\)) ) + ( \processador|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100011011101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~50_combout\,
	dataf => \SW_0_7|ALT_INV_saida[7]~14_combout\,
	cin => \processador|ULA1|Add1~26\,
	sumout => \processador|ULA1|Add1~29_sumout\);

\processador|FLAG|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|FLAG|DOUT~1_combout\ = (!\ROM1|memROM~23_combout\ & (!\ROM1|memROM~26_combout\ & (!\ROM1|memROM~27_combout\ & \ROM1|memROM~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~23_combout\,
	datab => \ROM1|ALT_INV_memROM~26_combout\,
	datac => \ROM1|ALT_INV_memROM~27_combout\,
	datad => \ROM1|ALT_INV_memROM~29_combout\,
	combout => \processador|FLAG|DOUT~1_combout\);

\processador|FLAG|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|FLAG|DOUT~2_combout\ = ( \processador|FLAG|DOUT~q\ & ( \processador|FLAG|DOUT~1_combout\ & ( (!\processador|ULA1|Add1~1_sumout\ & (!\processador|ULA1|Add1~5_sumout\ & (!\processador|ULA1|Add1~9_sumout\ & !\processador|ULA1|Add1~13_sumout\))) 
-- ) ) ) # ( !\processador|FLAG|DOUT~q\ & ( \processador|FLAG|DOUT~1_combout\ & ( (!\processador|ULA1|Add1~1_sumout\ & (!\processador|ULA1|Add1~5_sumout\ & (!\processador|ULA1|Add1~9_sumout\ & !\processador|ULA1|Add1~13_sumout\))) ) ) ) # ( 
-- \processador|FLAG|DOUT~q\ & ( !\processador|FLAG|DOUT~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA1|ALT_INV_Add1~1_sumout\,
	datab => \processador|ULA1|ALT_INV_Add1~5_sumout\,
	datac => \processador|ULA1|ALT_INV_Add1~9_sumout\,
	datad => \processador|ULA1|ALT_INV_Add1~13_sumout\,
	datae => \processador|FLAG|ALT_INV_DOUT~q\,
	dataf => \processador|FLAG|ALT_INV_DOUT~1_combout\,
	combout => \processador|FLAG|DOUT~2_combout\);

\processador|FLAG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|FLAG|DOUT~0_combout\ = ( \processador|FLAG|DOUT~1_combout\ & ( \processador|FLAG|DOUT~2_combout\ & ( (!\processador|ULA1|Add1~17_sumout\ & (!\processador|ULA1|Add1~21_sumout\ & (!\processador|ULA1|Add1~25_sumout\ & 
-- !\processador|ULA1|Add1~29_sumout\))) ) ) ) # ( !\processador|FLAG|DOUT~1_combout\ & ( \processador|FLAG|DOUT~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA1|ALT_INV_Add1~17_sumout\,
	datab => \processador|ULA1|ALT_INV_Add1~21_sumout\,
	datac => \processador|ULA1|ALT_INV_Add1~25_sumout\,
	datad => \processador|ULA1|ALT_INV_Add1~29_sumout\,
	datae => \processador|FLAG|ALT_INV_DOUT~1_combout\,
	dataf => \processador|FLAG|ALT_INV_DOUT~2_combout\,
	combout => \processador|FLAG|DOUT~0_combout\);

\processador|FLAG|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|FLAG|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|FLAG|DOUT~q\);

\processador|MUX2|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|Equal1~0_combout\ = ( \processador|FLAG|DOUT~q\ & ( (!\ROM1|memROM~26_combout\ & (\ROM1|memROM~23_combout\ & (!\ROM1|memROM~27_combout\ & \ROM1|memROM~29_combout\))) # (\ROM1|memROM~26_combout\ & (((\ROM1|memROM~27_combout\ & 
-- !\ROM1|memROM~29_combout\)))) ) ) # ( !\processador|FLAG|DOUT~q\ & ( (!\ROM1|memROM~23_combout\ & (\ROM1|memROM~26_combout\ & (\ROM1|memROM~27_combout\ & !\ROM1|memROM~29_combout\))) # (\ROM1|memROM~23_combout\ & (!\ROM1|memROM~26_combout\ & 
-- (!\ROM1|memROM~27_combout\ & \ROM1|memROM~29_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000000000000110100000000000010010000000000001101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~23_combout\,
	datab => \ROM1|ALT_INV_memROM~26_combout\,
	datac => \ROM1|ALT_INV_memROM~27_combout\,
	datad => \ROM1|ALT_INV_memROM~29_combout\,
	datae => \processador|FLAG|ALT_INV_DOUT~q\,
	combout => \processador|MUX2|Equal1~0_combout\);

\processador|REG_RET|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|incrementaPC|Add0~25_sumout\,
	ena => \processador|LOG_DESVIO|SelMuxPC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(6));

\processador|MUX2|MUX_OUT[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[6]~6_combout\ = ( \processador|REG_RET|DOUT\(6) & ( (!\processador|MUX2|Equal2~0_combout\ & (((\processador|incrementaPC|Add0~25_sumout\)))) # (\processador|MUX2|Equal2~0_combout\ & (((!\processador|MUX2|Equal1~0_combout\)) # 
-- (\ROM1|memROM~20_combout\))) ) ) # ( !\processador|REG_RET|DOUT\(6) & ( (!\processador|MUX2|Equal2~0_combout\ & (((\processador|incrementaPC|Add0~25_sumout\)))) # (\processador|MUX2|Equal2~0_combout\ & (\ROM1|memROM~20_combout\ & 
-- (\processador|MUX2|Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \processador|MUX2|ALT_INV_Equal2~0_combout\,
	datac => \processador|MUX2|ALT_INV_Equal1~0_combout\,
	datad => \processador|incrementaPC|ALT_INV_Add0~25_sumout\,
	datae => \processador|REG_RET|ALT_INV_DOUT\(6),
	combout => \processador|MUX2|MUX_OUT[6]~6_combout\);

\processador|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX2|MUX_OUT[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(6));

\ROM1|memROM~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~25_combout\ = (!\processador|PC|DOUT\(5) & (!\processador|PC|DOUT\(6) & (!\processador|PC|DOUT\(7) & !\processador|PC|DOUT\(8))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(5),
	datab => \processador|PC|ALT_INV_DOUT\(6),
	datac => \processador|PC|ALT_INV_DOUT\(7),
	datad => \processador|PC|ALT_INV_DOUT\(8),
	combout => \ROM1|memROM~25_combout\);

\ROM1|memROM~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~26_combout\ = (\ROM1|memROM~24_combout\ & \ROM1|memROM~25_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~24_combout\,
	datab => \ROM1|ALT_INV_memROM~25_combout\,
	combout => \ROM1|memROM~26_combout\);

\processador|MUX2|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|Equal2~0_combout\ = ( \processador|FLAG|DOUT~q\ & ( (!\ROM1|memROM~27_combout\ & (\ROM1|memROM~29_combout\ & (!\ROM1|memROM~23_combout\ $ (!\ROM1|memROM~26_combout\)))) # (\ROM1|memROM~27_combout\ & (((\ROM1|memROM~26_combout\ & 
-- !\ROM1|memROM~29_combout\)))) ) ) # ( !\processador|FLAG|DOUT~q\ & ( (!\ROM1|memROM~23_combout\ & (\ROM1|memROM~26_combout\ & (!\ROM1|memROM~27_combout\ $ (!\ROM1|memROM~29_combout\)))) # (\ROM1|memROM~23_combout\ & (!\ROM1|memROM~26_combout\ & 
-- (!\ROM1|memROM~27_combout\ & \ROM1|memROM~29_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100000000000110110000000000010011000000000001101100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~23_combout\,
	datab => \ROM1|ALT_INV_memROM~26_combout\,
	datac => \ROM1|ALT_INV_memROM~27_combout\,
	datad => \ROM1|ALT_INV_memROM~29_combout\,
	datae => \processador|FLAG|ALT_INV_DOUT~q\,
	combout => \processador|MUX2|Equal2~0_combout\);

\processador|REG_RET|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|incrementaPC|Add0~13_sumout\,
	ena => \processador|LOG_DESVIO|SelMuxPC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(3));

\processador|MUX2|MUX_OUT[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[3]~3_combout\ = ( \processador|REG_RET|DOUT\(3) & ( (!\processador|MUX2|Equal2~0_combout\ & (((\processador|incrementaPC|Add0~13_sumout\)))) # (\processador|MUX2|Equal2~0_combout\ & (((!\processador|MUX2|Equal1~0_combout\)) # 
-- (\ROM1|memROM~16_combout\))) ) ) # ( !\processador|REG_RET|DOUT\(3) & ( (!\processador|MUX2|Equal2~0_combout\ & (((\processador|incrementaPC|Add0~13_sumout\)))) # (\processador|MUX2|Equal2~0_combout\ & (\ROM1|memROM~16_combout\ & 
-- (\processador|MUX2|Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \processador|MUX2|ALT_INV_Equal2~0_combout\,
	datac => \processador|MUX2|ALT_INV_Equal1~0_combout\,
	datad => \processador|incrementaPC|ALT_INV_Add0~13_sumout\,
	datae => \processador|REG_RET|ALT_INV_DOUT\(3),
	combout => \processador|MUX2|MUX_OUT[3]~3_combout\);

\processador|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX2|MUX_OUT[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(3));

\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = (\processador|PC|DOUT\(3) & (!\processador|PC|DOUT\(2) $ (((!\processador|PC|DOUT\(0) & !\processador|PC|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111000000000000111100000000000011110000000000001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~13_combout\);

\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = (!\processador|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & \ROM1|memROM~13_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \ROM1|memROM~14_combout\);

\processador|REG_RET|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|incrementaPC|Add0~9_sumout\,
	ena => \processador|LOG_DESVIO|SelMuxPC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(2));

\processador|MUX2|MUX_OUT[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[2]~2_combout\ = ( \processador|REG_RET|DOUT\(2) & ( (!\processador|MUX2|Equal2~0_combout\ & (((\processador|incrementaPC|Add0~9_sumout\)))) # (\processador|MUX2|Equal2~0_combout\ & (((!\processador|MUX2|Equal1~0_combout\)) # 
-- (\ROM1|memROM~14_combout\))) ) ) # ( !\processador|REG_RET|DOUT\(2) & ( (!\processador|MUX2|Equal2~0_combout\ & (((\processador|incrementaPC|Add0~9_sumout\)))) # (\processador|MUX2|Equal2~0_combout\ & (\ROM1|memROM~14_combout\ & 
-- (\processador|MUX2|Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \processador|MUX2|ALT_INV_Equal2~0_combout\,
	datac => \processador|MUX2|ALT_INV_Equal1~0_combout\,
	datad => \processador|incrementaPC|ALT_INV_Add0~9_sumout\,
	datae => \processador|REG_RET|ALT_INV_DOUT\(2),
	combout => \processador|MUX2|MUX_OUT[2]~2_combout\);

\processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX2|MUX_OUT[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(2));

\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = (\processador|PC|DOUT\(2) & (\processador|PC|DOUT\(3) & ((!\processador|PC|DOUT\(0)) # (\processador|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001011000000000000101100000000000010110000000000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~11_combout\);

\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = (!\processador|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & \ROM1|memROM~11_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \ROM1|memROM~12_combout\);

\processador|REG_RET|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|incrementaPC|Add0~5_sumout\,
	ena => \processador|LOG_DESVIO|SelMuxPC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(1));

\processador|MUX2|MUX_OUT[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[1]~1_combout\ = ( \processador|REG_RET|DOUT\(1) & ( (!\processador|MUX2|Equal2~0_combout\ & (((\processador|incrementaPC|Add0~5_sumout\)))) # (\processador|MUX2|Equal2~0_combout\ & (((!\processador|MUX2|Equal1~0_combout\)) # 
-- (\ROM1|memROM~12_combout\))) ) ) # ( !\processador|REG_RET|DOUT\(1) & ( (!\processador|MUX2|Equal2~0_combout\ & (((\processador|incrementaPC|Add0~5_sumout\)))) # (\processador|MUX2|Equal2~0_combout\ & (\ROM1|memROM~12_combout\ & 
-- (\processador|MUX2|Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \processador|MUX2|ALT_INV_Equal2~0_combout\,
	datac => \processador|MUX2|ALT_INV_Equal1~0_combout\,
	datad => \processador|incrementaPC|ALT_INV_Add0~5_sumout\,
	datae => \processador|REG_RET|ALT_INV_DOUT\(1),
	combout => \processador|MUX2|MUX_OUT[1]~1_combout\);

\processador|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX2|MUX_OUT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(1));

\ROM1|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~18_combout\ = (\processador|PC|DOUT\(2) & (!\processador|PC|DOUT\(0) $ (((!\processador|PC|DOUT\(3)) # (\processador|PC|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001001000001010000100100000101000010010000010100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~18_combout\);

\ROM1|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~19_combout\ = (!\processador|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & \ROM1|memROM~18_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~18_combout\,
	combout => \ROM1|memROM~19_combout\);

\processador|REG_RET|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|incrementaPC|Add0~21_sumout\,
	ena => \processador|LOG_DESVIO|SelMuxPC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(5));

\processador|MUX2|MUX_OUT[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[5]~5_combout\ = ( \processador|REG_RET|DOUT\(5) & ( (!\processador|MUX2|Equal2~0_combout\ & (((\processador|incrementaPC|Add0~21_sumout\)))) # (\processador|MUX2|Equal2~0_combout\ & (((!\processador|MUX2|Equal1~0_combout\)) # 
-- (\ROM1|memROM~19_combout\))) ) ) # ( !\processador|REG_RET|DOUT\(5) & ( (!\processador|MUX2|Equal2~0_combout\ & (((\processador|incrementaPC|Add0~21_sumout\)))) # (\processador|MUX2|Equal2~0_combout\ & (\ROM1|memROM~19_combout\ & 
-- (\processador|MUX2|Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \processador|MUX2|ALT_INV_Equal2~0_combout\,
	datac => \processador|MUX2|ALT_INV_Equal1~0_combout\,
	datad => \processador|incrementaPC|ALT_INV_Add0~21_sumout\,
	datae => \processador|REG_RET|ALT_INV_DOUT\(5),
	combout => \processador|MUX2|MUX_OUT[5]~5_combout\);

\processador|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX2|MUX_OUT[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(5));

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = (!\processador|PC|DOUT\(4) & (!\processador|PC|DOUT\(5) & (!\processador|PC|DOUT\(6) & !\processador|PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(4),
	datab => \processador|PC|ALT_INV_DOUT\(5),
	datac => \processador|PC|ALT_INV_DOUT\(6),
	datad => \processador|PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~1_combout\);

\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = (!\processador|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & \ROM1|memROM~9_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ROM1|memROM~10_combout\);

\processador|REG_RET|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|incrementaPC|Add0~1_sumout\,
	ena => \processador|LOG_DESVIO|SelMuxPC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(0));

\processador|MUX2|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[0]~0_combout\ = ( \processador|REG_RET|DOUT\(0) & ( (!\processador|MUX2|Equal2~0_combout\ & (((\processador|incrementaPC|Add0~1_sumout\)))) # (\processador|MUX2|Equal2~0_combout\ & (((!\processador|MUX2|Equal1~0_combout\)) # 
-- (\ROM1|memROM~10_combout\))) ) ) # ( !\processador|REG_RET|DOUT\(0) & ( (!\processador|MUX2|Equal2~0_combout\ & (((\processador|incrementaPC|Add0~1_sumout\)))) # (\processador|MUX2|Equal2~0_combout\ & (\ROM1|memROM~10_combout\ & 
-- ((\processador|MUX2|Equal1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110101001111110011010100110000001101010011111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \processador|incrementaPC|ALT_INV_Add0~1_sumout\,
	datac => \processador|MUX2|ALT_INV_Equal2~0_combout\,
	datad => \processador|MUX2|ALT_INV_Equal1~0_combout\,
	datae => \processador|REG_RET|ALT_INV_DOUT\(0),
	combout => \processador|MUX2|MUX_OUT[0]~0_combout\);

\processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX2|MUX_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(0));

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = (!\processador|PC|DOUT\(0) & (!\processador|PC|DOUT\(1) & (\processador|PC|DOUT\(2) & \processador|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~8_combout\);

\ROM1|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~17_combout\ = (\ROM1|memROM~4_combout\ & \ROM1|memROM~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \ROM1|memROM~17_combout\);

\processador|REG_RET|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|incrementaPC|Add0~17_sumout\,
	ena => \processador|LOG_DESVIO|SelMuxPC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(4));

\processador|MUX2|MUX_OUT[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[4]~4_combout\ = ( \processador|REG_RET|DOUT\(4) & ( (!\processador|MUX2|Equal2~0_combout\ & (((\processador|incrementaPC|Add0~17_sumout\)))) # (\processador|MUX2|Equal2~0_combout\ & (((!\processador|MUX2|Equal1~0_combout\)) # 
-- (\ROM1|memROM~17_combout\))) ) ) # ( !\processador|REG_RET|DOUT\(4) & ( (!\processador|MUX2|Equal2~0_combout\ & (((\processador|incrementaPC|Add0~17_sumout\)))) # (\processador|MUX2|Equal2~0_combout\ & (\ROM1|memROM~17_combout\ & 
-- (\processador|MUX2|Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \processador|MUX2|ALT_INV_Equal2~0_combout\,
	datac => \processador|MUX2|ALT_INV_Equal1~0_combout\,
	datad => \processador|incrementaPC|ALT_INV_Add0~17_sumout\,
	datae => \processador|REG_RET|ALT_INV_DOUT\(4),
	combout => \processador|MUX2|MUX_OUT[4]~4_combout\);

\processador|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX2|MUX_OUT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(4));

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( !\processador|PC|DOUT\(8) & ( (!\processador|PC|DOUT\(4) & (!\processador|PC|DOUT\(5) & (!\processador|PC|DOUT\(6) & !\processador|PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(4),
	datab => \processador|PC|ALT_INV_DOUT\(5),
	datac => \processador|PC|ALT_INV_DOUT\(6),
	datad => \processador|PC|ALT_INV_DOUT\(7),
	datae => \processador|PC|ALT_INV_DOUT\(8),
	combout => \ROM1|memROM~4_combout\);

\ROM1|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~21_combout\ = (\ROM1|memROM~4_combout\ & \ROM1|memROM~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \ROM1|memROM~21_combout\);

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

\processador|REG_RET|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|incrementaPC|Add0~33_sumout\,
	ena => \processador|LOG_DESVIO|SelMuxPC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(8));

\processador|MUX2|MUX_OUT[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[8]~8_combout\ = ( \processador|REG_RET|DOUT\(8) & ( (!\processador|MUX2|Equal2~0_combout\ & (((\processador|incrementaPC|Add0~33_sumout\)))) # (\processador|MUX2|Equal2~0_combout\ & (((!\processador|MUX2|Equal1~0_combout\)) # 
-- (\ROM1|memROM~21_combout\))) ) ) # ( !\processador|REG_RET|DOUT\(8) & ( (!\processador|MUX2|Equal2~0_combout\ & (((\processador|incrementaPC|Add0~33_sumout\)))) # (\processador|MUX2|Equal2~0_combout\ & (\ROM1|memROM~21_combout\ & 
-- (\processador|MUX2|Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~21_combout\,
	datab => \processador|MUX2|ALT_INV_Equal2~0_combout\,
	datac => \processador|MUX2|ALT_INV_Equal1~0_combout\,
	datad => \processador|incrementaPC|ALT_INV_Add0~33_sumout\,
	datae => \processador|REG_RET|ALT_INV_DOUT\(8),
	combout => \processador|MUX2|MUX_OUT[8]~8_combout\);

\processador|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX2|MUX_OUT[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(8));

\decoderBloco|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderBloco|Equal7~0_combout\ = ( \ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~1_combout\) # (\processador|PC|DOUT\(8)) ) ) # ( !\ROM1|memROM~8_combout\ & ( ((!\ROM1|memROM~1_combout\) # ((!\ROM1|memROM~6_combout\ & !\ROM1|memROM~7_combout\))) # 
-- (\processador|PC|DOUT\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111011101110111011101110111111101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \decoderBloco|Equal7~0_combout\);

\RAM1|dado_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out~0_combout\ = ( \ROM1|memROM~23_combout\ & ( (\decoderBloco|Equal7~0_combout\ & (!\ROM1|memROM~27_combout\ & ((!\ROM1|memROM~29_combout\) # (\ROM1|memROM~26_combout\)))) ) ) # ( !\ROM1|memROM~23_combout\ & ( (\decoderBloco|Equal7~0_combout\ 
-- & (!\ROM1|memROM~27_combout\ & (!\ROM1|memROM~29_combout\ $ (!\ROM1|memROM~26_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001000000010000000101000000010000010000000100000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datab => \ROM1|ALT_INV_memROM~29_combout\,
	datac => \ROM1|ALT_INV_memROM~27_combout\,
	datad => \ROM1|ALT_INV_memROM~26_combout\,
	datae => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM1|dado_out~0_combout\);

\KEY_3|saida[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \KEY_3|saida[0]~8_combout\ = ( !\KEY_3|saida[0]~4_combout\ & ( !\KEY_3|saida[0]~5_combout\ & ( (!\KEY_3|saida[0]~3_combout\ & ((!\RAM1|dado_out~0_combout\) # (\RAM1|ram~527_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~0_combout\,
	datab => \RAM1|ALT_INV_ram~527_combout\,
	datad => \KEY_3|ALT_INV_saida[0]~3_combout\,
	datae => \KEY_3|ALT_INV_saida[0]~4_combout\,
	dataf => \KEY_3|ALT_INV_saida[0]~5_combout\,
	combout => \KEY_3|saida[0]~8_combout\);

\SW_0_7|saida[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \SW_0_7|saida[1]~8_combout\ = ( \processador|decoderInstru1|saida~4_combout\ & ( \KEY_3|saida[0]~1_combout\ & ( ((!\ROM1|memROM~14_combout\ & !\comb~0_combout\)) # (\decoderBloco|Equal7~0_combout\) ) ) ) # ( !\processador|decoderInstru1|saida~4_combout\ & 
-- ( \KEY_3|saida[0]~1_combout\ & ( (\processador|decoderInstru1|saida~3_combout\ & (((!\ROM1|memROM~14_combout\ & !\comb~0_combout\)) # (\decoderBloco|Equal7~0_combout\))) ) ) ) # ( \processador|decoderInstru1|saida~4_combout\ & ( 
-- !\KEY_3|saida[0]~1_combout\ & ( \decoderBloco|Equal7~0_combout\ ) ) ) # ( !\processador|decoderInstru1|saida~4_combout\ & ( !\KEY_3|saida[0]~1_combout\ & ( (\decoderBloco|Equal7~0_combout\ & \processador|decoderInstru1|saida~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101010101010101010100000000110101011101010111010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderBloco|ALT_INV_Equal7~0_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \processador|decoderInstru1|ALT_INV_saida~3_combout\,
	datae => \processador|decoderInstru1|ALT_INV_saida~4_combout\,
	dataf => \KEY_3|ALT_INV_saida[0]~1_combout\,
	combout => \SW_0_7|saida[1]~8_combout\);

\logica_Seven_Seg|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|comb~0_combout\ = ( !\ROM1|memROM~8_combout\ & ( !\ROM1|memROM~13_combout\ & ( (!\processador|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~6_combout\ & !\ROM1|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \logica_Seven_Seg|comb~0_combout\);

\logica_LED|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|comb~0_combout\ = (\ROM1|memROM~27_combout\ & (\processador|decoderInstru1|Equal11~0_combout\ & (!\comb~0_combout\ & \logica_Seven_Seg|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~27_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \logica_Seven_Seg|ALT_INV_comb~0_combout\,
	combout => \logica_LED|comb~0_combout\);

\logica_LED|REG_LEDS|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~43_combout\,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(0));

\logica_LED|REG_LEDS|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~44_combout\,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(1));

\logica_LED|REG_LEDS|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~45_combout\,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(2));

\logica_LED|REG_LEDS|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~46_combout\,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(3));

\logica_LED|REG_LEDS|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~47_combout\,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(4));

\logica_LED|REG_LEDS|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~48_combout\,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(5));

\logica_LED|REG_LEDS|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~49_combout\,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(6));

\logica_LED|REG_LEDS|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~50_combout\,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(7));

\logica_Seven_Seg|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|comb~1_combout\ = (\ROM1|memROM~27_combout\ & (\processador|decoderInstru1|Equal11~0_combout\ & \logica_Seven_Seg|comb~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~27_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datac => \logica_Seven_Seg|ALT_INV_comb~0_combout\,
	combout => \logica_Seven_Seg|comb~1_combout\);

\logica_LED|FlipFlop1|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|FlipFlop1|DOUT~0_combout\ = ( \ROM1|memROM~19_combout\ & ( \logica_Seven_Seg|comb~1_combout\ & ( \logica_LED|FlipFlop1|DOUT~q\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( \logica_Seven_Seg|comb~1_combout\ & ( (!\ROM1|memROM~10_combout\ & 
-- (\logica_LED|FlipFlop1|DOUT~q\)) # (\ROM1|memROM~10_combout\ & ((!\ROM1|memROM~12_combout\ & ((\processador|BANCO_REGISTRADORES|registrador~43_combout\))) # (\ROM1|memROM~12_combout\ & (\logica_LED|FlipFlop1|DOUT~q\)))) ) ) ) # ( \ROM1|memROM~19_combout\ 
-- & ( !\logica_Seven_Seg|comb~1_combout\ & ( \logica_LED|FlipFlop1|DOUT~q\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( !\logica_Seven_Seg|comb~1_combout\ & ( \logica_LED|FlipFlop1|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010011010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_LED|FlipFlop1|ALT_INV_DOUT~q\,
	datab => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \logica_Seven_Seg|ALT_INV_comb~1_combout\,
	combout => \logica_LED|FlipFlop1|DOUT~0_combout\);

\logica_LED|FlipFlop1|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \logica_LED|FlipFlop1|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|FlipFlop1|DOUT~q\);

\logica_LED|FlipFlop2|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|FlipFlop2|DOUT~0_combout\ = ( \RESET_510~0_combout\ & ( (!\ROM1|memROM~19_combout\ & ((!\logica_Seven_Seg|comb~1_combout\ & (\logica_LED|FlipFlop2|DOUT~q\)) # (\logica_Seven_Seg|comb~1_combout\ & 
-- ((\processador|BANCO_REGISTRADORES|registrador~43_combout\))))) # (\ROM1|memROM~19_combout\ & (\logica_LED|FlipFlop2|DOUT~q\)) ) ) # ( !\RESET_510~0_combout\ & ( \logica_LED|FlipFlop2|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010011010101010101010101010101010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_LED|FlipFlop2|ALT_INV_DOUT~q\,
	datab => \processador|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \logica_Seven_Seg|ALT_INV_comb~1_combout\,
	datae => \ALT_INV_RESET_510~0_combout\,
	combout => \logica_LED|FlipFlop2|DOUT~0_combout\);

\logica_LED|FlipFlop2|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \logica_LED|FlipFlop2|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|FlipFlop2|DOUT~q\);

\logica_Seven_Seg|comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|comb~3_combout\ = (\ROM1|memROM~27_combout\ & (\processador|decoderInstru1|Equal11~0_combout\ & (\logica_Seven_Seg|comb~0_combout\ & \logica_Seven_Seg|comb~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~27_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datac => \logica_Seven_Seg|ALT_INV_comb~0_combout\,
	datad => \logica_Seven_Seg|ALT_INV_comb~2_combout\,
	combout => \logica_Seven_Seg|comb~3_combout\);

\logica_Seven_Seg|REG0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~43_combout\,
	ena => \logica_Seven_Seg|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG0|DOUT\(0));

\logica_Seven_Seg|REG0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~46_combout\,
	ena => \logica_Seven_Seg|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG0|DOUT\(3));

\logica_Seven_Seg|REG0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~44_combout\,
	ena => \logica_Seven_Seg|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG0|DOUT\(1));

\logica_Seven_Seg|REG0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~45_combout\,
	ena => \logica_Seven_Seg|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG0|DOUT\(2));

\logica_Seven_Seg|H0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[0]~0_combout\ = (!\logica_Seven_Seg|REG0|DOUT\(3) & (!\logica_Seven_Seg|REG0|DOUT\(1) & (!\logica_Seven_Seg|REG0|DOUT\(0) $ (!\logica_Seven_Seg|REG0|DOUT\(2))))) # (\logica_Seven_Seg|REG0|DOUT\(3) & 
-- (\logica_Seven_Seg|REG0|DOUT\(0) & (!\logica_Seven_Seg|REG0|DOUT\(1) $ (!\logica_Seven_Seg|REG0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[0]~0_combout\);

\logica_Seven_Seg|H0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[1]~1_combout\ = (!\logica_Seven_Seg|REG0|DOUT\(3) & (\logica_Seven_Seg|REG0|DOUT\(2) & (!\logica_Seven_Seg|REG0|DOUT\(0) $ (!\logica_Seven_Seg|REG0|DOUT\(1))))) # (\logica_Seven_Seg|REG0|DOUT\(3) & 
-- ((!\logica_Seven_Seg|REG0|DOUT\(0) & ((\logica_Seven_Seg|REG0|DOUT\(2)))) # (\logica_Seven_Seg|REG0|DOUT\(0) & (\logica_Seven_Seg|REG0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[1]~1_combout\);

\logica_Seven_Seg|H0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[2]~2_combout\ = (!\logica_Seven_Seg|REG0|DOUT\(3) & (!\logica_Seven_Seg|REG0|DOUT\(0) & (\logica_Seven_Seg|REG0|DOUT\(1) & !\logica_Seven_Seg|REG0|DOUT\(2)))) # (\logica_Seven_Seg|REG0|DOUT\(3) & 
-- (\logica_Seven_Seg|REG0|DOUT\(2) & ((!\logica_Seven_Seg|REG0|DOUT\(0)) # (\logica_Seven_Seg|REG0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[2]~2_combout\);

\logica_Seven_Seg|H0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[3]~3_combout\ = (!\logica_Seven_Seg|REG0|DOUT\(1) & (!\logica_Seven_Seg|REG0|DOUT\(3) & (!\logica_Seven_Seg|REG0|DOUT\(0) $ (!\logica_Seven_Seg|REG0|DOUT\(2))))) # (\logica_Seven_Seg|REG0|DOUT\(1) & 
-- ((!\logica_Seven_Seg|REG0|DOUT\(0) & (!\logica_Seven_Seg|REG0|DOUT\(2) & \logica_Seven_Seg|REG0|DOUT\(3))) # (\logica_Seven_Seg|REG0|DOUT\(0) & (\logica_Seven_Seg|REG0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[3]~3_combout\);

\logica_Seven_Seg|H0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[4]~4_combout\ = (!\logica_Seven_Seg|REG0|DOUT\(1) & ((!\logica_Seven_Seg|REG0|DOUT\(2) & ((\logica_Seven_Seg|REG0|DOUT\(0)))) # (\logica_Seven_Seg|REG0|DOUT\(2) & (!\logica_Seven_Seg|REG0|DOUT\(3))))) # 
-- (\logica_Seven_Seg|REG0|DOUT\(1) & (!\logica_Seven_Seg|REG0|DOUT\(3) & ((\logica_Seven_Seg|REG0|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	datab => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[4]~4_combout\);

\logica_Seven_Seg|H0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[5]~5_combout\ = (!\logica_Seven_Seg|REG0|DOUT\(0) & (\logica_Seven_Seg|REG0|DOUT\(1) & (!\logica_Seven_Seg|REG0|DOUT\(2) & !\logica_Seven_Seg|REG0|DOUT\(3)))) # (\logica_Seven_Seg|REG0|DOUT\(0) & 
-- (!\logica_Seven_Seg|REG0|DOUT\(3) $ (((!\logica_Seven_Seg|REG0|DOUT\(1) & \logica_Seven_Seg|REG0|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[5]~5_combout\);

\logica_Seven_Seg|H0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H0|rascSaida7seg[6]~6_combout\ = (!\logica_Seven_Seg|REG0|DOUT\(0) & (!\logica_Seven_Seg|REG0|DOUT\(1) & (!\logica_Seven_Seg|REG0|DOUT\(3) $ (\logica_Seven_Seg|REG0|DOUT\(2))))) # (\logica_Seven_Seg|REG0|DOUT\(0) & 
-- (!\logica_Seven_Seg|REG0|DOUT\(3) & (!\logica_Seven_Seg|REG0|DOUT\(1) $ (\logica_Seven_Seg|REG0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG0|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H0|rascSaida7seg[6]~6_combout\);

\logica_Seven_Seg|comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|comb~4_combout\ = ( \RESET_510~0_combout\ & ( (\ROM1|memROM~19_combout\ & (\ROM1|memROM~27_combout\ & (\processador|decoderInstru1|Equal11~0_combout\ & \logica_Seven_Seg|comb~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~27_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datad => \logica_Seven_Seg|ALT_INV_comb~0_combout\,
	datae => \ALT_INV_RESET_510~0_combout\,
	combout => \logica_Seven_Seg|comb~4_combout\);

\logica_Seven_Seg|REG2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~43_combout\,
	ena => \logica_Seven_Seg|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG2|DOUT\(0));

\logica_Seven_Seg|REG2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~46_combout\,
	ena => \logica_Seven_Seg|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG2|DOUT\(3));

\logica_Seven_Seg|REG2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~44_combout\,
	ena => \logica_Seven_Seg|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG2|DOUT\(1));

\logica_Seven_Seg|REG2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~45_combout\,
	ena => \logica_Seven_Seg|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG2|DOUT\(2));

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

\logica_Seven_Seg|H2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[1]~1_combout\ = (!\logica_Seven_Seg|REG2|DOUT\(3) & (\logica_Seven_Seg|REG2|DOUT\(2) & (!\logica_Seven_Seg|REG2|DOUT\(0) $ (!\logica_Seven_Seg|REG2|DOUT\(1))))) # (\logica_Seven_Seg|REG2|DOUT\(3) & 
-- ((!\logica_Seven_Seg|REG2|DOUT\(0) & ((\logica_Seven_Seg|REG2|DOUT\(2)))) # (\logica_Seven_Seg|REG2|DOUT\(0) & (\logica_Seven_Seg|REG2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[1]~1_combout\);

\logica_Seven_Seg|H2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[2]~2_combout\ = (!\logica_Seven_Seg|REG2|DOUT\(3) & (!\logica_Seven_Seg|REG2|DOUT\(0) & (\logica_Seven_Seg|REG2|DOUT\(1) & !\logica_Seven_Seg|REG2|DOUT\(2)))) # (\logica_Seven_Seg|REG2|DOUT\(3) & 
-- (\logica_Seven_Seg|REG2|DOUT\(2) & ((!\logica_Seven_Seg|REG2|DOUT\(0)) # (\logica_Seven_Seg|REG2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[2]~2_combout\);

\logica_Seven_Seg|H2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[3]~3_combout\ = (!\logica_Seven_Seg|REG2|DOUT\(1) & (!\logica_Seven_Seg|REG2|DOUT\(3) & (!\logica_Seven_Seg|REG2|DOUT\(0) $ (!\logica_Seven_Seg|REG2|DOUT\(2))))) # (\logica_Seven_Seg|REG2|DOUT\(1) & 
-- ((!\logica_Seven_Seg|REG2|DOUT\(0) & (!\logica_Seven_Seg|REG2|DOUT\(2) & \logica_Seven_Seg|REG2|DOUT\(3))) # (\logica_Seven_Seg|REG2|DOUT\(0) & (\logica_Seven_Seg|REG2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[3]~3_combout\);

\logica_Seven_Seg|H2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[4]~4_combout\ = (!\logica_Seven_Seg|REG2|DOUT\(1) & ((!\logica_Seven_Seg|REG2|DOUT\(2) & ((\logica_Seven_Seg|REG2|DOUT\(0)))) # (\logica_Seven_Seg|REG2|DOUT\(2) & (!\logica_Seven_Seg|REG2|DOUT\(3))))) # 
-- (\logica_Seven_Seg|REG2|DOUT\(1) & (!\logica_Seven_Seg|REG2|DOUT\(3) & ((\logica_Seven_Seg|REG2|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	datab => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[4]~4_combout\);

\logica_Seven_Seg|H2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[5]~5_combout\ = (!\logica_Seven_Seg|REG2|DOUT\(0) & (\logica_Seven_Seg|REG2|DOUT\(1) & (!\logica_Seven_Seg|REG2|DOUT\(2) & !\logica_Seven_Seg|REG2|DOUT\(3)))) # (\logica_Seven_Seg|REG2|DOUT\(0) & 
-- (!\logica_Seven_Seg|REG2|DOUT\(3) $ (((!\logica_Seven_Seg|REG2|DOUT\(1) & \logica_Seven_Seg|REG2|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[5]~5_combout\);

\logica_Seven_Seg|H2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H2|rascSaida7seg[6]~6_combout\ = (!\logica_Seven_Seg|REG2|DOUT\(0) & (!\logica_Seven_Seg|REG2|DOUT\(1) & (!\logica_Seven_Seg|REG2|DOUT\(3) $ (\logica_Seven_Seg|REG2|DOUT\(2))))) # (\logica_Seven_Seg|REG2|DOUT\(0) & 
-- (!\logica_Seven_Seg|REG2|DOUT\(3) & (!\logica_Seven_Seg|REG2|DOUT\(1) $ (\logica_Seven_Seg|REG2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG2|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H2|rascSaida7seg[6]~6_combout\);

\logica_Seven_Seg|comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|comb~5_combout\ = (\ROM1|memROM~27_combout\ & (\processador|decoderInstru1|Equal11~0_combout\ & (\logica_Seven_Seg|comb~0_combout\ & \comb~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~27_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datac => \logica_Seven_Seg|ALT_INV_comb~0_combout\,
	datad => \ALT_INV_comb~3_combout\,
	combout => \logica_Seven_Seg|comb~5_combout\);

\logica_Seven_Seg|REG3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~43_combout\,
	ena => \logica_Seven_Seg|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG3|DOUT\(0));

\logica_Seven_Seg|REG3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~46_combout\,
	ena => \logica_Seven_Seg|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG3|DOUT\(3));

\logica_Seven_Seg|REG3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~44_combout\,
	ena => \logica_Seven_Seg|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG3|DOUT\(1));

\logica_Seven_Seg|REG3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~45_combout\,
	ena => \logica_Seven_Seg|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG3|DOUT\(2));

\logica_Seven_Seg|H3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[0]~0_combout\ = (!\logica_Seven_Seg|REG3|DOUT\(3) & (!\logica_Seven_Seg|REG3|DOUT\(1) & (!\logica_Seven_Seg|REG3|DOUT\(0) $ (!\logica_Seven_Seg|REG3|DOUT\(2))))) # (\logica_Seven_Seg|REG3|DOUT\(3) & 
-- (\logica_Seven_Seg|REG3|DOUT\(0) & (!\logica_Seven_Seg|REG3|DOUT\(1) $ (!\logica_Seven_Seg|REG3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[0]~0_combout\);

\logica_Seven_Seg|H3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[1]~1_combout\ = (!\logica_Seven_Seg|REG3|DOUT\(3) & (\logica_Seven_Seg|REG3|DOUT\(2) & (!\logica_Seven_Seg|REG3|DOUT\(0) $ (!\logica_Seven_Seg|REG3|DOUT\(1))))) # (\logica_Seven_Seg|REG3|DOUT\(3) & 
-- ((!\logica_Seven_Seg|REG3|DOUT\(0) & ((\logica_Seven_Seg|REG3|DOUT\(2)))) # (\logica_Seven_Seg|REG3|DOUT\(0) & (\logica_Seven_Seg|REG3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[1]~1_combout\);

\logica_Seven_Seg|H3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[2]~2_combout\ = (!\logica_Seven_Seg|REG3|DOUT\(3) & (!\logica_Seven_Seg|REG3|DOUT\(0) & (\logica_Seven_Seg|REG3|DOUT\(1) & !\logica_Seven_Seg|REG3|DOUT\(2)))) # (\logica_Seven_Seg|REG3|DOUT\(3) & 
-- (\logica_Seven_Seg|REG3|DOUT\(2) & ((!\logica_Seven_Seg|REG3|DOUT\(0)) # (\logica_Seven_Seg|REG3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[2]~2_combout\);

\logica_Seven_Seg|H3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[3]~3_combout\ = (!\logica_Seven_Seg|REG3|DOUT\(1) & (!\logica_Seven_Seg|REG3|DOUT\(3) & (!\logica_Seven_Seg|REG3|DOUT\(0) $ (!\logica_Seven_Seg|REG3|DOUT\(2))))) # (\logica_Seven_Seg|REG3|DOUT\(1) & 
-- ((!\logica_Seven_Seg|REG3|DOUT\(0) & (!\logica_Seven_Seg|REG3|DOUT\(2) & \logica_Seven_Seg|REG3|DOUT\(3))) # (\logica_Seven_Seg|REG3|DOUT\(0) & (\logica_Seven_Seg|REG3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[3]~3_combout\);

\logica_Seven_Seg|H3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[4]~4_combout\ = (!\logica_Seven_Seg|REG3|DOUT\(1) & ((!\logica_Seven_Seg|REG3|DOUT\(2) & ((\logica_Seven_Seg|REG3|DOUT\(0)))) # (\logica_Seven_Seg|REG3|DOUT\(2) & (!\logica_Seven_Seg|REG3|DOUT\(3))))) # 
-- (\logica_Seven_Seg|REG3|DOUT\(1) & (!\logica_Seven_Seg|REG3|DOUT\(3) & ((\logica_Seven_Seg|REG3|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[4]~4_combout\);

\logica_Seven_Seg|H3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[5]~5_combout\ = (!\logica_Seven_Seg|REG3|DOUT\(0) & (\logica_Seven_Seg|REG3|DOUT\(1) & (!\logica_Seven_Seg|REG3|DOUT\(2) & !\logica_Seven_Seg|REG3|DOUT\(3)))) # (\logica_Seven_Seg|REG3|DOUT\(0) & 
-- (!\logica_Seven_Seg|REG3|DOUT\(3) $ (((!\logica_Seven_Seg|REG3|DOUT\(1) & \logica_Seven_Seg|REG3|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[5]~5_combout\);

\logica_Seven_Seg|H3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H3|rascSaida7seg[6]~6_combout\ = (!\logica_Seven_Seg|REG3|DOUT\(0) & (!\logica_Seven_Seg|REG3|DOUT\(1) & (!\logica_Seven_Seg|REG3|DOUT\(3) $ (\logica_Seven_Seg|REG3|DOUT\(2))))) # (\logica_Seven_Seg|REG3|DOUT\(0) & 
-- (!\logica_Seven_Seg|REG3|DOUT\(3) & (!\logica_Seven_Seg|REG3|DOUT\(1) $ (\logica_Seven_Seg|REG3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG3|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H3|rascSaida7seg[6]~6_combout\);

\decoderBloco|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderBloco|Equal3~0_combout\ = ( !\ROM1|memROM~8_combout\ & ( (!\processador|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~6_combout\ & !\ROM1|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \decoderBloco|Equal3~0_combout\);

\logica_Seven_Seg|comb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|comb~6_combout\ = ( \logica_Seven_Seg|comb~2_combout\ & ( (\ROM1|memROM~14_combout\ & (\ROM1|memROM~27_combout\ & (\decoderBloco|Equal3~0_combout\ & \processador|decoderInstru1|Equal11~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~27_combout\,
	datac => \decoderBloco|ALT_INV_Equal3~0_combout\,
	datad => \processador|decoderInstru1|ALT_INV_Equal11~0_combout\,
	datae => \logica_Seven_Seg|ALT_INV_comb~2_combout\,
	combout => \logica_Seven_Seg|comb~6_combout\);

\logica_Seven_Seg|REG4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~43_combout\,
	ena => \logica_Seven_Seg|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG4|DOUT\(0));

\logica_Seven_Seg|REG4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~46_combout\,
	ena => \logica_Seven_Seg|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG4|DOUT\(3));

\logica_Seven_Seg|REG4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~44_combout\,
	ena => \logica_Seven_Seg|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG4|DOUT\(1));

\logica_Seven_Seg|REG4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|BANCO_REGISTRADORES|registrador~45_combout\,
	ena => \logica_Seven_Seg|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_Seven_Seg|REG4|DOUT\(2));

\logica_Seven_Seg|H4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[0]~0_combout\ = (!\logica_Seven_Seg|REG4|DOUT\(3) & (!\logica_Seven_Seg|REG4|DOUT\(1) & (!\logica_Seven_Seg|REG4|DOUT\(0) $ (!\logica_Seven_Seg|REG4|DOUT\(2))))) # (\logica_Seven_Seg|REG4|DOUT\(3) & 
-- (\logica_Seven_Seg|REG4|DOUT\(0) & (!\logica_Seven_Seg|REG4|DOUT\(1) $ (!\logica_Seven_Seg|REG4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[0]~0_combout\);

\logica_Seven_Seg|H4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[1]~1_combout\ = (!\logica_Seven_Seg|REG4|DOUT\(3) & (\logica_Seven_Seg|REG4|DOUT\(2) & (!\logica_Seven_Seg|REG4|DOUT\(0) $ (!\logica_Seven_Seg|REG4|DOUT\(1))))) # (\logica_Seven_Seg|REG4|DOUT\(3) & 
-- ((!\logica_Seven_Seg|REG4|DOUT\(0) & ((\logica_Seven_Seg|REG4|DOUT\(2)))) # (\logica_Seven_Seg|REG4|DOUT\(0) & (\logica_Seven_Seg|REG4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[1]~1_combout\);

\logica_Seven_Seg|H4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[2]~2_combout\ = (!\logica_Seven_Seg|REG4|DOUT\(3) & (!\logica_Seven_Seg|REG4|DOUT\(0) & (\logica_Seven_Seg|REG4|DOUT\(1) & !\logica_Seven_Seg|REG4|DOUT\(2)))) # (\logica_Seven_Seg|REG4|DOUT\(3) & 
-- (\logica_Seven_Seg|REG4|DOUT\(2) & ((!\logica_Seven_Seg|REG4|DOUT\(0)) # (\logica_Seven_Seg|REG4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	datac => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	datad => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[2]~2_combout\);

\logica_Seven_Seg|H4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[3]~3_combout\ = (!\logica_Seven_Seg|REG4|DOUT\(1) & (!\logica_Seven_Seg|REG4|DOUT\(3) & (!\logica_Seven_Seg|REG4|DOUT\(0) $ (!\logica_Seven_Seg|REG4|DOUT\(2))))) # (\logica_Seven_Seg|REG4|DOUT\(1) & 
-- ((!\logica_Seven_Seg|REG4|DOUT\(0) & (!\logica_Seven_Seg|REG4|DOUT\(2) & \logica_Seven_Seg|REG4|DOUT\(3))) # (\logica_Seven_Seg|REG4|DOUT\(0) & (\logica_Seven_Seg|REG4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[3]~3_combout\);

\logica_Seven_Seg|H4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[4]~4_combout\ = (!\logica_Seven_Seg|REG4|DOUT\(1) & ((!\logica_Seven_Seg|REG4|DOUT\(2) & ((\logica_Seven_Seg|REG4|DOUT\(0)))) # (\logica_Seven_Seg|REG4|DOUT\(2) & (!\logica_Seven_Seg|REG4|DOUT\(3))))) # 
-- (\logica_Seven_Seg|REG4|DOUT\(1) & (!\logica_Seven_Seg|REG4|DOUT\(3) & ((\logica_Seven_Seg|REG4|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	datab => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[4]~4_combout\);

\logica_Seven_Seg|H4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_Seven_Seg|H4|rascSaida7seg[5]~5_combout\ = (!\logica_Seven_Seg|REG4|DOUT\(0) & (\logica_Seven_Seg|REG4|DOUT\(1) & (!\logica_Seven_Seg|REG4|DOUT\(2) & !\logica_Seven_Seg|REG4|DOUT\(3)))) # (\logica_Seven_Seg|REG4|DOUT\(0) & 
-- (!\logica_Seven_Seg|REG4|DOUT\(3) $ (((!\logica_Seven_Seg|REG4|DOUT\(1) & \logica_Seven_Seg|REG4|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(0),
	datab => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(1),
	datac => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(2),
	datad => \logica_Seven_Seg|REG4|ALT_INV_DOUT\(3),
	combout => \logica_Seven_Seg|H4|rascSaida7seg[5]~5_combout\);

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

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

ww_PC_OUT(0) <= \PC_OUT[0]~output_o\;

ww_PC_OUT(1) <= \PC_OUT[1]~output_o\;

ww_PC_OUT(2) <= \PC_OUT[2]~output_o\;

ww_PC_OUT(3) <= \PC_OUT[3]~output_o\;

ww_PC_OUT(4) <= \PC_OUT[4]~output_o\;

ww_PC_OUT(5) <= \PC_OUT[5]~output_o\;

ww_PC_OUT(6) <= \PC_OUT[6]~output_o\;

ww_PC_OUT(7) <= \PC_OUT[7]~output_o\;

ww_PC_OUT(8) <= \PC_OUT[8]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_REGA_OUT(0) <= \REGA_OUT[0]~output_o\;

ww_REGA_OUT(1) <= \REGA_OUT[1]~output_o\;

ww_REGA_OUT(2) <= \REGA_OUT[2]~output_o\;

ww_REGA_OUT(3) <= \REGA_OUT[3]~output_o\;

ww_REGA_OUT(4) <= \REGA_OUT[4]~output_o\;

ww_REGA_OUT(5) <= \REGA_OUT[5]~output_o\;

ww_REGA_OUT(6) <= \REGA_OUT[6]~output_o\;

ww_REGA_OUT(7) <= \REGA_OUT[7]~output_o\;

ww_HabilitaRAM <= \HabilitaRAM~output_o\;

ww_MEM_ADDRESS(0) <= \MEM_ADDRESS[0]~output_o\;

ww_MEM_ADDRESS(1) <= \MEM_ADDRESS[1]~output_o\;

ww_MEM_ADDRESS(2) <= \MEM_ADDRESS[2]~output_o\;

ww_MEM_ADDRESS(3) <= \MEM_ADDRESS[3]~output_o\;

ww_MEM_ADDRESS(4) <= \MEM_ADDRESS[4]~output_o\;

ww_MEM_ADDRESS(5) <= \MEM_ADDRESS[5]~output_o\;

ww_MEM_ADDRESS(6) <= \MEM_ADDRESS[6]~output_o\;

ww_MEM_ADDRESS(7) <= \MEM_ADDRESS[7]~output_o\;

ww_MEM_ADDRESS(8) <= \MEM_ADDRESS[8]~output_o\;

ww_MEM_OUTT(0) <= \MEM_OUTT[0]~output_o\;

ww_MEM_OUTT(1) <= \MEM_OUTT[1]~output_o\;

ww_MEM_OUTT(2) <= \MEM_OUTT[2]~output_o\;

ww_MEM_OUTT(3) <= \MEM_OUTT[3]~output_o\;

ww_MEM_OUTT(4) <= \MEM_OUTT[4]~output_o\;

ww_MEM_OUTT(5) <= \MEM_OUTT[5]~output_o\;

ww_MEM_OUTT(6) <= \MEM_OUTT[6]~output_o\;

ww_MEM_OUTT(7) <= \MEM_OUTT[7]~output_o\;

ww_enderecoR(0) <= \enderecoR[0]~output_o\;

ww_enderecoR(1) <= \enderecoR[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;
END structure;


