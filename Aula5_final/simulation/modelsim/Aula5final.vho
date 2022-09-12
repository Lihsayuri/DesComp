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

-- DATE "09/12/2022 19:35:27"

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
	PC_OUT : BUFFER std_logic_vector(7 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	REG_OUT : BUFFER std_logic_vector(7 DOWNTO 0);
	SEL_MUX_PC : BUFFER std_logic_vector(1 DOWNTO 0);
	JMP_FLAG : BUFFER std_logic;
	JEQ_FLAG : BUFFER std_logic;
	JSR_FLAG : BUFFER std_logic;
	RET_FLAG : BUFFER std_logic;
	EQUAL_FLAG : BUFFER std_logic
	);
END Aula5final;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[0]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[1]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[4]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[5]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[6]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[7]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL_MUX_PC[0]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL_MUX_PC[1]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JMP_FLAG	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JEQ_FLAG	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JSR_FLAG	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RET_FLAG	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EQUAL_FLAG	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_PC_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_REG_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SEL_MUX_PC : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_JMP_FLAG : std_logic;
SIGNAL ww_JEQ_FLAG : std_logic;
SIGNAL ww_JSR_FLAG : std_logic;
SIGNAL ww_RET_FLAG : std_logic;
SIGNAL ww_EQUAL_FLAG : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \gravar:detectorSub0|saida~combout\ : std_logic;
SIGNAL \PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \decoderInstru1|saida~1_combout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[1]~1_combout\ : std_logic;
SIGNAL \PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[3]~3_combout\ : std_logic;
SIGNAL \PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \RAM1|ram~2065_combout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \REGA|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \decoderInstru1|saida[4]~2_combout\ : std_logic;
SIGNAL \decoderInstru1|Equal8~0_combout\ : std_logic;
SIGNAL \decoderInstru1|saida[5]~3_combout\ : std_logic;
SIGNAL \ULA1|Add1~34_cout\ : std_logic;
SIGNAL \ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \REGA|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~2075_combout\ : std_logic;
SIGNAL \RAM1|ram~2057_q\ : std_logic;
SIGNAL \RAM1|ram~2066_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \REGA|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \REGA|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ULA1|Add1~2\ : std_logic;
SIGNAL \ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \RAM1|ram~2058_q\ : std_logic;
SIGNAL \RAM1|ram~2067_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \REGA|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \ULA1|Add1~6\ : std_logic;
SIGNAL \ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \RAM1|ram~2059_q\ : std_logic;
SIGNAL \RAM1|ram~2068_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \REGA|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \ULA1|Add1~10\ : std_logic;
SIGNAL \ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \RAM1|ram~2060_q\ : std_logic;
SIGNAL \RAM1|ram~2069_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \REGA|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \REGA|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~2061_q\ : std_logic;
SIGNAL \RAM1|ram~2070_combout\ : std_logic;
SIGNAL \RAM1|ram~2074_combout\ : std_logic;
SIGNAL \ULA1|Add1~14\ : std_logic;
SIGNAL \ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \REGA|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \REGA|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~2062_q\ : std_logic;
SIGNAL \RAM1|ram~2071_combout\ : std_logic;
SIGNAL \ULA1|Add1~18\ : std_logic;
SIGNAL \ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \FLAG|DOUT~1_combout\ : std_logic;
SIGNAL \FLAG|DOUT~q\ : std_logic;
SIGNAL \FLAG|DOUT~2_combout\ : std_logic;
SIGNAL \ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \REGA|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \ULA1|Add1~22\ : std_logic;
SIGNAL \ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \RAM1|ram~2063_q\ : std_logic;
SIGNAL \RAM1|ram~2072_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \REGA|DOUT[7]~feeder_combout\ : std_logic;
SIGNAL \REGA|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~2064_q\ : std_logic;
SIGNAL \RAM1|ram~2073_combout\ : std_logic;
SIGNAL \ULA1|Add1~26\ : std_logic;
SIGNAL \ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \FLAG|DOUT~0_combout\ : std_logic;
SIGNAL \FLAG|DOUT~DUPLICATE_q\ : std_logic;
SIGNAL \LOG_DESVIO|SelMuxPC[0]~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[2]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \LOG_DESVIO|SelMuxPC[1]~1_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[4]~4_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~18\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[5]~5_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[6]~6_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[7]~7_combout\ : std_logic;
SIGNAL \decoderInstru1|Equal4~0_combout\ : std_logic;
SIGNAL \decoderInstru1|saida~0_combout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REG_RET|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \REG_RET|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \LOG_DESVIO|ALT_INV_SelMuxPC[1]~1_combout\ : std_logic;
SIGNAL \LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\ : std_logic;
SIGNAL \FLAG|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \FLAG|ALT_INV_DOUT~DUPLICATE_q\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \FLAG|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \FLAG|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2074_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2073_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2064_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2072_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2063_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2071_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2062_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2070_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2061_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2069_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2060_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2068_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2059_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2067_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2058_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \decoderInstru1|ALT_INV_saida[4]~2_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2066_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2057_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2065_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
PC_OUT <= ww_PC_OUT;
LEDR <= ww_LEDR;
REG_OUT <= ww_REG_OUT;
SEL_MUX_PC <= ww_SEL_MUX_PC;
JMP_FLAG <= ww_JMP_FLAG;
JEQ_FLAG <= ww_JEQ_FLAG;
JSR_FLAG <= ww_JSR_FLAG;
RET_FLAG <= ww_RET_FLAG;
EQUAL_FLAG <= ww_EQUAL_FLAG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\REG_RET|ALT_INV_DOUT\(0) <= NOT \REG_RET|DOUT\(0);
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\LOG_DESVIO|ALT_INV_SelMuxPC[1]~1_combout\ <= NOT \LOG_DESVIO|SelMuxPC[1]~1_combout\;
\LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\ <= NOT \LOG_DESVIO|SelMuxPC[0]~0_combout\;
\FLAG|ALT_INV_DOUT~q\ <= NOT \FLAG|DOUT~q\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\ULA1|ALT_INV_Add1~29_sumout\ <= NOT \ULA1|Add1~29_sumout\;
\ULA1|ALT_INV_Add0~29_sumout\ <= NOT \ULA1|Add0~29_sumout\;
\ULA1|ALT_INV_Add1~25_sumout\ <= NOT \ULA1|Add1~25_sumout\;
\ULA1|ALT_INV_Add0~25_sumout\ <= NOT \ULA1|Add0~25_sumout\;
\ULA1|ALT_INV_Add1~21_sumout\ <= NOT \ULA1|Add1~21_sumout\;
\ULA1|ALT_INV_Add0~21_sumout\ <= NOT \ULA1|Add0~21_sumout\;
\ULA1|ALT_INV_Add1~17_sumout\ <= NOT \ULA1|Add1~17_sumout\;
\ULA1|ALT_INV_Add0~17_sumout\ <= NOT \ULA1|Add0~17_sumout\;
\ULA1|ALT_INV_Add1~13_sumout\ <= NOT \ULA1|Add1~13_sumout\;
\ULA1|ALT_INV_Add0~13_sumout\ <= NOT \ULA1|Add0~13_sumout\;
\ULA1|ALT_INV_Add1~9_sumout\ <= NOT \ULA1|Add1~9_sumout\;
\ULA1|ALT_INV_Add0~9_sumout\ <= NOT \ULA1|Add0~9_sumout\;
\ULA1|ALT_INV_Add1~5_sumout\ <= NOT \ULA1|Add1~5_sumout\;
\ULA1|ALT_INV_Add0~5_sumout\ <= NOT \ULA1|Add0~5_sumout\;
\ULA1|ALT_INV_Add1~1_sumout\ <= NOT \ULA1|Add1~1_sumout\;
\ULA1|ALT_INV_Add0~1_sumout\ <= NOT \ULA1|Add0~1_sumout\;
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
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\FLAG|ALT_INV_DOUT~DUPLICATE_q\ <= NOT \FLAG|DOUT~DUPLICATE_q\;
\REGA|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \REGA|DOUT[7]~DUPLICATE_q\;
\REGA|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \REGA|DOUT[5]~DUPLICATE_q\;
\REGA|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \REGA|DOUT[4]~DUPLICATE_q\;
\REGA|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \REGA|DOUT[1]~DUPLICATE_q\;
\REGA|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \REGA|DOUT[0]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \PC|DOUT[3]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \PC|DOUT[2]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \PC|DOUT[1]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \PC|DOUT[0]~DUPLICATE_q\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\FLAG|ALT_INV_DOUT~2_combout\ <= NOT \FLAG|DOUT~2_combout\;
\FLAG|ALT_INV_DOUT~1_combout\ <= NOT \FLAG|DOUT~1_combout\;
\RAM1|ALT_INV_ram~2074_combout\ <= NOT \RAM1|ram~2074_combout\;
\gravar:detectorSub0|ALT_INV_saidaQ~q\ <= NOT \gravar:detectorSub0|saidaQ~q\;
\RAM1|ALT_INV_ram~2073_combout\ <= NOT \RAM1|ram~2073_combout\;
\RAM1|ALT_INV_ram~2064_q\ <= NOT \RAM1|ram~2064_q\;
\RAM1|ALT_INV_ram~2072_combout\ <= NOT \RAM1|ram~2072_combout\;
\RAM1|ALT_INV_ram~2063_q\ <= NOT \RAM1|ram~2063_q\;
\RAM1|ALT_INV_ram~2071_combout\ <= NOT \RAM1|ram~2071_combout\;
\RAM1|ALT_INV_ram~2062_q\ <= NOT \RAM1|ram~2062_q\;
\RAM1|ALT_INV_ram~2070_combout\ <= NOT \RAM1|ram~2070_combout\;
\RAM1|ALT_INV_ram~2061_q\ <= NOT \RAM1|ram~2061_q\;
\RAM1|ALT_INV_ram~2069_combout\ <= NOT \RAM1|ram~2069_combout\;
\RAM1|ALT_INV_ram~2060_q\ <= NOT \RAM1|ram~2060_q\;
\RAM1|ALT_INV_ram~2068_combout\ <= NOT \RAM1|ram~2068_combout\;
\RAM1|ALT_INV_ram~2059_q\ <= NOT \RAM1|ram~2059_q\;
\RAM1|ALT_INV_ram~2067_combout\ <= NOT \RAM1|ram~2067_combout\;
\RAM1|ALT_INV_ram~2058_q\ <= NOT \RAM1|ram~2058_q\;
\MUX1|ALT_INV_saida_MUX[0]~1_combout\ <= NOT \MUX1|saida_MUX[0]~1_combout\;
\MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \MUX1|saida_MUX[0]~0_combout\;
\decoderInstru1|ALT_INV_saida[4]~2_combout\ <= NOT \decoderInstru1|saida[4]~2_combout\;
\RAM1|ALT_INV_ram~2066_combout\ <= NOT \RAM1|ram~2066_combout\;
\RAM1|ALT_INV_ram~2057_q\ <= NOT \RAM1|ram~2057_q\;
\RAM1|ALT_INV_ram~2065_combout\ <= NOT \RAM1|ram~2065_combout\;
\REG_RET|ALT_INV_DOUT\(7) <= NOT \REG_RET|DOUT\(7);
\REG_RET|ALT_INV_DOUT\(6) <= NOT \REG_RET|DOUT\(6);
\REG_RET|ALT_INV_DOUT\(5) <= NOT \REG_RET|DOUT\(5);
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\REG_RET|ALT_INV_DOUT\(4) <= NOT \REG_RET|DOUT\(4);
\REG_RET|ALT_INV_DOUT\(3) <= NOT \REG_RET|DOUT\(3);
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\REG_RET|ALT_INV_DOUT\(2) <= NOT \REG_RET|DOUT\(2);
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\REG_RET|ALT_INV_DOUT\(1) <= NOT \REG_RET|DOUT\(1);

