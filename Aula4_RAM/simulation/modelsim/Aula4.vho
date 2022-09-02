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

-- DATE "09/02/2022 09:19:24"

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

ENTITY 	Aula4 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(7 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	REG_OUT : OUT std_logic_vector(7 DOWNTO 0)
	);
END Aula4;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- REG_OUT[0]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[1]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[2]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[3]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[4]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[5]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[6]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[7]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Aula4 IS
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
SIGNAL ww_PC_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_REG_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \gravar:detectorSub0|saida~combout\ : std_logic;
SIGNAL \PC|DOUT[0]~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~18\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \decoderInstru1|Equal5~0_combout\ : std_logic;
SIGNAL \decoderInstru1|saida[3]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \RAM1|ram~185_combout\ : std_logic;
SIGNAL \RAM1|ram~180_combout\ : std_logic;
SIGNAL \RAM1|ram~41_q\ : std_logic;
SIGNAL \RAM1|ram~33feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~179_combout\ : std_logic;
SIGNAL \RAM1|ram~33_q\ : std_logic;
SIGNAL \RAM1|ram~178_combout\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~177_combout\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~145_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \RAM1|ram~183_combout\ : std_logic;
SIGNAL \RAM1|ram~97_q\ : std_logic;
SIGNAL \RAM1|ram~181_combout\ : std_logic;
SIGNAL \RAM1|ram~81_q\ : std_logic;
SIGNAL \RAM1|ram~89feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~182_combout\ : std_logic;
SIGNAL \RAM1|ram~89_q\ : std_logic;
SIGNAL \RAM1|ram~184_combout\ : std_logic;
SIGNAL \RAM1|ram~105_q\ : std_logic;
SIGNAL \RAM1|ram~146_combout\ : std_logic;
SIGNAL \RAM1|ram~147_combout\ : std_logic;
SIGNAL \decoderInstru1|Equal5~1_combout\ : std_logic;
SIGNAL \ULA1|Add0~34_cout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \decoderInstru1|saida[4]~1_combout\ : std_logic;
SIGNAL \RAM1|ram~82_q\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~148_combout\ : std_logic;
SIGNAL \RAM1|ram~34_q\ : std_logic;
SIGNAL \RAM1|ram~98_q\ : std_logic;
SIGNAL \RAM1|ram~150_combout\ : std_logic;
SIGNAL \RAM1|ram~42_q\ : std_logic;
SIGNAL \RAM1|ram~106feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~106_q\ : std_logic;
SIGNAL \RAM1|ram~151_combout\ : std_logic;
SIGNAL \RAM1|ram~90_q\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~149_combout\ : std_logic;
SIGNAL \RAM1|ram~152_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \RAM1|ram~83_q\ : std_logic;
SIGNAL \RAM1|ram~99_q\ : std_logic;
SIGNAL \RAM1|ram~91feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~91_q\ : std_logic;
SIGNAL \RAM1|ram~107_q\ : std_logic;
SIGNAL \RAM1|ram~154_combout\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~27_q\ : std_logic;
SIGNAL \RAM1|ram~43feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~43_q\ : std_logic;
SIGNAL \RAM1|ram~35feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~35_q\ : std_logic;
SIGNAL \RAM1|ram~153_combout\ : std_logic;
SIGNAL \RAM1|ram~155_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \RAM1|ram~28_q\ : std_logic;
SIGNAL \RAM1|ram~92_q\ : std_logic;
SIGNAL \RAM1|ram~157_combout\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~84feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~84_q\ : std_logic;
SIGNAL \RAM1|ram~156_combout\ : std_logic;
SIGNAL \RAM1|ram~44_q\ : std_logic;
SIGNAL \RAM1|ram~108_q\ : std_logic;
SIGNAL \RAM1|ram~159_combout\ : std_logic;
SIGNAL \RAM1|ram~36_q\ : std_logic;
SIGNAL \RAM1|ram~100_q\ : std_logic;
SIGNAL \RAM1|ram~158_combout\ : std_logic;
SIGNAL \RAM1|ram~160_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \REGA|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~45_q\ : std_logic;
SIGNAL \RAM1|ram~29_q\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~37_q\ : std_logic;
SIGNAL \RAM1|ram~161_combout\ : std_logic;
SIGNAL \RAM1|ram~101_q\ : std_logic;
SIGNAL \RAM1|ram~85_q\ : std_logic;
SIGNAL \RAM1|ram~109_q\ : std_logic;
SIGNAL \RAM1|ram~93_q\ : std_logic;
SIGNAL \RAM1|ram~162_combout\ : std_logic;
SIGNAL \RAM1|ram~163_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \RAM1|ram~38_q\ : std_logic;
SIGNAL \RAM1|ram~102_q\ : std_logic;
SIGNAL \RAM1|ram~166_combout\ : std_logic;
SIGNAL \RAM1|ram~30feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~30_q\ : std_logic;
SIGNAL \RAM1|ram~94feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~94_q\ : std_logic;
SIGNAL \RAM1|ram~165_combout\ : std_logic;
SIGNAL \RAM1|ram~46_q\ : std_logic;
SIGNAL \RAM1|ram~110feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~110_q\ : std_logic;
SIGNAL \RAM1|ram~167_combout\ : std_logic;
SIGNAL \RAM1|ram~86feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~86_q\ : std_logic;
SIGNAL \RAM1|ram~22feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~164_combout\ : std_logic;
SIGNAL \RAM1|ram~168_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \REGA|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~47feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~47_q\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~31_q\ : std_logic;
SIGNAL \RAM1|ram~39_q\ : std_logic;
SIGNAL \RAM1|ram~169_combout\ : std_logic;
SIGNAL \RAM1|ram~95_q\ : std_logic;
SIGNAL \RAM1|ram~111_q\ : std_logic;
SIGNAL \RAM1|ram~87feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~87_q\ : std_logic;
SIGNAL \RAM1|ram~103_q\ : std_logic;
SIGNAL \RAM1|ram~170_combout\ : std_logic;
SIGNAL \RAM1|ram~171_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \REGA|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~48feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~48_q\ : std_logic;
SIGNAL \RAM1|ram~112_q\ : std_logic;
SIGNAL \RAM1|ram~175_combout\ : std_logic;
SIGNAL \RAM1|ram~88_q\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~172_combout\ : std_logic;
SIGNAL \RAM1|ram~104feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~104_q\ : std_logic;
SIGNAL \RAM1|ram~40feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~40_q\ : std_logic;
SIGNAL \RAM1|ram~174_combout\ : std_logic;
SIGNAL \RAM1|ram~96_q\ : std_logic;
SIGNAL \RAM1|ram~32_q\ : std_logic;
SIGNAL \RAM1|ram~173_combout\ : std_logic;
SIGNAL \RAM1|ram~176_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \REGA|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM1|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~107_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~99_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~91_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~106_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~98_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~90_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \decoderInstru1|ALT_INV_saida[3]~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~105_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~89_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \decoderInstru1|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~185_combout\ : std_logic;
SIGNAL \decoderInstru1|ALT_INV_Equal5~1_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~176_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~175_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~112_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~174_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~104_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~173_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~96_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~172_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~88_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~171_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~170_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~111_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~103_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~95_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~87_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~169_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~168_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~167_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~110_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~166_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~102_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~165_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~94_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~164_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~86_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~163_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~162_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~109_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~101_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~93_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~85_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~161_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~108_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~100_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~92_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
PC_OUT <= ww_PC_OUT;
LEDR <= ww_LEDR;
REG_OUT <= ww_REG_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\RAM1|ALT_INV_ram~28_q\ <= NOT \RAM1|ram~28_q\;
\RAM1|ALT_INV_ram~156_combout\ <= NOT \RAM1|ram~156_combout\;
\RAM1|ALT_INV_ram~84_q\ <= NOT \RAM1|ram~84_q\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\RAM1|ALT_INV_ram~155_combout\ <= NOT \RAM1|ram~155_combout\;
\RAM1|ALT_INV_ram~154_combout\ <= NOT \RAM1|ram~154_combout\;
\RAM1|ALT_INV_ram~107_q\ <= NOT \RAM1|ram~107_q\;
\RAM1|ALT_INV_ram~99_q\ <= NOT \RAM1|ram~99_q\;
\RAM1|ALT_INV_ram~91_q\ <= NOT \RAM1|ram~91_q\;
\RAM1|ALT_INV_ram~83_q\ <= NOT \RAM1|ram~83_q\;
\RAM1|ALT_INV_ram~153_combout\ <= NOT \RAM1|ram~153_combout\;
\RAM1|ALT_INV_ram~43_q\ <= NOT \RAM1|ram~43_q\;
\RAM1|ALT_INV_ram~35_q\ <= NOT \RAM1|ram~35_q\;
\RAM1|ALT_INV_ram~27_q\ <= NOT \RAM1|ram~27_q\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\RAM1|ALT_INV_ram~152_combout\ <= NOT \RAM1|ram~152_combout\;
\RAM1|ALT_INV_ram~151_combout\ <= NOT \RAM1|ram~151_combout\;
\RAM1|ALT_INV_ram~106_q\ <= NOT \RAM1|ram~106_q\;
\RAM1|ALT_INV_ram~42_q\ <= NOT \RAM1|ram~42_q\;
\RAM1|ALT_INV_ram~150_combout\ <= NOT \RAM1|ram~150_combout\;
\RAM1|ALT_INV_ram~98_q\ <= NOT \RAM1|ram~98_q\;
\RAM1|ALT_INV_ram~34_q\ <= NOT \RAM1|ram~34_q\;
\RAM1|ALT_INV_ram~149_combout\ <= NOT \RAM1|ram~149_combout\;
\RAM1|ALT_INV_ram~90_q\ <= NOT \RAM1|ram~90_q\;
\RAM1|ALT_INV_ram~26_q\ <= NOT \RAM1|ram~26_q\;
\RAM1|ALT_INV_ram~148_combout\ <= NOT \RAM1|ram~148_combout\;
\RAM1|ALT_INV_ram~82_q\ <= NOT \RAM1|ram~82_q\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\decoderInstru1|ALT_INV_saida[3]~0_combout\ <= NOT \decoderInstru1|saida[3]~0_combout\;
\RAM1|ALT_INV_ram~147_combout\ <= NOT \RAM1|ram~147_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\RAM1|ALT_INV_ram~146_combout\ <= NOT \RAM1|ram~146_combout\;
\RAM1|ALT_INV_ram~105_q\ <= NOT \RAM1|ram~105_q\;
\RAM1|ALT_INV_ram~97_q\ <= NOT \RAM1|ram~97_q\;
\RAM1|ALT_INV_ram~89_q\ <= NOT \RAM1|ram~89_q\;
\RAM1|ALT_INV_ram~81_q\ <= NOT \RAM1|ram~81_q\;
\RAM1|ALT_INV_ram~145_combout\ <= NOT \RAM1|ram~145_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\RAM1|ALT_INV_ram~41_q\ <= NOT \RAM1|ram~41_q\;
\RAM1|ALT_INV_ram~33_q\ <= NOT \RAM1|ram~33_q\;
\RAM1|ALT_INV_ram~25_q\ <= NOT \RAM1|ram~25_q\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\decoderInstru1|ALT_INV_Equal5~0_combout\ <= NOT \decoderInstru1|Equal5~0_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\REGA|ALT_INV_DOUT\(7) <= NOT \REGA|DOUT\(7);
\REGA|ALT_INV_DOUT\(6) <= NOT \REGA|DOUT\(6);
\REGA|ALT_INV_DOUT\(5) <= NOT \REGA|DOUT\(5);
\REGA|ALT_INV_DOUT\(3) <= NOT \REGA|DOUT\(3);
\REGA|ALT_INV_DOUT\(2) <= NOT \REGA|DOUT\(2);
\REGA|ALT_INV_DOUT\(1) <= NOT \REGA|DOUT\(1);
\REGA|ALT_INV_DOUT\(0) <= NOT \REGA|DOUT\(0);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\ULA1|ALT_INV_Add0~29_sumout\ <= NOT \ULA1|Add0~29_sumout\;
\ULA1|ALT_INV_Add0~25_sumout\ <= NOT \ULA1|Add0~25_sumout\;
\ULA1|ALT_INV_Add0~21_sumout\ <= NOT \ULA1|Add0~21_sumout\;
\ULA1|ALT_INV_Add0~17_sumout\ <= NOT \ULA1|Add0~17_sumout\;
\ULA1|ALT_INV_Add0~13_sumout\ <= NOT \ULA1|Add0~13_sumout\;
\ULA1|ALT_INV_Add0~9_sumout\ <= NOT \ULA1|Add0~9_sumout\;
\ULA1|ALT_INV_Add0~5_sumout\ <= NOT \ULA1|Add0~5_sumout\;
\ULA1|ALT_INV_Add0~1_sumout\ <= NOT \ULA1|Add0~1_sumout\;
\REGA|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \REGA|DOUT[7]~DUPLICATE_q\;
\REGA|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \REGA|DOUT[6]~DUPLICATE_q\;
\REGA|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \REGA|DOUT[5]~DUPLICATE_q\;
\REGA|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \REGA|DOUT[4]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \PC|DOUT[2]~DUPLICATE_q\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\RAM1|ALT_INV_ram~185_combout\ <= NOT \RAM1|ram~185_combout\;
\decoderInstru1|ALT_INV_Equal5~1_combout\ <= NOT \decoderInstru1|Equal5~1_combout\;
\gravar:detectorSub0|ALT_INV_saidaQ~q\ <= NOT \gravar:detectorSub0|saidaQ~q\;
\RAM1|ALT_INV_ram~176_combout\ <= NOT \RAM1|ram~176_combout\;
\RAM1|ALT_INV_ram~175_combout\ <= NOT \RAM1|ram~175_combout\;
\RAM1|ALT_INV_ram~112_q\ <= NOT \RAM1|ram~112_q\;
\RAM1|ALT_INV_ram~48_q\ <= NOT \RAM1|ram~48_q\;
\RAM1|ALT_INV_ram~174_combout\ <= NOT \RAM1|ram~174_combout\;
\RAM1|ALT_INV_ram~104_q\ <= NOT \RAM1|ram~104_q\;
\RAM1|ALT_INV_ram~40_q\ <= NOT \RAM1|ram~40_q\;
\RAM1|ALT_INV_ram~173_combout\ <= NOT \RAM1|ram~173_combout\;
\RAM1|ALT_INV_ram~96_q\ <= NOT \RAM1|ram~96_q\;
\RAM1|ALT_INV_ram~32_q\ <= NOT \RAM1|ram~32_q\;
\RAM1|ALT_INV_ram~172_combout\ <= NOT \RAM1|ram~172_combout\;
\RAM1|ALT_INV_ram~88_q\ <= NOT \RAM1|ram~88_q\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\RAM1|ALT_INV_ram~171_combout\ <= NOT \RAM1|ram~171_combout\;
\RAM1|ALT_INV_ram~170_combout\ <= NOT \RAM1|ram~170_combout\;
\RAM1|ALT_INV_ram~111_q\ <= NOT \RAM1|ram~111_q\;
\RAM1|ALT_INV_ram~103_q\ <= NOT \RAM1|ram~103_q\;
\RAM1|ALT_INV_ram~95_q\ <= NOT \RAM1|ram~95_q\;
\RAM1|ALT_INV_ram~87_q\ <= NOT \RAM1|ram~87_q\;
\RAM1|ALT_INV_ram~169_combout\ <= NOT \RAM1|ram~169_combout\;
\RAM1|ALT_INV_ram~47_q\ <= NOT \RAM1|ram~47_q\;
\RAM1|ALT_INV_ram~39_q\ <= NOT \RAM1|ram~39_q\;
\RAM1|ALT_INV_ram~31_q\ <= NOT \RAM1|ram~31_q\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\RAM1|ALT_INV_ram~168_combout\ <= NOT \RAM1|ram~168_combout\;
\RAM1|ALT_INV_ram~167_combout\ <= NOT \RAM1|ram~167_combout\;
\RAM1|ALT_INV_ram~110_q\ <= NOT \RAM1|ram~110_q\;
\RAM1|ALT_INV_ram~46_q\ <= NOT \RAM1|ram~46_q\;
\RAM1|ALT_INV_ram~166_combout\ <= NOT \RAM1|ram~166_combout\;
\RAM1|ALT_INV_ram~102_q\ <= NOT \RAM1|ram~102_q\;
\RAM1|ALT_INV_ram~38_q\ <= NOT \RAM1|ram~38_q\;
\RAM1|ALT_INV_ram~165_combout\ <= NOT \RAM1|ram~165_combout\;
\RAM1|ALT_INV_ram~94_q\ <= NOT \RAM1|ram~94_q\;
\RAM1|ALT_INV_ram~30_q\ <= NOT \RAM1|ram~30_q\;
\RAM1|ALT_INV_ram~164_combout\ <= NOT \RAM1|ram~164_combout\;
\RAM1|ALT_INV_ram~86_q\ <= NOT \RAM1|ram~86_q\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\RAM1|ALT_INV_ram~163_combout\ <= NOT \RAM1|ram~163_combout\;
\RAM1|ALT_INV_ram~162_combout\ <= NOT \RAM1|ram~162_combout\;
\RAM1|ALT_INV_ram~109_q\ <= NOT \RAM1|ram~109_q\;
\RAM1|ALT_INV_ram~101_q\ <= NOT \RAM1|ram~101_q\;
\RAM1|ALT_INV_ram~93_q\ <= NOT \RAM1|ram~93_q\;
\RAM1|ALT_INV_ram~85_q\ <= NOT \RAM1|ram~85_q\;
\RAM1|ALT_INV_ram~161_combout\ <= NOT \RAM1|ram~161_combout\;
\RAM1|ALT_INV_ram~45_q\ <= NOT \RAM1|ram~45_q\;
\RAM1|ALT_INV_ram~37_q\ <= NOT \RAM1|ram~37_q\;
\RAM1|ALT_INV_ram~29_q\ <= NOT \RAM1|ram~29_q\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\RAM1|ALT_INV_ram~160_combout\ <= NOT \RAM1|ram~160_combout\;
\RAM1|ALT_INV_ram~159_combout\ <= NOT \RAM1|ram~159_combout\;
\RAM1|ALT_INV_ram~108_q\ <= NOT \RAM1|ram~108_q\;
\RAM1|ALT_INV_ram~44_q\ <= NOT \RAM1|ram~44_q\;
\RAM1|ALT_INV_ram~158_combout\ <= NOT \RAM1|ram~158_combout\;
\RAM1|ALT_INV_ram~100_q\ <= NOT \RAM1|ram~100_q\;
\RAM1|ALT_INV_ram~36_q\ <= NOT \RAM1|ram~36_q\;
\RAM1|ALT_INV_ram~157_combout\ <= NOT \RAM1|ram~157_combout\;
\RAM1|ALT_INV_ram~92_q\ <= NOT \RAM1|ram~92_q\;

