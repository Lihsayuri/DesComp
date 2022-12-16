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

-- DATE "09/21/2022 20:50:18"

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

ENTITY 	Aula5final IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	REG_OUT : OUT std_logic_vector(7 DOWNTO 0);
	SEL_MUX_PC : OUT std_logic_vector(1 DOWNTO 0);
	Palavra : OUT std_logic_vector(11 DOWNTO 0);
	JMP_FLAG : OUT std_logic;
	JEQ_FLAG : OUT std_logic;
	JSR_FLAG : OUT std_logic;
	RET_FLAG : OUT std_logic;
	EQUAL_FLAG : OUT std_logic
	);
END Aula5final;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[1]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[2]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[4]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[5]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[6]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[7]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL_MUX_PC[0]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL_MUX_PC[1]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[0]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[1]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[3]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[4]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[5]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[6]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[7]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[8]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[9]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[10]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[11]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JMP_FLAG	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JEQ_FLAG	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JSR_FLAG	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RET_FLAG	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EQUAL_FLAG	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Aula5final IS
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
SIGNAL ww_REG_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SEL_MUX_PC : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Palavra : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_JMP_FLAG : std_logic;
SIGNAL ww_JEQ_FLAG : std_logic;
SIGNAL ww_JSR_FLAG : std_logic;
SIGNAL ww_RET_FLAG : std_logic;
SIGNAL ww_EQUAL_FLAG : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \decoderInstru1|saida~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[1]~1_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[2]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \LOG_DESVIO|SelMuxPC[1]~1_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[3]~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \decoderInstru1|saida~1_combout\ : std_logic;
SIGNAL \decoderInstru1|saida~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \RAM1|ram~101feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~185_combout\ : std_logic;
SIGNAL \RAM1|ram~178_combout\ : std_logic;
SIGNAL \RAM1|ram~101_q\ : std_logic;
SIGNAL \RAM1|ram~133feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~177_combout\ : std_logic;
SIGNAL \RAM1|ram~133_q\ : std_logic;
SIGNAL \RAM1|ram~37feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~180_combout\ : std_logic;
SIGNAL \RAM1|ram~37_q\ : std_logic;
SIGNAL \RAM1|ram~69feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~179_combout\ : std_logic;
SIGNAL \RAM1|ram~69_q\ : std_logic;
SIGNAL \RAM1|ram~161_combout\ : std_logic;
SIGNAL \RAM1|ram~184_combout\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~53feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~183_combout\ : std_logic;
SIGNAL \RAM1|ram~53_q\ : std_logic;
SIGNAL \RAM1|ram~117feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~181_combout\ : std_logic;
SIGNAL \RAM1|ram~117_q\ : std_logic;
SIGNAL \RAM1|ram~182_combout\ : std_logic;
SIGNAL \RAM1|ram~85_q\ : std_logic;
SIGNAL \RAM1|ram~162_combout\ : std_logic;
SIGNAL \RAM1|ram~163_combout\ : std_logic;
SIGNAL \decoderInstru1|saida~6_combout\ : std_logic;
SIGNAL \RAM1|ram~132_q\ : std_logic;
SIGNAL \RAM1|ram~116_q\ : std_logic;
SIGNAL \RAM1|ram~156_combout\ : std_logic;
SIGNAL \RAM1|ram~84_q\ : std_logic;
SIGNAL \RAM1|ram~100_q\ : std_logic;
SIGNAL \RAM1|ram~157_combout\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~36feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~36_q\ : std_logic;
SIGNAL \RAM1|ram~159_combout\ : std_logic;
SIGNAL \RAM1|ram~52_q\ : std_logic;
SIGNAL \RAM1|ram~68_q\ : std_logic;
SIGNAL \RAM1|ram~158_combout\ : std_logic;
SIGNAL \RAM1|ram~160_combout\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~51_q\ : std_logic;
SIGNAL \RAM1|ram~115feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~115_q\ : std_logic;
SIGNAL \RAM1|ram~83_q\ : std_logic;
SIGNAL \RAM1|ram~154_combout\ : std_logic;
SIGNAL \RAM1|ram~67_q\ : std_logic;
SIGNAL \RAM1|ram~35_q\ : std_logic;
SIGNAL \RAM1|ram~131_q\ : std_logic;
SIGNAL \RAM1|ram~99_q\ : std_logic;
SIGNAL \RAM1|ram~153_combout\ : std_logic;
SIGNAL \RAM1|ram~155_combout\ : std_logic;
SIGNAL \RAM1|ram~34_q\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~151_combout\ : std_logic;
SIGNAL \RAM1|ram~50feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~50_q\ : std_logic;
SIGNAL \RAM1|ram~66feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~66_q\ : std_logic;
SIGNAL \RAM1|ram~150_combout\ : std_logic;
SIGNAL \RAM1|ram~82_q\ : std_logic;
SIGNAL \RAM1|ram~98_q\ : std_logic;
SIGNAL \RAM1|ram~149_combout\ : std_logic;
SIGNAL \RAM1|ram~130feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~130_q\ : std_logic;
SIGNAL \RAM1|ram~114_q\ : std_logic;
SIGNAL \RAM1|ram~148_combout\ : std_logic;
SIGNAL \RAM1|ram~152_combout\ : std_logic;
SIGNAL \RAM1|ram~113_q\ : std_logic;
SIGNAL \RAM1|ram~81_q\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~49_q\ : std_logic;
SIGNAL \RAM1|ram~146_combout\ : std_logic;
SIGNAL \RAM1|ram~129_q\ : std_logic;
SIGNAL \RAM1|ram~97_q\ : std_logic;
SIGNAL \RAM1|ram~33_q\ : std_logic;
SIGNAL \RAM1|ram~65_q\ : std_logic;
SIGNAL \RAM1|ram~145_combout\ : std_logic;
SIGNAL \RAM1|ram~147_combout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \decoderInstru1|saida[4]~2_combout\ : std_logic;
SIGNAL \decoderInstru1|saida~4_combout\ : std_logic;
SIGNAL \decoderInstru1|Equal8~0_combout\ : std_logic;
SIGNAL \decoderInstru1|saida[5]~3_combout\ : std_logic;
SIGNAL \REGA|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ULA1|Add1~34_cout\ : std_logic;
SIGNAL \ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|Add1~2\ : std_logic;
SIGNAL \ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|Add1~6\ : std_logic;
SIGNAL \ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|Add1~10\ : std_logic;
SIGNAL \ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|Add1~14\ : std_logic;
SIGNAL \ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~38feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~38_q\ : std_logic;
SIGNAL \RAM1|ram~167_combout\ : std_logic;
SIGNAL \RAM1|ram~118_q\ : std_logic;
SIGNAL \RAM1|ram~134_q\ : std_logic;
SIGNAL \RAM1|ram~164_combout\ : std_logic;
SIGNAL \RAM1|ram~54_q\ : std_logic;
SIGNAL \RAM1|ram~70_q\ : std_logic;
SIGNAL \RAM1|ram~166_combout\ : std_logic;
SIGNAL \RAM1|ram~102_q\ : std_logic;
SIGNAL \RAM1|ram~86_q\ : std_logic;
SIGNAL \RAM1|ram~165_combout\ : std_logic;
SIGNAL \RAM1|ram~168_combout\ : std_logic;
SIGNAL \ULA1|Add1~18\ : std_logic;
SIGNAL \ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \ULA1|Add1~22\ : std_logic;
SIGNAL \ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \REGA|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~135_q\ : std_logic;
SIGNAL \RAM1|ram~71_q\ : std_logic;
SIGNAL \RAM1|ram~103_q\ : std_logic;
SIGNAL \RAM1|ram~39feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~39_q\ : std_logic;
SIGNAL \RAM1|ram~169_combout\ : std_logic;
SIGNAL \RAM1|ram~119_q\ : std_logic;
SIGNAL \RAM1|ram~55feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~55_q\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~87_q\ : std_logic;
SIGNAL \RAM1|ram~170_combout\ : std_logic;
SIGNAL \RAM1|ram~171_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \RAM1|ram~120_q\ : std_logic;
SIGNAL \REGA|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~136_q\ : std_logic;
SIGNAL \RAM1|ram~172_combout\ : std_logic;
SIGNAL \RAM1|ram~88_q\ : std_logic;
SIGNAL \RAM1|ram~104_q\ : std_logic;
SIGNAL \RAM1|ram~173_combout\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~40feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~40_q\ : std_logic;
SIGNAL \RAM1|ram~175_combout\ : std_logic;
SIGNAL \RAM1|ram~72_q\ : std_logic;
SIGNAL \RAM1|ram~56feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~56_q\ : std_logic;
SIGNAL \RAM1|ram~174_combout\ : std_logic;
SIGNAL \RAM1|ram~176_combout\ : std_logic;
SIGNAL \ULA1|Add1~26\ : std_logic;
SIGNAL \ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \FLAG|DOUT~q\ : std_logic;
SIGNAL \FLAG|DOUT~1_combout\ : std_logic;
SIGNAL \FLAG|DOUT~0_combout\ : std_logic;
SIGNAL \FLAG|DOUT~DUPLICATE_q\ : std_logic;
SIGNAL \LOG_DESVIO|SelMuxPC[0]~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[4]~4_combout\ : std_logic;
SIGNAL \PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~18\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[5]~5_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[6]~6_combout\ : std_logic;
SIGNAL \PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[7]~7_combout\ : std_logic;
SIGNAL \PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~30\ : std_logic;
SIGNAL \incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[8]~8_combout\ : std_logic;
SIGNAL \decoderInstru1|Equal5~0_combout\ : std_logic;
SIGNAL \decoderInstru1|saida[1]~0_combout\ : std_logic;
SIGNAL \decoderInstru1|Equal3~0_combout\ : std_logic;
SIGNAL \decoderInstru1|Equal4~0_combout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REG_RET|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \FLAG|ALT_INV_DOUT~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~185_combout\ : std_logic;
SIGNAL \FLAG|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \decoderInstru1|ALT_INV_saida~7_combout\ : std_logic;
SIGNAL \decoderInstru1|ALT_INV_saida~6_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~176_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~175_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~174_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~173_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~88_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~104_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~172_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~120_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~136_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~171_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~170_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~87_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~119_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~169_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~103_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~135_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~168_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~167_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~166_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~165_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~86_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~102_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~164_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~118_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~134_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~163_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~162_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~85_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~117_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~161_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~101_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~133_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~100_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~116_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~132_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~115_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~99_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~131_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~98_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~114_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~130_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~113_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~129_q\ : std_logic;
SIGNAL \REG_RET|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \decoderInstru1|ALT_INV_saida~4_combout\ : std_logic;
SIGNAL \decoderInstru1|ALT_INV_saida[4]~2_combout\ : std_logic;
SIGNAL \decoderInstru1|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \decoderInstru1|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \LOG_DESVIO|ALT_INV_SelMuxPC[1]~1_combout\ : std_logic;
SIGNAL \LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\ : std_logic;
SIGNAL \FLAG|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
PC_OUT <= ww_PC_OUT;
LEDR <= ww_LEDR;
REG_OUT <= ww_REG_OUT;
SEL_MUX_PC <= ww_SEL_MUX_PC;
Palavra <= ww_Palavra;
JMP_FLAG <= ww_JMP_FLAG;
JEQ_FLAG <= ww_JEQ_FLAG;
JSR_FLAG <= ww_JSR_FLAG;
RET_FLAG <= ww_RET_FLAG;
EQUAL_FLAG <= ww_EQUAL_FLAG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\FLAG|ALT_INV_DOUT~DUPLICATE_q\ <= NOT \FLAG|DOUT~DUPLICATE_q\;
\PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \PC|DOUT[8]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \PC|DOUT[7]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \PC|DOUT[5]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \PC|DOUT[3]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \PC|DOUT[2]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \PC|DOUT[1]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \PC|DOUT[0]~DUPLICATE_q\;
\REGA|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \REGA|DOUT[6]~DUPLICATE_q\;
\REGA|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \REGA|DOUT[0]~DUPLICATE_q\;
\RAM1|ALT_INV_ram~185_combout\ <= NOT \RAM1|ram~185_combout\;
\FLAG|ALT_INV_DOUT~1_combout\ <= NOT \FLAG|DOUT~1_combout\;
\decoderInstru1|ALT_INV_saida~7_combout\ <= NOT \decoderInstru1|saida~7_combout\;
\decoderInstru1|ALT_INV_saida~6_combout\ <= NOT \decoderInstru1|saida~6_combout\;
\RAM1|ALT_INV_ram~176_combout\ <= NOT \RAM1|ram~176_combout\;
\RAM1|ALT_INV_ram~175_combout\ <= NOT \RAM1|ram~175_combout\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\RAM1|ALT_INV_ram~40_q\ <= NOT \RAM1|ram~40_q\;
\RAM1|ALT_INV_ram~174_combout\ <= NOT \RAM1|ram~174_combout\;
\RAM1|ALT_INV_ram~56_q\ <= NOT \RAM1|ram~56_q\;
\RAM1|ALT_INV_ram~72_q\ <= NOT \RAM1|ram~72_q\;
\RAM1|ALT_INV_ram~173_combout\ <= NOT \RAM1|ram~173_combout\;
\RAM1|ALT_INV_ram~88_q\ <= NOT \RAM1|ram~88_q\;
\RAM1|ALT_INV_ram~104_q\ <= NOT \RAM1|ram~104_q\;
\RAM1|ALT_INV_ram~172_combout\ <= NOT \RAM1|ram~172_combout\;
\RAM1|ALT_INV_ram~120_q\ <= NOT \RAM1|ram~120_q\;
\RAM1|ALT_INV_ram~136_q\ <= NOT \RAM1|ram~136_q\;
\RAM1|ALT_INV_ram~171_combout\ <= NOT \RAM1|ram~171_combout\;
\RAM1|ALT_INV_ram~170_combout\ <= NOT \RAM1|ram~170_combout\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\RAM1|ALT_INV_ram~55_q\ <= NOT \RAM1|ram~55_q\;
\RAM1|ALT_INV_ram~87_q\ <= NOT \RAM1|ram~87_q\;
\RAM1|ALT_INV_ram~119_q\ <= NOT \RAM1|ram~119_q\;
\RAM1|ALT_INV_ram~169_combout\ <= NOT \RAM1|ram~169_combout\;
\RAM1|ALT_INV_ram~39_q\ <= NOT \RAM1|ram~39_q\;
\RAM1|ALT_INV_ram~71_q\ <= NOT \RAM1|ram~71_q\;
\RAM1|ALT_INV_ram~103_q\ <= NOT \RAM1|ram~103_q\;
\RAM1|ALT_INV_ram~135_q\ <= NOT \RAM1|ram~135_q\;
\RAM1|ALT_INV_ram~168_combout\ <= NOT \RAM1|ram~168_combout\;
\RAM1|ALT_INV_ram~167_combout\ <= NOT \RAM1|ram~167_combout\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\RAM1|ALT_INV_ram~38_q\ <= NOT \RAM1|ram~38_q\;
\RAM1|ALT_INV_ram~166_combout\ <= NOT \RAM1|ram~166_combout\;
\RAM1|ALT_INV_ram~54_q\ <= NOT \RAM1|ram~54_q\;
\RAM1|ALT_INV_ram~70_q\ <= NOT \RAM1|ram~70_q\;
\RAM1|ALT_INV_ram~165_combout\ <= NOT \RAM1|ram~165_combout\;
\RAM1|ALT_INV_ram~86_q\ <= NOT \RAM1|ram~86_q\;
\RAM1|ALT_INV_ram~102_q\ <= NOT \RAM1|ram~102_q\;
\RAM1|ALT_INV_ram~164_combout\ <= NOT \RAM1|ram~164_combout\;
\RAM1|ALT_INV_ram~118_q\ <= NOT \RAM1|ram~118_q\;
\RAM1|ALT_INV_ram~134_q\ <= NOT \RAM1|ram~134_q\;
\RAM1|ALT_INV_ram~163_combout\ <= NOT \RAM1|ram~163_combout\;
\RAM1|ALT_INV_ram~162_combout\ <= NOT \RAM1|ram~162_combout\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\RAM1|ALT_INV_ram~53_q\ <= NOT \RAM1|ram~53_q\;
\RAM1|ALT_INV_ram~85_q\ <= NOT \RAM1|ram~85_q\;
\RAM1|ALT_INV_ram~117_q\ <= NOT \RAM1|ram~117_q\;
\RAM1|ALT_INV_ram~161_combout\ <= NOT \RAM1|ram~161_combout\;
\RAM1|ALT_INV_ram~37_q\ <= NOT \RAM1|ram~37_q\;
\RAM1|ALT_INV_ram~69_q\ <= NOT \RAM1|ram~69_q\;
\RAM1|ALT_INV_ram~101_q\ <= NOT \RAM1|ram~101_q\;
\RAM1|ALT_INV_ram~133_q\ <= NOT \RAM1|ram~133_q\;
\RAM1|ALT_INV_ram~160_combout\ <= NOT \RAM1|ram~160_combout\;
\RAM1|ALT_INV_ram~159_combout\ <= NOT \RAM1|ram~159_combout\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\RAM1|ALT_INV_ram~36_q\ <= NOT \RAM1|ram~36_q\;
\RAM1|ALT_INV_ram~158_combout\ <= NOT \RAM1|ram~158_combout\;
\RAM1|ALT_INV_ram~52_q\ <= NOT \RAM1|ram~52_q\;
\RAM1|ALT_INV_ram~68_q\ <= NOT \RAM1|ram~68_q\;
\RAM1|ALT_INV_ram~157_combout\ <= NOT \RAM1|ram~157_combout\;
\RAM1|ALT_INV_ram~84_q\ <= NOT \RAM1|ram~84_q\;
\RAM1|ALT_INV_ram~100_q\ <= NOT \RAM1|ram~100_q\;
\RAM1|ALT_INV_ram~156_combout\ <= NOT \RAM1|ram~156_combout\;
\RAM1|ALT_INV_ram~116_q\ <= NOT \RAM1|ram~116_q\;
\RAM1|ALT_INV_ram~132_q\ <= NOT \RAM1|ram~132_q\;
\RAM1|ALT_INV_ram~155_combout\ <= NOT \RAM1|ram~155_combout\;
\RAM1|ALT_INV_ram~154_combout\ <= NOT \RAM1|ram~154_combout\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\RAM1|ALT_INV_ram~51_q\ <= NOT \RAM1|ram~51_q\;
\RAM1|ALT_INV_ram~83_q\ <= NOT \RAM1|ram~83_q\;
\RAM1|ALT_INV_ram~115_q\ <= NOT \RAM1|ram~115_q\;
\RAM1|ALT_INV_ram~153_combout\ <= NOT \RAM1|ram~153_combout\;
\RAM1|ALT_INV_ram~35_q\ <= NOT \RAM1|ram~35_q\;
\RAM1|ALT_INV_ram~67_q\ <= NOT \RAM1|ram~67_q\;
\RAM1|ALT_INV_ram~99_q\ <= NOT \RAM1|ram~99_q\;
\RAM1|ALT_INV_ram~131_q\ <= NOT \RAM1|ram~131_q\;
\RAM1|ALT_INV_ram~152_combout\ <= NOT \RAM1|ram~152_combout\;
\RAM1|ALT_INV_ram~151_combout\ <= NOT \RAM1|ram~151_combout\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\RAM1|ALT_INV_ram~34_q\ <= NOT \RAM1|ram~34_q\;
\RAM1|ALT_INV_ram~150_combout\ <= NOT \RAM1|ram~150_combout\;
\RAM1|ALT_INV_ram~50_q\ <= NOT \RAM1|ram~50_q\;
\RAM1|ALT_INV_ram~66_q\ <= NOT \RAM1|ram~66_q\;
\RAM1|ALT_INV_ram~149_combout\ <= NOT \RAM1|ram~149_combout\;
\RAM1|ALT_INV_ram~82_q\ <= NOT \RAM1|ram~82_q\;
\RAM1|ALT_INV_ram~98_q\ <= NOT \RAM1|ram~98_q\;
\RAM1|ALT_INV_ram~148_combout\ <= NOT \RAM1|ram~148_combout\;
\RAM1|ALT_INV_ram~114_q\ <= NOT \RAM1|ram~114_q\;
\RAM1|ALT_INV_ram~130_q\ <= NOT \RAM1|ram~130_q\;
\RAM1|ALT_INV_ram~147_combout\ <= NOT \RAM1|ram~147_combout\;
\RAM1|ALT_INV_ram~146_combout\ <= NOT \RAM1|ram~146_combout\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\RAM1|ALT_INV_ram~49_q\ <= NOT \RAM1|ram~49_q\;
\RAM1|ALT_INV_ram~81_q\ <= NOT \RAM1|ram~81_q\;
\RAM1|ALT_INV_ram~113_q\ <= NOT \RAM1|ram~113_q\;
\RAM1|ALT_INV_ram~145_combout\ <= NOT \RAM1|ram~145_combout\;
\RAM1|ALT_INV_ram~33_q\ <= NOT \RAM1|ram~33_q\;
\RAM1|ALT_INV_ram~65_q\ <= NOT \RAM1|ram~65_q\;
\RAM1|ALT_INV_ram~97_q\ <= NOT \RAM1|ram~97_q\;
\RAM1|ALT_INV_ram~129_q\ <= NOT \RAM1|ram~129_q\;
\REG_RET|ALT_INV_DOUT\(8) <= NOT \REG_RET|DOUT\(8);
\REG_RET|ALT_INV_DOUT\(7) <= NOT \REG_RET|DOUT\(7);
\REG_RET|ALT_INV_DOUT\(6) <= NOT \REG_RET|DOUT\(6);
\REG_RET|ALT_INV_DOUT\(5) <= NOT \REG_RET|DOUT\(5);
\REG_RET|ALT_INV_DOUT\(4) <= NOT \REG_RET|DOUT\(4);
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\REG_RET|ALT_INV_DOUT\(3) <= NOT \REG_RET|DOUT\(3);
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\REG_RET|ALT_INV_DOUT\(2) <= NOT \REG_RET|DOUT\(2);
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\REG_RET|ALT_INV_DOUT\(1) <= NOT \REG_RET|DOUT\(1);
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\REG_RET|ALT_INV_DOUT\(0) <= NOT \REG_RET|DOUT\(0);
\decoderInstru1|ALT_INV_saida~4_combout\ <= NOT \decoderInstru1|saida~4_combout\;
\decoderInstru1|ALT_INV_saida[4]~2_combout\ <= NOT \decoderInstru1|saida[4]~2_combout\;
\decoderInstru1|ALT_INV_Equal8~0_combout\ <= NOT \decoderInstru1|Equal8~0_combout\;
\decoderInstru1|ALT_INV_saida~1_combout\ <= NOT \decoderInstru1|saida~1_combout\;
\LOG_DESVIO|ALT_INV_SelMuxPC[1]~1_combout\ <= NOT \LOG_DESVIO|SelMuxPC[1]~1_combout\;
\LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\ <= NOT \LOG_DESVIO|SelMuxPC[0]~0_combout\;
\FLAG|ALT_INV_DOUT~q\ <= NOT \FLAG|DOUT~q\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\ULA1|ALT_INV_Add1~29_sumout\ <= NOT \ULA1|Add1~29_sumout\;
\ULA1|ALT_INV_Add1~25_sumout\ <= NOT \ULA1|Add1~25_sumout\;
\ULA1|ALT_INV_Add1~21_sumout\ <= NOT \ULA1|Add1~21_sumout\;
\ULA1|ALT_INV_Add1~17_sumout\ <= NOT \ULA1|Add1~17_sumout\;
\ULA1|ALT_INV_Add1~13_sumout\ <= NOT \ULA1|Add1~13_sumout\;
\ULA1|ALT_INV_Add1~9_sumout\ <= NOT \ULA1|Add1~9_sumout\;
\ULA1|ALT_INV_Add1~5_sumout\ <= NOT \ULA1|Add1~5_sumout\;
\ULA1|ALT_INV_Add1~1_sumout\ <= NOT \ULA1|Add1~1_sumout\;
\incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \incrementaPC|Add0~33_sumout\;
\incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \incrementaPC|Add0~29_sumout\;
\incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \incrementaPC|Add0~25_sumout\;
\incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \incrementaPC|Add0~21_sumout\;
\incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \incrementaPC|Add0~17_sumout\;
\incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \incrementaPC|Add0~13_sumout\;
\incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \incrementaPC|Add0~9_sumout\;
\incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \incrementaPC|Add0~5_sumout\;
\incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \incrementaPC|Add0~1_sumout\;
\REGA|ALT_INV_DOUT\(7) <= NOT \REGA|DOUT\(7);
\REGA|ALT_INV_DOUT\(6) <= NOT \REGA|DOUT\(6);
\REGA|ALT_INV_DOUT\(5) <= NOT \REGA|DOUT\(5);
\REGA|ALT_INV_DOUT\(4) <= NOT \REGA|DOUT\(4);
\REGA|ALT_INV_DOUT\(3) <= NOT \REGA|DOUT\(3);
\REGA|ALT_INV_DOUT\(2) <= NOT \REGA|DOUT\(2);
\REGA|ALT_INV_DOUT\(1) <= NOT \REGA|DOUT\(1);
\REGA|ALT_INV_DOUT\(0) <= NOT \REGA|DOUT\(0);