-- Location: IOOBUF_X23_Y0_N93
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

-- Location: IOOBUF_X19_Y0_N2
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[1]~DUPLICATE_q\,
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

-- Location: IOOBUF_X19_Y0_N36
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

-- Location: IOOBUF_X24_Y0_N36
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

-- Location: IOOBUF_X16_Y0_N93
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

-- Location: IOOBUF_X25_Y0_N19
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

-- Location: IOOBUF_X23_Y0_N59
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

-- Location: IOOBUF_X20_Y45_N36
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

-- Location: IOOBUF_X16_Y0_N76
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

-- Location: IOOBUF_X14_Y0_N19
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

-- Location: IOOBUF_X18_Y0_N36
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

-- Location: IOOBUF_X22_Y0_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X22_Y0_N53
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

-- Location: IOOBUF_X33_Y0_N42
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(6),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X24_Y0_N2
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

-- Location: IOOBUF_X29_Y0_N53
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

-- Location: IOOBUF_X11_Y0_N19
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

-- Location: IOOBUF_X20_Y45_N53
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

-- Location: IOOBUF_X16_Y0_N59
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

-- Location: IOOBUF_X14_Y0_N53
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

-- Location: IOOBUF_X18_Y0_N2
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

-- Location: IOOBUF_X22_Y0_N36
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

-- Location: IOOBUF_X22_Y0_N2
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

-- Location: IOOBUF_X33_Y0_N93
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

-- Location: IOOBUF_X24_Y0_N53
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

-- Location: IOOBUF_X23_Y0_N76
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

-- Location: IOOBUF_X18_Y0_N53
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

-- Location: IOOBUF_X25_Y0_N36
\JEQ_FLAG~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderInstru1|saida~0_combout\,
	devoe => ww_devoe,
	o => ww_JEQ_FLAG);

-- Location: IOOBUF_X23_Y0_N42
\JSR_FLAG~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderInstru1|saida~1_combout\,
	devoe => ww_devoe,
	o => ww_JSR_FLAG);

-- Location: IOOBUF_X18_Y0_N19
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

-- Location: IOOBUF_X14_Y0_N2
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

-- Location: IOIBUF_X19_Y0_N52
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X19_Y0_N18
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: LABCELL_X20_Y1_N27
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

-- Location: FF_X20_Y1_N28
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

-- Location: LABCELL_X20_Y3_N21
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

-- Location: FF_X20_Y4_N23
\PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MUX2|MUX_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[0]~DUPLICATE_q\);

-- Location: FF_X20_Y4_N20
\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MUX2|MUX_OUT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

-- Location: FF_X19_Y4_N7
\PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MUX2|MUX_OUT[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[2]~DUPLICATE_q\);

-- Location: FF_X19_Y4_N10
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MUX2|MUX_OUT[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: LABCELL_X20_Y4_N24
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \PC|DOUT\(3) & ( (!\PC|DOUT[0]~DUPLICATE_q\ & (\PC|DOUT\(1))) # (\PC|DOUT[0]~DUPLICATE_q\ & ((!\PC|DOUT\(1)) # (\PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\PC|DOUT\(3) & ( (!\PC|DOUT\(1) & ((\PC|DOUT[2]~DUPLICATE_q\) # 
-- (\PC|DOUT[0]~DUPLICATE_q\))) # (\PC|DOUT\(1) & ((!\PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111110000010111111111000001011010010111110101101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~5_combout\);