-- Location: IOOBUF_X16_Y0_N76
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

-- Location: IOOBUF_X8_Y45_N76
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

-- Location: IOOBUF_X12_Y0_N36
\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X11_Y0_N2
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(3),
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X12_Y0_N2
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

-- Location: IOOBUF_X12_Y0_N19
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

-- Location: IOOBUF_X12_Y0_N53
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

-- Location: IOOBUF_X14_Y0_N53
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

-- Location: IOOBUF_X0_Y18_N79
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(0),
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
	i => \REGA|DOUT\(1),
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
	i => \REGA|DOUT\(2),
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
	i => \REGA|DOUT\(3),
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
	i => \REGA|DOUT\(4),
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
	i => \REGA|DOUT[5]~DUPLICATE_q\,
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
	i => \REGA|DOUT[6]~DUPLICATE_q\,
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
	i => \REGA|DOUT[7]~DUPLICATE_q\,
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

-- Location: IOOBUF_X10_Y0_N76
\REG_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(0),
	devoe => ww_devoe,
	o => ww_REG_OUT(0));

-- Location: IOOBUF_X16_Y45_N76
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

-- Location: IOOBUF_X11_Y0_N19
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

-- Location: IOOBUF_X10_Y0_N59
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

-- Location: IOOBUF_X10_Y0_N42
\REG_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_REG_OUT(4));

-- Location: IOOBUF_X8_Y45_N42
\REG_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_REG_OUT(5));