-- Location: IOOBUF_X16_Y0_N59
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(0),
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X16_Y0_N76
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(1),
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X16_Y0_N42
\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(2),
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X16_Y0_N93
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X22_Y0_N2
\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(4),
	devoe => ww_devoe,
	o => ww_PC_OUT(4));

-- Location: IOOBUF_X19_Y0_N53
\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(5),
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X22_Y0_N36
\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(6),
	devoe => ww_devoe,
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X25_Y0_N2
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(7),
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X19_Y0_N2
\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(8),
	devoe => ww_devoe,
	o => ww_PC_OUT(8));

-- Location: IOOBUF_X12_Y0_N36
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X10_Y0_N76
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X11_Y0_N19
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X23_Y0_N93
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X12_Y0_N2
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X14_Y0_N19
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(5),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X38_Y0_N36
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X14_Y0_N36
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X24_Y0_N2
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

-- Location: IOOBUF_X44_Y0_N53
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

-- Location: IOOBUF_X12_Y0_N19
\REG_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_REG_OUT(0));

-- Location: IOOBUF_X10_Y0_N42
\REG_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(1),
	devoe => ww_devoe,
	o => ww_REG_OUT(1));

-- Location: IOOBUF_X11_Y0_N53
\REG_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(2),
	devoe => ww_devoe,
	o => ww_REG_OUT(2));

-- Location: IOOBUF_X25_Y0_N19
\REG_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(3),
	devoe => ww_devoe,
	o => ww_REG_OUT(3));

-- Location: IOOBUF_X12_Y0_N53
\REG_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(4),
	devoe => ww_devoe,
	o => ww_REG_OUT(4));

-- Location: IOOBUF_X11_Y0_N36
\REG_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(5),
	devoe => ww_devoe,
	o => ww_REG_OUT(5));

-- Location: IOOBUF_X38_Y0_N53
\REG_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_REG_OUT(6));

-- Location: IOOBUF_X14_Y0_N53
\REG_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_REG_OUT(7));

-- Location: IOOBUF_X10_Y0_N59
\SEL_MUX_PC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOG_DESVIO|SelMuxPC[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_SEL_MUX_PC(0));

-- Location: IOOBUF_X24_Y0_N53
\SEL_MUX_PC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOG_DESVIO|SelMuxPC[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_SEL_MUX_PC(1));

-- Location: IOOBUF_X19_Y0_N36
\Palavra[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderInstru1|Equal5~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(0));

-- Location: IOOBUF_X18_Y0_N53
\Palavra[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderInstru1|saida[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(1));

-- Location: IOOBUF_X18_Y0_N2
\Palavra[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderInstru1|saida~1_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(2));

-- Location: IOOBUF_X18_Y0_N36
\Palavra[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderInstru1|Equal8~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(3));

-- Location: IOOBUF_X18_Y0_N19
\Palavra[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderInstru1|saida[4]~2_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(4));

-- Location: IOOBUF_X11_Y0_N2
\Palavra[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderInstru1|saida[5]~3_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(5));

-- Location: IOOBUF_X14_Y0_N2
\Palavra[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderInstru1|ALT_INV_saida~4_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(6));

-- Location: IOOBUF_X22_Y0_N53
\Palavra[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderInstru1|Equal3~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(7));

-- Location: IOOBUF_X25_Y0_N53
\Palavra[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderInstru1|saida~5_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(8));

-- Location: IOOBUF_X23_Y0_N42
\Palavra[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOG_DESVIO|SelMuxPC[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(9));

-- Location: IOOBUF_X24_Y0_N36
\Palavra[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderInstru1|Equal4~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(10));

-- Location: IOOBUF_X25_Y0_N36
\Palavra[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderInstru1|saida~5_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(11));

-- Location: IOOBUF_X24_Y0_N19
\JMP_FLAG~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderInstru1|Equal4~0_combout\,
	devoe => ww_devoe,
	o => ww_JMP_FLAG);

-- Location: IOOBUF_X23_Y0_N76
\JEQ_FLAG~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderInstru1|Equal3~0_combout\,
	devoe => ww_devoe,
	o => ww_JEQ_FLAG);

