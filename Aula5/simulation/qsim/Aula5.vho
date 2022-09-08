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

-- DATE "09/08/2022 11:01:18"

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

ENTITY 	Aula5 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(7 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	REG_OUT : OUT std_logic_vector(7 DOWNTO 0);
	SEL_MUX_PC : OUT std_logic;
	JMP_FLAG : OUT std_logic;
	JEQ_FLAG : OUT std_logic;
	EQUAL_FLAG : OUT std_logic
	);
END Aula5;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- REG_OUT[1]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[2]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[4]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[5]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[6]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[7]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL_MUX_PC	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JMP_FLAG	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JEQ_FLAG	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EQUAL_FLAG	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Aula5 IS
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
SIGNAL ww_SEL_MUX_PC : std_logic;
SIGNAL ww_JMP_FLAG : std_logic;
SIGNAL ww_JEQ_FLAG : std_logic;
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
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \PC|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_wirecell_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \decoderInstru1|saida[4]~2_combout\ : std_logic;
SIGNAL \ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \decoderInstru1|Equal6~0_combout\ : std_logic;
SIGNAL \decoderInstru1|saida[5]~3_combout\ : std_logic;
SIGNAL \REGA|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~2065_combout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \REGA|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \ULA1|Add1~34_cout\ : std_logic;
SIGNAL \ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \RAM1|ram~2075_combout\ : std_logic;
SIGNAL \RAM1|ram~2057_q\ : std_logic;
SIGNAL \RAM1|ram~2066_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \REGA|DOUT[1]~feeder_combout\ : std_logic;
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
SIGNAL \ULA1|Add1~10\ : std_logic;
SIGNAL \ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \REGA|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \REGA|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~2060_q\ : std_logic;
SIGNAL \RAM1|ram~2069_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \REGA|DOUT[4]~feeder_combout\ : std_logic;
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
SIGNAL \FLAG|DOUT~q\ : std_logic;
SIGNAL \FLAG|DOUT~1_combout\ : std_logic;
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
SIGNAL \LOG_DESVIO|SelMuxPC~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \PC|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \PC|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \PC|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \PC|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~18\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \PC|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \PC|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \PC|DOUT[7]~feeder_combout\ : std_logic;
SIGNAL \PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \REGA|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \decoderInstru1|saida~0_combout\ : std_logic;
SIGNAL \decoderInstru1|saida~1_combout\ : std_logic;
SIGNAL \REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \FLAG|ALT_INV_DOUT~DUPLICATE_q\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
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
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \decoderInstru1|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \FLAG|ALT_INV_DOUT~q\ : std_logic;
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

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
PC_OUT <= ww_PC_OUT;
LEDR <= ww_LEDR;
REG_OUT <= ww_REG_OUT;
SEL_MUX_PC <= ww_SEL_MUX_PC;
JMP_FLAG <= ww_JMP_FLAG;
JEQ_FLAG <= ww_JEQ_FLAG;
EQUAL_FLAG <= ww_EQUAL_FLAG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\FLAG|ALT_INV_DOUT~DUPLICATE_q\ <= NOT \FLAG|DOUT~DUPLICATE_q\;
\REGA|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \REGA|DOUT[7]~DUPLICATE_q\;
\REGA|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \REGA|DOUT[4]~DUPLICATE_q\;
\REGA|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \REGA|DOUT[3]~DUPLICATE_q\;
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
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\decoderInstru1|ALT_INV_saida~0_combout\ <= NOT \decoderInstru1|saida~0_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\FLAG|ALT_INV_DOUT~q\ <= NOT \FLAG|DOUT~q\;
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

-- Location: IOOBUF_X19_Y0_N2
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X19_Y0_N53
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

-- Location: IOOBUF_X19_Y0_N36
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

-- Location: IOOBUF_X19_Y0_N19
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

-- Location: IOOBUF_X16_Y0_N42
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

-- Location: IOOBUF_X16_Y0_N59
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

-- Location: IOOBUF_X18_Y0_N53
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[7]~DUPLICATE_q\,
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
	i => \REGA|DOUT[3]~DUPLICATE_q\,
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
	i => \REGA|DOUT[4]~DUPLICATE_q\,
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

-- Location: IOOBUF_X11_Y0_N19
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

-- Location: IOOBUF_X12_Y0_N2
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

-- Location: IOOBUF_X11_Y0_N2
\REG_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_REG_OUT(3));

-- Location: IOOBUF_X11_Y0_N53
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

-- Location: IOOBUF_X10_Y0_N59
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

-- Location: IOOBUF_X18_Y45_N19
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

-- Location: IOOBUF_X10_Y0_N42
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

-- Location: IOOBUF_X16_Y0_N76
\SEL_MUX_PC~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOG_DESVIO|SelMuxPC~0_combout\,
	devoe => ww_devoe,
	o => ww_SEL_MUX_PC);

-- Location: IOOBUF_X22_Y0_N36
\JMP_FLAG~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderInstru1|ALT_INV_saida~0_combout\,
	devoe => ww_devoe,
	o => ww_JMP_FLAG);

-- Location: IOOBUF_X22_Y0_N19
\JEQ_FLAG~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderInstru1|saida~1_combout\,
	devoe => ww_devoe,
	o => ww_JEQ_FLAG);

-- Location: IOOBUF_X18_Y0_N2
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

-- Location: LABCELL_X10_Y1_N12
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

-- Location: FF_X10_Y1_N13
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

-- Location: LABCELL_X16_Y1_N27
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

-- Location: LABCELL_X20_Y1_N30
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

-- Location: LABCELL_X19_Y1_N48
\PC|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[0]~feeder_combout\ = ( \incrementaPC|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \PC|DOUT[0]~feeder_combout\);