-- Location: IOOBUF_X11_Y0_N53
\REG_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(6),
	devoe => ww_devoe,
	o => ww_REG_OUT(6));

-- Location: IOOBUF_X8_Y45_N59
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

-- Location: LABCELL_X10_Y1_N36
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

-- Location: FF_X10_Y1_N38
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

-- Location: LABCELL_X5_Y12_N42
\gravar:detectorSub0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \gravar:detectorSub0|saida~combout\ = LCELL(( !\gravar:detectorSub0|saidaQ~q\ & ( !\KEY[0]~input_o\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_KEY[0]~input_o\,
	dataf => \gravar:detectorSub0|ALT_INV_saidaQ~q\,
	combout => \gravar:detectorSub0|saida~combout\);

-- Location: LABCELL_X6_Y12_N24
\PC|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[0]~0_combout\ = !\PC|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(0),
	combout => \PC|DOUT[0]~0_combout\);

-- Location: FF_X6_Y12_N29
\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \PC|DOUT[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

-- Location: LABCELL_X7_Y12_N30
\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT\(1) ) + ( \PC|DOUT\(0) ) + ( !VCC ))
-- \incrementaPC|Add0~2\ = CARRY(( \PC|DOUT\(1) ) + ( \PC|DOUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT\(1),
	cin => GND,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

-- Location: FF_X6_Y12_N5
\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \incrementaPC|Add0~1_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

-- Location: LABCELL_X7_Y12_N33
\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

-- Location: FF_X6_Y12_N19
\PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \incrementaPC|Add0~5_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X7_Y12_N36
\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(3),
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

-- Location: FF_X6_Y12_N32
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \incrementaPC|Add0~9_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: LABCELL_X7_Y12_N39
\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~14\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~13_sumout\,
	cout => \incrementaPC|Add0~14\);

-- Location: FF_X6_Y12_N26
\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \incrementaPC|Add0~13_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

-- Location: LABCELL_X7_Y12_N42
\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))
-- \incrementaPC|Add0~18\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(5),
	cin => \incrementaPC|Add0~14\,
	sumout => \incrementaPC|Add0~17_sumout\,
	cout => \incrementaPC|Add0~18\);

-- Location: FF_X6_Y12_N38
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \incrementaPC|Add0~17_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: LABCELL_X7_Y12_N45
\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))
-- \incrementaPC|Add0~22\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \incrementaPC|Add0~18\,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

-- Location: FF_X6_Y12_N23
\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \incrementaPC|Add0~21_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

-- Location: LABCELL_X7_Y12_N48
\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(7),
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~25_sumout\);

-- Location: FF_X6_Y12_N14
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \incrementaPC|Add0~25_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

-- Location: FF_X6_Y12_N20
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \incrementaPC|Add0~5_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: LABCELL_X6_Y12_N54
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( \PC|DOUT\(3) & ( (!\PC|DOUT\(2) & ((!\PC|DOUT\(1)) # (!\PC|DOUT\(0)))) ) ) # ( !\PC|DOUT\(3) & ( (!\PC|DOUT\(2) & (\PC|DOUT\(1) & !\PC|DOUT\(0))) # (\PC|DOUT\(2) & ((\PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001111010100000000111111110000101000001111000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X6_Y12_N36
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \PC|DOUT\(2) & ( (!\PC|DOUT\(1) & (!\PC|DOUT\(3) & !\PC|DOUT\(0))) ) ) # ( !\PC|DOUT\(2) & ( (\PC|DOUT\(0) & (!\PC|DOUT\(1) $ (!\PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~2_combout\);

-- Location: LABCELL_X6_Y12_N51
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \PC|DOUT\(2) & ( (!\PC|DOUT\(3) & ((\PC|DOUT\(1)) # (\PC|DOUT\(0)))) ) ) # ( !\PC|DOUT\(2) & ( (!\PC|DOUT\(1) & ((!\PC|DOUT\(3)))) # (\PC|DOUT\(1) & (!\PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010101010111100001010101001010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~0_combout\);

-- Location: LABCELL_X6_Y12_N39
\decoderInstru1|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru1|Equal5~0_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~1_combout\ & !\ROM1|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \decoderInstru1|Equal5~0_combout\);

-- Location: LABCELL_X5_Y11_N30
\decoderInstru1|saida[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru1|saida[3]~0_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~1_combout\ & !\ROM1|memROM~2_combout\) ) ) # ( !\ROM1|memROM~0_combout\ & ( (\ROM1|memROM~1_combout\ & !\ROM1|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \decoderInstru1|saida[3]~0_combout\);

-- Location: LABCELL_X6_Y12_N30
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \PC|DOUT\(2) & ( (!\PC|DOUT\(1) & (\PC|DOUT\(0) & !\PC|DOUT\(3))) ) ) # ( !\PC|DOUT\(2) & ( (!\PC|DOUT\(0) & \PC|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~3_combout\);

-- Location: LABCELL_X6_Y12_N42
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( !\PC|DOUT[2]~DUPLICATE_q\ & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(1) & \PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~6_combout\);

-- Location: LABCELL_X6_Y12_N12
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \PC|DOUT\(2) & ( (\PC|DOUT\(1) & (!\PC|DOUT\(3) & \PC|DOUT\(0))) ) ) # ( !\PC|DOUT\(2) & ( (!\PC|DOUT\(1) & ((\PC|DOUT\(0)))) # (\PC|DOUT\(1) & (\PC|DOUT\(3) & !\PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101000011010000110100001101000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~4_combout\);

-- Location: LABCELL_X5_Y12_N30
\RAM1|ram~185\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~185_combout\ = ( \PC|DOUT\(1) & ( \PC|DOUT[2]~DUPLICATE_q\ & ( (\PC|DOUT\(0) & !\PC|DOUT\(3)) ) ) ) # ( !\PC|DOUT\(1) & ( \PC|DOUT[2]~DUPLICATE_q\ & ( (\PC|DOUT\(0) & !\PC|DOUT\(3)) ) ) ) # ( \PC|DOUT\(1) & ( !\PC|DOUT[2]~DUPLICATE_q\ & ( 
-- !\PC|DOUT\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \RAM1|ram~185_combout\);