-- Location: IOOBUF_X22_Y0_N19
\JSR_FLAG~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderInstru1|saida~5_combout\,
	devoe => ww_devoe,
	o => ww_JSR_FLAG);

-- Location: IOOBUF_X23_Y0_N59
\RET_FLAG~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOG_DESVIO|SelMuxPC[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_RET_FLAG);

-- Location: IOOBUF_X19_Y0_N19
\EQUAL_FLAG~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FLAG|DOUT~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_EQUAL_FLAG);

-- Location: IOIBUF_X54_Y18_N61
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G10
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

-- Location: FF_X13_Y4_N46
\PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|MUX_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y4_N30
\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \incrementaPC|Add0~2\ = CARRY(( \PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

-- Location: LABCELL_X16_Y4_N33
\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT\(1) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT\(1) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(1),
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

-- Location: FF_X13_Y4_N56
\PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|MUX_OUT[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[2]~DUPLICATE_q\);

-- Location: FF_X13_Y4_N44
\PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|MUX_OUT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[1]~DUPLICATE_q\);

-- Location: FF_X13_Y4_N58
\PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|MUX_OUT[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y4_N18
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \PC|DOUT[1]~DUPLICATE_q\ & ( \PC|DOUT[3]~DUPLICATE_q\ ) ) # ( !\PC|DOUT[1]~DUPLICATE_q\ & ( \PC|DOUT[3]~DUPLICATE_q\ & ( (!\PC|DOUT[2]~DUPLICATE_q\) # (\PC|DOUT\(0)) ) ) ) # ( \PC|DOUT[1]~DUPLICATE_q\ & ( 
-- !\PC|DOUT[3]~DUPLICATE_q\ & ( \PC|DOUT\(0) ) ) ) # ( !\PC|DOUT[1]~DUPLICATE_q\ & ( !\PC|DOUT[3]~DUPLICATE_q\ & ( (\PC|DOUT\(0)) # (\PC|DOUT[2]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111000011110000111111001111110011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(0),
	datae => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM1|memROM~0_combout\);