-- Location: LABCELL_X20_Y3_N30
\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \incrementaPC|Add0~2\ = CARRY(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

-- Location: LABCELL_X20_Y3_N33
\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

-- Location: LABCELL_X19_Y4_N24
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \PC|DOUT\(2) & ( (!\PC|DOUT\(1) $ (\PC|DOUT[3]~DUPLICATE_q\)) # (\PC|DOUT[0]~DUPLICATE_q\) ) ) # ( !\PC|DOUT\(2) & ( (\PC|DOUT[3]~DUPLICATE_q\) # (\PC|DOUT[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111001111001111111100111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~0_combout\);

-- Location: LABCELL_X21_Y4_N9
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( \PC|DOUT\(0) & ( (!\PC|DOUT[3]~DUPLICATE_q\ & (!\PC|DOUT[1]~DUPLICATE_q\ & !\PC|DOUT[2]~DUPLICATE_q\)) # (\PC|DOUT[3]~DUPLICATE_q\ & ((\PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\PC|DOUT\(0) & ( (!\PC|DOUT[3]~DUPLICATE_q\ & 
-- (\PC|DOUT[1]~DUPLICATE_q\ & !\PC|DOUT[2]~DUPLICATE_q\)) # (\PC|DOUT[3]~DUPLICATE_q\ & (!\PC|DOUT[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000110000001111000011000011000000001100111100000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X20_Y3_N12
\decoderInstru1|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru1|saida~1_combout\ = ( !\ROM1|memROM~0_combout\ & ( !\ROM1|memROM~1_combout\ & ( (\ROM1|memROM~3_combout\ & !\ROM1|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \decoderInstru1|saida~1_combout\);

-- Location: FF_X20_Y3_N34
\REG_RET|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~5_sumout\,
	ena => \decoderInstru1|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(1));

-- Location: LABCELL_X20_Y4_N18
\MUX2|MUX_OUT[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[1]~1_combout\ = ( \REG_RET|DOUT\(1) & ( ((!\LOG_DESVIO|SelMuxPC[0]~0_combout\ & ((\incrementaPC|Add0~5_sumout\))) # (\LOG_DESVIO|SelMuxPC[0]~0_combout\ & (!\ROM1|memROM~5_combout\))) # (\LOG_DESVIO|SelMuxPC[1]~1_combout\) ) ) # ( 
-- !\REG_RET|DOUT\(1) & ( (!\LOG_DESVIO|SelMuxPC[1]~1_combout\ & ((!\LOG_DESVIO|SelMuxPC[0]~0_combout\ & ((\incrementaPC|Add0~5_sumout\))) # (\LOG_DESVIO|SelMuxPC[0]~0_combout\ & (!\ROM1|memROM~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010101000001000001010100001110101111111010111010111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOG_DESVIO|ALT_INV_SelMuxPC[1]~1_combout\,
	datab => \LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \incrementaPC|ALT_INV_Add0~5_sumout\,
	dataf => \REG_RET|ALT_INV_DOUT\(1),
	combout => \MUX2|MUX_OUT[1]~1_combout\);

-- Location: FF_X20_Y4_N19
\PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MUX2|MUX_OUT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[1]~DUPLICATE_q\);

-- Location: MLABCELL_X18_Y4_N33
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \PC|DOUT[0]~DUPLICATE_q\ & ( \PC|DOUT[1]~DUPLICATE_q\ & ( !\PC|DOUT[3]~DUPLICATE_q\ $ (\PC|DOUT\(2)) ) ) ) # ( !\PC|DOUT[0]~DUPLICATE_q\ & ( \PC|DOUT[1]~DUPLICATE_q\ & ( \PC|DOUT[3]~DUPLICATE_q\ ) ) ) # ( 
-- \PC|DOUT[0]~DUPLICATE_q\ & ( !\PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT[3]~DUPLICATE_q\) # (!\PC|DOUT\(2)) ) ) ) # ( !\PC|DOUT[0]~DUPLICATE_q\ & ( !\PC|DOUT[1]~DUPLICATE_q\ & ( (\PC|DOUT\(2)) # (\PC|DOUT[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111111111111010101001010101010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(2),
	datae => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~7_combout\);

-- Location: LABCELL_X20_Y3_N36
\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

-- Location: LABCELL_X20_Y3_N39
\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~14\ = CARRY(( \PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~13_sumout\,
	cout => \incrementaPC|Add0~14\);

-- Location: FF_X20_Y3_N40
\REG_RET|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~13_sumout\,
	ena => \decoderInstru1|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(3));

-- Location: LABCELL_X19_Y4_N9
\MUX2|MUX_OUT[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[3]~3_combout\ = ( \incrementaPC|Add0~13_sumout\ & ( (!\LOG_DESVIO|SelMuxPC[1]~1_combout\ & ((!\LOG_DESVIO|SelMuxPC[0]~0_combout\) # ((!\ROM1|memROM~7_combout\)))) # (\LOG_DESVIO|SelMuxPC[1]~1_combout\ & (((\REG_RET|DOUT\(3))))) ) ) # ( 
-- !\incrementaPC|Add0~13_sumout\ & ( (!\LOG_DESVIO|SelMuxPC[1]~1_combout\ & (\LOG_DESVIO|SelMuxPC[0]~0_combout\ & (!\ROM1|memROM~7_combout\))) # (\LOG_DESVIO|SelMuxPC[1]~1_combout\ & (((\REG_RET|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110101001000000111010110101000111111011010100011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOG_DESVIO|ALT_INV_SelMuxPC[1]~1_combout\,
	datab => \LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \REG_RET|ALT_INV_DOUT\(3),
	dataf => \incrementaPC|ALT_INV_Add0~13_sumout\,
	combout => \MUX2|MUX_OUT[3]~3_combout\);

-- Location: FF_X19_Y4_N11
\PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MUX2|MUX_OUT[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y4_N33
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \PC|DOUT\(2) & ( (\PC|DOUT[0]~DUPLICATE_q\ & \PC|DOUT\(1)) ) ) # ( !\PC|DOUT\(2) & ( (!\PC|DOUT[0]~DUPLICATE_q\ & (!\PC|DOUT[3]~DUPLICATE_q\ & !\PC|DOUT\(1))) # (\PC|DOUT[0]~DUPLICATE_q\ & (\PC|DOUT[3]~DUPLICATE_q\ & 
-- \PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000110000001100000011000000100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~3_combout\);

-- Location: LABCELL_X19_Y4_N51
\MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[0]~0_combout\ = ( \PC|DOUT[3]~DUPLICATE_q\ & ( ((!\PC|DOUT\(1)) # (\PC|DOUT[0]~DUPLICATE_q\)) # (\PC|DOUT\(2)) ) ) # ( !\PC|DOUT[3]~DUPLICATE_q\ & ( (!\PC|DOUT\(2)) # (!\PC|DOUT\(1) $ (\PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011001111111111001100111111110011111111111111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \MUX1|saida_MUX[0]~0_combout\);

-- Location: LABCELL_X20_Y4_N9
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \PC|DOUT\(3) & ( (\PC|DOUT[0]~DUPLICATE_q\ & (\PC|DOUT[1]~DUPLICATE_q\ & !\PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\PC|DOUT\(3) & ( (\PC|DOUT[1]~DUPLICATE_q\ & \PC|DOUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~8_combout\);

-- Location: LABCELL_X19_Y4_N30
\MUX1|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[0]~1_combout\ = ( \MUX1|saida_MUX[0]~0_combout\ ) # ( !\MUX1|saida_MUX[0]~0_combout\ & ( !\ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \MUX1|saida_MUX[0]~1_combout\);

-- Location: MLABCELL_X18_Y4_N24
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \PC|DOUT[0]~DUPLICATE_q\ & ( \PC|DOUT[1]~DUPLICATE_q\ & ( !\PC|DOUT\(2) $ (\PC|DOUT[3]~DUPLICATE_q\) ) ) ) # ( !\PC|DOUT[0]~DUPLICATE_q\ & ( \PC|DOUT[1]~DUPLICATE_q\ & ( !\PC|DOUT\(2) $ (\PC|DOUT[3]~DUPLICATE_q\) ) ) ) # ( 
-- \PC|DOUT[0]~DUPLICATE_q\ & ( !\PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT\(2) & \PC|DOUT[3]~DUPLICATE_q\) ) ) ) # ( !\PC|DOUT[0]~DUPLICATE_q\ & ( !\PC|DOUT[1]~DUPLICATE_q\ & ( (\PC|DOUT[3]~DUPLICATE_q\) # (\PC|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111000010100000101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~6_combout\);

-- Location: LABCELL_X19_Y4_N15
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \PC|DOUT[3]~DUPLICATE_q\ & ( (!\PC|DOUT\(2) & (\PC|DOUT\(1) & \PC|DOUT[0]~DUPLICATE_q\)) # (\PC|DOUT\(2) & (!\PC|DOUT\(1))) ) ) # ( !\PC|DOUT[3]~DUPLICATE_q\ & ( (!\PC|DOUT\(1) & ((\PC|DOUT[0]~DUPLICATE_q\))) # (\PC|DOUT\(1) & 
-- ((!\PC|DOUT[0]~DUPLICATE_q\) # (\PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110011000011111111001100110000001111000011000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM1|memROM~4_combout\);

-- Location: LABCELL_X20_Y4_N27
\RAM1|ram~2065\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~2065_combout\ = ( \PC|DOUT\(3) & ( (\PC|DOUT[0]~DUPLICATE_q\ & (!\PC|DOUT[1]~DUPLICATE_q\ $ (!\PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\PC|DOUT\(3) & ( (!\PC|DOUT[1]~DUPLICATE_q\ & (!\PC|DOUT[0]~DUPLICATE_q\ & !\PC|DOUT[2]~DUPLICATE_q\)) # 
-- (\PC|DOUT[1]~DUPLICATE_q\ & ((\PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001111101000000000111100000101010100000000010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~2065_combout\);

-- Location: MLABCELL_X18_Y4_N0
\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( (!\MUX1|saida_MUX[0]~0_combout\ & ((!\ROM1|memROM~0_combout\ & ((\RAM1|ram~2066_combout\))) # (\ROM1|memROM~0_combout\ & (\ROM1|memROM~4_combout\)))) # (\MUX1|saida_MUX[0]~0_combout\ & (((\RAM1|ram~2066_combout\)))) ) + ( 
-- \REGA|DOUT[0]~DUPLICATE_q\ ) + ( !VCC ))
-- \ULA1|Add0~2\ = CARRY(( (!\MUX1|saida_MUX[0]~0_combout\ & ((!\ROM1|memROM~0_combout\ & ((\RAM1|ram~2066_combout\))) # (\ROM1|memROM~0_combout\ & (\ROM1|memROM~4_combout\)))) # (\MUX1|saida_MUX[0]~0_combout\ & (((\RAM1|ram~2066_combout\)))) ) + ( 
-- \REGA|DOUT[0]~DUPLICATE_q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM1|ALT_INV_ram~2066_combout\,
	dataf => \REGA|ALT_INV_DOUT[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

-- Location: LABCELL_X19_Y4_N48
\REGA|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGA|DOUT[0]~feeder_combout\ = ( \ULA1|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~1_sumout\,
	combout => \REGA|DOUT[0]~feeder_combout\);

-- Location: LABCELL_X21_Y4_N12
\decoderInstru1|saida[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru1|saida[4]~2_combout\ = ( !\ROM1|memROM~3_combout\ & ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~2_combout\ $ (\ROM1|memROM~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \decoderInstru1|saida[4]~2_combout\);

-- Location: LABCELL_X21_Y4_N30
\decoderInstru1|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru1|Equal8~0_combout\ = ( \ROM1|memROM~1_combout\ & ( ((!\ROM1|memROM~0_combout\) # (\ROM1|memROM~3_combout\)) # (\ROM1|memROM~2_combout\) ) ) # ( !\ROM1|memROM~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111001111111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \decoderInstru1|Equal8~0_combout\);

-- Location: LABCELL_X21_Y4_N33
\decoderInstru1|saida[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru1|saida[5]~3_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~3_combout\ & !\ROM1|memROM~2_combout\) ) ) # ( !\ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~2_combout\ $ (\ROM1|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000010100000101000001010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \decoderInstru1|saida[5]~3_combout\);

-- Location: FF_X19_Y4_N50
\REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT[0]~feeder_combout\,
	asdata => \ULA1|saida[0]~0_combout\,
	sload => \decoderInstru1|Equal8~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(0));

-- Location: LABCELL_X20_Y4_N30
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

-- Location: LABCELL_X20_Y4_N33
\ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~1_sumout\ = SUM(( (!\MUX1|saida_MUX[0]~0_combout\ & ((!\ROM1|memROM~0_combout\ & ((!\RAM1|ram~2066_combout\))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~4_combout\)))) # (\MUX1|saida_MUX[0]~0_combout\ & (((!\RAM1|ram~2066_combout\)))) ) + ( 
-- \REGA|DOUT\(0) ) + ( \ULA1|Add1~34_cout\ ))
-- \ULA1|Add1~2\ = CARRY(( (!\MUX1|saida_MUX[0]~0_combout\ & ((!\ROM1|memROM~0_combout\ & ((!\RAM1|ram~2066_combout\))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~4_combout\)))) # (\MUX1|saida_MUX[0]~0_combout\ & (((!\RAM1|ram~2066_combout\)))) ) + ( 
-- \REGA|DOUT\(0) ) + ( \ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM1|ALT_INV_ram~2066_combout\,
	dataf => \REGA|ALT_INV_DOUT\(0),
	cin => \ULA1|Add1~34_cout\,
	sumout => \ULA1|Add1~1_sumout\,
	cout => \ULA1|Add1~2\);

-- Location: MLABCELL_X18_Y4_N48
\ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~0_combout\ = ( \ULA1|Add1~1_sumout\ & ( \ROM1|memROM~4_combout\ & ( ((!\MUX1|saida_MUX[0]~1_combout\) # (!\decoderInstru1|saida[4]~2_combout\)) # (\RAM1|ram~2066_combout\) ) ) ) # ( !\ULA1|Add1~1_sumout\ & ( \ROM1|memROM~4_combout\ & ( 
-- (\decoderInstru1|saida[4]~2_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\) # (\RAM1|ram~2066_combout\))) ) ) ) # ( \ULA1|Add1~1_sumout\ & ( !\ROM1|memROM~4_combout\ & ( (!\decoderInstru1|saida[4]~2_combout\) # ((\RAM1|ram~2066_combout\ & 
-- \MUX1|saida_MUX[0]~1_combout\)) ) ) ) # ( !\ULA1|Add1~1_sumout\ & ( !\ROM1|memROM~4_combout\ & ( (\RAM1|ram~2066_combout\ & (\MUX1|saida_MUX[0]~1_combout\ & \decoderInstru1|saida[4]~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001111100011111000100001101000011011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~2066_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datac => \decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datae => \ULA1|ALT_INV_Add1~1_sumout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \ULA1|saida[0]~0_combout\);

-- Location: FF_X19_Y4_N49
\REGA|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT[0]~feeder_combout\,
	asdata => \ULA1|saida[0]~0_combout\,
	sload => \decoderInstru1|Equal8~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[0]~DUPLICATE_q\);

-- Location: MLABCELL_X18_Y4_N57
\RAM1|ram~2075\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~2075_combout\ = (!\PC|DOUT[3]~DUPLICATE_q\ & (!\PC|DOUT[0]~DUPLICATE_q\ & (\PC|DOUT[1]~DUPLICATE_q\ & \PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~2075_combout\);

-- Location: FF_X20_Y4_N5
\RAM1|ram~2057\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~2075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2057_q\);

-- Location: LABCELL_X20_Y4_N3
\RAM1|ram~2066\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~2066_combout\ = ( \RAM1|ram~2065_combout\ & ( (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~4_combout\ & (\ROM1|memROM~8_combout\ & \RAM1|ram~2057_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \RAM1|ALT_INV_ram~2057_q\,
	dataf => \RAM1|ALT_INV_ram~2065_combout\,
	combout => \RAM1|ram~2066_combout\);

-- Location: MLABCELL_X18_Y4_N3
\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( (!\MUX1|saida_MUX[0]~0_combout\ & ((!\ROM1|memROM~0_combout\ & ((\RAM1|ram~2067_combout\))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~5_combout\)))) # (\MUX1|saida_MUX[0]~0_combout\ & (((\RAM1|ram~2067_combout\)))) ) + ( 
-- \REGA|DOUT\(1) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( (!\MUX1|saida_MUX[0]~0_combout\ & ((!\ROM1|memROM~0_combout\ & ((\RAM1|ram~2067_combout\))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~5_combout\)))) # (\MUX1|saida_MUX[0]~0_combout\ & (((\RAM1|ram~2067_combout\)))) ) + ( 
-- \REGA|DOUT\(1) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010000011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~2067_combout\,
	dataf => \REGA|ALT_INV_DOUT\(1),
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

-- Location: LABCELL_X19_Y4_N3
\REGA|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGA|DOUT[1]~feeder_combout\ = ( \ULA1|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~5_sumout\,
	combout => \REGA|DOUT[1]~feeder_combout\);

-- Location: FF_X19_Y4_N4
\REGA|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT[1]~feeder_combout\,
	asdata => \ULA1|saida[1]~1_combout\,
	sload => \decoderInstru1|Equal8~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X20_Y4_N36
\ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~5_sumout\ = SUM(( (!\MUX1|saida_MUX[0]~0_combout\ & ((!\ROM1|memROM~0_combout\ & ((!\RAM1|ram~2067_combout\))) # (\ROM1|memROM~0_combout\ & (\ROM1|memROM~5_combout\)))) # (\MUX1|saida_MUX[0]~0_combout\ & (((!\RAM1|ram~2067_combout\)))) ) + ( 
-- \REGA|DOUT[1]~DUPLICATE_q\ ) + ( \ULA1|Add1~2\ ))
-- \ULA1|Add1~6\ = CARRY(( (!\MUX1|saida_MUX[0]~0_combout\ & ((!\ROM1|memROM~0_combout\ & ((!\RAM1|ram~2067_combout\))) # (\ROM1|memROM~0_combout\ & (\ROM1|memROM~5_combout\)))) # (\MUX1|saida_MUX[0]~0_combout\ & (((!\RAM1|ram~2067_combout\)))) ) + ( 
-- \REGA|DOUT[1]~DUPLICATE_q\ ) + ( \ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101111100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~2067_combout\,
	dataf => \REGA|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \ULA1|Add1~2\,
	sumout => \ULA1|Add1~5_sumout\,
	cout => \ULA1|Add1~6\);

-- Location: LABCELL_X19_Y4_N39
\ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~1_combout\ = ( \ULA1|Add1~5_sumout\ & ( (!\decoderInstru1|saida[4]~2_combout\) # ((!\MUX1|saida_MUX[0]~1_combout\ & (!\ROM1|memROM~5_combout\)) # (\MUX1|saida_MUX[0]~1_combout\ & ((\RAM1|ram~2067_combout\)))) ) ) # ( !\ULA1|Add1~5_sumout\ & 
-- ( (\decoderInstru1|saida[4]~2_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\ & (!\ROM1|memROM~5_combout\)) # (\MUX1|saida_MUX[0]~1_combout\ & ((\RAM1|ram~2067_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001010001010000000101000111101010111110111110101011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~2067_combout\,
	dataf => \ULA1|ALT_INV_Add1~5_sumout\,
	combout => \ULA1|saida[1]~1_combout\);

-- Location: FF_X19_Y4_N5
\REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT[1]~feeder_combout\,
	asdata => \ULA1|saida[1]~1_combout\,
	sload => \decoderInstru1|Equal8~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(1));

-- Location: FF_X20_Y4_N2
\RAM1|ram~2058\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~2075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2058_q\);

-- Location: LABCELL_X20_Y4_N0
\RAM1|ram~2067\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~2067_combout\ = ( \RAM1|ram~2065_combout\ & ( (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~4_combout\ & (\ROM1|memROM~8_combout\ & \RAM1|ram~2058_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \RAM1|ALT_INV_ram~2058_q\,
	dataf => \RAM1|ALT_INV_ram~2065_combout\,
	combout => \RAM1|ram~2067_combout\);

-- Location: MLABCELL_X18_Y4_N6
\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( (!\MUX1|saida_MUX[0]~0_combout\ & ((!\ROM1|memROM~0_combout\ & ((\RAM1|ram~2068_combout\))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~6_combout\)))) # (\MUX1|saida_MUX[0]~0_combout\ & (((\RAM1|ram~2068_combout\)))) ) + ( 
-- \REGA|DOUT\(2) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( (!\MUX1|saida_MUX[0]~0_combout\ & ((!\ROM1|memROM~0_combout\ & ((\RAM1|ram~2068_combout\))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~6_combout\)))) # (\MUX1|saida_MUX[0]~0_combout\ & (((\RAM1|ram~2068_combout\)))) ) + ( 
-- \REGA|DOUT\(2) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010000011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM1|ALT_INV_ram~2068_combout\,
	dataf => \REGA|ALT_INV_DOUT\(2),
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

-- Location: LABCELL_X19_Y4_N27
\REGA|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGA|DOUT[2]~feeder_combout\ = \ULA1|Add0~9_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~9_sumout\,
	combout => \REGA|DOUT[2]~feeder_combout\);

-- Location: LABCELL_X20_Y4_N39
\ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~9_sumout\ = SUM(( (!\MUX1|saida_MUX[0]~0_combout\ & ((!\ROM1|memROM~0_combout\ & ((!\RAM1|ram~2068_combout\))) # (\ROM1|memROM~0_combout\ & (\ROM1|memROM~6_combout\)))) # (\MUX1|saida_MUX[0]~0_combout\ & (((!\RAM1|ram~2068_combout\)))) ) + ( 
-- \REGA|DOUT\(2) ) + ( \ULA1|Add1~6\ ))
-- \ULA1|Add1~10\ = CARRY(( (!\MUX1|saida_MUX[0]~0_combout\ & ((!\ROM1|memROM~0_combout\ & ((!\RAM1|ram~2068_combout\))) # (\ROM1|memROM~0_combout\ & (\ROM1|memROM~6_combout\)))) # (\MUX1|saida_MUX[0]~0_combout\ & (((!\RAM1|ram~2068_combout\)))) ) + ( 
-- \REGA|DOUT\(2) ) + ( \ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101111100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM1|ALT_INV_ram~2068_combout\,
	dataf => \REGA|ALT_INV_DOUT\(2),
	cin => \ULA1|Add1~6\,
	sumout => \ULA1|Add1~9_sumout\,
	cout => \ULA1|Add1~10\);

-- Location: LABCELL_X19_Y4_N0
\ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~2_combout\ = ( \ROM1|memROM~6_combout\ & ( (!\decoderInstru1|saida[4]~2_combout\ & (((\ULA1|Add1~9_sumout\)))) # (\decoderInstru1|saida[4]~2_combout\ & (\MUX1|saida_MUX[0]~1_combout\ & ((\RAM1|ram~2068_combout\)))) ) ) # ( 
-- !\ROM1|memROM~6_combout\ & ( (!\decoderInstru1|saida[4]~2_combout\ & (((\ULA1|Add1~9_sumout\)))) # (\decoderInstru1|saida[4]~2_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\) # ((\RAM1|ram~2068_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111001011111010011100101111100001010000110110000101000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datac => \ULA1|ALT_INV_Add1~9_sumout\,
	datad => \RAM1|ALT_INV_ram~2068_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \ULA1|saida[2]~2_combout\);

-- Location: FF_X19_Y4_N29
\REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT[2]~feeder_combout\,
	asdata => \ULA1|saida[2]~2_combout\,
	sload => \decoderInstru1|Equal8~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(2));

-- Location: FF_X20_Y4_N32
\RAM1|ram~2059\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~2075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2059_q\);

-- Location: LABCELL_X20_Y4_N15
\RAM1|ram~2068\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~2068_combout\ = ( \RAM1|ram~2059_q\ & ( (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~4_combout\ & (\ROM1|memROM~8_combout\ & \RAM1|ram~2065_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \RAM1|ALT_INV_ram~2065_combout\,
	dataf => \RAM1|ALT_INV_ram~2059_q\,
	combout => \RAM1|ram~2068_combout\);

-- Location: MLABCELL_X18_Y4_N9
\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( (!\MUX1|saida_MUX[0]~0_combout\ & ((!\ROM1|memROM~0_combout\ & ((\RAM1|ram~2069_combout\))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~7_combout\)))) # (\MUX1|saida_MUX[0]~0_combout\ & (((\RAM1|ram~2069_combout\)))) ) + ( 
-- \REGA|DOUT\(3) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( (!\MUX1|saida_MUX[0]~0_combout\ & ((!\ROM1|memROM~0_combout\ & ((\RAM1|ram~2069_combout\))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~7_combout\)))) # (\MUX1|saida_MUX[0]~0_combout\ & (((\RAM1|ram~2069_combout\)))) ) + ( 
-- \REGA|DOUT\(3) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010000011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_ram~2069_combout\,
	dataf => \REGA|ALT_INV_DOUT\(3),
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

-- Location: LABCELL_X19_Y4_N18
\REGA|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGA|DOUT[3]~feeder_combout\ = ( \ULA1|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~13_sumout\,
	combout => \REGA|DOUT[3]~feeder_combout\);

-- Location: LABCELL_X20_Y4_N42
\ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~13_sumout\ = SUM(( (!\MUX1|saida_MUX[0]~0_combout\ & ((!\ROM1|memROM~0_combout\ & ((!\RAM1|ram~2069_combout\))) # (\ROM1|memROM~0_combout\ & (\ROM1|memROM~7_combout\)))) # (\MUX1|saida_MUX[0]~0_combout\ & (((!\RAM1|ram~2069_combout\)))) ) + ( 
-- \REGA|DOUT\(3) ) + ( \ULA1|Add1~10\ ))
-- \ULA1|Add1~14\ = CARRY(( (!\MUX1|saida_MUX[0]~0_combout\ & ((!\ROM1|memROM~0_combout\ & ((!\RAM1|ram~2069_combout\))) # (\ROM1|memROM~0_combout\ & (\ROM1|memROM~7_combout\)))) # (\MUX1|saida_MUX[0]~0_combout\ & (((!\RAM1|ram~2069_combout\)))) ) + ( 
-- \REGA|DOUT\(3) ) + ( \ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101111100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_ram~2069_combout\,
	dataf => \REGA|ALT_INV_DOUT\(3),
	cin => \ULA1|Add1~10\,
	sumout => \ULA1|Add1~13_sumout\,
	cout => \ULA1|Add1~14\);

-- Location: LABCELL_X19_Y4_N36
\ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~3_combout\ = ( \ROM1|memROM~7_combout\ & ( (!\decoderInstru1|saida[4]~2_combout\ & (((\ULA1|Add1~13_sumout\)))) # (\decoderInstru1|saida[4]~2_combout\ & (\MUX1|saida_MUX[0]~1_combout\ & (\RAM1|ram~2069_combout\))) ) ) # ( 
-- !\ROM1|memROM~7_combout\ & ( (!\decoderInstru1|saida[4]~2_combout\ & (((\ULA1|Add1~13_sumout\)))) # (\decoderInstru1|saida[4]~2_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\) # ((\RAM1|ram~2069_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010111101111010001011110111100000001101010110000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datac => \RAM1|ALT_INV_ram~2069_combout\,
	datad => \ULA1|ALT_INV_Add1~13_sumout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ULA1|saida[3]~3_combout\);

-- Location: FF_X19_Y4_N19
\REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT[3]~feeder_combout\,
	asdata => \ULA1|saida[3]~3_combout\,
	sload => \decoderInstru1|Equal8~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(3));

-- Location: FF_X19_Y4_N56
\RAM1|ram~2060\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~2075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2060_q\);

-- Location: LABCELL_X19_Y4_N21
\RAM1|ram~2069\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~2069_combout\ = ( !\ROM1|memROM~5_combout\ & ( (\RAM1|ram~2060_q\ & (\ROM1|memROM~4_combout\ & (\ROM1|memROM~8_combout\ & \RAM1|ram~2065_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~2060_q\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \RAM1|ALT_INV_ram~2065_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~2069_combout\);

-- Location: MLABCELL_X18_Y4_N12
\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( \REGA|DOUT[4]~DUPLICATE_q\ ) + ( (\ROM1|memROM~8_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\) # (\RAM1|ram~2070_combout\))) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( \REGA|DOUT[4]~DUPLICATE_q\ ) + ( (\ROM1|memROM~8_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\) # (\RAM1|ram~2070_combout\))) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110101011101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datac => \RAM1|ALT_INV_ram~2070_combout\,
	datad => \REGA|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

-- Location: LABCELL_X21_Y4_N36
\REGA|DOUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGA|DOUT[4]~feeder_combout\ = ( \ULA1|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~17_sumout\,
	combout => \REGA|DOUT[4]~feeder_combout\);

-- Location: LABCELL_X21_Y4_N48
\ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~4_combout\ = ( \decoderInstru1|saida[4]~2_combout\ & ( (\ROM1|memROM~8_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\) # (\RAM1|ram~2070_combout\))) ) ) # ( !\decoderInstru1|saida[4]~2_combout\ & ( \ULA1|Add1~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000101110110000000010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datab => \RAM1|ALT_INV_ram~2070_combout\,
	datac => \ULA1|ALT_INV_Add1~17_sumout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \decoderInstru1|ALT_INV_saida[4]~2_combout\,
	combout => \ULA1|saida[4]~4_combout\);

-- Location: FF_X21_Y4_N38
\REGA|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT[4]~feeder_combout\,
	asdata => \ULA1|saida[4]~4_combout\,
	sload => \decoderInstru1|Equal8~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[4]~DUPLICATE_q\);

-- Location: FF_X19_Y4_N35
\RAM1|ram~2061\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~2075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2061_q\);

-- Location: LABCELL_X19_Y4_N54
\RAM1|ram~2070\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~2070_combout\ = ( \RAM1|ram~2061_q\ & ( (\PC|DOUT\(1) & ((!\PC|DOUT[2]~DUPLICATE_q\ & (\PC|DOUT[0]~DUPLICATE_q\ & \PC|DOUT[3]~DUPLICATE_q\)) # (\PC|DOUT[2]~DUPLICATE_q\ & ((!\PC|DOUT[3]~DUPLICATE_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000000100001000100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \RAM1|ALT_INV_ram~2061_q\,
	combout => \RAM1|ram~2070_combout\);

-- Location: LABCELL_X19_Y4_N57
\RAM1|ram~2074\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~2074_combout\ = (\RAM1|ram~2070_combout\ & \ROM1|memROM~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~2070_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~2074_combout\);

-- Location: FF_X21_Y4_N37
\REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT[4]~feeder_combout\,
	asdata => \ULA1|saida[4]~4_combout\,
	sload => \decoderInstru1|Equal8~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(4));

-- Location: LABCELL_X20_Y4_N45
\ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~17_sumout\ = SUM(( (!\MUX1|saida_MUX[0]~0_combout\ & ((!\ROM1|memROM~0_combout\ & ((!\RAM1|ram~2074_combout\))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~8_combout\)))) # (\MUX1|saida_MUX[0]~0_combout\ & (((!\RAM1|ram~2074_combout\)))) ) + ( 
-- \REGA|DOUT\(4) ) + ( \ULA1|Add1~14\ ))
-- \ULA1|Add1~18\ = CARRY(( (!\MUX1|saida_MUX[0]~0_combout\ & ((!\ROM1|memROM~0_combout\ & ((!\RAM1|ram~2074_combout\))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~8_combout\)))) # (\MUX1|saida_MUX[0]~0_combout\ & (((!\RAM1|ram~2074_combout\)))) ) + ( 
-- \REGA|DOUT\(4) ) + ( \ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \RAM1|ALT_INV_ram~2074_combout\,
	dataf => \REGA|ALT_INV_DOUT\(4),
	cin => \ULA1|Add1~14\,
	sumout => \ULA1|Add1~17_sumout\,
	cout => \ULA1|Add1~18\);

-- Location: LABCELL_X21_Y4_N57
\ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~5_combout\ = ( \ULA1|Add1~21_sumout\ & ( \decoderInstru1|saida[4]~2_combout\ & ( (\ROM1|memROM~8_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\) # (\RAM1|ram~2071_combout\))) ) ) ) # ( !\ULA1|Add1~21_sumout\ & ( 
-- \decoderInstru1|saida[4]~2_combout\ & ( (\ROM1|memROM~8_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\) # (\RAM1|ram~2071_combout\))) ) ) ) # ( \ULA1|Add1~21_sumout\ & ( !\decoderInstru1|saida[4]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010000010101010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datad => \RAM1|ALT_INV_ram~2071_combout\,
	datae => \ULA1|ALT_INV_Add1~21_sumout\,
	dataf => \decoderInstru1|ALT_INV_saida[4]~2_combout\,
	combout => \ULA1|saida[5]~5_combout\);

-- Location: FF_X21_Y4_N26
\REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT[5]~feeder_combout\,
	asdata => \ULA1|saida[5]~5_combout\,
	sload => \decoderInstru1|Equal8~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(5));

-- Location: MLABCELL_X18_Y4_N15
\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( \REGA|DOUT\(5) ) + ( (\ROM1|memROM~8_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\) # (\RAM1|ram~2071_combout\))) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( \REGA|DOUT\(5) ) + ( (\ROM1|memROM~8_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\) # (\RAM1|ram~2071_combout\))) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110101011101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datac => \RAM1|ALT_INV_ram~2071_combout\,
	datad => \REGA|ALT_INV_DOUT\(5),
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

-- Location: LABCELL_X21_Y4_N24
\REGA|DOUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGA|DOUT[5]~feeder_combout\ = ( \ULA1|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~21_sumout\,
	combout => \REGA|DOUT[5]~feeder_combout\);

-- Location: FF_X21_Y4_N25
\REGA|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT[5]~feeder_combout\,
	asdata => \ULA1|saida[5]~5_combout\,
	sload => \decoderInstru1|Equal8~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[5]~DUPLICATE_q\);

-- Location: FF_X20_Y4_N16
\RAM1|ram~2062\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~2075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2062_q\);

-- Location: LABCELL_X20_Y4_N6
\RAM1|ram~2071\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~2071_combout\ = ( \RAM1|ram~2062_q\ & ( (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~5_combout\ & \RAM1|ram~2065_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~2065_combout\,
	dataf => \RAM1|ALT_INV_ram~2062_q\,
	combout => \RAM1|ram~2071_combout\);

-- Location: LABCELL_X20_Y4_N48
\ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~21_sumout\ = SUM(( \REGA|DOUT[5]~DUPLICATE_q\ ) + ( (!\ROM1|memROM~8_combout\) # ((\MUX1|saida_MUX[0]~1_combout\ & !\RAM1|ram~2071_combout\)) ) + ( \ULA1|Add1~18\ ))
-- \ULA1|Add1~22\ = CARRY(( \REGA|DOUT[5]~DUPLICATE_q\ ) + ( (!\ROM1|memROM~8_combout\) # ((\MUX1|saida_MUX[0]~1_combout\ & !\RAM1|ram~2071_combout\)) ) + ( \ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000110010001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \RAM1|ALT_INV_ram~2071_combout\,
	datad => \REGA|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \ULA1|Add1~18\,
	sumout => \ULA1|Add1~21_sumout\,
	cout => \ULA1|Add1~22\);

-- Location: LABCELL_X21_Y4_N0
\FLAG|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG|DOUT~1_combout\ = ( \ROM1|memROM~0_combout\ & ( !\ROM1|memROM~1_combout\ & ( (\ROM1|memROM~3_combout\ & !\ROM1|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \FLAG|DOUT~1_combout\);

-- Location: FF_X21_Y4_N20
\FLAG|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \FLAG|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLAG|DOUT~q\);

-- Location: LABCELL_X21_Y4_N42
\FLAG|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG|DOUT~2_combout\ = ( \ULA1|Add1~13_sumout\ & ( \ULA1|Add1~5_sumout\ & ( (!\FLAG|DOUT~1_combout\ & \FLAG|DOUT~q\) ) ) ) # ( !\ULA1|Add1~13_sumout\ & ( \ULA1|Add1~5_sumout\ & ( (!\FLAG|DOUT~1_combout\ & \FLAG|DOUT~q\) ) ) ) # ( \ULA1|Add1~13_sumout\ & 
-- ( !\ULA1|Add1~5_sumout\ & ( (!\FLAG|DOUT~1_combout\ & \FLAG|DOUT~q\) ) ) ) # ( !\ULA1|Add1~13_sumout\ & ( !\ULA1|Add1~5_sumout\ & ( (!\FLAG|DOUT~1_combout\ & (((\FLAG|DOUT~q\)))) # (\FLAG|DOUT~1_combout\ & (!\ULA1|Add1~9_sumout\ & 
-- (!\ULA1|Add1~1_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011111000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~9_sumout\,
	datab => \ULA1|ALT_INV_Add1~1_sumout\,
	datac => \FLAG|ALT_INV_DOUT~1_combout\,
	datad => \FLAG|ALT_INV_DOUT~q\,
	datae => \ULA1|ALT_INV_Add1~13_sumout\,
	dataf => \ULA1|ALT_INV_Add1~5_sumout\,
	combout => \FLAG|DOUT~2_combout\);

-- Location: LABCELL_X19_Y4_N45
\ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~7_combout\ = ( \ULA1|Add1~29_sumout\ & ( (!\decoderInstru1|saida[4]~2_combout\) # ((\ROM1|memROM~8_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\) # (\RAM1|ram~2073_combout\)))) ) ) # ( !\ULA1|Add1~29_sumout\ & ( (\ROM1|memROM~8_combout\ & 
-- (\decoderInstru1|saida[4]~2_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\) # (\RAM1|ram~2073_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000101000000000100010111111111010001011111111101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datac => \RAM1|ALT_INV_ram~2073_combout\,
	datad => \decoderInstru1|ALT_INV_saida[4]~2_combout\,
	dataf => \ULA1|ALT_INV_Add1~29_sumout\,
	combout => \ULA1|saida[7]~7_combout\);

-- Location: FF_X19_Y4_N43
\REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT[7]~feeder_combout\,
	asdata => \ULA1|saida[7]~7_combout\,
	sload => \decoderInstru1|Equal8~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(7));

-- Location: MLABCELL_X18_Y4_N18
\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( (\ROM1|memROM~8_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\) # (\RAM1|ram~2072_combout\))) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( (\ROM1|memROM~8_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\) # (\RAM1|ram~2072_combout\))) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datac => \RAM1|ALT_INV_ram~2072_combout\,
	dataf => \REGA|ALT_INV_DOUT\(6),
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

-- Location: LABCELL_X21_Y4_N51
\REGA|DOUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGA|DOUT[6]~feeder_combout\ = ( \ULA1|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~25_sumout\,
	combout => \REGA|DOUT[6]~feeder_combout\);

-- Location: LABCELL_X20_Y4_N51
\ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~25_sumout\ = SUM(( \REGA|DOUT\(6) ) + ( (!\ROM1|memROM~8_combout\) # ((\MUX1|saida_MUX[0]~1_combout\ & !\RAM1|ram~2072_combout\)) ) + ( \ULA1|Add1~22\ ))
-- \ULA1|Add1~26\ = CARRY(( \REGA|DOUT\(6) ) + ( (!\ROM1|memROM~8_combout\) # ((\MUX1|saida_MUX[0]~1_combout\ & !\RAM1|ram~2072_combout\)) ) + ( \ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000110010001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \RAM1|ALT_INV_ram~2072_combout\,
	datad => \REGA|ALT_INV_DOUT\(6),
	cin => \ULA1|Add1~22\,
	sumout => \ULA1|Add1~25_sumout\,
	cout => \ULA1|Add1~26\);

-- Location: LABCELL_X21_Y4_N27
\ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~6_combout\ = ( \ULA1|Add1~25_sumout\ & ( (!\decoderInstru1|saida[4]~2_combout\) # ((\ROM1|memROM~8_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\) # (\RAM1|ram~2072_combout\)))) ) ) # ( !\ULA1|Add1~25_sumout\ & ( 
-- (\decoderInstru1|saida[4]~2_combout\ & (\ROM1|memROM~8_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\) # (\RAM1|ram~2072_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001101000000000000110111110000111111011111000011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~2072_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datac => \decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ULA1|ALT_INV_Add1~25_sumout\,
	combout => \ULA1|saida[6]~6_combout\);

-- Location: FF_X21_Y4_N52
\REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT[6]~feeder_combout\,
	asdata => \ULA1|saida[6]~6_combout\,
	sload => \decoderInstru1|Equal8~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(6));

-- Location: FF_X20_Y4_N14
\RAM1|ram~2063\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~2075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2063_q\);

-- Location: LABCELL_X20_Y4_N12
\RAM1|ram~2072\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~2072_combout\ = (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~4_combout\ & (\RAM1|ram~2065_combout\ & \RAM1|ram~2063_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \RAM1|ALT_INV_ram~2065_combout\,
	datad => \RAM1|ALT_INV_ram~2063_q\,
	combout => \RAM1|ram~2072_combout\);

-- Location: MLABCELL_X18_Y4_N21
\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( \REGA|DOUT\(7) ) + ( (\ROM1|memROM~8_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\) # (\RAM1|ram~2073_combout\))) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110101011101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datac => \RAM1|ALT_INV_ram~2073_combout\,
	datad => \REGA|ALT_INV_DOUT\(7),
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\);

-- Location: LABCELL_X19_Y4_N42
\REGA|DOUT[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGA|DOUT[7]~feeder_combout\ = ( \ULA1|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~29_sumout\,
	combout => \REGA|DOUT[7]~feeder_combout\);

-- Location: FF_X19_Y4_N44
\REGA|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT[7]~feeder_combout\,
	asdata => \ULA1|saida[7]~7_combout\,
	sload => \decoderInstru1|Equal8~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[7]~DUPLICATE_q\);

-- Location: FF_X19_Y4_N14
\RAM1|ram~2064\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[7]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~2075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2064_q\);

-- Location: LABCELL_X19_Y4_N12
\RAM1|ram~2073\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~2073_combout\ = ( \ROM1|memROM~4_combout\ & ( (\RAM1|ram~2065_combout\ & (!\ROM1|memROM~5_combout\ & \RAM1|ram~2064_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~2065_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~2064_q\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~2073_combout\);

-- Location: LABCELL_X20_Y4_N54
\ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~29_sumout\ = SUM(( \REGA|DOUT[7]~DUPLICATE_q\ ) + ( (!\ROM1|memROM~8_combout\) # ((\MUX1|saida_MUX[0]~1_combout\ & !\RAM1|ram~2073_combout\)) ) + ( \ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000110010001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \RAM1|ALT_INV_ram~2073_combout\,
	datad => \REGA|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \ULA1|Add1~26\,
	sumout => \ULA1|Add1~29_sumout\);

-- Location: LABCELL_X21_Y4_N18
\FLAG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG|DOUT~0_combout\ = ( \ULA1|Add1~29_sumout\ & ( \ULA1|Add1~25_sumout\ & ( (!\FLAG|DOUT~1_combout\ & \FLAG|DOUT~2_combout\) ) ) ) # ( !\ULA1|Add1~29_sumout\ & ( \ULA1|Add1~25_sumout\ & ( (!\FLAG|DOUT~1_combout\ & \FLAG|DOUT~2_combout\) ) ) ) # ( 
-- \ULA1|Add1~29_sumout\ & ( !\ULA1|Add1~25_sumout\ & ( (!\FLAG|DOUT~1_combout\ & \FLAG|DOUT~2_combout\) ) ) ) # ( !\ULA1|Add1~29_sumout\ & ( !\ULA1|Add1~25_sumout\ & ( (\FLAG|DOUT~2_combout\ & ((!\FLAG|DOUT~1_combout\) # ((!\ULA1|Add1~17_sumout\ & 
-- !\ULA1|Add1~21_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~17_sumout\,
	datab => \ULA1|ALT_INV_Add1~21_sumout\,
	datac => \FLAG|ALT_INV_DOUT~1_combout\,
	datad => \FLAG|ALT_INV_DOUT~2_combout\,
	datae => \ULA1|ALT_INV_Add1~29_sumout\,
	dataf => \ULA1|ALT_INV_Add1~25_sumout\,
	combout => \FLAG|DOUT~0_combout\);

-- Location: FF_X21_Y4_N19
\FLAG|DOUT~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \FLAG|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLAG|DOUT~DUPLICATE_q\);

-- Location: LABCELL_X20_Y3_N24
\LOG_DESVIO|SelMuxPC[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOG_DESVIO|SelMuxPC[0]~0_combout\ = ( \ROM1|memROM~0_combout\ & ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~3_combout\ & \ROM1|memROM~2_combout\) ) ) ) # ( !\ROM1|memROM~0_combout\ & ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~3_combout\ & 
-- (\FLAG|DOUT~DUPLICATE_q\ & \ROM1|memROM~2_combout\)) ) ) ) # ( !\ROM1|memROM~0_combout\ & ( !\ROM1|memROM~1_combout\ & ( (\ROM1|memROM~3_combout\ & !\ROM1|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000000000010000000100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \FLAG|ALT_INV_DOUT~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \LOG_DESVIO|SelMuxPC[0]~0_combout\);

-- Location: FF_X20_Y3_N37
\REG_RET|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~9_sumout\,
	ena => \decoderInstru1|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(2));

-- Location: LABCELL_X19_Y4_N6
\MUX2|MUX_OUT[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[2]~2_combout\ = ( \incrementaPC|Add0~9_sumout\ & ( (!\LOG_DESVIO|SelMuxPC[1]~1_combout\ & ((!\LOG_DESVIO|SelMuxPC[0]~0_combout\) # ((!\ROM1|memROM~6_combout\)))) # (\LOG_DESVIO|SelMuxPC[1]~1_combout\ & (((\REG_RET|DOUT\(2))))) ) ) # ( 
-- !\incrementaPC|Add0~9_sumout\ & ( (!\LOG_DESVIO|SelMuxPC[1]~1_combout\ & (\LOG_DESVIO|SelMuxPC[0]~0_combout\ & (!\ROM1|memROM~6_combout\))) # (\LOG_DESVIO|SelMuxPC[1]~1_combout\ & (((\REG_RET|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110101001000000111010110101000111111011010100011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOG_DESVIO|ALT_INV_SelMuxPC[1]~1_combout\,
	datab => \LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \REG_RET|ALT_INV_DOUT\(2),
	dataf => \incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \MUX2|MUX_OUT[2]~2_combout\);

-- Location: FF_X19_Y4_N8
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MUX2|MUX_OUT[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: MLABCELL_X18_Y4_N45
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \PC|DOUT[3]~DUPLICATE_q\ & ( \PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT[0]~DUPLICATE_q\ & !\PC|DOUT\(2)) ) ) ) # ( !\PC|DOUT[3]~DUPLICATE_q\ & ( \PC|DOUT[1]~DUPLICATE_q\ & ( !\PC|DOUT[0]~DUPLICATE_q\ ) ) ) # ( 
-- \PC|DOUT[3]~DUPLICATE_q\ & ( !\PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT[0]~DUPLICATE_q\) # (\PC|DOUT\(2)) ) ) ) # ( !\PC|DOUT[3]~DUPLICATE_q\ & ( !\PC|DOUT[1]~DUPLICATE_q\ & ( \PC|DOUT[0]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111111111110000111100001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(2),
	datae => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~2_combout\);

-- Location: MLABCELL_X18_Y4_N36
\LOG_DESVIO|SelMuxPC[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOG_DESVIO|SelMuxPC[1]~1_combout\ = ( \ROM1|memROM~0_combout\ & ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~2_combout\ & \ROM1|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \LOG_DESVIO|SelMuxPC[1]~1_combout\);

-- Location: FF_X20_Y3_N31
\REG_RET|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~1_sumout\,
	ena => \decoderInstru1|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(0));

-- Location: LABCELL_X20_Y4_N21
\MUX2|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[0]~0_combout\ = ( \incrementaPC|Add0~1_sumout\ & ( (!\LOG_DESVIO|SelMuxPC[1]~1_combout\ & ((!\LOG_DESVIO|SelMuxPC[0]~0_combout\) # ((\ROM1|memROM~4_combout\)))) # (\LOG_DESVIO|SelMuxPC[1]~1_combout\ & (((\REG_RET|DOUT\(0))))) ) ) # ( 
-- !\incrementaPC|Add0~1_sumout\ & ( (!\LOG_DESVIO|SelMuxPC[1]~1_combout\ & (\LOG_DESVIO|SelMuxPC[0]~0_combout\ & (\ROM1|memROM~4_combout\))) # (\LOG_DESVIO|SelMuxPC[1]~1_combout\ & (((\REG_RET|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110001010110111111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOG_DESVIO|ALT_INV_SelMuxPC[1]~1_combout\,
	datab => \LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \REG_RET|ALT_INV_DOUT\(0),
	dataf => \incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \MUX2|MUX_OUT[0]~0_combout\);

-- Location: FF_X20_Y4_N22
\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MUX2|MUX_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

-- Location: LABCELL_X20_Y3_N42
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

-- Location: FF_X20_Y3_N43
\REG_RET|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~17_sumout\,
	ena => \decoderInstru1|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(4));

-- Location: LABCELL_X20_Y3_N9
\MUX2|MUX_OUT[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[4]~4_combout\ = ( \LOG_DESVIO|SelMuxPC[1]~1_combout\ & ( \LOG_DESVIO|SelMuxPC[0]~0_combout\ & ( \REG_RET|DOUT\(4) ) ) ) # ( !\LOG_DESVIO|SelMuxPC[1]~1_combout\ & ( \LOG_DESVIO|SelMuxPC[0]~0_combout\ & ( \ROM1|memROM~8_combout\ ) ) ) # ( 
-- \LOG_DESVIO|SelMuxPC[1]~1_combout\ & ( !\LOG_DESVIO|SelMuxPC[0]~0_combout\ & ( \REG_RET|DOUT\(4) ) ) ) # ( !\LOG_DESVIO|SelMuxPC[1]~1_combout\ & ( !\LOG_DESVIO|SelMuxPC[0]~0_combout\ & ( \incrementaPC|Add0~17_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_RET|ALT_INV_DOUT\(4),
	datac => \incrementaPC|ALT_INV_Add0~17_sumout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \LOG_DESVIO|ALT_INV_SelMuxPC[1]~1_combout\,
	dataf => \LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	combout => \MUX2|MUX_OUT[4]~4_combout\);

-- Location: FF_X20_Y3_N10
\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MUX2|MUX_OUT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

-- Location: LABCELL_X20_Y3_N45
\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))
-- \incrementaPC|Add0~22\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \incrementaPC|Add0~18\,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

-- Location: FF_X20_Y3_N47
\REG_RET|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~21_sumout\,
	ena => \decoderInstru1|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(5));

-- Location: LABCELL_X20_Y3_N18
\MUX2|MUX_OUT[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[5]~5_combout\ = ( \LOG_DESVIO|SelMuxPC[0]~0_combout\ & ( (!\LOG_DESVIO|SelMuxPC[1]~1_combout\ & (\ROM1|memROM~8_combout\)) # (\LOG_DESVIO|SelMuxPC[1]~1_combout\ & ((\REG_RET|DOUT\(5)))) ) ) # ( !\LOG_DESVIO|SelMuxPC[0]~0_combout\ & ( 
-- (!\LOG_DESVIO|SelMuxPC[1]~1_combout\ & (\incrementaPC|Add0~21_sumout\)) # (\LOG_DESVIO|SelMuxPC[1]~1_combout\ & ((\REG_RET|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \incrementaPC|ALT_INV_Add0~21_sumout\,
	datac => \REG_RET|ALT_INV_DOUT\(5),
	datad => \LOG_DESVIO|ALT_INV_SelMuxPC[1]~1_combout\,
	dataf => \LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	combout => \MUX2|MUX_OUT[5]~5_combout\);

-- Location: FF_X20_Y3_N19
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MUX2|MUX_OUT[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: LABCELL_X20_Y3_N48
\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(6),
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

-- Location: FF_X20_Y3_N49
\REG_RET|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~25_sumout\,
	ena => \decoderInstru1|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(6));

-- Location: LABCELL_X20_Y3_N54
\MUX2|MUX_OUT[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[6]~6_combout\ = ( \LOG_DESVIO|SelMuxPC[1]~1_combout\ & ( \LOG_DESVIO|SelMuxPC[0]~0_combout\ & ( \REG_RET|DOUT\(6) ) ) ) # ( !\LOG_DESVIO|SelMuxPC[1]~1_combout\ & ( \LOG_DESVIO|SelMuxPC[0]~0_combout\ & ( \ROM1|memROM~8_combout\ ) ) ) # ( 
-- \LOG_DESVIO|SelMuxPC[1]~1_combout\ & ( !\LOG_DESVIO|SelMuxPC[0]~0_combout\ & ( \REG_RET|DOUT\(6) ) ) ) # ( !\LOG_DESVIO|SelMuxPC[1]~1_combout\ & ( !\LOG_DESVIO|SelMuxPC[0]~0_combout\ & ( \incrementaPC|Add0~25_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_RET|ALT_INV_DOUT\(6),
	datac => \incrementaPC|ALT_INV_Add0~25_sumout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \LOG_DESVIO|ALT_INV_SelMuxPC[1]~1_combout\,
	dataf => \LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	combout => \MUX2|MUX_OUT[6]~6_combout\);

-- Location: FF_X20_Y3_N55
\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MUX2|MUX_OUT[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

-- Location: LABCELL_X20_Y3_N51
\incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~29_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(7),
	cin => \incrementaPC|Add0~26\,
	sumout => \incrementaPC|Add0~29_sumout\);

-- Location: FF_X20_Y3_N52
\REG_RET|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~29_sumout\,
	ena => \decoderInstru1|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(7));

-- Location: LABCELL_X20_Y3_N0
\MUX2|MUX_OUT[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[7]~7_combout\ = ( \LOG_DESVIO|SelMuxPC[1]~1_combout\ & ( \LOG_DESVIO|SelMuxPC[0]~0_combout\ & ( \REG_RET|DOUT\(7) ) ) ) # ( !\LOG_DESVIO|SelMuxPC[1]~1_combout\ & ( \LOG_DESVIO|SelMuxPC[0]~0_combout\ & ( \ROM1|memROM~8_combout\ ) ) ) # ( 
-- \LOG_DESVIO|SelMuxPC[1]~1_combout\ & ( !\LOG_DESVIO|SelMuxPC[0]~0_combout\ & ( \REG_RET|DOUT\(7) ) ) ) # ( !\LOG_DESVIO|SelMuxPC[1]~1_combout\ & ( !\LOG_DESVIO|SelMuxPC[0]~0_combout\ & ( \incrementaPC|Add0~29_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \REG_RET|ALT_INV_DOUT\(7),
	datac => \incrementaPC|ALT_INV_Add0~29_sumout\,
	datae => \LOG_DESVIO|ALT_INV_SelMuxPC[1]~1_combout\,
	dataf => \LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	combout => \MUX2|MUX_OUT[7]~7_combout\);

-- Location: FF_X20_Y3_N1
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MUX2|MUX_OUT[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

-- Location: LABCELL_X21_Y4_N39
\decoderInstru1|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru1|Equal4~0_combout\ = (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~3_combout\ & (\ROM1|memROM~2_combout\ & \ROM1|memROM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \decoderInstru1|Equal4~0_combout\);

-- Location: LABCELL_X21_Y4_N6
\decoderInstru1|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru1|saida~0_combout\ = ( \ROM1|memROM~1_combout\ & ( (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\ & !\ROM1|memROM~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \decoderInstru1|saida~0_combout\);

-- Location: IOIBUF_X50_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X40_Y45_N41
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X6_Y34_N3
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