-- Location: MLABCELL_X4_Y12_N51
\RAM1|ram~180\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~180_combout\ = ( \ROM1|memROM~4_combout\ & ( \RAM1|ram~185_combout\ & ( (!\ROM1|memROM~6_combout\ & \ROM1|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM1|ALT_INV_ram~185_combout\,
	combout => \RAM1|ram~180_combout\);

-- Location: FF_X7_Y12_N28
\RAM1|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~41_q\);

-- Location: MLABCELL_X4_Y12_N27
\RAM1|ram~33feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~33feeder_combout\ = ( \REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~33feeder_combout\);

-- Location: LABCELL_X5_Y12_N15
\RAM1|ram~179\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~179_combout\ = ( !\ROM1|memROM~3_combout\ & ( \RAM1|ram~185_combout\ & ( (!\ROM1|memROM~6_combout\ & \ROM1|memROM~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \RAM1|ALT_INV_ram~185_combout\,
	combout => \RAM1|ram~179_combout\);

-- Location: FF_X4_Y12_N28
\RAM1|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RAM1|ram~33feeder_combout\,
	ena => \RAM1|ram~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~33_q\);

-- Location: LABCELL_X5_Y12_N57
\RAM1|ram~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~178_combout\ = ( \ROM1|memROM~3_combout\ & ( \RAM1|ram~185_combout\ & ( (!\ROM1|memROM~4_combout\ & !\ROM1|memROM~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \RAM1|ALT_INV_ram~185_combout\,
	combout => \RAM1|ram~178_combout\);

-- Location: FF_X6_Y12_N7
\RAM1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~25_q\);

-- Location: LABCELL_X5_Y12_N9
\RAM1|ram~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~177_combout\ = ( \RAM1|ram~185_combout\ & ( (!\ROM1|memROM~6_combout\ & (!\ROM1|memROM~4_combout\ & !\ROM1|memROM~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \RAM1|ALT_INV_ram~185_combout\,
	combout => \RAM1|ram~177_combout\);

-- Location: FF_X5_Y12_N8
\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

-- Location: LABCELL_X6_Y12_N9
\RAM1|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~145_combout\ = ( \RAM1|ram~25_q\ & ( \RAM1|ram~17_q\ & ( (!\ROM1|memROM~4_combout\) # ((!\ROM1|memROM~3_combout\ & ((\RAM1|ram~33_q\))) # (\ROM1|memROM~3_combout\ & (\RAM1|ram~41_q\))) ) ) ) # ( !\RAM1|ram~25_q\ & ( \RAM1|ram~17_q\ & ( 
-- (!\ROM1|memROM~4_combout\ & (((!\ROM1|memROM~3_combout\)))) # (\ROM1|memROM~4_combout\ & ((!\ROM1|memROM~3_combout\ & ((\RAM1|ram~33_q\))) # (\ROM1|memROM~3_combout\ & (\RAM1|ram~41_q\)))) ) ) ) # ( \RAM1|ram~25_q\ & ( !\RAM1|ram~17_q\ & ( 
-- (!\ROM1|memROM~4_combout\ & (((\ROM1|memROM~3_combout\)))) # (\ROM1|memROM~4_combout\ & ((!\ROM1|memROM~3_combout\ & ((\RAM1|ram~33_q\))) # (\ROM1|memROM~3_combout\ & (\RAM1|ram~41_q\)))) ) ) ) # ( !\RAM1|ram~25_q\ & ( !\RAM1|ram~17_q\ & ( 
-- (\ROM1|memROM~4_combout\ & ((!\ROM1|memROM~3_combout\ & ((\RAM1|ram~33_q\))) # (\ROM1|memROM~3_combout\ & (\RAM1|ram~41_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101000000111111010111110011000001011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~41_q\,
	datab => \RAM1|ALT_INV_ram~33_q\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \RAM1|ALT_INV_ram~25_q\,
	dataf => \RAM1|ALT_INV_ram~17_q\,
	combout => \RAM1|ram~145_combout\);

-- Location: LABCELL_X6_Y12_N3
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \PC|DOUT\(2) & ( (!\PC|DOUT\(0) & (!\PC|DOUT\(3) & \PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~5_combout\);

-- Location: LABCELL_X7_Y12_N24
\RAM1|ram~183\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~183_combout\ = ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~3_combout\ & ( (\RAM1|ram~185_combout\ & \ROM1|memROM~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~185_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \RAM1|ram~183_combout\);

-- Location: FF_X7_Y12_N23
\RAM1|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~97_q\);

-- Location: LABCELL_X5_Y12_N39
\RAM1|ram~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~181_combout\ = ( !\ROM1|memROM~3_combout\ & ( \RAM1|ram~185_combout\ & ( (!\ROM1|memROM~4_combout\ & \ROM1|memROM~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \RAM1|ALT_INV_ram~185_combout\,
	combout => \RAM1|ram~181_combout\);

-- Location: FF_X5_Y12_N13
\RAM1|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~81_q\);

-- Location: MLABCELL_X4_Y12_N6
\RAM1|ram~89feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~89feeder_combout\ = ( \REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~89feeder_combout\);

-- Location: MLABCELL_X4_Y12_N54
\RAM1|ram~182\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~182_combout\ = ( \ROM1|memROM~3_combout\ & ( \RAM1|ram~185_combout\ & ( (!\ROM1|memROM~4_combout\ & \ROM1|memROM~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \RAM1|ALT_INV_ram~185_combout\,
	combout => \RAM1|ram~182_combout\);

-- Location: FF_X4_Y12_N7
\RAM1|ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RAM1|ram~89feeder_combout\,
	ena => \RAM1|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~89_q\);

-- Location: LABCELL_X6_Y12_N27
\RAM1|ram~184\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~184_combout\ = ( \ROM1|memROM~3_combout\ & ( (\RAM1|ram~185_combout\ & (\ROM1|memROM~6_combout\ & \ROM1|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~185_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \RAM1|ram~184_combout\);

-- Location: FF_X7_Y12_N2
\RAM1|ram~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~105_q\);

-- Location: LABCELL_X7_Y12_N3
\RAM1|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~146_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~3_combout\ & ( \RAM1|ram~105_q\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( \ROM1|memROM~3_combout\ & ( \RAM1|ram~89_q\ ) ) ) # ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~3_combout\ & ( 
-- \RAM1|ram~97_q\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~3_combout\ & ( \RAM1|ram~81_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~97_q\,
	datab => \RAM1|ALT_INV_ram~81_q\,
	datac => \RAM1|ALT_INV_ram~89_q\,
	datad => \RAM1|ALT_INV_ram~105_q\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \RAM1|ram~146_combout\);

-- Location: LABCELL_X6_Y11_N0
\RAM1|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~147_combout\ = ( \RAM1|ram~146_combout\ & ( (!\ROM1|memROM~5_combout\ & ((\RAM1|ram~145_combout\) # (\ROM1|memROM~6_combout\))) ) ) # ( !\RAM1|ram~146_combout\ & ( (!\ROM1|memROM~6_combout\ & (\RAM1|ram~145_combout\ & !\ROM1|memROM~5_combout\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \RAM1|ALT_INV_ram~145_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \RAM1|ALT_INV_ram~146_combout\,
	combout => \RAM1|ram~147_combout\);

-- Location: LABCELL_X6_Y12_N15
\decoderInstru1|Equal5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru1|Equal5~1_combout\ = ( !\ROM1|memROM~0_combout\ & ( (\ROM1|memROM~2_combout\ & !\ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \decoderInstru1|Equal5~1_combout\);

-- Location: LABCELL_X6_Y11_N30
\ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~34_cout\ = CARRY(( !\decoderInstru1|Equal5~1_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \decoderInstru1|ALT_INV_Equal5~1_combout\,
	cin => GND,
	cout => \ULA1|Add0~34_cout\);

-- Location: LABCELL_X6_Y11_N33
\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( !\decoderInstru1|Equal5~1_combout\ $ (((!\decoderInstru1|Equal5~0_combout\ & ((\RAM1|ram~147_combout\))) # (\decoderInstru1|Equal5~0_combout\ & (\ROM1|memROM~3_combout\)))) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))
-- \ULA1|Add0~2\ = CARRY(( !\decoderInstru1|Equal5~1_combout\ $ (((!\decoderInstru1|Equal5~0_combout\ & ((\RAM1|ram~147_combout\))) # (\decoderInstru1|Equal5~0_combout\ & (\ROM1|memROM~3_combout\)))) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderInstru1|ALT_INV_Equal5~0_combout\,
	datab => \decoderInstru1|ALT_INV_Equal5~1_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \RAM1|ALT_INV_ram~147_combout\,
	dataf => \REGA|ALT_INV_DOUT\(0),
	cin => \ULA1|Add0~34_cout\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

-- Location: LABCELL_X5_Y11_N51
\ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~0_combout\ = ( \RAM1|ram~147_combout\ & ( \ULA1|Add0~1_sumout\ & ( (!\decoderInstru1|Equal5~0_combout\) # ((!\decoderInstru1|saida[3]~0_combout\) # (\ROM1|memROM~3_combout\)) ) ) ) # ( !\RAM1|ram~147_combout\ & ( \ULA1|Add0~1_sumout\ & ( 
-- (!\decoderInstru1|saida[3]~0_combout\) # ((\decoderInstru1|Equal5~0_combout\ & \ROM1|memROM~3_combout\)) ) ) ) # ( \RAM1|ram~147_combout\ & ( !\ULA1|Add0~1_sumout\ & ( (\decoderInstru1|saida[3]~0_combout\ & ((!\decoderInstru1|Equal5~0_combout\) # 
-- (\ROM1|memROM~3_combout\))) ) ) ) # ( !\RAM1|ram~147_combout\ & ( !\ULA1|Add0~1_sumout\ & ( (\decoderInstru1|Equal5~0_combout\ & (\decoderInstru1|saida[3]~0_combout\ & \ROM1|memROM~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000011000000111111110000111100111111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \decoderInstru1|ALT_INV_Equal5~0_combout\,
	datac => \decoderInstru1|ALT_INV_saida[3]~0_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \RAM1|ALT_INV_ram~147_combout\,
	dataf => \ULA1|ALT_INV_Add0~1_sumout\,
	combout => \ULA1|saida[0]~0_combout\);

-- Location: LABCELL_X5_Y11_N45
\decoderInstru1|saida[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru1|saida[4]~1_combout\ = ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~0_combout\ ) ) # ( !\ROM1|memROM~2_combout\ & ( (\ROM1|memROM~1_combout\) # (\ROM1|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \decoderInstru1|saida[4]~1_combout\);

-- Location: FF_X5_Y11_N52
\REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[0]~0_combout\,
	ena => \decoderInstru1|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(0));

-- Location: FF_X5_Y12_N23
\RAM1|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~82_q\);

-- Location: FF_X6_Y12_N47
\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

-- Location: LABCELL_X6_Y12_N45
\RAM1|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~148_combout\ = ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~6_combout\ & ((\RAM1|ram~18_q\))) # (\ROM1|memROM~6_combout\ & (\RAM1|ram~82_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~82_q\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM1|ALT_INV_ram~18_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~148_combout\);

-- Location: FF_X4_Y12_N31
\RAM1|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~34_q\);

-- Location: FF_X7_Y12_N20
\RAM1|ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~98_q\);

-- Location: LABCELL_X7_Y12_N21
\RAM1|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~150_combout\ = ( \ROM1|memROM~6_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~98_q\ ) ) ) # ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~34_q\,
	datad => \RAM1|ALT_INV_ram~98_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~150_combout\);

-- Location: FF_X7_Y12_N26
\RAM1|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~42_q\);

-- Location: LABCELL_X7_Y12_N54
\RAM1|ram~106feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~106feeder_combout\ = ( \REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~106feeder_combout\);

-- Location: FF_X7_Y12_N55
\RAM1|ram~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RAM1|ram~106feeder_combout\,
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~106_q\);

-- Location: LABCELL_X6_Y12_N0
\RAM1|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~151_combout\ = ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~6_combout\ & (\RAM1|ram~42_q\)) # (\ROM1|memROM~6_combout\ & ((\RAM1|ram~106_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \RAM1|ALT_INV_ram~42_q\,
	datad => \RAM1|ALT_INV_ram~106_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~151_combout\);

-- Location: FF_X4_Y12_N40
\RAM1|ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~90_q\);

-- Location: FF_X5_Y12_N29
\RAM1|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

-- Location: LABCELL_X5_Y12_N24
\RAM1|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~149_combout\ = ( \ROM1|memROM~6_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~90_q\ ) ) ) # ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~90_q\,
	datac => \RAM1|ALT_INV_ram~26_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~149_combout\);

-- Location: LABCELL_X6_Y11_N18
\RAM1|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~152_combout\ = ( \RAM1|ram~151_combout\ & ( \RAM1|ram~149_combout\ & ( ((!\ROM1|memROM~4_combout\ & (\RAM1|ram~148_combout\)) # (\ROM1|memROM~4_combout\ & ((\RAM1|ram~150_combout\)))) # (\ROM1|memROM~3_combout\) ) ) ) # ( !\RAM1|ram~151_combout\ 
-- & ( \RAM1|ram~149_combout\ & ( (!\ROM1|memROM~3_combout\ & ((!\ROM1|memROM~4_combout\ & (\RAM1|ram~148_combout\)) # (\ROM1|memROM~4_combout\ & ((\RAM1|ram~150_combout\))))) # (\ROM1|memROM~3_combout\ & (((!\ROM1|memROM~4_combout\)))) ) ) ) # ( 
-- \RAM1|ram~151_combout\ & ( !\RAM1|ram~149_combout\ & ( (!\ROM1|memROM~3_combout\ & ((!\ROM1|memROM~4_combout\ & (\RAM1|ram~148_combout\)) # (\ROM1|memROM~4_combout\ & ((\RAM1|ram~150_combout\))))) # (\ROM1|memROM~3_combout\ & 
-- (((\ROM1|memROM~4_combout\)))) ) ) ) # ( !\RAM1|ram~151_combout\ & ( !\RAM1|ram~149_combout\ & ( (!\ROM1|memROM~3_combout\ & ((!\ROM1|memROM~4_combout\ & (\RAM1|ram~148_combout\)) # (\ROM1|memROM~4_combout\ & ((\RAM1|ram~150_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000011111101110111000011000111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~148_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \RAM1|ALT_INV_ram~150_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \RAM1|ALT_INV_ram~151_combout\,
	dataf => \RAM1|ALT_INV_ram~149_combout\,
	combout => \RAM1|ram~152_combout\);

-- Location: LABCELL_X6_Y11_N36
\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( \REGA|DOUT\(1) ) + ( !\decoderInstru1|Equal5~1_combout\ $ (((!\decoderInstru1|Equal5~0_combout\ & ((\RAM1|ram~152_combout\))) # (\decoderInstru1|Equal5~0_combout\ & (\ROM1|memROM~4_combout\)))) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( \REGA|DOUT\(1) ) + ( !\decoderInstru1|Equal5~1_combout\ $ (((!\decoderInstru1|Equal5~0_combout\ & ((\RAM1|ram~152_combout\))) # (\decoderInstru1|Equal5~0_combout\ & (\ROM1|memROM~4_combout\)))) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101101001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderInstru1|ALT_INV_Equal5~0_combout\,
	datab => \decoderInstru1|ALT_INV_Equal5~1_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \REGA|ALT_INV_DOUT\(1),
	dataf => \RAM1|ALT_INV_ram~152_combout\,
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

-- Location: LABCELL_X5_Y11_N42
\ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~1_combout\ = ( \decoderInstru1|saida[3]~0_combout\ & ( (!\decoderInstru1|Equal5~0_combout\ & (\RAM1|ram~152_combout\)) # (\decoderInstru1|Equal5~0_combout\ & ((\ROM1|memROM~4_combout\))) ) ) # ( !\decoderInstru1|saida[3]~0_combout\ & ( 
-- \ULA1|Add0~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~152_combout\,
	datab => \decoderInstru1|ALT_INV_Equal5~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ULA1|ALT_INV_Add0~5_sumout\,
	dataf => \decoderInstru1|ALT_INV_saida[3]~0_combout\,
	combout => \ULA1|saida[1]~1_combout\);

-- Location: FF_X5_Y11_N43
\REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[1]~1_combout\,
	ena => \decoderInstru1|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(1));

-- Location: FF_X5_Y12_N47
\RAM1|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~83_q\);

-- Location: FF_X6_Y11_N19
\RAM1|ram~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~99_q\);

-- Location: MLABCELL_X4_Y12_N9
\RAM1|ram~91feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~91feeder_combout\ = ( \REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~91feeder_combout\);

-- Location: FF_X4_Y12_N10
\RAM1|ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RAM1|ram~91feeder_combout\,
	ena => \RAM1|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~91_q\);

-- Location: FF_X5_Y11_N58
\RAM1|ram~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~107_q\);

-- Location: LABCELL_X5_Y11_N54
\RAM1|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~154_combout\ = ( \ROM1|memROM~3_combout\ & ( \RAM1|ram~107_q\ & ( (\ROM1|memROM~4_combout\) # (\RAM1|ram~91_q\) ) ) ) # ( !\ROM1|memROM~3_combout\ & ( \RAM1|ram~107_q\ & ( (!\ROM1|memROM~4_combout\ & (\RAM1|ram~83_q\)) # (\ROM1|memROM~4_combout\ 
-- & ((\RAM1|ram~99_q\))) ) ) ) # ( \ROM1|memROM~3_combout\ & ( !\RAM1|ram~107_q\ & ( (\RAM1|ram~91_q\ & !\ROM1|memROM~4_combout\) ) ) ) # ( !\ROM1|memROM~3_combout\ & ( !\RAM1|ram~107_q\ & ( (!\ROM1|memROM~4_combout\ & (\RAM1|ram~83_q\)) # 
-- (\ROM1|memROM~4_combout\ & ((\RAM1|ram~99_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000011110000000001010101001100110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~83_q\,
	datab => \RAM1|ALT_INV_ram~99_q\,
	datac => \RAM1|ALT_INV_ram~91_q\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \RAM1|ALT_INV_ram~107_q\,
	combout => \RAM1|ram~154_combout\);

-- Location: FF_X5_Y12_N56
\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

-- Location: FF_X5_Y12_N38
\RAM1|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~27_q\);

-- Location: MLABCELL_X4_Y11_N21
\RAM1|ram~43feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~43feeder_combout\ = \REGA|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGA|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~43feeder_combout\);

-- Location: FF_X4_Y11_N22
\RAM1|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RAM1|ram~43feeder_combout\,
	ena => \RAM1|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~43_q\);

-- Location: MLABCELL_X4_Y11_N27
\RAM1|ram~35feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~35feeder_combout\ = \REGA|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGA|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~35feeder_combout\);

-- Location: FF_X4_Y11_N28
\RAM1|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RAM1|ram~35feeder_combout\,
	ena => \RAM1|ram~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~35_q\);

-- Location: LABCELL_X5_Y11_N15
\RAM1|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~153_combout\ = ( \RAM1|ram~35_q\ & ( \ROM1|memROM~3_combout\ & ( (!\ROM1|memROM~4_combout\ & (\RAM1|ram~27_q\)) # (\ROM1|memROM~4_combout\ & ((\RAM1|ram~43_q\))) ) ) ) # ( !\RAM1|ram~35_q\ & ( \ROM1|memROM~3_combout\ & ( 
-- (!\ROM1|memROM~4_combout\ & (\RAM1|ram~27_q\)) # (\ROM1|memROM~4_combout\ & ((\RAM1|ram~43_q\))) ) ) ) # ( \RAM1|ram~35_q\ & ( !\ROM1|memROM~3_combout\ & ( (\ROM1|memROM~4_combout\) # (\RAM1|ram~19_q\) ) ) ) # ( !\RAM1|ram~35_q\ & ( 
-- !\ROM1|memROM~3_combout\ & ( (\RAM1|ram~19_q\ & !\ROM1|memROM~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~19_q\,
	datab => \RAM1|ALT_INV_ram~27_q\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM1|ALT_INV_ram~43_q\,
	datae => \RAM1|ALT_INV_ram~35_q\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \RAM1|ram~153_combout\);

-- Location: LABCELL_X5_Y11_N33
\RAM1|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~155_combout\ = ( \RAM1|ram~153_combout\ & ( (!\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~6_combout\) # (\RAM1|ram~154_combout\))) ) ) # ( !\RAM1|ram~153_combout\ & ( (\ROM1|memROM~6_combout\ & (!\ROM1|memROM~5_combout\ & \RAM1|ram~154_combout\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010100000111100001010000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~154_combout\,
	dataf => \RAM1|ALT_INV_ram~153_combout\,
	combout => \RAM1|ram~155_combout\);

-- Location: LABCELL_X6_Y11_N39
\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( !\decoderInstru1|Equal5~1_combout\ $ (((!\decoderInstru1|Equal5~0_combout\ & ((\RAM1|ram~155_combout\))) # (\decoderInstru1|Equal5~0_combout\ & (\ROM1|memROM~5_combout\)))) ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( !\decoderInstru1|Equal5~1_combout\ $ (((!\decoderInstru1|Equal5~0_combout\ & ((\RAM1|ram~155_combout\))) # (\decoderInstru1|Equal5~0_combout\ & (\ROM1|memROM~5_combout\)))) ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderInstru1|ALT_INV_Equal5~0_combout\,
	datab => \decoderInstru1|ALT_INV_Equal5~1_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~155_combout\,
	dataf => \REGA|ALT_INV_DOUT\(2),
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

-- Location: LABCELL_X5_Y11_N24
\ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~2_combout\ = ( \ROM1|memROM~5_combout\ & ( \ULA1|Add0~9_sumout\ & ( ((!\decoderInstru1|saida[3]~0_combout\) # (\RAM1|ram~155_combout\)) # (\decoderInstru1|Equal5~0_combout\) ) ) ) # ( !\ROM1|memROM~5_combout\ & ( \ULA1|Add0~9_sumout\ & ( 
-- (!\decoderInstru1|saida[3]~0_combout\) # ((!\decoderInstru1|Equal5~0_combout\ & \RAM1|ram~155_combout\)) ) ) ) # ( \ROM1|memROM~5_combout\ & ( !\ULA1|Add0~9_sumout\ & ( (\decoderInstru1|saida[3]~0_combout\ & ((\RAM1|ram~155_combout\) # 
-- (\decoderInstru1|Equal5~0_combout\))) ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ULA1|Add0~9_sumout\ & ( (!\decoderInstru1|Equal5~0_combout\ & (\decoderInstru1|saida[3]~0_combout\ & \RAM1|ram~155_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000110000111111110000111111001111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \decoderInstru1|ALT_INV_Equal5~0_combout\,
	datac => \decoderInstru1|ALT_INV_saida[3]~0_combout\,
	datad => \RAM1|ALT_INV_ram~155_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ULA1|ALT_INV_Add0~9_sumout\,
	combout => \ULA1|saida[2]~2_combout\);

-- Location: FF_X5_Y11_N25
\REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[2]~2_combout\,
	ena => \decoderInstru1|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(2));

-- Location: FF_X7_Y11_N50
\RAM1|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~28_q\);

-- Location: FF_X6_Y11_N26
\RAM1|ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~92_q\);

-- Location: LABCELL_X7_Y11_N51
\RAM1|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~157_combout\ = ( \ROM1|memROM~6_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~92_q\ ) ) ) # ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~28_q\,
	datad => \RAM1|ALT_INV_ram~92_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~157_combout\);

-- Location: FF_X5_Y12_N59
\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

-- Location: LABCELL_X5_Y12_N18
\RAM1|ram~84feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~84feeder_combout\ = ( \REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~84feeder_combout\);

-- Location: FF_X5_Y12_N20
\RAM1|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RAM1|ram~84feeder_combout\,
	ena => \RAM1|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~84_q\);

-- Location: LABCELL_X5_Y12_N3
\RAM1|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~156_combout\ = ( \ROM1|memROM~6_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~84_q\ ) ) ) # ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~20_q\,
	datad => \RAM1|ALT_INV_ram~84_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~156_combout\);

-- Location: FF_X7_Y12_N44
\RAM1|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~44_q\);

-- Location: FF_X7_Y12_N11
\RAM1|ram~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~108_q\);

-- Location: LABCELL_X7_Y12_N6
\RAM1|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~159_combout\ = ( \ROM1|memROM~6_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~108_q\ ) ) ) # ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~44_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~44_q\,
	datad => \RAM1|ALT_INV_ram~108_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~159_combout\);

-- Location: FF_X4_Y12_N50
\RAM1|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~36_q\);

-- Location: FF_X7_Y12_N35
\RAM1|ram~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~100_q\);

-- Location: LABCELL_X6_Y12_N21
\RAM1|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~158_combout\ = ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM1|ram~100_q\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( \RAM1|ram~36_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~36_q\,
	datad => \RAM1|ALT_INV_ram~100_q\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|ram~158_combout\);

-- Location: LABCELL_X6_Y11_N24
\RAM1|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~160_combout\ = ( \RAM1|ram~159_combout\ & ( \RAM1|ram~158_combout\ & ( ((!\ROM1|memROM~3_combout\ & ((\RAM1|ram~156_combout\))) # (\ROM1|memROM~3_combout\ & (\RAM1|ram~157_combout\))) # (\ROM1|memROM~4_combout\) ) ) ) # ( !\RAM1|ram~159_combout\ 
-- & ( \RAM1|ram~158_combout\ & ( (!\ROM1|memROM~4_combout\ & ((!\ROM1|memROM~3_combout\ & ((\RAM1|ram~156_combout\))) # (\ROM1|memROM~3_combout\ & (\RAM1|ram~157_combout\)))) # (\ROM1|memROM~4_combout\ & (((!\ROM1|memROM~3_combout\)))) ) ) ) # ( 
-- \RAM1|ram~159_combout\ & ( !\RAM1|ram~158_combout\ & ( (!\ROM1|memROM~4_combout\ & ((!\ROM1|memROM~3_combout\ & ((\RAM1|ram~156_combout\))) # (\ROM1|memROM~3_combout\ & (\RAM1|ram~157_combout\)))) # (\ROM1|memROM~4_combout\ & 
-- (((\ROM1|memROM~3_combout\)))) ) ) ) # ( !\RAM1|ram~159_combout\ & ( !\RAM1|ram~158_combout\ & ( (!\ROM1|memROM~4_combout\ & ((!\ROM1|memROM~3_combout\ & ((\RAM1|ram~156_combout\))) # (\ROM1|memROM~3_combout\ & (\RAM1|ram~157_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000111011100111111010001000011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~157_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \RAM1|ALT_INV_ram~156_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \RAM1|ALT_INV_ram~159_combout\,
	dataf => \RAM1|ALT_INV_ram~158_combout\,
	combout => \RAM1|ram~160_combout\);

-- Location: LABCELL_X6_Y11_N42
\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( !\decoderInstru1|Equal5~1_combout\ $ (((!\decoderInstru1|Equal5~0_combout\ & ((\RAM1|ram~160_combout\))) # (\decoderInstru1|Equal5~0_combout\ & (\ROM1|memROM~6_combout\)))) ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( !\decoderInstru1|Equal5~1_combout\ $ (((!\decoderInstru1|Equal5~0_combout\ & ((\RAM1|ram~160_combout\))) # (\decoderInstru1|Equal5~0_combout\ & (\ROM1|memROM~6_combout\)))) ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderInstru1|ALT_INV_Equal5~1_combout\,
	datab => \decoderInstru1|ALT_INV_Equal5~0_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM1|ALT_INV_ram~160_combout\,
	dataf => \REGA|ALT_INV_DOUT\(3),
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

-- Location: LABCELL_X6_Y11_N3
\ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~3_combout\ = ( \decoderInstru1|saida[3]~0_combout\ & ( (!\decoderInstru1|Equal5~0_combout\ & ((\RAM1|ram~160_combout\))) # (\decoderInstru1|Equal5~0_combout\ & (\ROM1|memROM~6_combout\)) ) ) # ( !\decoderInstru1|saida[3]~0_combout\ & ( 
-- \ULA1|Add0~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \RAM1|ALT_INV_ram~160_combout\,
	datac => \ULA1|ALT_INV_Add0~13_sumout\,
	datad => \decoderInstru1|ALT_INV_Equal5~0_combout\,
	dataf => \decoderInstru1|ALT_INV_saida[3]~0_combout\,
	combout => \ULA1|saida[3]~3_combout\);

-- Location: FF_X6_Y11_N4
\REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[3]~3_combout\,
	ena => \decoderInstru1|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(3));

-- Location: FF_X6_Y11_N10
\REGA|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[4]~4_combout\,
	ena => \decoderInstru1|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[4]~DUPLICATE_q\);

-- Location: FF_X4_Y12_N19
\RAM1|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~45_q\);

-- Location: FF_X7_Y11_N8
\RAM1|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~29_q\);

-- Location: FF_X5_Y12_N11
\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

-- Location: FF_X7_Y11_N28
\RAM1|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~37_q\);

-- Location: LABCELL_X7_Y11_N9
\RAM1|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~161_combout\ = ( \RAM1|ram~21_q\ & ( \RAM1|ram~37_q\ & ( (!\ROM1|memROM~3_combout\) # ((!\ROM1|memROM~4_combout\ & ((\RAM1|ram~29_q\))) # (\ROM1|memROM~4_combout\ & (\RAM1|ram~45_q\))) ) ) ) # ( !\RAM1|ram~21_q\ & ( \RAM1|ram~37_q\ & ( 
-- (!\ROM1|memROM~3_combout\ & (((\ROM1|memROM~4_combout\)))) # (\ROM1|memROM~3_combout\ & ((!\ROM1|memROM~4_combout\ & ((\RAM1|ram~29_q\))) # (\ROM1|memROM~4_combout\ & (\RAM1|ram~45_q\)))) ) ) ) # ( \RAM1|ram~21_q\ & ( !\RAM1|ram~37_q\ & ( 
-- (!\ROM1|memROM~3_combout\ & (((!\ROM1|memROM~4_combout\)))) # (\ROM1|memROM~3_combout\ & ((!\ROM1|memROM~4_combout\ & ((\RAM1|ram~29_q\))) # (\ROM1|memROM~4_combout\ & (\RAM1|ram~45_q\)))) ) ) ) # ( !\RAM1|ram~21_q\ & ( !\RAM1|ram~37_q\ & ( 
-- (\ROM1|memROM~3_combout\ & ((!\ROM1|memROM~4_combout\ & ((\RAM1|ram~29_q\))) # (\ROM1|memROM~4_combout\ & (\RAM1|ram~45_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001101011110001000100000101101110111010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \RAM1|ALT_INV_ram~45_q\,
	datac => \RAM1|ALT_INV_ram~29_q\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \RAM1|ALT_INV_ram~21_q\,
	dataf => \RAM1|ALT_INV_ram~37_q\,
	combout => \RAM1|ram~161_combout\);

-- Location: FF_X7_Y12_N53
\RAM1|ram~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~101_q\);

-- Location: FF_X5_Y12_N1
\RAM1|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~85_q\);

-- Location: FF_X7_Y12_N14
\RAM1|ram~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~109_q\);

-- Location: FF_X4_Y12_N16
\RAM1|ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~93_q\);

-- Location: LABCELL_X7_Y12_N15
\RAM1|ram~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~162_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~3_combout\ & ( \RAM1|ram~109_q\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( \ROM1|memROM~3_combout\ & ( \RAM1|ram~93_q\ ) ) ) # ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~3_combout\ & ( 
-- \RAM1|ram~101_q\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~3_combout\ & ( \RAM1|ram~85_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~101_q\,
	datab => \RAM1|ALT_INV_ram~85_q\,
	datac => \RAM1|ALT_INV_ram~109_q\,
	datad => \RAM1|ALT_INV_ram~93_q\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \RAM1|ram~162_combout\);

-- Location: LABCELL_X7_Y11_N54
\RAM1|ram~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~163_combout\ = ( \RAM1|ram~161_combout\ & ( \RAM1|ram~162_combout\ & ( !\ROM1|memROM~5_combout\ ) ) ) # ( !\RAM1|ram~161_combout\ & ( \RAM1|ram~162_combout\ & ( (!\ROM1|memROM~5_combout\ & \ROM1|memROM~6_combout\) ) ) ) # ( 
-- \RAM1|ram~161_combout\ & ( !\RAM1|ram~162_combout\ & ( (!\ROM1|memROM~5_combout\ & !\ROM1|memROM~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \RAM1|ALT_INV_ram~161_combout\,
	dataf => \RAM1|ALT_INV_ram~162_combout\,
	combout => \RAM1|ram~163_combout\);

-- Location: LABCELL_X6_Y11_N45
\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( \REGA|DOUT[4]~DUPLICATE_q\ ) + ( !\decoderInstru1|Equal5~1_combout\ $ (((!\decoderInstru1|Equal5~0_combout\ & \RAM1|ram~163_combout\))) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( \REGA|DOUT[4]~DUPLICATE_q\ ) + ( !\decoderInstru1|Equal5~1_combout\ $ (((!\decoderInstru1|Equal5~0_combout\ & \RAM1|ram~163_combout\))) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110010101100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderInstru1|ALT_INV_Equal5~1_combout\,
	datab => \decoderInstru1|ALT_INV_Equal5~0_combout\,
	datac => \RAM1|ALT_INV_ram~163_combout\,
	datad => \REGA|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

-- Location: LABCELL_X6_Y11_N9
\ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~4_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~2_combout\ & (\RAM1|ram~163_combout\)) # (\ROM1|memROM~2_combout\ & ((\ULA1|Add0~17_sumout\))))) # (\ROM1|memROM~0_combout\ & 
-- (((\ULA1|Add0~17_sumout\)))) ) ) # ( !\ROM1|memROM~1_combout\ & ( (\ULA1|Add0~17_sumout\ & ((!\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111011000000001011101100001000011111110000100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \RAM1|ALT_INV_ram~163_combout\,
	datad => \ULA1|ALT_INV_Add0~17_sumout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ULA1|saida[4]~4_combout\);

-- Location: FF_X6_Y11_N11
\REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[4]~4_combout\,
	ena => \decoderInstru1|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(4));

-- Location: FF_X4_Y12_N58
\RAM1|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~38_q\);

-- Location: FF_X7_Y12_N32
\RAM1|ram~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~102_q\);

-- Location: LABCELL_X6_Y12_N33
\RAM1|ram~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~166_combout\ = ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~6_combout\ & (\RAM1|ram~38_q\)) # (\ROM1|memROM~6_combout\ & ((\RAM1|ram~102_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~38_q\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM1|ALT_INV_ram~102_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~166_combout\);

-- Location: LABCELL_X7_Y11_N3
\RAM1|ram~30feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~30feeder_combout\ = \REGA|DOUT[5]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REGA|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \RAM1|ram~30feeder_combout\);

-- Location: FF_X7_Y11_N5
\RAM1|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RAM1|ram~30feeder_combout\,
	ena => \RAM1|ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~30_q\);

-- Location: LABCELL_X7_Y11_N33
\RAM1|ram~94feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~94feeder_combout\ = \REGA|DOUT[5]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REGA|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \RAM1|ram~94feeder_combout\);

-- Location: FF_X7_Y11_N35
\RAM1|ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RAM1|ram~94feeder_combout\,
	ena => \RAM1|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~94_q\);

-- Location: LABCELL_X7_Y11_N12
\RAM1|ram~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~165_combout\ = ( \RAM1|ram~30_q\ & ( \RAM1|ram~94_q\ & ( !\ROM1|memROM~5_combout\ ) ) ) # ( !\RAM1|ram~30_q\ & ( \RAM1|ram~94_q\ & ( (!\ROM1|memROM~5_combout\ & \ROM1|memROM~6_combout\) ) ) ) # ( \RAM1|ram~30_q\ & ( !\RAM1|ram~94_q\ & ( 
-- (!\ROM1|memROM~5_combout\ & !\ROM1|memROM~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \RAM1|ALT_INV_ram~30_q\,
	dataf => \RAM1|ALT_INV_ram~94_q\,
	combout => \RAM1|ram~165_combout\);

-- Location: FF_X7_Y12_N47
\RAM1|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~46_q\);

-- Location: LABCELL_X7_Y12_N57
\RAM1|ram~110feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~110feeder_combout\ = ( \REGA|DOUT[5]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \RAM1|ram~110feeder_combout\);

-- Location: FF_X7_Y12_N59
\RAM1|ram~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RAM1|ram~110feeder_combout\,
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~110_q\);

-- Location: LABCELL_X6_Y12_N48
\RAM1|ram~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~167_combout\ = ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~6_combout\ & (\RAM1|ram~46_q\)) # (\ROM1|memROM~6_combout\ & ((\RAM1|ram~110_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \RAM1|ALT_INV_ram~46_q\,
	datad => \RAM1|ALT_INV_ram~110_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~167_combout\);

-- Location: LABCELL_X5_Y12_N45
\RAM1|ram~86feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~86feeder_combout\ = \REGA|DOUT[5]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REGA|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \RAM1|ram~86feeder_combout\);

-- Location: FF_X5_Y12_N46
\RAM1|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RAM1|ram~86feeder_combout\,
	ena => \RAM1|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~86_q\);

-- Location: LABCELL_X5_Y12_N51
\RAM1|ram~22feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~22feeder_combout\ = ( \REGA|DOUT[5]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \RAM1|ram~22feeder_combout\);

-- Location: FF_X5_Y12_N52
\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RAM1|ram~22feeder_combout\,
	ena => \RAM1|ram~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

-- Location: LABCELL_X6_Y12_N57
\RAM1|ram~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~164_combout\ = ( \RAM1|ram~22_q\ & ( (!\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~6_combout\) # (\RAM1|ram~86_q\))) ) ) # ( !\RAM1|ram~22_q\ & ( (\ROM1|memROM~6_combout\ & (!\ROM1|memROM~5_combout\ & \RAM1|ram~86_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~86_q\,
	dataf => \RAM1|ALT_INV_ram~22_q\,
	combout => \RAM1|ram~164_combout\);

-- Location: LABCELL_X7_Y11_N18
\RAM1|ram~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~168_combout\ = ( \RAM1|ram~167_combout\ & ( \RAM1|ram~164_combout\ & ( (!\ROM1|memROM~4_combout\ & (((!\ROM1|memROM~3_combout\) # (\RAM1|ram~165_combout\)))) # (\ROM1|memROM~4_combout\ & (((\ROM1|memROM~3_combout\)) # (\RAM1|ram~166_combout\))) 
-- ) ) ) # ( !\RAM1|ram~167_combout\ & ( \RAM1|ram~164_combout\ & ( (!\ROM1|memROM~4_combout\ & (((!\ROM1|memROM~3_combout\) # (\RAM1|ram~165_combout\)))) # (\ROM1|memROM~4_combout\ & (\RAM1|ram~166_combout\ & (!\ROM1|memROM~3_combout\))) ) ) ) # ( 
-- \RAM1|ram~167_combout\ & ( !\RAM1|ram~164_combout\ & ( (!\ROM1|memROM~4_combout\ & (((\ROM1|memROM~3_combout\ & \RAM1|ram~165_combout\)))) # (\ROM1|memROM~4_combout\ & (((\ROM1|memROM~3_combout\)) # (\RAM1|ram~166_combout\))) ) ) ) # ( 
-- !\RAM1|ram~167_combout\ & ( !\RAM1|ram~164_combout\ & ( (!\ROM1|memROM~4_combout\ & (((\ROM1|memROM~3_combout\ & \RAM1|ram~165_combout\)))) # (\ROM1|memROM~4_combout\ & (\RAM1|ram~166_combout\ & (!\ROM1|memROM~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000101010001111110110000101110101011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \RAM1|ALT_INV_ram~166_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \RAM1|ALT_INV_ram~165_combout\,
	datae => \RAM1|ALT_INV_ram~167_combout\,
	dataf => \RAM1|ALT_INV_ram~164_combout\,
	combout => \RAM1|ram~168_combout\);

-- Location: FF_X6_Y11_N14
\REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[5]~5_combout\,
	ena => \decoderInstru1|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(5));

-- Location: LABCELL_X6_Y11_N48
\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( !\decoderInstru1|Equal5~1_combout\ $ (((!\decoderInstru1|Equal5~0_combout\ & \RAM1|ram~168_combout\))) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( !\decoderInstru1|Equal5~1_combout\ $ (((!\decoderInstru1|Equal5~0_combout\ & \RAM1|ram~168_combout\))) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderInstru1|ALT_INV_Equal5~1_combout\,
	datab => \decoderInstru1|ALT_INV_Equal5~0_combout\,
	datac => \REGA|ALT_INV_DOUT\(5),
	datad => \RAM1|ALT_INV_ram~168_combout\,
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

-- Location: LABCELL_X6_Y11_N12
\ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~5_combout\ = ( \ULA1|Add0~21_sumout\ & ( ((!\ROM1|memROM~1_combout\ & ((!\ROM1|memROM~0_combout\))) # (\ROM1|memROM~1_combout\ & ((\ROM1|memROM~0_combout\) # (\RAM1|ram~168_combout\)))) # (\ROM1|memROM~2_combout\) ) ) # ( 
-- !\ULA1|Add0~21_sumout\ & ( (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & (\RAM1|ram~168_combout\ & !\ROM1|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000010111111011101111011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \RAM1|ALT_INV_ram~168_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ULA1|ALT_INV_Add0~21_sumout\,
	combout => \ULA1|saida[5]~5_combout\);

-- Location: FF_X6_Y11_N13
\REGA|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[5]~5_combout\,
	ena => \decoderInstru1|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[5]~DUPLICATE_q\);

-- Location: MLABCELL_X4_Y12_N0
\RAM1|ram~47feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~47feeder_combout\ = ( \REGA|DOUT[6]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT[6]~DUPLICATE_q\,
	combout => \RAM1|ram~47feeder_combout\);

-- Location: FF_X4_Y12_N1
\RAM1|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RAM1|ram~47feeder_combout\,
	ena => \RAM1|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~47_q\);

-- Location: FF_X5_Y12_N50
\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

-- Location: FF_X7_Y11_N38
\RAM1|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~31_q\);

-- Location: FF_X7_Y11_N16
\RAM1|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~39_q\);

-- Location: LABCELL_X7_Y11_N39
\RAM1|ram~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~169_combout\ = ( \RAM1|ram~31_q\ & ( \RAM1|ram~39_q\ & ( (!\ROM1|memROM~4_combout\ & (((\ROM1|memROM~3_combout\) # (\RAM1|ram~23_q\)))) # (\ROM1|memROM~4_combout\ & (((!\ROM1|memROM~3_combout\)) # (\RAM1|ram~47_q\))) ) ) ) # ( !\RAM1|ram~31_q\ & 
-- ( \RAM1|ram~39_q\ & ( (!\ROM1|memROM~4_combout\ & (((\RAM1|ram~23_q\ & !\ROM1|memROM~3_combout\)))) # (\ROM1|memROM~4_combout\ & (((!\ROM1|memROM~3_combout\)) # (\RAM1|ram~47_q\))) ) ) ) # ( \RAM1|ram~31_q\ & ( !\RAM1|ram~39_q\ & ( 
-- (!\ROM1|memROM~4_combout\ & (((\ROM1|memROM~3_combout\) # (\RAM1|ram~23_q\)))) # (\ROM1|memROM~4_combout\ & (\RAM1|ram~47_q\ & ((\ROM1|memROM~3_combout\)))) ) ) ) # ( !\RAM1|ram~31_q\ & ( !\RAM1|ram~39_q\ & ( (!\ROM1|memROM~4_combout\ & (((\RAM1|ram~23_q\ 
-- & !\ROM1|memROM~3_combout\)))) # (\ROM1|memROM~4_combout\ & (\RAM1|ram~47_q\ & ((\ROM1|memROM~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000010001000010101011101101011111000100010101111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \RAM1|ALT_INV_ram~47_q\,
	datac => \RAM1|ALT_INV_ram~23_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \RAM1|ALT_INV_ram~31_q\,
	dataf => \RAM1|ALT_INV_ram~39_q\,
	combout => \RAM1|ram~169_combout\);

-- Location: FF_X6_Y11_N29
\RAM1|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~95_q\);

-- Location: FF_X5_Y11_N37
\RAM1|ram~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~111_q\);

-- Location: LABCELL_X5_Y12_N21
\RAM1|ram~87feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~87feeder_combout\ = \REGA|DOUT[6]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REGA|ALT_INV_DOUT[6]~DUPLICATE_q\,
	combout => \RAM1|ram~87feeder_combout\);

-- Location: FF_X5_Y12_N22
\RAM1|ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RAM1|ram~87feeder_combout\,
	ena => \RAM1|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~87_q\);

-- Location: FF_X6_Y11_N23
\RAM1|ram~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~103_q\);

-- Location: LABCELL_X5_Y11_N39
\RAM1|ram~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~170_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~3_combout\ & ( \RAM1|ram~111_q\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( \ROM1|memROM~3_combout\ & ( \RAM1|ram~95_q\ ) ) ) # ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~3_combout\ & ( 
-- \RAM1|ram~103_q\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~3_combout\ & ( \RAM1|ram~87_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~95_q\,
	datab => \RAM1|ALT_INV_ram~111_q\,
	datac => \RAM1|ALT_INV_ram~87_q\,
	datad => \RAM1|ALT_INV_ram~103_q\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \RAM1|ram~170_combout\);

-- Location: LABCELL_X7_Y11_N45
\RAM1|ram~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~171_combout\ = ( \RAM1|ram~169_combout\ & ( \RAM1|ram~170_combout\ & ( !\ROM1|memROM~5_combout\ ) ) ) # ( !\RAM1|ram~169_combout\ & ( \RAM1|ram~170_combout\ & ( (\ROM1|memROM~6_combout\ & !\ROM1|memROM~5_combout\) ) ) ) # ( 
-- \RAM1|ram~169_combout\ & ( !\RAM1|ram~170_combout\ & ( (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000000000000110011000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \RAM1|ALT_INV_ram~169_combout\,
	dataf => \RAM1|ALT_INV_ram~170_combout\,
	combout => \RAM1|ram~171_combout\);

-- Location: FF_X6_Y11_N17
\REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[6]~6_combout\,
	ena => \decoderInstru1|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(6));

-- Location: LABCELL_X6_Y11_N51
\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( !\decoderInstru1|Equal5~1_combout\ $ (((!\decoderInstru1|Equal5~0_combout\ & \RAM1|ram~171_combout\))) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( !\decoderInstru1|Equal5~1_combout\ $ (((!\decoderInstru1|Equal5~0_combout\ & \RAM1|ram~171_combout\))) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderInstru1|ALT_INV_Equal5~1_combout\,
	datab => \decoderInstru1|ALT_INV_Equal5~0_combout\,
	datac => \REGA|ALT_INV_DOUT\(6),
	datad => \RAM1|ALT_INV_ram~171_combout\,
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

-- Location: LABCELL_X6_Y11_N15
\ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~6_combout\ = ( \ULA1|Add0~25_sumout\ & ( ((!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~0_combout\)) # (\ROM1|memROM~1_combout\ & ((\RAM1|ram~171_combout\) # (\ROM1|memROM~0_combout\)))) # (\ROM1|memROM~2_combout\) ) ) # ( 
-- !\ULA1|Add0~25_sumout\ & ( (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~0_combout\ & \RAM1|ram~171_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000010110111111101111011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \RAM1|ALT_INV_ram~171_combout\,
	dataf => \ULA1|ALT_INV_Add0~25_sumout\,
	combout => \ULA1|saida[6]~6_combout\);

-- Location: FF_X6_Y11_N16
\REGA|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[6]~6_combout\,
	ena => \decoderInstru1|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[6]~DUPLICATE_q\);

-- Location: MLABCELL_X4_Y12_N3
\RAM1|ram~48feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~48feeder_combout\ = ( \REGA|DOUT[7]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \RAM1|ram~48feeder_combout\);

-- Location: FF_X4_Y12_N5
\RAM1|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RAM1|ram~48feeder_combout\,
	ena => \RAM1|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~48_q\);

-- Location: FF_X5_Y11_N2
\RAM1|ram~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[7]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~112_q\);

-- Location: LABCELL_X5_Y11_N0
\RAM1|ram~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~175_combout\ = ( \RAM1|ram~112_q\ & ( !\ROM1|memROM~5_combout\ & ( (\ROM1|memROM~6_combout\) # (\RAM1|ram~48_q\) ) ) ) # ( !\RAM1|ram~112_q\ & ( !\ROM1|memROM~5_combout\ & ( (\RAM1|ram~48_q\ & !\ROM1|memROM~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~48_q\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \RAM1|ALT_INV_ram~112_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~175_combout\);

-- Location: FF_X5_Y12_N43
\RAM1|ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[7]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~88_q\);

-- Location: FF_X5_Y11_N23
\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[7]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

-- Location: LABCELL_X5_Y11_N21
\RAM1|ram~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~172_combout\ = ( \RAM1|ram~24_q\ & ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~6_combout\) # (\RAM1|ram~88_q\) ) ) ) # ( !\RAM1|ram~24_q\ & ( !\ROM1|memROM~5_combout\ & ( (\RAM1|ram~88_q\ & \ROM1|memROM~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~88_q\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \RAM1|ALT_INV_ram~24_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~172_combout\);

-- Location: FF_X6_Y11_N7
\REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[7]~7_combout\,
	ena => \decoderInstru1|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(7));

-- Location: LABCELL_X6_Y10_N21
\RAM1|ram~104feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~104feeder_combout\ = \REGA|DOUT\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGA|ALT_INV_DOUT\(7),
	combout => \RAM1|ram~104feeder_combout\);

-- Location: FF_X6_Y10_N23
\RAM1|ram~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RAM1|ram~104feeder_combout\,
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~104_q\);

-- Location: LABCELL_X6_Y10_N57
\RAM1|ram~40feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~40feeder_combout\ = \REGA|DOUT\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGA|ALT_INV_DOUT\(7),
	combout => \RAM1|ram~40feeder_combout\);

-- Location: FF_X6_Y10_N59
\RAM1|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RAM1|ram~40feeder_combout\,
	ena => \RAM1|ram~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~40_q\);

-- Location: LABCELL_X6_Y10_N0
\RAM1|ram~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~174_combout\ = ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM1|ram~104_q\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( \RAM1|ram~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~104_q\,
	datad => \RAM1|ALT_INV_ram~40_q\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|ram~174_combout\);

-- Location: FF_X4_Y12_N47
\RAM1|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[7]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~96_q\);

-- Location: FF_X5_Y12_N31
\RAM1|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[7]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~32_q\);

-- Location: MLABCELL_X4_Y12_N45
\RAM1|ram~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~173_combout\ = ( \RAM1|ram~96_q\ & ( \RAM1|ram~32_q\ & ( !\ROM1|memROM~5_combout\ ) ) ) # ( !\RAM1|ram~96_q\ & ( \RAM1|ram~32_q\ & ( (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~5_combout\) ) ) ) # ( \RAM1|ram~96_q\ & ( !\RAM1|ram~32_q\ & ( 
-- (\ROM1|memROM~6_combout\ & !\ROM1|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000011110000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \RAM1|ALT_INV_ram~96_q\,
	dataf => \RAM1|ALT_INV_ram~32_q\,
	combout => \RAM1|ram~173_combout\);

-- Location: LABCELL_X5_Y11_N9
\RAM1|ram~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~176_combout\ = ( \RAM1|ram~174_combout\ & ( \RAM1|ram~173_combout\ & ( (!\ROM1|memROM~4_combout\ & (((\RAM1|ram~172_combout\) # (\ROM1|memROM~3_combout\)))) # (\ROM1|memROM~4_combout\ & (((!\ROM1|memROM~3_combout\)) # (\RAM1|ram~175_combout\))) 
-- ) ) ) # ( !\RAM1|ram~174_combout\ & ( \RAM1|ram~173_combout\ & ( (!\ROM1|memROM~4_combout\ & (((\RAM1|ram~172_combout\) # (\ROM1|memROM~3_combout\)))) # (\ROM1|memROM~4_combout\ & (\RAM1|ram~175_combout\ & (\ROM1|memROM~3_combout\))) ) ) ) # ( 
-- \RAM1|ram~174_combout\ & ( !\RAM1|ram~173_combout\ & ( (!\ROM1|memROM~4_combout\ & (((!\ROM1|memROM~3_combout\ & \RAM1|ram~172_combout\)))) # (\ROM1|memROM~4_combout\ & (((!\ROM1|memROM~3_combout\)) # (\RAM1|ram~175_combout\))) ) ) ) # ( 
-- !\RAM1|ram~174_combout\ & ( !\RAM1|ram~173_combout\ & ( (!\ROM1|memROM~4_combout\ & (((!\ROM1|memROM~3_combout\ & \RAM1|ram~172_combout\)))) # (\ROM1|memROM~4_combout\ & (\RAM1|ram~175_combout\ & (\ROM1|memROM~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001001100011111000100001101110011010011110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~175_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \RAM1|ALT_INV_ram~172_combout\,
	datae => \RAM1|ALT_INV_ram~174_combout\,
	dataf => \RAM1|ALT_INV_ram~173_combout\,
	combout => \RAM1|ram~176_combout\);

-- Location: LABCELL_X6_Y11_N54
\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( !\decoderInstru1|Equal5~1_combout\ $ (((!\decoderInstru1|Equal5~0_combout\ & \RAM1|ram~176_combout\))) ) + ( \REGA|DOUT[7]~DUPLICATE_q\ ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001010101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderInstru1|ALT_INV_Equal5~1_combout\,
	datab => \REGA|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \decoderInstru1|ALT_INV_Equal5~0_combout\,
	datad => \RAM1|ALT_INV_ram~176_combout\,
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\);

-- Location: LABCELL_X6_Y11_N6
\ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~7_combout\ = ( \ULA1|Add0~29_sumout\ & ( ((!\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~1_combout\) # (\RAM1|ram~176_combout\))) # (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\))) # (\ROM1|memROM~2_combout\) ) ) # ( 
-- !\ULA1|Add0~29_sumout\ & ( (!\ROM1|memROM~0_combout\ & (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~1_combout\ & \RAM1|ram~176_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100010110111101111111011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \RAM1|ALT_INV_ram~176_combout\,
	dataf => \ULA1|ALT_INV_Add0~29_sumout\,
	combout => \ULA1|saida[7]~7_combout\);

-- Location: FF_X6_Y11_N8
\REGA|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[7]~7_combout\,
	ena => \decoderInstru1|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[7]~DUPLICATE_q\);

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

-- Location: LABCELL_X32_Y26_N3
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