-- Location: LABCELL_X14_Y4_N33
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \PC|DOUT[0]~DUPLICATE_q\ & ( (\PC|DOUT\(1) & ((\PC|DOUT[3]~DUPLICATE_q\) # (\PC|DOUT\(2)))) ) ) # ( !\PC|DOUT[0]~DUPLICATE_q\ & ( (!\PC|DOUT\(2) & (!\PC|DOUT[3]~DUPLICATE_q\ & !\PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~3_combout\);

-- Location: LABCELL_X16_Y3_N51
\decoderInstru1|saida~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru1|saida~5_combout\ = ( \ROM1|memROM~3_combout\ & ( !\ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~0_combout\ & !\ROM1|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \decoderInstru1|saida~5_combout\);

-- Location: FF_X16_Y4_N34
\REG_RET|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~5_sumout\,
	ena => \decoderInstru1|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(1));

-- Location: MLABCELL_X13_Y4_N15
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \PC|DOUT[1]~DUPLICATE_q\ ) # ( !\PC|DOUT[1]~DUPLICATE_q\ & ( ((!\PC|DOUT\(3) & \PC|DOUT[2]~DUPLICATE_q\)) # (\PC|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111001111000011111100111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~5_combout\);

-- Location: MLABCELL_X13_Y4_N42
\MUX2|MUX_OUT[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[1]~1_combout\ = ( \ROM1|memROM~5_combout\ & ( (!\LOG_DESVIO|SelMuxPC[1]~1_combout\ & (!\LOG_DESVIO|SelMuxPC[0]~0_combout\ & (\incrementaPC|Add0~5_sumout\))) # (\LOG_DESVIO|SelMuxPC[1]~1_combout\ & (((\REG_RET|DOUT\(1))))) ) ) # ( 
-- !\ROM1|memROM~5_combout\ & ( (!\LOG_DESVIO|SelMuxPC[1]~1_combout\ & (((\incrementaPC|Add0~5_sumout\)) # (\LOG_DESVIO|SelMuxPC[0]~0_combout\))) # (\LOG_DESVIO|SelMuxPC[1]~1_combout\ & (((\REG_RET|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001111111010011000111111100001000001110110000100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datab => \LOG_DESVIO|ALT_INV_SelMuxPC[1]~1_combout\,
	datac => \incrementaPC|ALT_INV_Add0~5_sumout\,
	datad => \REG_RET|ALT_INV_DOUT\(1),
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \MUX2|MUX_OUT[1]~1_combout\);

-- Location: FF_X13_Y4_N43
\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|MUX_OUT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

-- Location: LABCELL_X16_Y4_N36
\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(2),
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

-- Location: FF_X16_Y4_N37
\REG_RET|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~9_sumout\,
	ena => \decoderInstru1|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(2));

-- Location: MLABCELL_X13_Y4_N0
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT\(3)) # ((\PC|DOUT\(0)) # (\PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT[2]~DUPLICATE_q\ & (\PC|DOUT\(3))) # (\PC|DOUT[2]~DUPLICATE_q\ & ((!\PC|DOUT\(0)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100110000001111110011000011001111111111111100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~6_combout\);

-- Location: MLABCELL_X13_Y4_N54
\MUX2|MUX_OUT[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[2]~2_combout\ = ( \incrementaPC|Add0~9_sumout\ & ( (!\LOG_DESVIO|SelMuxPC[1]~1_combout\ & ((!\LOG_DESVIO|SelMuxPC[0]~0_combout\) # ((!\ROM1|memROM~6_combout\)))) # (\LOG_DESVIO|SelMuxPC[1]~1_combout\ & (((\REG_RET|DOUT\(2))))) ) ) # ( 
-- !\incrementaPC|Add0~9_sumout\ & ( (!\LOG_DESVIO|SelMuxPC[1]~1_combout\ & (\LOG_DESVIO|SelMuxPC[0]~0_combout\ & ((!\ROM1|memROM~6_combout\)))) # (\LOG_DESVIO|SelMuxPC[1]~1_combout\ & (((\REG_RET|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000011010001110000001111001111100010111100111110001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datab => \LOG_DESVIO|ALT_INV_SelMuxPC[1]~1_combout\,
	datac => \REG_RET|ALT_INV_DOUT\(2),
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \MUX2|MUX_OUT[2]~2_combout\);

-- Location: FF_X13_Y4_N55
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|MUX_OUT[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: LABCELL_X14_Y4_N30
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( \PC|DOUT[0]~DUPLICATE_q\ & ( (!\PC|DOUT\(2) & (!\PC|DOUT[3]~DUPLICATE_q\ & !\PC|DOUT\(1))) # (\PC|DOUT\(2) & (\PC|DOUT[3]~DUPLICATE_q\)) ) ) # ( !\PC|DOUT[0]~DUPLICATE_q\ & ( (!\PC|DOUT[3]~DUPLICATE_q\ & (!\PC|DOUT\(2) & 
-- \PC|DOUT\(1))) # (\PC|DOUT[3]~DUPLICATE_q\ & ((!\PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100000111000001110000011100010010001100100011001000110010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~1_combout\);

-- Location: MLABCELL_X13_Y3_N12
\LOG_DESVIO|SelMuxPC[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOG_DESVIO|SelMuxPC[1]~1_combout\ = ( \ROM1|memROM~3_combout\ & ( (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~1_combout\ & \ROM1|memROM~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \LOG_DESVIO|SelMuxPC[1]~1_combout\);

-- Location: LABCELL_X16_Y4_N39
\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~14\ = CARRY(( \PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~13_sumout\,
	cout => \incrementaPC|Add0~14\);

-- Location: FF_X16_Y4_N41
\REG_RET|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~13_sumout\,
	ena => \decoderInstru1|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(3));

-- Location: MLABCELL_X13_Y4_N12
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \PC|DOUT[1]~DUPLICATE_q\ & ( ((\PC|DOUT\(0)) # (\PC|DOUT[2]~DUPLICATE_q\)) # (\PC|DOUT\(3)) ) ) # ( !\PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT\(3) & ((\PC|DOUT\(0)) # (\PC|DOUT[2]~DUPLICATE_q\))) # (\PC|DOUT\(3) & 
-- ((!\PC|DOUT[2]~DUPLICATE_q\) # (!\PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111100001111111111110000111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~7_combout\);

-- Location: MLABCELL_X13_Y4_N57
\MUX2|MUX_OUT[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[3]~3_combout\ = ( \ROM1|memROM~7_combout\ & ( (!\LOG_DESVIO|SelMuxPC[1]~1_combout\ & (!\LOG_DESVIO|SelMuxPC[0]~0_combout\ & (\incrementaPC|Add0~13_sumout\))) # (\LOG_DESVIO|SelMuxPC[1]~1_combout\ & (((\REG_RET|DOUT\(3))))) ) ) # ( 
-- !\ROM1|memROM~7_combout\ & ( (!\LOG_DESVIO|SelMuxPC[1]~1_combout\ & (((\incrementaPC|Add0~13_sumout\)) # (\LOG_DESVIO|SelMuxPC[0]~0_combout\))) # (\LOG_DESVIO|SelMuxPC[1]~1_combout\ & (((\REG_RET|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001111111010011000111111100001000001110110000100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datab => \LOG_DESVIO|ALT_INV_SelMuxPC[1]~1_combout\,
	datac => \incrementaPC|ALT_INV_Add0~13_sumout\,
	datad => \REG_RET|ALT_INV_DOUT\(3),
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \MUX2|MUX_OUT[3]~3_combout\);

-- Location: FF_X13_Y4_N59
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|MUX_OUT[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: MLABCELL_X13_Y4_N18
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \PC|DOUT[2]~DUPLICATE_q\ & ( \PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT\(3) & !\PC|DOUT\(0)) ) ) ) # ( !\PC|DOUT[2]~DUPLICATE_q\ & ( \PC|DOUT[1]~DUPLICATE_q\ & ( !\PC|DOUT\(0) ) ) ) # ( \PC|DOUT[2]~DUPLICATE_q\ & ( 
-- !\PC|DOUT[1]~DUPLICATE_q\ & ( (\PC|DOUT\(0)) # (\PC|DOUT\(3)) ) ) ) # ( !\PC|DOUT[2]~DUPLICATE_q\ & ( !\PC|DOUT[1]~DUPLICATE_q\ & ( !\PC|DOUT\(3) $ (!\PC|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111111111111111111000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(0),
	datae => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~2_combout\);

-- Location: MLABCELL_X13_Y3_N24
\decoderInstru1|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru1|saida~1_combout\ = ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~3_combout\ & ( (!\ROM1|memROM~2_combout\ & \ROM1|memROM~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \decoderInstru1|saida~1_combout\);

-- Location: MLABCELL_X13_Y2_N3
\decoderInstru1|saida~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru1|saida~7_combout\ = (\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \decoderInstru1|saida~7_combout\);

-- Location: MLABCELL_X13_Y4_N51
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(0) & !\PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT\(3) & (\PC|DOUT\(0))) # (\PC|DOUT\(3) & ((\PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111111000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~4_combout\);

-- Location: LABCELL_X12_Y3_N18
\RAM1|ram~101feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~101feeder_combout\ = ( \REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(4),
	combout => \RAM1|ram~101feeder_combout\);

-- Location: LABCELL_X12_Y4_N33
\RAM1|ram~185\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~185_combout\ = ( \PC|DOUT[2]~DUPLICATE_q\ & ( !\PC|DOUT[3]~DUPLICATE_q\ & ( (!\PC|DOUT\(0) & \PC|DOUT[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \RAM1|ram~185_combout\);

-- Location: MLABCELL_X13_Y3_N18
\RAM1|ram~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~178_combout\ = ( \RAM1|ram~185_combout\ & ( (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~6_combout\ & !\ROM1|memROM~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \RAM1|ALT_INV_ram~185_combout\,
	combout => \RAM1|ram~178_combout\);

-- Location: FF_X12_Y3_N19
\RAM1|ram~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM1|ram~101feeder_combout\,
	ena => \RAM1|ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~101_q\);

-- Location: LABCELL_X12_Y3_N3
\RAM1|ram~133feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~133feeder_combout\ = ( \REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(4),
	combout => \RAM1|ram~133feeder_combout\);

-- Location: LABCELL_X14_Y4_N3
\RAM1|ram~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~177_combout\ = ( !\ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~7_combout\ & (!\ROM1|memROM~5_combout\ & \RAM1|ram~185_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~185_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|ram~177_combout\);

-- Location: FF_X12_Y3_N4
\RAM1|ram~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM1|ram~133feeder_combout\,
	ena => \RAM1|ram~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~133_q\);

-- Location: LABCELL_X14_Y3_N45
\RAM1|ram~37feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~37feeder_combout\ = ( \REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(4),
	combout => \RAM1|ram~37feeder_combout\);

-- Location: LABCELL_X14_Y3_N24
\RAM1|ram~180\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~180_combout\ = ( \RAM1|ram~185_combout\ & ( \ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~5_combout\ & \ROM1|memROM~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	datae => \RAM1|ALT_INV_ram~185_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|ram~180_combout\);

-- Location: FF_X14_Y3_N47
\RAM1|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM1|ram~37feeder_combout\,
	ena => \RAM1|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~37_q\);

-- Location: LABCELL_X14_Y3_N57
\RAM1|ram~69feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~69feeder_combout\ = ( \REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(4),
	combout => \RAM1|ram~69feeder_combout\);

-- Location: LABCELL_X14_Y3_N39
\RAM1|ram~179\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~179_combout\ = ( \RAM1|ram~185_combout\ & ( !\ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~5_combout\ & \ROM1|memROM~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datae => \RAM1|ALT_INV_ram~185_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|ram~179_combout\);

-- Location: FF_X14_Y3_N59
\RAM1|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM1|ram~69feeder_combout\,
	ena => \RAM1|ram~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~69_q\);

-- Location: MLABCELL_X13_Y3_N36
\RAM1|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~161_combout\ = ( \RAM1|ram~69_q\ & ( \ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~7_combout\ & (\RAM1|ram~101_q\)) # (\ROM1|memROM~7_combout\ & ((\RAM1|ram~37_q\))) ) ) ) # ( !\RAM1|ram~69_q\ & ( \ROM1|memROM~6_combout\ & ( 
-- (!\ROM1|memROM~7_combout\ & (\RAM1|ram~101_q\)) # (\ROM1|memROM~7_combout\ & ((\RAM1|ram~37_q\))) ) ) ) # ( \RAM1|ram~69_q\ & ( !\ROM1|memROM~6_combout\ & ( (\ROM1|memROM~7_combout\) # (\RAM1|ram~133_q\) ) ) ) # ( !\RAM1|ram~69_q\ & ( 
-- !\ROM1|memROM~6_combout\ & ( (\RAM1|ram~133_q\ & !\ROM1|memROM~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~101_q\,
	datab => \RAM1|ALT_INV_ram~133_q\,
	datac => \RAM1|ALT_INV_ram~37_q\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	datae => \RAM1|ALT_INV_ram~69_q\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|ram~161_combout\);

-- Location: LABCELL_X12_Y4_N57
\RAM1|ram~184\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~184_combout\ = ( \RAM1|ram~185_combout\ & ( (\ROM1|memROM~5_combout\ & (\ROM1|memROM~7_combout\ & \ROM1|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \RAM1|ALT_INV_ram~185_combout\,
	combout => \RAM1|ram~184_combout\);

-- Location: FF_X12_Y4_N2
\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

-- Location: LABCELL_X12_Y4_N48
\RAM1|ram~53feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~53feeder_combout\ = ( \REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(4),
	combout => \RAM1|ram~53feeder_combout\);

-- Location: MLABCELL_X13_Y3_N21
\RAM1|ram~183\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~183_combout\ = ( \RAM1|ram~185_combout\ & ( (\ROM1|memROM~5_combout\ & (!\ROM1|memROM~6_combout\ & \ROM1|memROM~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \RAM1|ALT_INV_ram~185_combout\,
	combout => \RAM1|ram~183_combout\);

-- Location: FF_X12_Y4_N49
\RAM1|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM1|ram~53feeder_combout\,
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~53_q\);

-- Location: LABCELL_X12_Y4_N39
\RAM1|ram~117feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~117feeder_combout\ = ( \REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(4),
	combout => \RAM1|ram~117feeder_combout\);

-- Location: LABCELL_X12_Y4_N12
\RAM1|ram~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~181_combout\ = ( \ROM1|memROM~5_combout\ & ( \RAM1|ram~185_combout\ & ( (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \RAM1|ALT_INV_ram~185_combout\,
	combout => \RAM1|ram~181_combout\);

-- Location: FF_X12_Y4_N41
\RAM1|ram~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM1|ram~117feeder_combout\,
	ena => \RAM1|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~117_q\);

-- Location: LABCELL_X12_Y4_N42
\RAM1|ram~182\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~182_combout\ = ( \ROM1|memROM~5_combout\ & ( \RAM1|ram~185_combout\ & ( (\ROM1|memROM~6_combout\ & !\ROM1|memROM~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \RAM1|ALT_INV_ram~185_combout\,
	combout => \RAM1|ram~182_combout\);

-- Location: FF_X14_Y4_N32
\RAM1|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~85_q\);

-- Location: LABCELL_X12_Y4_N3
\RAM1|ram~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~162_combout\ = ( \ROM1|memROM~6_combout\ & ( \ROM1|memROM~7_combout\ & ( \RAM1|ram~21_q\ ) ) ) # ( !\ROM1|memROM~6_combout\ & ( \ROM1|memROM~7_combout\ & ( \RAM1|ram~53_q\ ) ) ) # ( \ROM1|memROM~6_combout\ & ( !\ROM1|memROM~7_combout\ & ( 
-- \RAM1|ram~85_q\ ) ) ) # ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~7_combout\ & ( \RAM1|ram~117_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~21_q\,
	datab => \RAM1|ALT_INV_ram~53_q\,
	datac => \RAM1|ALT_INV_ram~117_q\,
	datad => \RAM1|ALT_INV_ram~85_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~162_combout\);

-- Location: MLABCELL_X13_Y3_N3
\RAM1|ram~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~163_combout\ = ( \RAM1|ram~161_combout\ & ( \RAM1|ram~162_combout\ & ( !\ROM1|memROM~4_combout\ ) ) ) # ( !\RAM1|ram~161_combout\ & ( \RAM1|ram~162_combout\ & ( (!\ROM1|memROM~4_combout\ & \ROM1|memROM~5_combout\) ) ) ) # ( 
-- \RAM1|ram~161_combout\ & ( !\RAM1|ram~162_combout\ & ( (!\ROM1|memROM~4_combout\ & !\ROM1|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \RAM1|ALT_INV_ram~161_combout\,
	dataf => \RAM1|ALT_INV_ram~162_combout\,
	combout => \RAM1|ram~163_combout\);

-- Location: MLABCELL_X13_Y2_N0
\decoderInstru1|saida~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru1|saida~6_combout\ = ( \ROM1|memROM~1_combout\ ) # ( !\ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~2_combout\) # (\ROM1|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \decoderInstru1|saida~6_combout\);

-- Location: FF_X14_Y4_N26
\RAM1|ram~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~132_q\);

-- Location: FF_X14_Y4_N10
\RAM1|ram~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~116_q\);

-- Location: LABCELL_X14_Y4_N54
\RAM1|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~156_combout\ = ( \RAM1|ram~116_q\ & ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~4_combout\ ) ) ) # ( \RAM1|ram~116_q\ & ( !\ROM1|memROM~5_combout\ & ( (\RAM1|ram~132_q\ & !\ROM1|memROM~4_combout\) ) ) ) # ( !\RAM1|ram~116_q\ & ( 
-- !\ROM1|memROM~5_combout\ & ( (\RAM1|ram~132_q\ & !\ROM1|memROM~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~132_q\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \RAM1|ALT_INV_ram~116_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~156_combout\);

-- Location: FF_X14_Y4_N23
\RAM1|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~84_q\);

-- Location: FF_X16_Y4_N28
\RAM1|ram~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~100_q\);

-- Location: LABCELL_X14_Y4_N42
\RAM1|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~157_combout\ = ( !\ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~5_combout\ & ((\RAM1|ram~100_q\))) # (\ROM1|memROM~5_combout\ & (\RAM1|ram~84_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~84_q\,
	datad => \RAM1|ALT_INV_ram~100_q\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~157_combout\);

-- Location: FF_X13_Y4_N10
\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

-- Location: LABCELL_X14_Y3_N42
\RAM1|ram~36feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~36feeder_combout\ = ( \REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~36feeder_combout\);

-- Location: FF_X14_Y3_N44
\RAM1|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM1|ram~36feeder_combout\,
	ena => \RAM1|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~36_q\);

-- Location: MLABCELL_X13_Y4_N48
\RAM1|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~159_combout\ = ( \RAM1|ram~36_q\ & ( (!\ROM1|memROM~4_combout\ & ((!\ROM1|memROM~5_combout\) # (\RAM1|ram~20_q\))) ) ) # ( !\RAM1|ram~36_q\ & ( (\RAM1|ram~20_q\ & (!\ROM1|memROM~4_combout\ & \ROM1|memROM~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000011110000010100001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~20_q\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \RAM1|ALT_INV_ram~36_q\,
	combout => \RAM1|ram~159_combout\);

-- Location: FF_X12_Y4_N44
\RAM1|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~52_q\);

-- Location: FF_X13_Y3_N55
\RAM1|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~68_q\);

-- Location: LABCELL_X12_Y4_N54
\RAM1|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~158_combout\ = ( !\ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~5_combout\ & ((\RAM1|ram~68_q\))) # (\ROM1|memROM~5_combout\ & (\RAM1|ram~52_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~52_q\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~68_q\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~158_combout\);

-- Location: LABCELL_X14_Y4_N12
\RAM1|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~160_combout\ = ( \RAM1|ram~159_combout\ & ( \RAM1|ram~158_combout\ & ( ((!\ROM1|memROM~6_combout\ & (\RAM1|ram~156_combout\)) # (\ROM1|memROM~6_combout\ & ((\RAM1|ram~157_combout\)))) # (\ROM1|memROM~7_combout\) ) ) ) # ( !\RAM1|ram~159_combout\ 
-- & ( \RAM1|ram~158_combout\ & ( (!\ROM1|memROM~7_combout\ & ((!\ROM1|memROM~6_combout\ & (\RAM1|ram~156_combout\)) # (\ROM1|memROM~6_combout\ & ((\RAM1|ram~157_combout\))))) # (\ROM1|memROM~7_combout\ & (!\ROM1|memROM~6_combout\)) ) ) ) # ( 
-- \RAM1|ram~159_combout\ & ( !\RAM1|ram~158_combout\ & ( (!\ROM1|memROM~7_combout\ & ((!\ROM1|memROM~6_combout\ & (\RAM1|ram~156_combout\)) # (\ROM1|memROM~6_combout\ & ((\RAM1|ram~157_combout\))))) # (\ROM1|memROM~7_combout\ & (\ROM1|memROM~6_combout\)) ) 
-- ) ) # ( !\RAM1|ram~159_combout\ & ( !\RAM1|ram~158_combout\ & ( (!\ROM1|memROM~7_combout\ & ((!\ROM1|memROM~6_combout\ & (\RAM1|ram~156_combout\)) # (\ROM1|memROM~6_combout\ & ((\RAM1|ram~157_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000110010011101101001100011011100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \RAM1|ALT_INV_ram~156_combout\,
	datad => \RAM1|ALT_INV_ram~157_combout\,
	datae => \RAM1|ALT_INV_ram~159_combout\,
	dataf => \RAM1|ALT_INV_ram~158_combout\,
	combout => \RAM1|ram~160_combout\);

-- Location: FF_X13_Y4_N35
\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

-- Location: FF_X12_Y4_N16
\RAM1|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~51_q\);

-- Location: LABCELL_X12_Y2_N57
\RAM1|ram~115feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~115feeder_combout\ = ( \REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~115feeder_combout\);

-- Location: FF_X12_Y2_N58
\RAM1|ram~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM1|ram~115feeder_combout\,
	ena => \RAM1|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~115_q\);

-- Location: FF_X14_Y4_N35
\RAM1|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~83_q\);

-- Location: MLABCELL_X13_Y4_N6
\RAM1|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~154_combout\ = ( \ROM1|memROM~6_combout\ & ( \ROM1|memROM~7_combout\ & ( \RAM1|ram~19_q\ ) ) ) # ( !\ROM1|memROM~6_combout\ & ( \ROM1|memROM~7_combout\ & ( \RAM1|ram~51_q\ ) ) ) # ( \ROM1|memROM~6_combout\ & ( !\ROM1|memROM~7_combout\ & ( 
-- \RAM1|ram~83_q\ ) ) ) # ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~7_combout\ & ( \RAM1|ram~115_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~19_q\,
	datab => \RAM1|ALT_INV_ram~51_q\,
	datac => \RAM1|ALT_INV_ram~115_q\,
	datad => \RAM1|ALT_INV_ram~83_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~154_combout\);

-- Location: FF_X14_Y3_N31
\RAM1|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~67_q\);

-- Location: FF_X14_Y3_N14
\RAM1|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~35_q\);

-- Location: FF_X13_Y3_N34
\RAM1|ram~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~131_q\);

-- Location: FF_X14_Y3_N53
\RAM1|ram~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~99_q\);

-- Location: LABCELL_X14_Y3_N15
\RAM1|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~153_combout\ = ( \ROM1|memROM~7_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM1|ram~35_q\ ) ) ) # ( !\ROM1|memROM~7_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM1|ram~99_q\ ) ) ) # ( \ROM1|memROM~7_combout\ & ( !\ROM1|memROM~6_combout\ & ( 
-- \RAM1|ram~67_q\ ) ) ) # ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~6_combout\ & ( \RAM1|ram~131_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~67_q\,
	datab => \RAM1|ALT_INV_ram~35_q\,
	datac => \RAM1|ALT_INV_ram~131_q\,
	datad => \RAM1|ALT_INV_ram~99_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|ram~153_combout\);

-- Location: LABCELL_X14_Y2_N15
\RAM1|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~155_combout\ = ( \RAM1|ram~153_combout\ & ( (!\ROM1|memROM~4_combout\ & ((!\ROM1|memROM~5_combout\) # (\RAM1|ram~154_combout\))) ) ) # ( !\RAM1|ram~153_combout\ & ( (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~5_combout\ & \RAM1|ram~154_combout\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~154_combout\,
	dataf => \RAM1|ALT_INV_ram~153_combout\,
	combout => \RAM1|ram~155_combout\);

-- Location: FF_X14_Y3_N28
\RAM1|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~34_q\);

-- Location: FF_X13_Y4_N5
\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

-- Location: MLABCELL_X13_Y4_N3
\RAM1|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~151_combout\ = ( !\ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~5_combout\ & (\RAM1|ram~34_q\)) # (\ROM1|memROM~5_combout\ & ((\RAM1|ram~18_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~34_q\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~18_q\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~151_combout\);

-- Location: LABCELL_X12_Y2_N36
\RAM1|ram~50feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~50feeder_combout\ = ( \REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~50feeder_combout\);

-- Location: FF_X12_Y2_N38
\RAM1|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM1|ram~50feeder_combout\,
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~50_q\);

-- Location: MLABCELL_X13_Y3_N42
\RAM1|ram~66feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~66feeder_combout\ = ( \REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~66feeder_combout\);

-- Location: FF_X13_Y3_N43
\RAM1|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM1|ram~66feeder_combout\,
	ena => \RAM1|ram~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~66_q\);

-- Location: LABCELL_X12_Y2_N48
\RAM1|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~150_combout\ = ( !\ROM1|memROM~4_combout\ & ( \ROM1|memROM~5_combout\ & ( \RAM1|ram~50_q\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~66_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~50_q\,
	datac => \RAM1|ALT_INV_ram~66_q\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~150_combout\);

-- Location: FF_X14_Y4_N50
\RAM1|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~82_q\);

-- Location: FF_X13_Y4_N28
\RAM1|ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~98_q\);

-- Location: LABCELL_X14_Y4_N45
\RAM1|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~149_combout\ = ( !\ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~5_combout\ & ((\RAM1|ram~98_q\))) # (\ROM1|memROM~5_combout\ & (\RAM1|ram~82_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~82_q\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~98_q\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~149_combout\);

-- Location: LABCELL_X12_Y2_N45
\RAM1|ram~130feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~130feeder_combout\ = ( \REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~130feeder_combout\);

-- Location: FF_X12_Y2_N47
\RAM1|ram~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM1|ram~130feeder_combout\,
	ena => \RAM1|ram~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~130_q\);

-- Location: FF_X12_Y2_N2
\RAM1|ram~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~114_q\);

-- Location: LABCELL_X12_Y2_N0
\RAM1|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~148_combout\ = ( \RAM1|ram~114_q\ & ( !\ROM1|memROM~4_combout\ & ( (\ROM1|memROM~5_combout\) # (\RAM1|ram~130_q\) ) ) ) # ( !\RAM1|ram~114_q\ & ( !\ROM1|memROM~4_combout\ & ( (\RAM1|ram~130_q\ & !\ROM1|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~130_q\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \RAM1|ALT_INV_ram~114_q\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~148_combout\);

-- Location: MLABCELL_X13_Y2_N54
\RAM1|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~152_combout\ = ( \RAM1|ram~149_combout\ & ( \RAM1|ram~148_combout\ & ( (!\ROM1|memROM~7_combout\) # ((!\ROM1|memROM~6_combout\ & ((\RAM1|ram~150_combout\))) # (\ROM1|memROM~6_combout\ & (\RAM1|ram~151_combout\))) ) ) ) # ( 
-- !\RAM1|ram~149_combout\ & ( \RAM1|ram~148_combout\ & ( (!\ROM1|memROM~6_combout\ & ((!\ROM1|memROM~7_combout\) # ((\RAM1|ram~150_combout\)))) # (\ROM1|memROM~6_combout\ & (\ROM1|memROM~7_combout\ & (\RAM1|ram~151_combout\))) ) ) ) # ( 
-- \RAM1|ram~149_combout\ & ( !\RAM1|ram~148_combout\ & ( (!\ROM1|memROM~6_combout\ & (\ROM1|memROM~7_combout\ & ((\RAM1|ram~150_combout\)))) # (\ROM1|memROM~6_combout\ & ((!\ROM1|memROM~7_combout\) # ((\RAM1|ram~151_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~149_combout\ & ( !\RAM1|ram~148_combout\ & ( (\ROM1|memROM~7_combout\ & ((!\ROM1|memROM~6_combout\ & ((\RAM1|ram~150_combout\))) # (\ROM1|memROM~6_combout\ & (\RAM1|ram~151_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \RAM1|ALT_INV_ram~151_combout\,
	datad => \RAM1|ALT_INV_ram~150_combout\,
	datae => \RAM1|ALT_INV_ram~149_combout\,
	dataf => \RAM1|ALT_INV_ram~148_combout\,
	combout => \RAM1|ram~152_combout\);

-- Location: FF_X12_Y4_N31
\RAM1|ram~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~113_q\);

-- Location: FF_X14_Y4_N19
\RAM1|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~81_q\);

-- Location: FF_X13_Y4_N32
\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

-- Location: FF_X12_Y4_N28
\RAM1|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~49_q\);

-- Location: MLABCELL_X13_Y4_N33
\RAM1|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~146_combout\ = ( \ROM1|memROM~6_combout\ & ( \ROM1|memROM~7_combout\ & ( \RAM1|ram~17_q\ ) ) ) # ( !\ROM1|memROM~6_combout\ & ( \ROM1|memROM~7_combout\ & ( \RAM1|ram~49_q\ ) ) ) # ( \ROM1|memROM~6_combout\ & ( !\ROM1|memROM~7_combout\ & ( 
-- \RAM1|ram~81_q\ ) ) ) # ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~7_combout\ & ( \RAM1|ram~113_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~113_q\,
	datab => \RAM1|ALT_INV_ram~81_q\,
	datac => \RAM1|ALT_INV_ram~17_q\,
	datad => \RAM1|ALT_INV_ram~49_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~146_combout\);

-- Location: FF_X14_Y4_N5
\RAM1|ram~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~129_q\);

-- Location: FF_X13_Y4_N37
\RAM1|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~97_q\);

-- Location: FF_X14_Y3_N37
\RAM1|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~33_q\);

-- Location: FF_X14_Y3_N55
\RAM1|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~65_q\);

-- Location: MLABCELL_X13_Y4_N39
\RAM1|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~145_combout\ = ( \ROM1|memROM~6_combout\ & ( \ROM1|memROM~7_combout\ & ( \RAM1|ram~33_q\ ) ) ) # ( !\ROM1|memROM~6_combout\ & ( \ROM1|memROM~7_combout\ & ( \RAM1|ram~65_q\ ) ) ) # ( \ROM1|memROM~6_combout\ & ( !\ROM1|memROM~7_combout\ & ( 
-- \RAM1|ram~97_q\ ) ) ) # ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~7_combout\ & ( \RAM1|ram~129_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~129_q\,
	datab => \RAM1|ALT_INV_ram~97_q\,
	datac => \RAM1|ALT_INV_ram~33_q\,
	datad => \RAM1|ALT_INV_ram~65_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~145_combout\);

-- Location: LABCELL_X14_Y2_N18
\RAM1|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~147_combout\ = ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~145_combout\ & ( (!\ROM1|memROM~5_combout\) # (\RAM1|ram~146_combout\) ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\RAM1|ram~145_combout\ & ( (\ROM1|memROM~5_combout\ & \RAM1|ram~146_combout\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000000000000010101111101011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~146_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM1|ALT_INV_ram~145_combout\,
	combout => \RAM1|ram~147_combout\);

-- Location: LABCELL_X14_Y2_N30
\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( \REGA|DOUT\(0) ) + ( (!\ROM1|memROM~0_combout\ & (((\RAM1|ram~147_combout\)))) # (\ROM1|memROM~0_combout\ & ((!\decoderInstru1|saida~6_combout\ & (\ROM1|memROM~4_combout\)) # (\decoderInstru1|saida~6_combout\ & 
-- ((\RAM1|ram~147_combout\))))) ) + ( !VCC ))
-- \ULA1|Add0~2\ = CARRY(( \REGA|DOUT\(0) ) + ( (!\ROM1|memROM~0_combout\ & (((\RAM1|ram~147_combout\)))) # (\ROM1|memROM~0_combout\ & ((!\decoderInstru1|saida~6_combout\ & (\ROM1|memROM~4_combout\)) # (\decoderInstru1|saida~6_combout\ & 
-- ((\RAM1|ram~147_combout\))))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110100000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \decoderInstru1|ALT_INV_saida~6_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \REGA|ALT_INV_DOUT\(0),
	dataf => \RAM1|ALT_INV_ram~147_combout\,
	cin => GND,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

-- Location: MLABCELL_X13_Y3_N6
\decoderInstru1|saida[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru1|saida[4]~2_combout\ = ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~0_combout\ & ( (\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\) ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~2_combout\ & 
-- !\ROM1|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000000000000000000000110011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \decoderInstru1|saida[4]~2_combout\);

-- Location: MLABCELL_X13_Y3_N15
\decoderInstru1|saida~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru1|saida~4_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~2_combout\) # ((\ROM1|memROM~1_combout\) # (\ROM1|memROM~3_combout\)) ) ) # ( !\ROM1|memROM~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001111111111111100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \decoderInstru1|saida~4_combout\);

-- Location: LABCELL_X14_Y3_N21
\decoderInstru1|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru1|Equal8~0_combout\ = ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~0_combout\ & ( (\ROM1|memROM~1_combout\ & !\ROM1|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \decoderInstru1|Equal8~0_combout\);

-- Location: MLABCELL_X13_Y3_N33
\decoderInstru1|saida[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru1|saida[5]~3_combout\ = ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~3_combout\ & ( !\ROM1|memROM~2_combout\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~3_combout\ & ( !\ROM1|memROM~2_combout\ $ (\ROM1|memROM~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \decoderInstru1|saida[5]~3_combout\);

-- Location: FF_X14_Y2_N32
\REGA|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~1_sumout\,
	asdata => \ULA1|saida[0]~0_combout\,
	sload => \decoderInstru1|ALT_INV_Equal8~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[0]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y2_N24
\ULA1|Add1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \ULA1|Add1~34_cout\);

-- Location: MLABCELL_X13_Y2_N27
\ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~1_sumout\ = SUM(( (!\ROM1|memROM~0_combout\ & (((!\RAM1|ram~147_combout\)))) # (\ROM1|memROM~0_combout\ & ((!\decoderInstru1|saida~6_combout\ & (!\ROM1|memROM~4_combout\)) # (\decoderInstru1|saida~6_combout\ & ((!\RAM1|ram~147_combout\))))) ) + 
-- ( \REGA|DOUT[0]~DUPLICATE_q\ ) + ( \ULA1|Add1~34_cout\ ))
-- \ULA1|Add1~2\ = CARRY(( (!\ROM1|memROM~0_combout\ & (((!\RAM1|ram~147_combout\)))) # (\ROM1|memROM~0_combout\ & ((!\decoderInstru1|saida~6_combout\ & (!\ROM1|memROM~4_combout\)) # (\decoderInstru1|saida~6_combout\ & ((!\RAM1|ram~147_combout\))))) ) + ( 
-- \REGA|DOUT[0]~DUPLICATE_q\ ) + ( \ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110001011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \RAM1|ALT_INV_ram~147_combout\,
	datad => \decoderInstru1|ALT_INV_saida~6_combout\,
	dataf => \REGA|ALT_INV_DOUT[0]~DUPLICATE_q\,
	cin => \ULA1|Add1~34_cout\,
	sumout => \ULA1|Add1~1_sumout\,
	cout => \ULA1|Add1~2\);

-- Location: LABCELL_X14_Y2_N57
\ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~0_combout\ = ( \RAM1|ram~147_combout\ & ( (!\decoderInstru1|saida[4]~2_combout\ & (((\ULA1|Add1~1_sumout\)))) # (\decoderInstru1|saida[4]~2_combout\ & (((\ROM1|memROM~4_combout\)) # (\decoderInstru1|saida~4_combout\))) ) ) # ( 
-- !\RAM1|ram~147_combout\ & ( (!\decoderInstru1|saida[4]~2_combout\ & (((\ULA1|Add1~1_sumout\)))) # (\decoderInstru1|saida[4]~2_combout\ & (!\decoderInstru1|saida~4_combout\ & (\ROM1|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datab => \decoderInstru1|ALT_INV_saida~4_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ULA1|ALT_INV_Add1~1_sumout\,
	dataf => \RAM1|ALT_INV_ram~147_combout\,
	combout => \ULA1|saida[0]~0_combout\);

-- Location: FF_X14_Y2_N31
\REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~1_sumout\,
	asdata => \ULA1|saida[0]~0_combout\,
	sload => \decoderInstru1|ALT_INV_Equal8~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(0));

-- Location: LABCELL_X14_Y2_N33
\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( \REGA|DOUT\(1) ) + ( (!\ROM1|memROM~0_combout\ & (((\RAM1|ram~152_combout\)))) # (\ROM1|memROM~0_combout\ & ((!\decoderInstru1|saida~6_combout\ & (!\ROM1|memROM~5_combout\)) # (\decoderInstru1|saida~6_combout\ & 
-- ((\RAM1|ram~152_combout\))))) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( \REGA|DOUT\(1) ) + ( (!\ROM1|memROM~0_combout\ & (((\RAM1|ram~152_combout\)))) # (\ROM1|memROM~0_combout\ & ((!\decoderInstru1|saida~6_combout\ & (!\ROM1|memROM~5_combout\)) # (\decoderInstru1|saida~6_combout\ & 
-- ((\RAM1|ram~152_combout\))))) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111110000010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \decoderInstru1|ALT_INV_saida~6_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \REGA|ALT_INV_DOUT\(1),
	dataf => \RAM1|ALT_INV_ram~152_combout\,
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

-- Location: MLABCELL_X13_Y2_N30
\ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~5_sumout\ = SUM(( (!\decoderInstru1|saida~6_combout\ & ((!\ROM1|memROM~0_combout\ & ((!\RAM1|ram~152_combout\))) # (\ROM1|memROM~0_combout\ & (\ROM1|memROM~5_combout\)))) # (\decoderInstru1|saida~6_combout\ & (((!\RAM1|ram~152_combout\)))) ) + 
-- ( \REGA|DOUT\(1) ) + ( \ULA1|Add1~2\ ))
-- \ULA1|Add1~6\ = CARRY(( (!\decoderInstru1|saida~6_combout\ & ((!\ROM1|memROM~0_combout\ & ((!\RAM1|ram~152_combout\))) # (\ROM1|memROM~0_combout\ & (\ROM1|memROM~5_combout\)))) # (\decoderInstru1|saida~6_combout\ & (((!\RAM1|ram~152_combout\)))) ) + ( 
-- \REGA|DOUT\(1) ) + ( \ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101111100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderInstru1|ALT_INV_saida~6_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~152_combout\,
	dataf => \REGA|ALT_INV_DOUT\(1),
	cin => \ULA1|Add1~2\,
	sumout => \ULA1|Add1~5_sumout\,
	cout => \ULA1|Add1~6\);

-- Location: LABCELL_X14_Y2_N0
\ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~1_combout\ = ( \ULA1|Add1~5_sumout\ & ( (!\decoderInstru1|saida[4]~2_combout\) # ((!\decoderInstru1|saida~4_combout\ & ((!\ROM1|memROM~5_combout\))) # (\decoderInstru1|saida~4_combout\ & (\RAM1|ram~152_combout\))) ) ) # ( 
-- !\ULA1|Add1~5_sumout\ & ( (\decoderInstru1|saida[4]~2_combout\ & ((!\decoderInstru1|saida~4_combout\ & ((!\ROM1|memROM~5_combout\))) # (\decoderInstru1|saida~4_combout\ & (\RAM1|ram~152_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010100000001010001010000000111101111101010111110111110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datab => \decoderInstru1|ALT_INV_saida~4_combout\,
	datac => \RAM1|ALT_INV_ram~152_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ULA1|ALT_INV_Add1~5_sumout\,
	combout => \ULA1|saida[1]~1_combout\);

-- Location: FF_X14_Y2_N35
\REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~5_sumout\,
	asdata => \ULA1|saida[1]~1_combout\,
	sload => \decoderInstru1|ALT_INV_Equal8~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(1));

-- Location: LABCELL_X14_Y2_N36
\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( \REGA|DOUT\(2) ) + ( (!\ROM1|memROM~0_combout\ & (((\RAM1|ram~155_combout\)))) # (\ROM1|memROM~0_combout\ & ((!\decoderInstru1|saida~6_combout\ & (!\ROM1|memROM~6_combout\)) # (\decoderInstru1|saida~6_combout\ & 
-- ((\RAM1|ram~155_combout\))))) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( \REGA|DOUT\(2) ) + ( (!\ROM1|memROM~0_combout\ & (((\RAM1|ram~155_combout\)))) # (\ROM1|memROM~0_combout\ & ((!\decoderInstru1|saida~6_combout\ & (!\ROM1|memROM~6_combout\)) # (\decoderInstru1|saida~6_combout\ & 
-- ((\RAM1|ram~155_combout\))))) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111110000010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \decoderInstru1|ALT_INV_saida~6_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \REGA|ALT_INV_DOUT\(2),
	dataf => \RAM1|ALT_INV_ram~155_combout\,
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

-- Location: MLABCELL_X13_Y2_N33
\ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~9_sumout\ = SUM(( (!\decoderInstru1|saida~6_combout\ & ((!\ROM1|memROM~0_combout\ & ((!\RAM1|ram~155_combout\))) # (\ROM1|memROM~0_combout\ & (\ROM1|memROM~6_combout\)))) # (\decoderInstru1|saida~6_combout\ & (((!\RAM1|ram~155_combout\)))) ) + 
-- ( \REGA|DOUT\(2) ) + ( \ULA1|Add1~6\ ))
-- \ULA1|Add1~10\ = CARRY(( (!\decoderInstru1|saida~6_combout\ & ((!\ROM1|memROM~0_combout\ & ((!\RAM1|ram~155_combout\))) # (\ROM1|memROM~0_combout\ & (\ROM1|memROM~6_combout\)))) # (\decoderInstru1|saida~6_combout\ & (((!\RAM1|ram~155_combout\)))) ) + ( 
-- \REGA|DOUT\(2) ) + ( \ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101111100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderInstru1|ALT_INV_saida~6_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM1|ALT_INV_ram~155_combout\,
	dataf => \REGA|ALT_INV_DOUT\(2),
	cin => \ULA1|Add1~6\,
	sumout => \ULA1|Add1~9_sumout\,
	cout => \ULA1|Add1~10\);

-- Location: LABCELL_X14_Y2_N9
\ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~2_combout\ = ( \ROM1|memROM~6_combout\ & ( (!\decoderInstru1|saida[4]~2_combout\ & (((\ULA1|Add1~9_sumout\)))) # (\decoderInstru1|saida[4]~2_combout\ & (\decoderInstru1|saida~4_combout\ & (\RAM1|ram~155_combout\))) ) ) # ( 
-- !\ROM1|memROM~6_combout\ & ( (!\decoderInstru1|saida[4]~2_combout\ & (((\ULA1|Add1~9_sumout\)))) # (\decoderInstru1|saida[4]~2_combout\ & ((!\decoderInstru1|saida~4_combout\) # ((\RAM1|ram~155_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010111101111010001011110111100000001101010110000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datab => \decoderInstru1|ALT_INV_saida~4_combout\,
	datac => \RAM1|ALT_INV_ram~155_combout\,
	datad => \ULA1|ALT_INV_Add1~9_sumout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \ULA1|saida[2]~2_combout\);

-- Location: FF_X14_Y2_N38
\REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~9_sumout\,
	asdata => \ULA1|saida[2]~2_combout\,
	sload => \decoderInstru1|ALT_INV_Equal8~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(2));

-- Location: LABCELL_X14_Y2_N39
\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( \REGA|DOUT\(3) ) + ( (!\ROM1|memROM~0_combout\ & (((\RAM1|ram~160_combout\)))) # (\ROM1|memROM~0_combout\ & ((!\decoderInstru1|saida~6_combout\ & (!\ROM1|memROM~7_combout\)) # (\decoderInstru1|saida~6_combout\ & 
-- ((\RAM1|ram~160_combout\))))) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( \REGA|DOUT\(3) ) + ( (!\ROM1|memROM~0_combout\ & (((\RAM1|ram~160_combout\)))) # (\ROM1|memROM~0_combout\ & ((!\decoderInstru1|saida~6_combout\ & (!\ROM1|memROM~7_combout\)) # (\decoderInstru1|saida~6_combout\ & 
-- ((\RAM1|ram~160_combout\))))) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111110000010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \decoderInstru1|ALT_INV_saida~6_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \REGA|ALT_INV_DOUT\(3),
	dataf => \RAM1|ALT_INV_ram~160_combout\,
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

-- Location: MLABCELL_X13_Y2_N36
\ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~13_sumout\ = SUM(( (!\decoderInstru1|saida~6_combout\ & ((!\ROM1|memROM~0_combout\ & ((!\RAM1|ram~160_combout\))) # (\ROM1|memROM~0_combout\ & (\ROM1|memROM~7_combout\)))) # (\decoderInstru1|saida~6_combout\ & (((!\RAM1|ram~160_combout\)))) ) + 
-- ( \REGA|DOUT\(3) ) + ( \ULA1|Add1~10\ ))
-- \ULA1|Add1~14\ = CARRY(( (!\decoderInstru1|saida~6_combout\ & ((!\ROM1|memROM~0_combout\ & ((!\RAM1|ram~160_combout\))) # (\ROM1|memROM~0_combout\ & (\ROM1|memROM~7_combout\)))) # (\decoderInstru1|saida~6_combout\ & (((!\RAM1|ram~160_combout\)))) ) + ( 
-- \REGA|DOUT\(3) ) + ( \ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101111100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderInstru1|ALT_INV_saida~6_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_ram~160_combout\,
	dataf => \REGA|ALT_INV_DOUT\(3),
	cin => \ULA1|Add1~10\,
	sumout => \ULA1|Add1~13_sumout\,
	cout => \ULA1|Add1~14\);

-- Location: LABCELL_X14_Y2_N6
\ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~3_combout\ = ( \ULA1|Add1~13_sumout\ & ( (!\decoderInstru1|saida[4]~2_combout\) # ((!\decoderInstru1|saida~4_combout\ & ((!\ROM1|memROM~7_combout\))) # (\decoderInstru1|saida~4_combout\ & (\RAM1|ram~160_combout\))) ) ) # ( 
-- !\ULA1|Add1~13_sumout\ & ( (\decoderInstru1|saida[4]~2_combout\ & ((!\decoderInstru1|saida~4_combout\ & ((!\ROM1|memROM~7_combout\))) # (\decoderInstru1|saida~4_combout\ & (\RAM1|ram~160_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010100000001010001010000000111101111101010111110111110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datab => \decoderInstru1|ALT_INV_saida~4_combout\,
	datac => \RAM1|ALT_INV_ram~160_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ULA1|ALT_INV_Add1~13_sumout\,
	combout => \ULA1|saida[3]~3_combout\);

-- Location: FF_X14_Y2_N41
\REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~13_sumout\,
	asdata => \ULA1|saida[3]~3_combout\,
	sload => \decoderInstru1|ALT_INV_Equal8~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(3));

-- Location: LABCELL_X14_Y2_N42
\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( \REGA|DOUT\(4) ) + ( (\RAM1|ram~163_combout\ & ((!\ROM1|memROM~0_combout\) # ((!\decoderInstru1|saida~7_combout\) # (\ROM1|memROM~1_combout\)))) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( \REGA|DOUT\(4) ) + ( (\RAM1|ram~163_combout\ & ((!\ROM1|memROM~0_combout\) # ((!\decoderInstru1|saida~7_combout\) # (\ROM1|memROM~1_combout\)))) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \decoderInstru1|ALT_INV_saida~7_combout\,
	datad => \REGA|ALT_INV_DOUT\(4),
	dataf => \RAM1|ALT_INV_ram~163_combout\,
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

-- Location: MLABCELL_X13_Y2_N39
\ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~17_sumout\ = SUM(( \REGA|DOUT\(4) ) + ( (!\RAM1|ram~163_combout\) # ((!\decoderInstru1|saida~6_combout\ & \ROM1|memROM~0_combout\)) ) + ( \ULA1|Add1~14\ ))
-- \ULA1|Add1~18\ = CARRY(( \REGA|DOUT\(4) ) + ( (!\RAM1|ram~163_combout\) # ((!\decoderInstru1|saida~6_combout\ & \ROM1|memROM~0_combout\)) ) + ( \ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011010000110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderInstru1|ALT_INV_saida~6_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \RAM1|ALT_INV_ram~163_combout\,
	datad => \REGA|ALT_INV_DOUT\(4),
	cin => \ULA1|Add1~14\,
	sumout => \ULA1|Add1~17_sumout\,
	cout => \ULA1|Add1~18\);

-- Location: LABCELL_X14_Y2_N12
\ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~4_combout\ = ( \ULA1|Add1~17_sumout\ & ( (!\decoderInstru1|saida[4]~2_combout\) # ((\RAM1|ram~163_combout\ & \decoderInstru1|saida~4_combout\)) ) ) # ( !\ULA1|Add1~17_sumout\ & ( (\RAM1|ram~163_combout\ & 
-- (\decoderInstru1|saida[4]~2_combout\ & \decoderInstru1|saida~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111110000111100111111000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~163_combout\,
	datac => \decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datad => \decoderInstru1|ALT_INV_saida~4_combout\,
	dataf => \ULA1|ALT_INV_Add1~17_sumout\,
	combout => \ULA1|saida[4]~4_combout\);

-- Location: FF_X14_Y2_N44
\REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~17_sumout\,
	asdata => \ULA1|saida[4]~4_combout\,
	sload => \decoderInstru1|ALT_INV_Equal8~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(4));

-- Location: LABCELL_X14_Y2_N45
\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( \REGA|DOUT\(5) ) + ( (\RAM1|ram~168_combout\ & ((!\ROM1|memROM~0_combout\) # ((!\decoderInstru1|saida~7_combout\) # (\ROM1|memROM~1_combout\)))) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( \REGA|DOUT\(5) ) + ( (\RAM1|ram~168_combout\ & ((!\ROM1|memROM~0_combout\) # ((!\decoderInstru1|saida~7_combout\) # (\ROM1|memROM~1_combout\)))) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \decoderInstru1|ALT_INV_saida~7_combout\,
	datad => \REGA|ALT_INV_DOUT\(5),
	dataf => \RAM1|ALT_INV_ram~168_combout\,
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

-- Location: LABCELL_X14_Y2_N27
\ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~5_combout\ = ( \ULA1|Add1~21_sumout\ & ( (!\decoderInstru1|saida[4]~2_combout\) # ((\decoderInstru1|saida~4_combout\ & \RAM1|ram~168_combout\)) ) ) # ( !\ULA1|Add1~21_sumout\ & ( (\decoderInstru1|saida~4_combout\ & (\RAM1|ram~168_combout\ & 
-- \decoderInstru1|saida[4]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011111111110000001100000000000000111111111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \decoderInstru1|ALT_INV_saida~4_combout\,
	datac => \RAM1|ALT_INV_ram~168_combout\,
	datad => \decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datae => \ULA1|ALT_INV_Add1~21_sumout\,
	combout => \ULA1|saida[5]~5_combout\);

-- Location: FF_X14_Y2_N47
\REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~21_sumout\,
	asdata => \ULA1|saida[5]~5_combout\,
	sload => \decoderInstru1|ALT_INV_Equal8~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(5));

-- Location: FF_X12_Y4_N11
\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

-- Location: LABCELL_X12_Y3_N51
\RAM1|ram~38feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~38feeder_combout\ = ( \REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(5),
	combout => \RAM1|ram~38feeder_combout\);

-- Location: FF_X12_Y3_N53
\RAM1|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM1|ram~38feeder_combout\,
	ena => \RAM1|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~38_q\);

-- Location: LABCELL_X12_Y4_N6
\RAM1|ram~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~167_combout\ = ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~22_q\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~22_q\,
	datad => \RAM1|ALT_INV_ram~38_q\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~167_combout\);

-- Location: FF_X14_Y4_N59
\RAM1|ram~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~118_q\);

-- Location: FF_X14_Y4_N17
\RAM1|ram~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~134_q\);

-- Location: LABCELL_X14_Y4_N27
\RAM1|ram~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~164_combout\ = ( \ROM1|memROM~5_combout\ & ( (\RAM1|ram~118_q\ & !\ROM1|memROM~4_combout\) ) ) # ( !\ROM1|memROM~5_combout\ & ( (\RAM1|ram~134_q\ & !\ROM1|memROM~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~118_q\,
	datac => \RAM1|ALT_INV_ram~134_q\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~164_combout\);

-- Location: FF_X13_Y3_N49
\RAM1|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~54_q\);

-- Location: FF_X14_Y3_N2
\RAM1|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~70_q\);

-- Location: LABCELL_X14_Y3_N3
\RAM1|ram~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~166_combout\ = ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~54_q\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~70_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~54_q\,
	datad => \RAM1|ALT_INV_ram~70_q\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~166_combout\);

-- Location: FF_X14_Y3_N20
\RAM1|ram~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~102_q\);

-- Location: FF_X14_Y4_N37
\RAM1|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~86_q\);

-- Location: LABCELL_X14_Y3_N48
\RAM1|ram~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~165_combout\ = ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~86_q\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~102_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~102_q\,
	datad => \RAM1|ALT_INV_ram~86_q\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~165_combout\);

-- Location: MLABCELL_X13_Y2_N18
\RAM1|ram~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~168_combout\ = ( \RAM1|ram~166_combout\ & ( \RAM1|ram~165_combout\ & ( (!\ROM1|memROM~6_combout\ & (((\RAM1|ram~164_combout\)) # (\ROM1|memROM~7_combout\))) # (\ROM1|memROM~6_combout\ & ((!\ROM1|memROM~7_combout\) # ((\RAM1|ram~167_combout\)))) 
-- ) ) ) # ( !\RAM1|ram~166_combout\ & ( \RAM1|ram~165_combout\ & ( (!\ROM1|memROM~6_combout\ & (!\ROM1|memROM~7_combout\ & ((\RAM1|ram~164_combout\)))) # (\ROM1|memROM~6_combout\ & ((!\ROM1|memROM~7_combout\) # ((\RAM1|ram~167_combout\)))) ) ) ) # ( 
-- \RAM1|ram~166_combout\ & ( !\RAM1|ram~165_combout\ & ( (!\ROM1|memROM~6_combout\ & (((\RAM1|ram~164_combout\)) # (\ROM1|memROM~7_combout\))) # (\ROM1|memROM~6_combout\ & (\ROM1|memROM~7_combout\ & (\RAM1|ram~167_combout\))) ) ) ) # ( 
-- !\RAM1|ram~166_combout\ & ( !\RAM1|ram~165_combout\ & ( (!\ROM1|memROM~6_combout\ & (!\ROM1|memROM~7_combout\ & ((\RAM1|ram~164_combout\)))) # (\ROM1|memROM~6_combout\ & (\ROM1|memROM~7_combout\ & (\RAM1|ram~167_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001001000111010101101000101110011010110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \RAM1|ALT_INV_ram~167_combout\,
	datad => \RAM1|ALT_INV_ram~164_combout\,
	datae => \RAM1|ALT_INV_ram~166_combout\,
	dataf => \RAM1|ALT_INV_ram~165_combout\,
	combout => \RAM1|ram~168_combout\);

-- Location: MLABCELL_X13_Y2_N42
\ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~21_sumout\ = SUM(( (!\RAM1|ram~168_combout\) # ((!\ROM1|memROM~1_combout\ & (\ROM1|memROM~0_combout\ & \decoderInstru1|saida~7_combout\))) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add1~18\ ))
-- \ULA1|Add1~22\ = CARRY(( (!\RAM1|ram~168_combout\) # ((!\ROM1|memROM~1_combout\ & (\ROM1|memROM~0_combout\ & \decoderInstru1|saida~7_combout\))) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \RAM1|ALT_INV_ram~168_combout\,
	datad => \decoderInstru1|ALT_INV_saida~7_combout\,
	dataf => \REGA|ALT_INV_DOUT\(5),
	cin => \ULA1|Add1~18\,
	sumout => \ULA1|Add1~21_sumout\,
	cout => \ULA1|Add1~22\);

-- Location: MLABCELL_X13_Y2_N45
\ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~25_sumout\ = SUM(( (!\RAM1|ram~171_combout\) # ((!\ROM1|memROM~1_combout\ & (\ROM1|memROM~0_combout\ & \decoderInstru1|saida~7_combout\))) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add1~22\ ))
-- \ULA1|Add1~26\ = CARRY(( (!\RAM1|ram~171_combout\) # ((!\ROM1|memROM~1_combout\ & (\ROM1|memROM~0_combout\ & \decoderInstru1|saida~7_combout\))) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \RAM1|ALT_INV_ram~171_combout\,
	datad => \decoderInstru1|ALT_INV_saida~7_combout\,
	dataf => \REGA|ALT_INV_DOUT\(6),
	cin => \ULA1|Add1~22\,
	sumout => \ULA1|Add1~25_sumout\,
	cout => \ULA1|Add1~26\);

-- Location: LABCELL_X14_Y2_N3
\ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~6_combout\ = ( \ULA1|Add1~25_sumout\ & ( (!\decoderInstru1|saida[4]~2_combout\) # ((\decoderInstru1|saida~4_combout\ & \RAM1|ram~171_combout\)) ) ) # ( !\ULA1|Add1~25_sumout\ & ( (\decoderInstru1|saida~4_combout\ & (\RAM1|ram~171_combout\ & 
-- \decoderInstru1|saida[4]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111111111000000111111111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \decoderInstru1|ALT_INV_saida~4_combout\,
	datac => \RAM1|ALT_INV_ram~171_combout\,
	datad => \decoderInstru1|ALT_INV_saida[4]~2_combout\,
	dataf => \ULA1|ALT_INV_Add1~25_sumout\,
	combout => \ULA1|saida[6]~6_combout\);

-- Location: FF_X14_Y2_N49
\REGA|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~25_sumout\,
	asdata => \ULA1|saida[6]~6_combout\,
	sload => \decoderInstru1|ALT_INV_Equal8~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[6]~DUPLICATE_q\);

-- Location: FF_X14_Y4_N28
\RAM1|ram~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~135_q\);

-- Location: FF_X14_Y3_N35
\RAM1|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~71_q\);

-- Location: FF_X13_Y4_N41
\RAM1|ram~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~103_q\);

-- Location: LABCELL_X14_Y3_N6
\RAM1|ram~39feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~39feeder_combout\ = ( \REGA|DOUT[6]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT[6]~DUPLICATE_q\,
	combout => \RAM1|ram~39feeder_combout\);

-- Location: FF_X14_Y3_N7
\RAM1|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM1|ram~39feeder_combout\,
	ena => \RAM1|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~39_q\);

-- Location: LABCELL_X14_Y4_N9
\RAM1|ram~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~169_combout\ = ( \RAM1|ram~39_q\ & ( \ROM1|memROM~6_combout\ & ( (\RAM1|ram~103_q\) # (\ROM1|memROM~7_combout\) ) ) ) # ( !\RAM1|ram~39_q\ & ( \ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~7_combout\ & \RAM1|ram~103_q\) ) ) ) # ( \RAM1|ram~39_q\ & 
-- ( !\ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~7_combout\ & (\RAM1|ram~135_q\)) # (\ROM1|memROM~7_combout\ & ((\RAM1|ram~71_q\))) ) ) ) # ( !\RAM1|ram~39_q\ & ( !\ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~7_combout\ & (\RAM1|ram~135_q\)) # 
-- (\ROM1|memROM~7_combout\ & ((\RAM1|ram~71_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \RAM1|ALT_INV_ram~135_q\,
	datac => \RAM1|ALT_INV_ram~71_q\,
	datad => \RAM1|ALT_INV_ram~103_q\,
	datae => \RAM1|ALT_INV_ram~39_q\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|ram~169_combout\);

-- Location: FF_X14_Y4_N8
\RAM1|ram~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~119_q\);

-- Location: LABCELL_X12_Y4_N51
\RAM1|ram~55feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~55feeder_combout\ = ( \REGA|DOUT[6]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT[6]~DUPLICATE_q\,
	combout => \RAM1|ram~55feeder_combout\);

-- Location: FF_X12_Y4_N52
\RAM1|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM1|ram~55feeder_combout\,
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~55_q\);

-- Location: FF_X13_Y4_N22
\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

-- Location: FF_X14_Y4_N41
\RAM1|ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~87_q\);

-- Location: LABCELL_X14_Y4_N39
\RAM1|ram~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~170_combout\ = ( \RAM1|ram~87_q\ & ( \ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~7_combout\) # (\RAM1|ram~23_q\) ) ) ) # ( !\RAM1|ram~87_q\ & ( \ROM1|memROM~6_combout\ & ( (\ROM1|memROM~7_combout\ & \RAM1|ram~23_q\) ) ) ) # ( \RAM1|ram~87_q\ & ( 
-- !\ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~7_combout\ & (\RAM1|ram~119_q\)) # (\ROM1|memROM~7_combout\ & ((\RAM1|ram~55_q\))) ) ) ) # ( !\RAM1|ram~87_q\ & ( !\ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~7_combout\ & (\RAM1|ram~119_q\)) # 
-- (\ROM1|memROM~7_combout\ & ((\RAM1|ram~55_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \RAM1|ALT_INV_ram~119_q\,
	datac => \RAM1|ALT_INV_ram~55_q\,
	datad => \RAM1|ALT_INV_ram~23_q\,
	datae => \RAM1|ALT_INV_ram~87_q\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|ram~170_combout\);

-- Location: LABCELL_X14_Y4_N51
\RAM1|ram~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~171_combout\ = ( \RAM1|ram~170_combout\ & ( (!\ROM1|memROM~4_combout\ & ((\RAM1|ram~169_combout\) # (\ROM1|memROM~5_combout\))) ) ) # ( !\RAM1|ram~170_combout\ & ( (!\ROM1|memROM~4_combout\ & (!\ROM1|memROM~5_combout\ & \RAM1|ram~169_combout\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~169_combout\,
	dataf => \RAM1|ALT_INV_ram~170_combout\,
	combout => \RAM1|ram~171_combout\);

-- Location: LABCELL_X14_Y2_N48
\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( \REGA|DOUT\(6) ) + ( (\RAM1|ram~171_combout\ & ((!\ROM1|memROM~0_combout\) # ((!\decoderInstru1|saida~7_combout\) # (\ROM1|memROM~1_combout\)))) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( \REGA|DOUT\(6) ) + ( (\RAM1|ram~171_combout\ & ((!\ROM1|memROM~0_combout\) # ((!\decoderInstru1|saida~7_combout\) # (\ROM1|memROM~1_combout\)))) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \decoderInstru1|ALT_INV_saida~7_combout\,
	datad => \REGA|ALT_INV_DOUT\(6),
	dataf => \RAM1|ALT_INV_ram~171_combout\,
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

-- Location: FF_X14_Y2_N50
\REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~25_sumout\,
	asdata => \ULA1|saida[6]~6_combout\,
	sload => \decoderInstru1|ALT_INV_Equal8~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(6));

-- Location: LABCELL_X14_Y2_N51
\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( \REGA|DOUT\(7) ) + ( (\RAM1|ram~176_combout\ & ((!\ROM1|memROM~0_combout\) # ((!\decoderInstru1|saida~7_combout\) # (\ROM1|memROM~1_combout\)))) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \decoderInstru1|ALT_INV_saida~7_combout\,
	datad => \REGA|ALT_INV_DOUT\(7),
	dataf => \RAM1|ALT_INV_ram~176_combout\,
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\);

-- Location: LABCELL_X14_Y2_N54
\ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~7_combout\ = ( \ULA1|Add1~29_sumout\ & ( (!\decoderInstru1|saida[4]~2_combout\) # ((\decoderInstru1|saida~4_combout\ & \RAM1|ram~176_combout\)) ) ) # ( !\ULA1|Add1~29_sumout\ & ( (\decoderInstru1|saida~4_combout\ & (\RAM1|ram~176_combout\ & 
-- \decoderInstru1|saida[4]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111111111000000111111111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \decoderInstru1|ALT_INV_saida~4_combout\,
	datac => \RAM1|ALT_INV_ram~176_combout\,
	datad => \decoderInstru1|ALT_INV_saida[4]~2_combout\,
	dataf => \ULA1|ALT_INV_Add1~29_sumout\,
	combout => \ULA1|saida[7]~7_combout\);

-- Location: FF_X14_Y2_N52
\REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~29_sumout\,
	asdata => \ULA1|saida[7]~7_combout\,
	sload => \decoderInstru1|ALT_INV_Equal8~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(7));

-- Location: FF_X14_Y4_N55
\RAM1|ram~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~120_q\);

-- Location: FF_X14_Y2_N53
\REGA|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~29_sumout\,
	asdata => \ULA1|saida[7]~7_combout\,
	sload => \decoderInstru1|ALT_INV_Equal8~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[7]~DUPLICATE_q\);

-- Location: FF_X14_Y4_N2
\RAM1|ram~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT[7]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~136_q\);

-- Location: LABCELL_X14_Y4_N0
\RAM1|ram~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~172_combout\ = ( !\ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~5_combout\ & ((\RAM1|ram~136_q\))) # (\ROM1|memROM~5_combout\ & (\RAM1|ram~120_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~120_q\,
	datad => \RAM1|ALT_INV_ram~136_q\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~172_combout\);

-- Location: FF_X14_Y4_N53
\RAM1|ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT[7]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~88_q\);

-- Location: FF_X13_Y4_N26
\RAM1|ram~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~104_q\);

-- Location: LABCELL_X14_Y4_N48
\RAM1|ram~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~173_combout\ = ( \RAM1|ram~104_q\ & ( (!\ROM1|memROM~4_combout\ & ((!\ROM1|memROM~5_combout\) # (\RAM1|ram~88_q\))) ) ) # ( !\RAM1|ram~104_q\ & ( (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~5_combout\ & \RAM1|ram~88_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~88_q\,
	dataf => \RAM1|ALT_INV_ram~104_q\,
	combout => \RAM1|ram~173_combout\);

-- Location: FF_X13_Y4_N8
\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

-- Location: LABCELL_X14_Y3_N9
\RAM1|ram~40feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~40feeder_combout\ = ( \REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(7),
	combout => \RAM1|ram~40feeder_combout\);

-- Location: FF_X14_Y3_N10
\RAM1|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM1|ram~40feeder_combout\,
	ena => \RAM1|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~40_q\);

-- Location: LABCELL_X14_Y4_N21
\RAM1|ram~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~175_combout\ = ( \RAM1|ram~40_q\ & ( (!\ROM1|memROM~4_combout\ & ((!\ROM1|memROM~5_combout\) # (\RAM1|ram~24_q\))) ) ) # ( !\RAM1|ram~40_q\ & ( (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~5_combout\ & \RAM1|ram~24_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~24_q\,
	dataf => \RAM1|ALT_INV_ram~40_q\,
	combout => \RAM1|ram~175_combout\);

-- Location: FF_X14_Y3_N4
\RAM1|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~72_q\);

-- Location: LABCELL_X12_Y4_N24
\RAM1|ram~56feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~56feeder_combout\ = ( \REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(7),
	combout => \RAM1|ram~56feeder_combout\);

-- Location: FF_X12_Y4_N25
\RAM1|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM1|ram~56feeder_combout\,
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~56_q\);

-- Location: LABCELL_X14_Y4_N18
\RAM1|ram~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~174_combout\ = ( \RAM1|ram~56_q\ & ( (!\ROM1|memROM~4_combout\ & ((\RAM1|ram~72_q\) # (\ROM1|memROM~5_combout\))) ) ) # ( !\RAM1|ram~56_q\ & ( (!\ROM1|memROM~4_combout\ & (!\ROM1|memROM~5_combout\ & \RAM1|ram~72_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~72_q\,
	dataf => \RAM1|ALT_INV_ram~56_q\,
	combout => \RAM1|ram~174_combout\);

-- Location: MLABCELL_X13_Y4_N24
\RAM1|ram~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~176_combout\ = ( \RAM1|ram~175_combout\ & ( \RAM1|ram~174_combout\ & ( ((!\ROM1|memROM~6_combout\ & (\RAM1|ram~172_combout\)) # (\ROM1|memROM~6_combout\ & ((\RAM1|ram~173_combout\)))) # (\ROM1|memROM~7_combout\) ) ) ) # ( !\RAM1|ram~175_combout\ 
-- & ( \RAM1|ram~174_combout\ & ( (!\ROM1|memROM~6_combout\ & (((\RAM1|ram~172_combout\)) # (\ROM1|memROM~7_combout\))) # (\ROM1|memROM~6_combout\ & (!\ROM1|memROM~7_combout\ & ((\RAM1|ram~173_combout\)))) ) ) ) # ( \RAM1|ram~175_combout\ & ( 
-- !\RAM1|ram~174_combout\ & ( (!\ROM1|memROM~6_combout\ & (!\ROM1|memROM~7_combout\ & (\RAM1|ram~172_combout\))) # (\ROM1|memROM~6_combout\ & (((\RAM1|ram~173_combout\)) # (\ROM1|memROM~7_combout\))) ) ) ) # ( !\RAM1|ram~175_combout\ & ( 
-- !\RAM1|ram~174_combout\ & ( (!\ROM1|memROM~7_combout\ & ((!\ROM1|memROM~6_combout\ & (\RAM1|ram~172_combout\)) # (\ROM1|memROM~6_combout\ & ((\RAM1|ram~173_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \RAM1|ALT_INV_ram~172_combout\,
	datad => \RAM1|ALT_INV_ram~173_combout\,
	datae => \RAM1|ALT_INV_ram~175_combout\,
	dataf => \RAM1|ALT_INV_ram~174_combout\,
	combout => \RAM1|ram~176_combout\);

-- Location: MLABCELL_X13_Y2_N48
\ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~29_sumout\ = SUM(( (!\RAM1|ram~176_combout\) # ((!\ROM1|memROM~1_combout\ & (\ROM1|memROM~0_combout\ & \decoderInstru1|saida~7_combout\))) ) + ( \REGA|DOUT\(7) ) + ( \ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \decoderInstru1|ALT_INV_saida~7_combout\,
	datad => \RAM1|ALT_INV_ram~176_combout\,
	dataf => \REGA|ALT_INV_DOUT\(7),
	cin => \ULA1|Add1~26\,
	sumout => \ULA1|Add1~29_sumout\);

-- Location: FF_X13_Y2_N8
\FLAG|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \FLAG|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLAG|DOUT~q\);

-- Location: MLABCELL_X13_Y2_N12
\FLAG|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG|DOUT~1_combout\ = ( \ULA1|Add1~13_sumout\ & ( \ULA1|Add1~9_sumout\ & ( (\FLAG|DOUT~q\ & !\decoderInstru1|saida~1_combout\) ) ) ) # ( !\ULA1|Add1~13_sumout\ & ( \ULA1|Add1~9_sumout\ & ( (\FLAG|DOUT~q\ & !\decoderInstru1|saida~1_combout\) ) ) ) # ( 
-- \ULA1|Add1~13_sumout\ & ( !\ULA1|Add1~9_sumout\ & ( (\FLAG|DOUT~q\ & !\decoderInstru1|saida~1_combout\) ) ) ) # ( !\ULA1|Add1~13_sumout\ & ( !\ULA1|Add1~9_sumout\ & ( (!\decoderInstru1|saida~1_combout\ & (((\FLAG|DOUT~q\)))) # 
-- (\decoderInstru1|saida~1_combout\ & (!\ULA1|Add1~1_sumout\ & ((!\ULA1|Add1~5_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101000110000001100000011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~1_sumout\,
	datab => \FLAG|ALT_INV_DOUT~q\,
	datac => \decoderInstru1|ALT_INV_saida~1_combout\,
	datad => \ULA1|ALT_INV_Add1~5_sumout\,
	datae => \ULA1|ALT_INV_Add1~13_sumout\,
	dataf => \ULA1|ALT_INV_Add1~9_sumout\,
	combout => \FLAG|DOUT~1_combout\);

-- Location: MLABCELL_X13_Y2_N6
\FLAG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG|DOUT~0_combout\ = ( \ULA1|Add1~25_sumout\ & ( \FLAG|DOUT~1_combout\ & ( !\decoderInstru1|saida~1_combout\ ) ) ) # ( !\ULA1|Add1~25_sumout\ & ( \FLAG|DOUT~1_combout\ & ( (!\decoderInstru1|saida~1_combout\) # ((!\ULA1|Add1~21_sumout\ & 
-- (!\ULA1|Add1~29_sumout\ & !\ULA1|Add1~17_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderInstru1|ALT_INV_saida~1_combout\,
	datab => \ULA1|ALT_INV_Add1~21_sumout\,
	datac => \ULA1|ALT_INV_Add1~29_sumout\,
	datad => \ULA1|ALT_INV_Add1~17_sumout\,
	datae => \ULA1|ALT_INV_Add1~25_sumout\,
	dataf => \FLAG|ALT_INV_DOUT~1_combout\,
	combout => \FLAG|DOUT~0_combout\);

-- Location: FF_X13_Y2_N7
\FLAG|DOUT~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \FLAG|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLAG|DOUT~DUPLICATE_q\);

-- Location: LABCELL_X16_Y4_N6
\LOG_DESVIO|SelMuxPC[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOG_DESVIO|SelMuxPC[0]~0_combout\ = ( \ROM1|memROM~0_combout\ & ( \ROM1|memROM~1_combout\ & ( (\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\) ) ) ) # ( !\ROM1|memROM~0_combout\ & ( \ROM1|memROM~1_combout\ & ( (\FLAG|DOUT~DUPLICATE_q\ & 
-- (\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\)) ) ) ) # ( !\ROM1|memROM~0_combout\ & ( !\ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~2_combout\ & \ROM1|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000000000000000010001000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FLAG|ALT_INV_DOUT~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \LOG_DESVIO|SelMuxPC[0]~0_combout\);

-- Location: FF_X16_Y4_N32
\REG_RET|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~1_sumout\,
	ena => \decoderInstru1|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(0));

-- Location: MLABCELL_X13_Y4_N45
\MUX2|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[0]~0_combout\ = ( \ROM1|memROM~4_combout\ & ( (!\LOG_DESVIO|SelMuxPC[1]~1_combout\ & (((\incrementaPC|Add0~1_sumout\)) # (\LOG_DESVIO|SelMuxPC[0]~0_combout\))) # (\LOG_DESVIO|SelMuxPC[1]~1_combout\ & (((\REG_RET|DOUT\(0))))) ) ) # ( 
-- !\ROM1|memROM~4_combout\ & ( (!\LOG_DESVIO|SelMuxPC[1]~1_combout\ & (!\LOG_DESVIO|SelMuxPC[0]~0_combout\ & ((\incrementaPC|Add0~1_sumout\)))) # (\LOG_DESVIO|SelMuxPC[1]~1_combout\ & (((\REG_RET|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datab => \LOG_DESVIO|ALT_INV_SelMuxPC[1]~1_combout\,
	datac => \REG_RET|ALT_INV_DOUT\(0),
	datad => \incrementaPC|ALT_INV_Add0~1_sumout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \MUX2|MUX_OUT[0]~0_combout\);

-- Location: FF_X13_Y4_N47
\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|MUX_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

-- Location: LABCELL_X16_Y4_N42
\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))
-- \incrementaPC|Add0~18\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(4),
	cin => \incrementaPC|Add0~14\,
	sumout => \incrementaPC|Add0~17_sumout\,
	cout => \incrementaPC|Add0~18\);

-- Location: FF_X16_Y4_N43
\REG_RET|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~17_sumout\,
	ena => \decoderInstru1|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(4));

-- Location: LABCELL_X16_Y4_N18
\MUX2|MUX_OUT[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[4]~4_combout\ = ( \REG_RET|DOUT\(4) & ( (!\LOG_DESVIO|SelMuxPC[0]~0_combout\ & ((\incrementaPC|Add0~17_sumout\) # (\LOG_DESVIO|SelMuxPC[1]~1_combout\))) ) ) # ( !\REG_RET|DOUT\(4) & ( (!\LOG_DESVIO|SelMuxPC[0]~0_combout\ & 
-- (!\LOG_DESVIO|SelMuxPC[1]~1_combout\ & \incrementaPC|Add0~17_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000100010101010100010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datab => \LOG_DESVIO|ALT_INV_SelMuxPC[1]~1_combout\,
	datad => \incrementaPC|ALT_INV_Add0~17_sumout\,
	dataf => \REG_RET|ALT_INV_DOUT\(4),
	combout => \MUX2|MUX_OUT[4]~4_combout\);

-- Location: FF_X16_Y4_N20
\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|MUX_OUT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

-- Location: FF_X16_Y4_N23
\PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|MUX_OUT[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[5]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y4_N45
\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~18\ ))
-- \incrementaPC|Add0~22\ = CARRY(( \PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~18\,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

-- Location: FF_X16_Y4_N46
\REG_RET|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~21_sumout\,
	ena => \decoderInstru1|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(5));

-- Location: LABCELL_X16_Y4_N21
\MUX2|MUX_OUT[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[5]~5_combout\ = ( \LOG_DESVIO|SelMuxPC[1]~1_combout\ & ( (!\LOG_DESVIO|SelMuxPC[0]~0_combout\ & \REG_RET|DOUT\(5)) ) ) # ( !\LOG_DESVIO|SelMuxPC[1]~1_combout\ & ( (!\LOG_DESVIO|SelMuxPC[0]~0_combout\ & \incrementaPC|Add0~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datac => \REG_RET|ALT_INV_DOUT\(5),
	datad => \incrementaPC|ALT_INV_Add0~21_sumout\,
	dataf => \LOG_DESVIO|ALT_INV_SelMuxPC[1]~1_combout\,
	combout => \MUX2|MUX_OUT[5]~5_combout\);

-- Location: FF_X16_Y4_N22
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|MUX_OUT[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: LABCELL_X16_Y4_N48
\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(6),
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

-- Location: FF_X16_Y4_N50
\REG_RET|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~25_sumout\,
	ena => \decoderInstru1|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(6));

-- Location: LABCELL_X16_Y4_N12
\MUX2|MUX_OUT[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[6]~6_combout\ = ( \REG_RET|DOUT\(6) & ( (!\LOG_DESVIO|SelMuxPC[0]~0_combout\ & ((\incrementaPC|Add0~25_sumout\) # (\LOG_DESVIO|SelMuxPC[1]~1_combout\))) ) ) # ( !\REG_RET|DOUT\(6) & ( (!\LOG_DESVIO|SelMuxPC[0]~0_combout\ & 
-- (!\LOG_DESVIO|SelMuxPC[1]~1_combout\ & \incrementaPC|Add0~25_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datab => \LOG_DESVIO|ALT_INV_SelMuxPC[1]~1_combout\,
	datac => \incrementaPC|ALT_INV_Add0~25_sumout\,
	dataf => \REG_RET|ALT_INV_DOUT\(6),
	combout => \MUX2|MUX_OUT[6]~6_combout\);

-- Location: FF_X16_Y4_N14
\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|MUX_OUT[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

-- Location: FF_X16_Y4_N17
\PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|MUX_OUT[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y4_N51
\incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~29_sumout\ = SUM(( \PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~26\ ))
-- \incrementaPC|Add0~30\ = CARRY(( \PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~26\,
	sumout => \incrementaPC|Add0~29_sumout\,
	cout => \incrementaPC|Add0~30\);

-- Location: FF_X16_Y4_N53
\REG_RET|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~29_sumout\,
	ena => \decoderInstru1|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(7));

-- Location: LABCELL_X16_Y4_N15
\MUX2|MUX_OUT[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[7]~7_combout\ = ( \REG_RET|DOUT\(7) & ( (!\LOG_DESVIO|SelMuxPC[0]~0_combout\ & ((\incrementaPC|Add0~29_sumout\) # (\LOG_DESVIO|SelMuxPC[1]~1_combout\))) ) ) # ( !\REG_RET|DOUT\(7) & ( (!\LOG_DESVIO|SelMuxPC[0]~0_combout\ & 
-- (!\LOG_DESVIO|SelMuxPC[1]~1_combout\ & \incrementaPC|Add0~29_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datac => \LOG_DESVIO|ALT_INV_SelMuxPC[1]~1_combout\,
	datad => \incrementaPC|ALT_INV_Add0~29_sumout\,
	dataf => \REG_RET|ALT_INV_DOUT\(7),
	combout => \MUX2|MUX_OUT[7]~7_combout\);

-- Location: FF_X16_Y4_N16
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|MUX_OUT[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

-- Location: FF_X16_Y4_N2
\PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|MUX_OUT[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[8]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y4_N54
\incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~33_sumout\ = SUM(( \PC|DOUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~30\,
	sumout => \incrementaPC|Add0~33_sumout\);

-- Location: FF_X16_Y4_N56
\REG_RET|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~33_sumout\,
	ena => \decoderInstru1|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(8));

-- Location: LABCELL_X16_Y4_N0
\MUX2|MUX_OUT[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[8]~8_combout\ = ( !\PC|DOUT[0]~DUPLICATE_q\ & ( (\incrementaPC|Add0~33_sumout\ & ((!\FLAG|DOUT~DUPLICATE_q\ & (((\PC|DOUT\(1)) # (\PC|DOUT\(2))))) # (\FLAG|DOUT~DUPLICATE_q\ & ((!\PC|DOUT[3]~DUPLICATE_q\ & (\PC|DOUT\(2))) # 
-- (\PC|DOUT[3]~DUPLICATE_q\ & ((\PC|DOUT\(1)))))))) ) ) # ( \PC|DOUT[0]~DUPLICATE_q\ & ( (!\PC|DOUT[3]~DUPLICATE_q\ & (((\incrementaPC|Add0~33_sumout\ & ((\PC|DOUT\(1)) # (\PC|DOUT\(2))))))) # (\PC|DOUT[3]~DUPLICATE_q\ & ((!\PC|DOUT\(2) & 
-- (((\incrementaPC|Add0~33_sumout\)))) # (\PC|DOUT\(2) & (\REG_RET|DOUT\(8) & ((\PC|DOUT\(1))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000110010000000000110011000000000111101110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \REG_RET|ALT_INV_DOUT\(8),
	datad => \incrementaPC|ALT_INV_Add0~33_sumout\,
	datae => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(1),
	datag => \FLAG|ALT_INV_DOUT~DUPLICATE_q\,
	combout => \MUX2|MUX_OUT[8]~8_combout\);

-- Location: FF_X16_Y4_N1
\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|MUX_OUT[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

-- Location: LABCELL_X14_Y3_N30
\decoderInstru1|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru1|Equal5~0_combout\ = ( \ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~1_combout\ & !\ROM1|memROM~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001000000000000000000000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \decoderInstru1|Equal5~0_combout\);

-- Location: LABCELL_X16_Y3_N3
\decoderInstru1|saida[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru1|saida[1]~0_combout\ = ( !\ROM1|memROM~3_combout\ & ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~2_combout\ ) ) ) # ( !\ROM1|memROM~3_combout\ & ( !\ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~0_combout\ & !\ROM1|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \decoderInstru1|saida[1]~0_combout\);

-- Location: LABCELL_X16_Y3_N18
\decoderInstru1|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru1|Equal3~0_combout\ = ( !\ROM1|memROM~3_combout\ & ( \ROM1|memROM~1_combout\ & ( (\ROM1|memROM~2_combout\ & !\ROM1|memROM~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \decoderInstru1|Equal3~0_combout\);

-- Location: LABCELL_X16_Y3_N45
\decoderInstru1|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru1|Equal4~0_combout\ = ( !\ROM1|memROM~3_combout\ & ( \ROM1|memROM~1_combout\ & ( (\ROM1|memROM~0_combout\ & \ROM1|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \decoderInstru1|Equal4~0_combout\);

-- Location: IOIBUF_X48_Y45_N52
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X22_Y45_N1
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X10_Y45_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X38_Y45_N1
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X40_Y27_N0
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