-- Location: LABCELL_X19_Y1_N51
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT\(2) $ (\PC|DOUT\(3))) # (\PC|DOUT[0]~DUPLICATE_q\) ) ) # ( !\PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT[0]~DUPLICATE_q\ & (!\PC|DOUT\(2) & \PC|DOUT\(3))) # (\PC|DOUT[0]~DUPLICATE_q\ & 
-- (!\PC|DOUT\(2) $ (\PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100101010100001010010111110101010111111111010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~6_combout\);

-- Location: LABCELL_X19_Y2_N12
\ROM1|memROM~6_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_wirecell_combout\ = ( !\ROM1|memROM~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \ROM1|memROM~6_wirecell_combout\);

-- Location: LABCELL_X19_Y1_N15
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \PC|DOUT[0]~DUPLICATE_q\ & ( (!\PC|DOUT\(3) & ((!\PC|DOUT\(1)))) # (\PC|DOUT\(3) & (!\PC|DOUT[2]~DUPLICATE_q\ & \PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010010100001010101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~0_combout\);

-- Location: LABCELL_X20_Y1_N12
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( \PC|DOUT[0]~DUPLICATE_q\ & ( (!\PC|DOUT\(2) & (\PC|DOUT[1]~DUPLICATE_q\ & !\PC|DOUT[3]~DUPLICATE_q\)) # (\PC|DOUT\(2) & ((\PC|DOUT[3]~DUPLICATE_q\))) ) ) # ( !\PC|DOUT[0]~DUPLICATE_q\ & ( ((!\PC|DOUT\(2) & 
-- \PC|DOUT[3]~DUPLICATE_q\)) # (\PC|DOUT[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111110011001100111111001100110000000011110011000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X20_Y1_N24
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( !\PC|DOUT[0]~DUPLICATE_q\ & ( (\PC|DOUT[1]~DUPLICATE_q\ & (!\PC|DOUT\(2) $ (!\PC|DOUT[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~3_combout\);

-- Location: LABCELL_X19_Y1_N24
\MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[0]~0_combout\ = ( \PC|DOUT[0]~DUPLICATE_q\ & ( (!\PC|DOUT\(3) $ (\PC|DOUT\(2))) # (\PC|DOUT\(1)) ) ) # ( !\PC|DOUT[0]~DUPLICATE_q\ & ( ((!\PC|DOUT\(2)) # (\PC|DOUT\(3))) # (\PC|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100111111111111110011111111110011001111111111001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \MUX1|saida_MUX[0]~0_combout\);

-- Location: LABCELL_X19_Y1_N36
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \PC|DOUT[0]~DUPLICATE_q\ & ( (\PC|DOUT[2]~DUPLICATE_q\ & (!\PC|DOUT[1]~DUPLICATE_q\ & !\PC|DOUT\(3))) ) ) # ( !\PC|DOUT[0]~DUPLICATE_q\ & ( (\PC|DOUT[1]~DUPLICATE_q\ & (!\PC|DOUT[2]~DUPLICATE_q\ $ (!\PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~8_combout\);

-- Location: MLABCELL_X18_Y1_N9
\MUX1|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[0]~1_combout\ = ( \MUX1|saida_MUX[0]~0_combout\ ) # ( !\MUX1|saida_MUX[0]~0_combout\ & ( \ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \MUX1|saida_MUX[0]~1_combout\);

-- Location: LABCELL_X20_Y1_N9
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \PC|DOUT[3]~DUPLICATE_q\ & ( \PC|DOUT[0]~DUPLICATE_q\ & ( (!\PC|DOUT\(2) & \PC|DOUT[1]~DUPLICATE_q\) ) ) ) # ( !\PC|DOUT[3]~DUPLICATE_q\ & ( \PC|DOUT[0]~DUPLICATE_q\ & ( !\PC|DOUT\(2) $ (\PC|DOUT[1]~DUPLICATE_q\) ) ) ) # ( 
-- \PC|DOUT[3]~DUPLICATE_q\ & ( !\PC|DOUT[0]~DUPLICATE_q\ & ( (\PC|DOUT\(2) & !\PC|DOUT[1]~DUPLICATE_q\) ) ) ) # ( !\PC|DOUT[3]~DUPLICATE_q\ & ( !\PC|DOUT[0]~DUPLICATE_q\ & ( (!\PC|DOUT\(2) & !\PC|DOUT[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000010100000101000010100101101001010000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~2_combout\);

-- Location: LABCELL_X20_Y1_N57
\decoderInstru1|saida[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru1|saida[4]~2_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~2_combout\ & \ROM1|memROM~0_combout\)) ) ) # ( !\ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~2_combout\ & 
-- !\ROM1|memROM~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \decoderInstru1|saida[4]~2_combout\);

-- Location: LABCELL_X17_Y1_N57
\ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~4_combout\ = ( \ULA1|Add1~17_sumout\ & ( (!\decoderInstru1|saida[4]~2_combout\) # ((\ROM1|memROM~8_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\) # (\RAM1|ram~2070_combout\)))) ) ) # ( !\ULA1|Add1~17_sumout\ & ( (\ROM1|memROM~8_combout\ & 
-- (\decoderInstru1|saida[4]~2_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\) # (\RAM1|ram~2070_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000001000001010000000111110101111100011111010111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \RAM1|ALT_INV_ram~2070_combout\,
	datac => \decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	dataf => \ULA1|ALT_INV_Add1~17_sumout\,
	combout => \ULA1|saida[4]~4_combout\);

-- Location: LABCELL_X20_Y1_N27
\decoderInstru1|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru1|Equal6~0_combout\ = ( \ROM1|memROM~0_combout\ ) # ( !\ROM1|memROM~0_combout\ & ( ((!\ROM1|memROM~1_combout\) # (!\ROM1|memROM~2_combout\)) # (\ROM1|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110101111111111111010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \decoderInstru1|Equal6~0_combout\);

-- Location: LABCELL_X20_Y1_N54
\decoderInstru1|saida[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru1|saida[5]~3_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~3_combout\ & \ROM1|memROM~1_combout\) ) ) # ( !\ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~2_combout\ $ (\ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000100010100010000010001000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \decoderInstru1|saida[5]~3_combout\);

-- Location: FF_X17_Y1_N55
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
	sload => \decoderInstru1|Equal6~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y1_N6
\RAM1|ram~2065\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~2065_combout\ = ( \PC|DOUT[2]~DUPLICATE_q\ & ( (!\PC|DOUT\(1) & (!\PC|DOUT[0]~DUPLICATE_q\ $ (!\PC|DOUT\(3)))) # (\PC|DOUT\(1) & (!\PC|DOUT[0]~DUPLICATE_q\ & !\PC|DOUT\(3))) ) ) # ( !\PC|DOUT[2]~DUPLICATE_q\ & ( (\PC|DOUT\(1) & 
-- (!\PC|DOUT[0]~DUPLICATE_q\ & \PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000111100110000000011110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \RAM1|ram~2065_combout\);

-- Location: LABCELL_X17_Y1_N30
\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( (!\MUX1|saida_MUX[0]~0_combout\ & ((!\ROM1|memROM~0_combout\ & (\ROM1|memROM~4_combout\)) # (\ROM1|memROM~0_combout\ & ((\RAM1|ram~2066_combout\))))) # (\MUX1|saida_MUX[0]~0_combout\ & (((\RAM1|ram~2066_combout\)))) ) + ( 
-- \REGA|DOUT\(0) ) + ( !VCC ))
-- \ULA1|Add0~2\ = CARRY(( (!\MUX1|saida_MUX[0]~0_combout\ & ((!\ROM1|memROM~0_combout\ & (\ROM1|memROM~4_combout\)) # (\ROM1|memROM~0_combout\ & ((\RAM1|ram~2066_combout\))))) # (\MUX1|saida_MUX[0]~0_combout\ & (((\RAM1|ram~2066_combout\)))) ) + ( 
-- \REGA|DOUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM1|ALT_INV_ram~2066_combout\,
	dataf => \REGA|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

-- Location: LABCELL_X20_Y1_N3
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

-- Location: MLABCELL_X18_Y1_N12
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

-- Location: MLABCELL_X18_Y1_N15
\ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~1_sumout\ = SUM(( (!\ROM1|memROM~0_combout\ & ((!\MUX1|saida_MUX[0]~0_combout\ & (!\ROM1|memROM~4_combout\)) # (\MUX1|saida_MUX[0]~0_combout\ & ((!\RAM1|ram~2066_combout\))))) # (\ROM1|memROM~0_combout\ & (((!\RAM1|ram~2066_combout\)))) ) + ( 
-- \REGA|DOUT\(0) ) + ( \ULA1|Add1~34_cout\ ))
-- \ULA1|Add1~2\ = CARRY(( (!\ROM1|memROM~0_combout\ & ((!\MUX1|saida_MUX[0]~0_combout\ & (!\ROM1|memROM~4_combout\)) # (\MUX1|saida_MUX[0]~0_combout\ & ((!\RAM1|ram~2066_combout\))))) # (\ROM1|memROM~0_combout\ & (((!\RAM1|ram~2066_combout\)))) ) + ( 
-- \REGA|DOUT\(0) ) + ( \ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111011110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM1|ALT_INV_ram~2066_combout\,
	dataf => \REGA|ALT_INV_DOUT\(0),
	cin => \ULA1|Add1~34_cout\,
	sumout => \ULA1|Add1~1_sumout\,
	cout => \ULA1|Add1~2\);

-- Location: LABCELL_X19_Y1_N45
\ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~0_combout\ = ( \RAM1|ram~2066_combout\ & ( (!\decoderInstru1|saida[4]~2_combout\ & (((\ULA1|Add1~1_sumout\)))) # (\decoderInstru1|saida[4]~2_combout\ & (((\ROM1|memROM~4_combout\)) # (\MUX1|saida_MUX[0]~1_combout\))) ) ) # ( 
-- !\RAM1|ram~2066_combout\ & ( (!\decoderInstru1|saida[4]~2_combout\ & (((\ULA1|Add1~1_sumout\)))) # (\decoderInstru1|saida[4]~2_combout\ & (!\MUX1|saida_MUX[0]~1_combout\ & (\ROM1|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000010011110111110001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datab => \decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ULA1|ALT_INV_Add1~1_sumout\,
	dataf => \RAM1|ALT_INV_ram~2066_combout\,
	combout => \ULA1|saida[0]~0_combout\);

-- Location: FF_X20_Y1_N4
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
	sload => \decoderInstru1|Equal6~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(0));

-- Location: LABCELL_X19_Y1_N0
\RAM1|ram~2075\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~2075_combout\ = ( !\PC|DOUT[1]~DUPLICATE_q\ & ( (\PC|DOUT[2]~DUPLICATE_q\ & (!\PC|DOUT[3]~DUPLICATE_q\ & \PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \RAM1|ram~2075_combout\);

-- Location: FF_X18_Y1_N2
\RAM1|ram~2057\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~2075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2057_q\);

-- Location: MLABCELL_X18_Y1_N0
\RAM1|ram~2066\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~2066_combout\ = ( \RAM1|ram~2065_combout\ & ( (\ROM1|memROM~4_combout\ & (\ROM1|memROM~8_combout\ & (\ROM1|memROM~5_combout\ & \RAM1|ram~2057_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~2057_q\,
	dataf => \RAM1|ALT_INV_ram~2065_combout\,
	combout => \RAM1|ram~2066_combout\);

-- Location: LABCELL_X17_Y1_N33
\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( (!\MUX1|saida_MUX[0]~0_combout\ & ((!\ROM1|memROM~0_combout\ & (\ROM1|memROM~5_combout\)) # (\ROM1|memROM~0_combout\ & ((\RAM1|ram~2067_combout\))))) # (\MUX1|saida_MUX[0]~0_combout\ & (((\RAM1|ram~2067_combout\)))) ) + ( 
-- \REGA|DOUT\(1) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( (!\MUX1|saida_MUX[0]~0_combout\ & ((!\ROM1|memROM~0_combout\ & (\ROM1|memROM~5_combout\)) # (\ROM1|memROM~0_combout\ & ((\RAM1|ram~2067_combout\))))) # (\MUX1|saida_MUX[0]~0_combout\ & (((\RAM1|ram~2067_combout\)))) ) + ( 
-- \REGA|DOUT\(1) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000100001111111",
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

-- Location: LABCELL_X20_Y1_N21
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

-- Location: MLABCELL_X18_Y1_N18
\ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~5_sumout\ = SUM(( (!\ROM1|memROM~0_combout\ & ((!\MUX1|saida_MUX[0]~0_combout\ & (!\ROM1|memROM~5_combout\)) # (\MUX1|saida_MUX[0]~0_combout\ & ((!\RAM1|ram~2067_combout\))))) # (\ROM1|memROM~0_combout\ & (((!\RAM1|ram~2067_combout\)))) ) + ( 
-- \REGA|DOUT\(1) ) + ( \ULA1|Add1~2\ ))
-- \ULA1|Add1~6\ = CARRY(( (!\ROM1|memROM~0_combout\ & ((!\MUX1|saida_MUX[0]~0_combout\ & (!\ROM1|memROM~5_combout\)) # (\MUX1|saida_MUX[0]~0_combout\ & ((!\RAM1|ram~2067_combout\))))) # (\ROM1|memROM~0_combout\ & (((!\RAM1|ram~2067_combout\)))) ) + ( 
-- \REGA|DOUT\(1) ) + ( \ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111011110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~2067_combout\,
	dataf => \REGA|ALT_INV_DOUT\(1),
	cin => \ULA1|Add1~2\,
	sumout => \ULA1|Add1~5_sumout\,
	cout => \ULA1|Add1~6\);

-- Location: LABCELL_X19_Y1_N42
\ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~1_combout\ = ( \ULA1|Add1~5_sumout\ & ( (!\decoderInstru1|saida[4]~2_combout\) # ((!\MUX1|saida_MUX[0]~1_combout\ & (\ROM1|memROM~5_combout\)) # (\MUX1|saida_MUX[0]~1_combout\ & ((\RAM1|ram~2067_combout\)))) ) ) # ( !\ULA1|Add1~5_sumout\ & 
-- ( (\decoderInstru1|saida[4]~2_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\ & (\ROM1|memROM~5_combout\)) # (\MUX1|saida_MUX[0]~1_combout\ & ((\RAM1|ram~2067_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datab => \decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~2067_combout\,
	dataf => \ULA1|ALT_INV_Add1~5_sumout\,
	combout => \ULA1|saida[1]~1_combout\);

-- Location: FF_X20_Y1_N22
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
	sload => \decoderInstru1|Equal6~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(1));

-- Location: FF_X18_Y1_N47
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

-- Location: MLABCELL_X18_Y1_N45
\RAM1|ram~2067\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~2067_combout\ = ( \ROM1|memROM~5_combout\ & ( (\RAM1|ram~2065_combout\ & (\ROM1|memROM~8_combout\ & (\ROM1|memROM~4_combout\ & \RAM1|ram~2058_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~2065_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM1|ALT_INV_ram~2058_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~2067_combout\);

-- Location: LABCELL_X17_Y1_N36
\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( (!\MUX1|saida_MUX[0]~0_combout\ & ((!\ROM1|memROM~0_combout\ & (!\ROM1|memROM~6_combout\)) # (\ROM1|memROM~0_combout\ & ((\RAM1|ram~2068_combout\))))) # (\MUX1|saida_MUX[0]~0_combout\ & (((\RAM1|ram~2068_combout\)))) ) + ( 
-- \REGA|DOUT\(2) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( (!\MUX1|saida_MUX[0]~0_combout\ & ((!\ROM1|memROM~0_combout\ & (!\ROM1|memROM~6_combout\)) # (\ROM1|memROM~0_combout\ & ((\RAM1|ram~2068_combout\))))) # (\MUX1|saida_MUX[0]~0_combout\ & (((\RAM1|ram~2068_combout\)))) ) + ( 
-- \REGA|DOUT\(2) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000000011110111",
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

-- Location: LABCELL_X17_Y1_N0
\REGA|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGA|DOUT[2]~feeder_combout\ = \ULA1|Add0~9_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA1|ALT_INV_Add0~9_sumout\,
	combout => \REGA|DOUT[2]~feeder_combout\);

-- Location: MLABCELL_X18_Y1_N21
\ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~9_sumout\ = SUM(( (!\ROM1|memROM~0_combout\ & ((!\MUX1|saida_MUX[0]~0_combout\ & (\ROM1|memROM~6_combout\)) # (\MUX1|saida_MUX[0]~0_combout\ & ((!\RAM1|ram~2068_combout\))))) # (\ROM1|memROM~0_combout\ & (((!\RAM1|ram~2068_combout\)))) ) + ( 
-- \REGA|DOUT\(2) ) + ( \ULA1|Add1~6\ ))
-- \ULA1|Add1~10\ = CARRY(( (!\ROM1|memROM~0_combout\ & ((!\MUX1|saida_MUX[0]~0_combout\ & (\ROM1|memROM~6_combout\)) # (\MUX1|saida_MUX[0]~0_combout\ & ((!\RAM1|ram~2068_combout\))))) # (\ROM1|memROM~0_combout\ & (((!\RAM1|ram~2068_combout\)))) ) + ( 
-- \REGA|DOUT\(2) ) + ( \ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000111111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM1|ALT_INV_ram~2068_combout\,
	dataf => \REGA|ALT_INV_DOUT\(2),
	cin => \ULA1|Add1~6\,
	sumout => \ULA1|Add1~9_sumout\,
	cout => \ULA1|Add1~10\);

-- Location: LABCELL_X17_Y1_N3
\ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~2_combout\ = ( \ULA1|Add1~9_sumout\ & ( (!\decoderInstru1|saida[4]~2_combout\) # ((!\MUX1|saida_MUX[0]~1_combout\ & (!\ROM1|memROM~6_combout\)) # (\MUX1|saida_MUX[0]~1_combout\ & ((\RAM1|ram~2068_combout\)))) ) ) # ( !\ULA1|Add1~9_sumout\ & 
-- ( (\decoderInstru1|saida[4]~2_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\ & (!\ROM1|memROM~6_combout\)) # (\MUX1|saida_MUX[0]~1_combout\ & ((\RAM1|ram~2068_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000011001000100000001111101110110011111110111011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datac => \RAM1|ALT_INV_ram~2068_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	dataf => \ULA1|ALT_INV_Add1~9_sumout\,
	combout => \ULA1|saida[2]~2_combout\);

-- Location: FF_X17_Y1_N1
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
	sload => \decoderInstru1|Equal6~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(2));

-- Location: FF_X18_Y1_N44
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

-- Location: MLABCELL_X18_Y1_N42
\RAM1|ram~2068\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~2068_combout\ = ( \ROM1|memROM~5_combout\ & ( (\RAM1|ram~2065_combout\ & (\ROM1|memROM~8_combout\ & (\ROM1|memROM~4_combout\ & \RAM1|ram~2059_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~2065_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM1|ALT_INV_ram~2059_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~2068_combout\);

-- Location: MLABCELL_X18_Y1_N24
\ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~13_sumout\ = SUM(( (!\ROM1|memROM~0_combout\ & ((!\MUX1|saida_MUX[0]~0_combout\ & (!\ROM1|memROM~7_combout\)) # (\MUX1|saida_MUX[0]~0_combout\ & ((!\RAM1|ram~2069_combout\))))) # (\ROM1|memROM~0_combout\ & (((!\RAM1|ram~2069_combout\)))) ) + ( 
-- \REGA|DOUT[3]~DUPLICATE_q\ ) + ( \ULA1|Add1~10\ ))
-- \ULA1|Add1~14\ = CARRY(( (!\ROM1|memROM~0_combout\ & ((!\MUX1|saida_MUX[0]~0_combout\ & (!\ROM1|memROM~7_combout\)) # (\MUX1|saida_MUX[0]~0_combout\ & ((!\RAM1|ram~2069_combout\))))) # (\ROM1|memROM~0_combout\ & (((!\RAM1|ram~2069_combout\)))) ) + ( 
-- \REGA|DOUT[3]~DUPLICATE_q\ ) + ( \ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111011110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_ram~2069_combout\,
	dataf => \REGA|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \ULA1|Add1~10\,
	sumout => \ULA1|Add1~13_sumout\,
	cout => \ULA1|Add1~14\);

-- Location: LABCELL_X17_Y1_N21
\ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~3_combout\ = ( \ULA1|Add1~13_sumout\ & ( (!\decoderInstru1|saida[4]~2_combout\) # ((!\MUX1|saida_MUX[0]~1_combout\ & ((\ROM1|memROM~7_combout\))) # (\MUX1|saida_MUX[0]~1_combout\ & (\RAM1|ram~2069_combout\))) ) ) # ( !\ULA1|Add1~13_sumout\ 
-- & ( (\decoderInstru1|saida[4]~2_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\ & ((\ROM1|memROM~7_combout\))) # (\MUX1|saida_MUX[0]~1_combout\ & (\RAM1|ram~2069_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000110001000111001111110111011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~2069_combout\,
	datab => \decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	dataf => \ULA1|ALT_INV_Add1~13_sumout\,
	combout => \ULA1|saida[3]~3_combout\);

-- Location: FF_X17_Y1_N20
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
	sload => \decoderInstru1|Equal6~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(3));

-- Location: LABCELL_X17_Y1_N39
\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( (!\MUX1|saida_MUX[0]~0_combout\ & ((!\ROM1|memROM~0_combout\ & (\ROM1|memROM~7_combout\)) # (\ROM1|memROM~0_combout\ & ((\RAM1|ram~2069_combout\))))) # (\MUX1|saida_MUX[0]~0_combout\ & (((\RAM1|ram~2069_combout\)))) ) + ( 
-- \REGA|DOUT\(3) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( (!\MUX1|saida_MUX[0]~0_combout\ & ((!\ROM1|memROM~0_combout\ & (\ROM1|memROM~7_combout\)) # (\ROM1|memROM~0_combout\ & ((\RAM1|ram~2069_combout\))))) # (\MUX1|saida_MUX[0]~0_combout\ & (((\RAM1|ram~2069_combout\)))) ) + ( 
-- \REGA|DOUT\(3) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000100001111111",
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

-- Location: LABCELL_X17_Y1_N18
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

-- Location: FF_X17_Y1_N19
\REGA|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT[3]~feeder_combout\,
	asdata => \ULA1|saida[3]~3_combout\,
	sload => \decoderInstru1|Equal6~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[3]~DUPLICATE_q\);

-- Location: FF_X18_Y1_N5
\RAM1|ram~2060\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~2075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2060_q\);

-- Location: MLABCELL_X18_Y1_N3
\RAM1|ram~2069\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~2069_combout\ = ( \ROM1|memROM~5_combout\ & ( (\ROM1|memROM~4_combout\ & (\ROM1|memROM~8_combout\ & (\RAM1|ram~2065_combout\ & \RAM1|ram~2060_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \RAM1|ALT_INV_ram~2065_combout\,
	datad => \RAM1|ALT_INV_ram~2060_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~2069_combout\);

-- Location: LABCELL_X17_Y1_N42
\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( \REGA|DOUT[4]~DUPLICATE_q\ ) + ( (\ROM1|memROM~8_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\) # (\RAM1|ram~2070_combout\))) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( \REGA|DOUT[4]~DUPLICATE_q\ ) + ( (\ROM1|memROM~8_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\) # (\RAM1|ram~2070_combout\))) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110111001101110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \RAM1|ALT_INV_ram~2070_combout\,
	datad => \REGA|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

-- Location: LABCELL_X17_Y1_N54
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

-- Location: FF_X17_Y1_N56
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
	sload => \decoderInstru1|Equal6~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(4));

-- Location: FF_X19_Y1_N2
\RAM1|ram~2061\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~2075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2061_q\);

-- Location: LABCELL_X19_Y1_N54
\RAM1|ram~2070\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~2070_combout\ = ( \PC|DOUT[3]~DUPLICATE_q\ & ( (!\PC|DOUT[0]~DUPLICATE_q\ & (!\PC|DOUT[2]~DUPLICATE_q\ & (\RAM1|ram~2061_q\ & \PC|DOUT\(1)))) ) ) # ( !\PC|DOUT[3]~DUPLICATE_q\ & ( (\PC|DOUT[2]~DUPLICATE_q\ & (\RAM1|ram~2061_q\ & 
-- (!\PC|DOUT[0]~DUPLICATE_q\ $ (!\PC|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000000010000001000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \RAM1|ALT_INV_ram~2061_q\,
	datad => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \RAM1|ram~2070_combout\);

-- Location: LABCELL_X19_Y1_N3
\RAM1|ram~2074\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~2074_combout\ = ( \RAM1|ram~2070_combout\ & ( \ROM1|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \RAM1|ALT_INV_ram~2070_combout\,
	combout => \RAM1|ram~2074_combout\);

-- Location: MLABCELL_X18_Y1_N27
\ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~17_sumout\ = SUM(( (!\ROM1|memROM~0_combout\ & ((!\MUX1|saida_MUX[0]~0_combout\ & (!\ROM1|memROM~8_combout\)) # (\MUX1|saida_MUX[0]~0_combout\ & ((!\RAM1|ram~2074_combout\))))) # (\ROM1|memROM~0_combout\ & (((!\RAM1|ram~2074_combout\)))) ) + ( 
-- \REGA|DOUT[4]~DUPLICATE_q\ ) + ( \ULA1|Add1~14\ ))
-- \ULA1|Add1~18\ = CARRY(( (!\ROM1|memROM~0_combout\ & ((!\MUX1|saida_MUX[0]~0_combout\ & (!\ROM1|memROM~8_combout\)) # (\MUX1|saida_MUX[0]~0_combout\ & ((!\RAM1|ram~2074_combout\))))) # (\ROM1|memROM~0_combout\ & (((!\RAM1|ram~2074_combout\)))) ) + ( 
-- \REGA|DOUT[4]~DUPLICATE_q\ ) + ( \ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111011110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \RAM1|ALT_INV_ram~2074_combout\,
	dataf => \REGA|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \ULA1|Add1~14\,
	sumout => \ULA1|Add1~17_sumout\,
	cout => \ULA1|Add1~18\);

-- Location: LABCELL_X17_Y1_N15
\ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~5_combout\ = ( \ULA1|Add1~21_sumout\ & ( (!\decoderInstru1|saida[4]~2_combout\) # ((\ROM1|memROM~8_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\) # (\RAM1|ram~2071_combout\)))) ) ) # ( !\ULA1|Add1~21_sumout\ & ( (\ROM1|memROM~8_combout\ & 
-- (\decoderInstru1|saida[4]~2_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\) # (\RAM1|ram~2071_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000001000001010000000111110101111100011111010111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \RAM1|ALT_INV_ram~2071_combout\,
	datac => \decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	dataf => \ULA1|ALT_INV_Add1~21_sumout\,
	combout => \ULA1|saida[5]~5_combout\);

-- Location: FF_X17_Y1_N14
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
	sload => \decoderInstru1|Equal6~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(5));

-- Location: LABCELL_X17_Y1_N45
\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( (\ROM1|memROM~8_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\) # (\RAM1|ram~2071_combout\))) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( (\ROM1|memROM~8_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\) # (\RAM1|ram~2071_combout\))) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \RAM1|ALT_INV_ram~2071_combout\,
	dataf => \REGA|ALT_INV_DOUT\(5),
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

-- Location: LABCELL_X17_Y1_N12
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

-- Location: FF_X17_Y1_N13
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
	sload => \decoderInstru1|Equal6~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[5]~DUPLICATE_q\);

-- Location: FF_X19_Y1_N11
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

-- Location: LABCELL_X19_Y1_N9
\RAM1|ram~2071\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~2071_combout\ = ( \ROM1|memROM~5_combout\ & ( (\ROM1|memROM~4_combout\ & (\RAM1|ram~2065_combout\ & \RAM1|ram~2062_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \RAM1|ALT_INV_ram~2065_combout\,
	datad => \RAM1|ALT_INV_ram~2062_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~2071_combout\);

-- Location: MLABCELL_X18_Y1_N30
\ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~21_sumout\ = SUM(( \REGA|DOUT\(5) ) + ( (!\ROM1|memROM~8_combout\) # ((\MUX1|saida_MUX[0]~1_combout\ & !\RAM1|ram~2071_combout\)) ) + ( \ULA1|Add1~18\ ))
-- \ULA1|Add1~22\ = CARRY(( \REGA|DOUT\(5) ) + ( (!\ROM1|memROM~8_combout\) # ((\MUX1|saida_MUX[0]~1_combout\ & !\RAM1|ram~2071_combout\)) ) + ( \ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001010100010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datac => \RAM1|ALT_INV_ram~2071_combout\,
	datad => \REGA|ALT_INV_DOUT\(5),
	cin => \ULA1|Add1~18\,
	sumout => \ULA1|Add1~21_sumout\,
	cout => \ULA1|Add1~22\);

-- Location: FF_X18_Y1_N50
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

-- Location: LABCELL_X19_Y1_N12
\FLAG|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG|DOUT~1_combout\ = ( !\ROM1|memROM~0_combout\ & ( (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~2_combout\ & \ROM1|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \FLAG|DOUT~1_combout\);

-- Location: MLABCELL_X18_Y1_N54
\FLAG|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG|DOUT~2_combout\ = ( \ULA1|Add1~9_sumout\ & ( \ULA1|Add1~13_sumout\ & ( (\FLAG|DOUT~q\ & !\FLAG|DOUT~1_combout\) ) ) ) # ( !\ULA1|Add1~9_sumout\ & ( \ULA1|Add1~13_sumout\ & ( (\FLAG|DOUT~q\ & !\FLAG|DOUT~1_combout\) ) ) ) # ( \ULA1|Add1~9_sumout\ & ( 
-- !\ULA1|Add1~13_sumout\ & ( (\FLAG|DOUT~q\ & !\FLAG|DOUT~1_combout\) ) ) ) # ( !\ULA1|Add1~9_sumout\ & ( !\ULA1|Add1~13_sumout\ & ( (!\FLAG|DOUT~1_combout\ & (\FLAG|DOUT~q\)) # (\FLAG|DOUT~1_combout\ & (((!\ULA1|Add1~5_sumout\ & !\ULA1|Add1~1_sumout\)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FLAG|ALT_INV_DOUT~q\,
	datab => \FLAG|ALT_INV_DOUT~1_combout\,
	datac => \ULA1|ALT_INV_Add1~5_sumout\,
	datad => \ULA1|ALT_INV_Add1~1_sumout\,
	datae => \ULA1|ALT_INV_Add1~9_sumout\,
	dataf => \ULA1|ALT_INV_Add1~13_sumout\,
	combout => \FLAG|DOUT~2_combout\);

-- Location: LABCELL_X17_Y1_N27
\ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~7_combout\ = ( \ULA1|Add1~29_sumout\ & ( (!\decoderInstru1|saida[4]~2_combout\) # ((\ROM1|memROM~8_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\) # (\RAM1|ram~2073_combout\)))) ) ) # ( !\ULA1|Add1~29_sumout\ & ( (\ROM1|memROM~8_combout\ & 
-- (\decoderInstru1|saida[4]~2_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\) # (\RAM1|ram~2073_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000001000001010000000111110101111100011111010111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \RAM1|ALT_INV_ram~2073_combout\,
	datac => \decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	dataf => \ULA1|ALT_INV_Add1~29_sumout\,
	combout => \ULA1|saida[7]~7_combout\);

-- Location: FF_X17_Y1_N26
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
	sload => \decoderInstru1|Equal6~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(7));

-- Location: LABCELL_X17_Y1_N48
\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( (\ROM1|memROM~8_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\) # (\RAM1|ram~2072_combout\))) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( (\ROM1|memROM~8_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\) # (\RAM1|ram~2072_combout\))) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \RAM1|ALT_INV_ram~2072_combout\,
	dataf => \REGA|ALT_INV_DOUT\(6),
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

-- Location: LABCELL_X17_Y1_N6
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

-- Location: MLABCELL_X18_Y1_N33
\ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~25_sumout\ = SUM(( \REGA|DOUT\(6) ) + ( (!\ROM1|memROM~8_combout\) # ((\MUX1|saida_MUX[0]~1_combout\ & !\RAM1|ram~2072_combout\)) ) + ( \ULA1|Add1~22\ ))
-- \ULA1|Add1~26\ = CARRY(( \REGA|DOUT\(6) ) + ( (!\ROM1|memROM~8_combout\) # ((\MUX1|saida_MUX[0]~1_combout\ & !\RAM1|ram~2072_combout\)) ) + ( \ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001010100010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datac => \RAM1|ALT_INV_ram~2072_combout\,
	datad => \REGA|ALT_INV_DOUT\(6),
	cin => \ULA1|Add1~22\,
	sumout => \ULA1|Add1~25_sumout\,
	cout => \ULA1|Add1~26\);

-- Location: LABCELL_X17_Y1_N9
\ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~6_combout\ = ( \ULA1|Add1~25_sumout\ & ( (!\decoderInstru1|saida[4]~2_combout\) # ((\ROM1|memROM~8_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\) # (\RAM1|ram~2072_combout\)))) ) ) # ( !\ULA1|Add1~25_sumout\ & ( 
-- (\decoderInstru1|saida[4]~2_combout\ & (\ROM1|memROM~8_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\) # (\RAM1|ram~2072_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000001000000110000000111001111110011011100111111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~2072_combout\,
	datab => \decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	dataf => \ULA1|ALT_INV_Add1~25_sumout\,
	combout => \ULA1|saida[6]~6_combout\);

-- Location: FF_X17_Y1_N8
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
	sload => \decoderInstru1|Equal6~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(6));

-- Location: FF_X18_Y1_N58
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

-- Location: MLABCELL_X18_Y1_N6
\RAM1|ram~2072\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~2072_combout\ = ( \RAM1|ram~2063_q\ & ( (\ROM1|memROM~5_combout\ & (\RAM1|ram~2065_combout\ & \ROM1|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \RAM1|ALT_INV_ram~2065_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM1|ALT_INV_ram~2063_q\,
	combout => \RAM1|ram~2072_combout\);

-- Location: LABCELL_X17_Y1_N51
\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( (\ROM1|memROM~8_combout\ & ((!\MUX1|saida_MUX[0]~1_combout\) # (\RAM1|ram~2073_combout\))) ) + ( \REGA|DOUT\(7) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \RAM1|ALT_INV_ram~2073_combout\,
	dataf => \REGA|ALT_INV_DOUT\(7),
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\);

-- Location: LABCELL_X17_Y1_N24
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

-- Location: FF_X17_Y1_N25
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
	sload => \decoderInstru1|Equal6~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[7]~DUPLICATE_q\);

-- Location: FF_X18_Y1_N8
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

-- Location: LABCELL_X19_Y1_N27
\RAM1|ram~2073\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~2073_combout\ = ( \RAM1|ram~2064_q\ & ( (\ROM1|memROM~4_combout\ & (\ROM1|memROM~5_combout\ & \RAM1|ram~2065_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~2065_combout\,
	dataf => \RAM1|ALT_INV_ram~2064_q\,
	combout => \RAM1|ram~2073_combout\);

-- Location: MLABCELL_X18_Y1_N36
\ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~29_sumout\ = SUM(( \REGA|DOUT[7]~DUPLICATE_q\ ) + ( (!\ROM1|memROM~8_combout\) # ((\MUX1|saida_MUX[0]~1_combout\ & !\RAM1|ram~2073_combout\)) ) + ( \ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001010100010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datac => \RAM1|ALT_INV_ram~2073_combout\,
	datad => \REGA|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \ULA1|Add1~26\,
	sumout => \ULA1|Add1~29_sumout\);

-- Location: MLABCELL_X18_Y1_N48
\FLAG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG|DOUT~0_combout\ = ( \ULA1|Add1~29_sumout\ & ( \ULA1|Add1~25_sumout\ & ( (\FLAG|DOUT~2_combout\ & !\FLAG|DOUT~1_combout\) ) ) ) # ( !\ULA1|Add1~29_sumout\ & ( \ULA1|Add1~25_sumout\ & ( (\FLAG|DOUT~2_combout\ & !\FLAG|DOUT~1_combout\) ) ) ) # ( 
-- \ULA1|Add1~29_sumout\ & ( !\ULA1|Add1~25_sumout\ & ( (\FLAG|DOUT~2_combout\ & !\FLAG|DOUT~1_combout\) ) ) ) # ( !\ULA1|Add1~29_sumout\ & ( !\ULA1|Add1~25_sumout\ & ( (\FLAG|DOUT~2_combout\ & ((!\FLAG|DOUT~1_combout\) # ((!\ULA1|Add1~17_sumout\ & 
-- !\ULA1|Add1~21_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~17_sumout\,
	datab => \ULA1|ALT_INV_Add1~21_sumout\,
	datac => \FLAG|ALT_INV_DOUT~2_combout\,
	datad => \FLAG|ALT_INV_DOUT~1_combout\,
	datae => \ULA1|ALT_INV_Add1~29_sumout\,
	dataf => \ULA1|ALT_INV_Add1~25_sumout\,
	combout => \FLAG|DOUT~0_combout\);

-- Location: FF_X18_Y1_N49
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

-- Location: LABCELL_X20_Y1_N18
\LOG_DESVIO|SelMuxPC~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOG_DESVIO|SelMuxPC~0_combout\ = ( \ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~3_combout\ & ((!\ROM1|memROM~0_combout\) # (\FLAG|DOUT~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000110000001000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \FLAG|ALT_INV_DOUT~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \LOG_DESVIO|SelMuxPC~0_combout\);

-- Location: FF_X19_Y1_N40
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \PC|DOUT[2]~feeder_combout\,
	asdata => \ROM1|memROM~6_wirecell_combout\,
	sload => \LOG_DESVIO|SelMuxPC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: LABCELL_X20_Y1_N33
\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

-- Location: LABCELL_X20_Y1_N36
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

-- Location: LABCELL_X19_Y1_N39
\PC|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[2]~feeder_combout\ = ( \incrementaPC|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \PC|DOUT[2]~feeder_combout\);

-- Location: FF_X19_Y1_N41
\PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \PC|DOUT[2]~feeder_combout\,
	asdata => \ROM1|memROM~6_wirecell_combout\,
	sload => \LOG_DESVIO|SelMuxPC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y1_N30
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \PC|DOUT[0]~DUPLICATE_q\ & ( (!\PC|DOUT[2]~DUPLICATE_q\ & (\PC|DOUT[1]~DUPLICATE_q\ & \PC|DOUT\(3))) # (\PC|DOUT[2]~DUPLICATE_q\ & (!\PC|DOUT[1]~DUPLICATE_q\ & !\PC|DOUT\(3))) ) ) # ( !\PC|DOUT[0]~DUPLICATE_q\ & ( 
-- (\PC|DOUT[1]~DUPLICATE_q\ & (!\PC|DOUT[2]~DUPLICATE_q\ $ (!\PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000110000000011000011000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~5_combout\);

-- Location: FF_X19_Y1_N58
\PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \PC|DOUT[1]~feeder_combout\,
	asdata => \ROM1|memROM~5_combout\,
	sload => \LOG_DESVIO|SelMuxPC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y1_N57
\PC|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[1]~feeder_combout\ = ( \incrementaPC|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \PC|DOUT[1]~feeder_combout\);

-- Location: FF_X19_Y1_N59
\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \PC|DOUT[1]~feeder_combout\,
	asdata => \ROM1|memROM~5_combout\,
	sload => \LOG_DESVIO|SelMuxPC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

-- Location: LABCELL_X19_Y1_N18
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \PC|DOUT[0]~DUPLICATE_q\ & ( (!\PC|DOUT\(1) & !\PC|DOUT\(3)) ) ) # ( !\PC|DOUT[0]~DUPLICATE_q\ & ( (!\PC|DOUT\(1) & (\PC|DOUT\(3) & \PC|DOUT\(2))) # (\PC|DOUT\(1) & (!\PC|DOUT\(3) $ (!\PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111100000000110011110011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~7_combout\);

-- Location: FF_X19_Y1_N22
\PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \PC|DOUT[3]~feeder_combout\,
	asdata => \ROM1|memROM~7_combout\,
	sload => \LOG_DESVIO|SelMuxPC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X20_Y1_N39
\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~14\ = CARRY(( \PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~13_sumout\,
	cout => \incrementaPC|Add0~14\);

-- Location: LABCELL_X19_Y1_N21
\PC|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[3]~feeder_combout\ = ( \incrementaPC|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~13_sumout\,
	combout => \PC|DOUT[3]~feeder_combout\);

-- Location: FF_X19_Y1_N23
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \PC|DOUT[3]~feeder_combout\,
	asdata => \ROM1|memROM~7_combout\,
	sload => \LOG_DESVIO|SelMuxPC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: FF_X19_Y1_N49
\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \PC|DOUT[0]~feeder_combout\,
	asdata => \ROM1|memROM~4_combout\,
	sload => \LOG_DESVIO|SelMuxPC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

-- Location: LABCELL_X19_Y1_N33
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \PC|DOUT[2]~DUPLICATE_q\ & ( !\PC|DOUT\(3) ) ) # ( !\PC|DOUT[2]~DUPLICATE_q\ & ( (!\PC|DOUT\(3) & (\PC|DOUT\(0) & !\PC|DOUT\(1))) # (\PC|DOUT\(3) & ((\PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001010101000010100101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~4_combout\);

-- Location: FF_X19_Y1_N50
\PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \PC|DOUT[0]~feeder_combout\,
	asdata => \ROM1|memROM~4_combout\,
	sload => \LOG_DESVIO|SelMuxPC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X20_Y1_N42
\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))
-- \incrementaPC|Add0~18\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(4),
	cin => \incrementaPC|Add0~14\,
	sumout => \incrementaPC|Add0~17_sumout\,
	cout => \incrementaPC|Add0~18\);

-- Location: LABCELL_X16_Y1_N21
\PC|DOUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[4]~feeder_combout\ = ( \incrementaPC|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \PC|DOUT[4]~feeder_combout\);

-- Location: FF_X16_Y1_N22
\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \PC|DOUT[4]~feeder_combout\,
	asdata => \ROM1|memROM~8_combout\,
	sload => \LOG_DESVIO|SelMuxPC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

-- Location: LABCELL_X20_Y1_N45
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

-- Location: LABCELL_X16_Y1_N0
\PC|DOUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[5]~feeder_combout\ = ( \incrementaPC|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \PC|DOUT[5]~feeder_combout\);

-- Location: FF_X16_Y1_N1
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \PC|DOUT[5]~feeder_combout\,
	asdata => \ROM1|memROM~8_combout\,
	sload => \LOG_DESVIO|SelMuxPC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: LABCELL_X20_Y1_N48
\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

-- Location: LABCELL_X16_Y1_N45
\PC|DOUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[6]~feeder_combout\ = ( \incrementaPC|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \PC|DOUT[6]~feeder_combout\);

-- Location: FF_X16_Y1_N46
\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \PC|DOUT[6]~feeder_combout\,
	asdata => \ROM1|memROM~8_combout\,
	sload => \LOG_DESVIO|SelMuxPC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

-- Location: FF_X16_Y1_N38
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \PC|DOUT[7]~feeder_combout\,
	asdata => \ROM1|memROM~8_combout\,
	sload => \LOG_DESVIO|SelMuxPC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

-- Location: LABCELL_X20_Y1_N51
\incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~29_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	cin => \incrementaPC|Add0~26\,
	sumout => \incrementaPC|Add0~29_sumout\);

-- Location: LABCELL_X16_Y1_N36
\PC|DOUT[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[7]~feeder_combout\ = ( \incrementaPC|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \PC|DOUT[7]~feeder_combout\);

-- Location: FF_X16_Y1_N37
\PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \PC|DOUT[7]~feeder_combout\,
	asdata => \ROM1|memROM~8_combout\,
	sload => \LOG_DESVIO|SelMuxPC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[7]~DUPLICATE_q\);

-- Location: FF_X17_Y1_N7
\REGA|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT[6]~feeder_combout\,
	asdata => \ULA1|saida[6]~6_combout\,
	sload => \decoderInstru1|Equal6~0_combout\,
	ena => \decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X20_Y1_N15
\decoderInstru1|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru1|saida~0_combout\ = ( \ROM1|memROM~3_combout\ ) # ( !\ROM1|memROM~3_combout\ & ( ((!\ROM1|memROM~2_combout\) # (\ROM1|memROM~1_combout\)) # (\ROM1|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101011111111111110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \decoderInstru1|saida~0_combout\);

-- Location: LABCELL_X20_Y1_N0
\decoderInstru1|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru1|saida~1_combout\ = (!\ROM1|memROM~3_combout\ & (\ROM1|memROM~2_combout\ & (\ROM1|memROM~0_combout\ & !\ROM1|memROM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \decoderInstru1|saida~1_combout\);

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

-- Location: LABCELL_X17_Y23_N3
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


