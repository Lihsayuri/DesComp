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

-- DATE "09/22/2022 11:34:04"

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

ENTITY 	Aula7 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	REGA_OUT : OUT std_logic_vector(7 DOWNTO 0);
	Palavra : OUT std_logic_vector(11 DOWNTO 0);
	EQUAL_FLAG : OUT std_logic;
	HabilitaRAM : OUT std_logic;
	MEM_ADDRESS : OUT std_logic_vector(5 DOWNTO 0);
	ADD_OUT : OUT std_logic_vector(7 DOWNTO 0)
	);
END Aula7;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- REGA_OUT[0]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[2]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[3]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[4]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[5]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[6]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[7]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[0]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[1]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[2]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[3]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[4]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[5]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[6]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[7]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[8]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[9]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[10]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[11]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EQUAL_FLAG	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HabilitaRAM	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[0]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[2]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[3]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[4]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[5]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[0]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[1]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[2]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[3]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[4]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[5]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[6]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[7]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Aula7 IS
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
SIGNAL ww_MEM_ADDRESS : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_ADD_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \processador|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~2\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~6\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida~4_combout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[2]~2_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~10\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[3]~3_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \processador|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida[4]~1_combout\ : std_logic;
SIGNAL \processador|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \processador|ULA1|saida[0]~1_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal8~0_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida[5]~2_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~2\ : std_logic;
SIGNAL \processador|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add1~2\ : std_logic;
SIGNAL \processador|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[1]~2_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~6\ : std_logic;
SIGNAL \processador|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add1~6\ : std_logic;
SIGNAL \processador|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[2]~3_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~10\ : std_logic;
SIGNAL \processador|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add1~10\ : std_logic;
SIGNAL \processador|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[3]~4_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~14\ : std_logic;
SIGNAL \processador|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add1~14\ : std_logic;
SIGNAL \processador|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[4]~5_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~18\ : std_logic;
SIGNAL \processador|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add1~18\ : std_logic;
SIGNAL \processador|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[5]~6_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~22\ : std_logic;
SIGNAL \processador|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add1~22\ : std_logic;
SIGNAL \processador|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[6]~7_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~26\ : std_logic;
SIGNAL \processador|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[7]~8_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~26\ : std_logic;
SIGNAL \processador|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \processador|FLAG|DOUT~q\ : std_logic;
SIGNAL \processador|FLAG|DOUT~0_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida~0_combout\ : std_logic;
SIGNAL \processador|FLAG|DOUT~1_combout\ : std_logic;
SIGNAL \processador|FLAG|DOUT~2_combout\ : std_logic;
SIGNAL \processador|FLAG|DOUT~DUPLICATE_q\ : std_logic;
SIGNAL \processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[1]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida~5_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~14\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[4]~4_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~18\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[5]~5_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~22\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[6]~6_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~26\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[7]~7_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~30\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[8]~8_combout\ : std_logic;
SIGNAL \processador|REGA|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|REGA|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|REGA|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal5~0_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida~3_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal3~0_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal4~0_combout\ : std_logic;
SIGNAL \processador|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \processador|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \processador|REG_RET|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \processador|LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\ : std_logic;
SIGNAL \processador|REG_RET|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \processador|FLAG|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_saida~5_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_saida~3_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \processador|ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \processador|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \processador|FLAG|ALT_INV_DOUT~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_saida~6_combout\ : std_logic;
SIGNAL \processador|FLAG|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \processador|FLAG|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_saida[0]~0_combout\ : std_logic;

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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\processador|LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\ <= NOT \processador|LOG_DESVIO|SelMuxPC[0]~0_combout\;
\processador|REG_RET|ALT_INV_DOUT\(0) <= NOT \processador|REG_RET|DOUT\(0);
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\processador|FLAG|ALT_INV_DOUT~q\ <= NOT \processador|FLAG|DOUT~q\;
\processador|decoderInstru1|ALT_INV_saida~5_combout\ <= NOT \processador|decoderInstru1|saida~5_combout\;
\processador|decoderInstru1|ALT_INV_saida~3_combout\ <= NOT \processador|decoderInstru1|saida~3_combout\;
\processador|decoderInstru1|ALT_INV_saida[4]~1_combout\ <= NOT \processador|decoderInstru1|saida[4]~1_combout\;
\processador|decoderInstru1|ALT_INV_Equal8~0_combout\ <= NOT \processador|decoderInstru1|Equal8~0_combout\;
\processador|decoderInstru1|ALT_INV_saida~0_combout\ <= NOT \processador|decoderInstru1|saida~0_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\processador|PC|ALT_INV_DOUT\(8) <= NOT \processador|PC|DOUT\(8);
\processador|PC|ALT_INV_DOUT\(7) <= NOT \processador|PC|DOUT\(7);
\processador|PC|ALT_INV_DOUT\(5) <= NOT \processador|PC|DOUT\(5);
\processador|PC|ALT_INV_DOUT\(3) <= NOT \processador|PC|DOUT\(3);
\processador|PC|ALT_INV_DOUT\(2) <= NOT \processador|PC|DOUT\(2);
\processador|PC|ALT_INV_DOUT\(1) <= NOT \processador|PC|DOUT\(1);
\processador|PC|ALT_INV_DOUT\(0) <= NOT \processador|PC|DOUT\(0);
\processador|ULA1|ALT_INV_Add1~29_sumout\ <= NOT \processador|ULA1|Add1~29_sumout\;
\processador|ULA1|ALT_INV_Add1~25_sumout\ <= NOT \processador|ULA1|Add1~25_sumout\;
\processador|ULA1|ALT_INV_Add1~21_sumout\ <= NOT \processador|ULA1|Add1~21_sumout\;
\processador|ULA1|ALT_INV_Add1~17_sumout\ <= NOT \processador|ULA1|Add1~17_sumout\;
\processador|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \processador|ULA1|Add1~13_sumout\;
\processador|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \processador|ULA1|Add1~9_sumout\;
\processador|ULA1|ALT_INV_Add1~5_sumout\ <= NOT \processador|ULA1|Add1~5_sumout\;
\processador|ULA1|ALT_INV_Add1~1_sumout\ <= NOT \processador|ULA1|Add1~1_sumout\;
\processador|incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \processador|incrementaPC|Add0~33_sumout\;
\processador|incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \processador|incrementaPC|Add0~29_sumout\;
\processador|incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \processador|incrementaPC|Add0~25_sumout\;
\processador|incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \processador|incrementaPC|Add0~21_sumout\;
\processador|incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \processador|incrementaPC|Add0~17_sumout\;
\processador|incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \processador|incrementaPC|Add0~13_sumout\;
\processador|incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \processador|incrementaPC|Add0~9_sumout\;
\processador|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \processador|incrementaPC|Add0~5_sumout\;
\processador|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \processador|incrementaPC|Add0~1_sumout\;
\processador|REGA|ALT_INV_DOUT\(7) <= NOT \processador|REGA|DOUT\(7);
\processador|REGA|ALT_INV_DOUT\(6) <= NOT \processador|REGA|DOUT\(6);
\processador|REGA|ALT_INV_DOUT\(5) <= NOT \processador|REGA|DOUT\(5);
\processador|REGA|ALT_INV_DOUT\(4) <= NOT \processador|REGA|DOUT\(4);
\processador|REGA|ALT_INV_DOUT\(3) <= NOT \processador|REGA|DOUT\(3);
\processador|REGA|ALT_INV_DOUT\(2) <= NOT \processador|REGA|DOUT\(2);
\processador|REGA|ALT_INV_DOUT\(1) <= NOT \processador|REGA|DOUT\(1);
\processador|REGA|ALT_INV_DOUT\(0) <= NOT \processador|REGA|DOUT\(0);
\processador|FLAG|ALT_INV_DOUT~DUPLICATE_q\ <= NOT \processador|FLAG|DOUT~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[6]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[4]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[3]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[2]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[1]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[0]~DUPLICATE_q\;
\processador|decoderInstru1|ALT_INV_saida~6_combout\ <= NOT \processador|decoderInstru1|saida~6_combout\;
\processador|FLAG|ALT_INV_DOUT~1_combout\ <= NOT \processador|FLAG|DOUT~1_combout\;
\processador|FLAG|ALT_INV_DOUT~0_combout\ <= NOT \processador|FLAG|DOUT~0_combout\;
\processador|ULA1|ALT_INV_saida[0]~0_combout\ <= NOT \processador|ULA1|saida[0]~0_combout\;
\processador|REG_RET|ALT_INV_DOUT\(8) <= NOT \processador|REG_RET|DOUT\(8);
\processador|REG_RET|ALT_INV_DOUT\(7) <= NOT \processador|REG_RET|DOUT\(7);
\processador|REG_RET|ALT_INV_DOUT\(6) <= NOT \processador|REG_RET|DOUT\(6);
\processador|REG_RET|ALT_INV_DOUT\(5) <= NOT \processador|REG_RET|DOUT\(5);
\processador|REG_RET|ALT_INV_DOUT\(4) <= NOT \processador|REG_RET|DOUT\(4);
\processador|REG_RET|ALT_INV_DOUT\(3) <= NOT \processador|REG_RET|DOUT\(3);
\processador|REG_RET|ALT_INV_DOUT\(2) <= NOT \processador|REG_RET|DOUT\(2);
\processador|REG_RET|ALT_INV_DOUT\(1) <= NOT \processador|REG_RET|DOUT\(1);

-- Location: IOOBUF_X50_Y45_N53
\ADD_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_ADD_OUT(0));

-- Location: IOOBUF_X54_Y14_N45
\ADD_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_ADD_OUT(1));

-- Location: IOOBUF_X54_Y21_N5
\ADD_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_ADD_OUT(2));

-- Location: IOOBUF_X51_Y0_N19
\ADD_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_ADD_OUT(3));

-- Location: IOOBUF_X38_Y45_N36
\ADD_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_ADD_OUT(4));

-- Location: IOOBUF_X43_Y45_N19
\ADD_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_ADD_OUT(5));

-- Location: IOOBUF_X32_Y45_N93
\ADD_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_ADD_OUT(6));

-- Location: IOOBUF_X14_Y45_N53
\ADD_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_ADD_OUT(7));

-- Location: IOOBUF_X18_Y0_N19
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

-- Location: IOOBUF_X19_Y0_N19
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

-- Location: IOOBUF_X19_Y0_N53
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

-- Location: IOOBUF_X19_Y0_N2
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
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X25_Y0_N19
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

-- Location: IOOBUF_X23_Y0_N59
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

-- Location: IOOBUF_X24_Y0_N53
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

-- Location: IOOBUF_X22_Y0_N19
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

-- Location: IOOBUF_X23_Y0_N76
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

-- Location: IOOBUF_X12_Y0_N2
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

-- Location: IOOBUF_X18_Y0_N2
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

-- Location: IOOBUF_X10_Y0_N76
\REGA_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_REGA_OUT(2));

-- Location: IOOBUF_X10_Y0_N42
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

-- Location: IOOBUF_X10_Y0_N59
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

-- Location: IOOBUF_X11_Y0_N19
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

-- Location: IOOBUF_X25_Y0_N53
\Palavra[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|Equal5~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(0));

-- Location: IOOBUF_X36_Y0_N2
\Palavra[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Palavra(1));

-- Location: IOOBUF_X18_Y0_N53
\Palavra[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|saida~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(2));

-- Location: IOOBUF_X11_Y0_N53
\Palavra[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|Equal8~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(3));

-- Location: IOOBUF_X12_Y0_N19
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

-- Location: IOOBUF_X18_Y0_N36
\Palavra[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|saida[5]~2_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(5));

-- Location: IOOBUF_X11_Y0_N2
\Palavra[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|ALT_INV_saida~3_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(6));

-- Location: IOOBUF_X23_Y0_N42
\Palavra[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|Equal3~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(7));

-- Location: IOOBUF_X22_Y0_N53
\Palavra[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|saida~4_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(8));

-- Location: IOOBUF_X24_Y0_N36
\Palavra[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|saida~5_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(9));

-- Location: IOOBUF_X23_Y0_N93
\Palavra[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|Equal4~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(10));

-- Location: IOOBUF_X22_Y0_N36
\Palavra[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|saida~4_combout\,
	devoe => ww_devoe,
	o => ww_Palavra(11));

-- Location: IOOBUF_X19_Y0_N36
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

-- Location: IOOBUF_X20_Y45_N36
\HabilitaRAM~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HabilitaRAM);

-- Location: IOOBUF_X14_Y0_N36
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

-- Location: IOOBUF_X14_Y0_N53
\MEM_ADDRESS[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|ALT_INV_memROM~5_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(1));

-- Location: IOOBUF_X16_Y0_N59
\MEM_ADDRESS[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|ALT_INV_memROM~6_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(2));

-- Location: IOOBUF_X16_Y0_N42
\MEM_ADDRESS[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|ALT_INV_memROM~7_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(3));

-- Location: IOOBUF_X16_Y0_N76
\MEM_ADDRESS[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~8_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(4));

-- Location: IOOBUF_X16_Y0_N93
\MEM_ADDRESS[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~8_combout\,
	devoe => ww_devoe,
	o => ww_MEM_ADDRESS(5));

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

-- Location: CLKCTRL_G4
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

-- Location: FF_X14_Y3_N55
\processador|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|MUX2|MUX_OUT[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(3));

-- Location: FF_X14_Y3_N59
\processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|MUX2|MUX_OUT[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(2));

-- Location: FF_X14_Y3_N17
\processador|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|MUX2|MUX_OUT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[1]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y3_N57
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \processador|PC|DOUT[0]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(2) & (!\processador|PC|DOUT[3]~DUPLICATE_q\ $ (!\processador|PC|DOUT[1]~DUPLICATE_q\))) # (\processador|PC|DOUT\(2) & (\processador|PC|DOUT[3]~DUPLICATE_q\ & 
-- \processador|PC|DOUT[1]~DUPLICATE_q\)) ) ) # ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(2) & (!\processador|PC|DOUT[3]~DUPLICATE_q\ $ (!\processador|PC|DOUT[1]~DUPLICATE_q\))) # (\processador|PC|DOUT\(2) & 
-- ((!\processador|PC|DOUT[1]~DUPLICATE_q\) # (\processador|PC|DOUT[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111000011001111111100001100001100110000110000110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(2),
	datac => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~6_combout\);

-- Location: LABCELL_X16_Y3_N30
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

-- Location: LABCELL_X16_Y3_N33
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

-- Location: LABCELL_X16_Y3_N36
\processador|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~9_sumout\ = SUM(( \processador|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~6\ ))
-- \processador|incrementaPC|Add0~10\ = CARRY(( \processador|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \processador|incrementaPC|Add0~6\,
	sumout => \processador|incrementaPC|Add0~9_sumout\,
	cout => \processador|incrementaPC|Add0~10\);

-- Location: MLABCELL_X13_Y3_N15
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \processador|PC|DOUT[2]~DUPLICATE_q\ & ( !\processador|PC|DOUT[1]~DUPLICATE_q\ $ (((!\processador|PC|DOUT[0]~DUPLICATE_q\ & !\processador|PC|DOUT[3]~DUPLICATE_q\))) ) ) # ( !\processador|PC|DOUT[2]~DUPLICATE_q\ & ( 
-- !\processador|PC|DOUT[0]~DUPLICATE_q\ $ (((!\processador|PC|DOUT[1]~DUPLICATE_q\ & !\processador|PC|DOUT[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101011110000010110101111000001011010101010100101101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~0_combout\);

-- Location: FF_X14_Y3_N13
\processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|MUX2|MUX_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(0));

-- Location: LABCELL_X14_Y3_N45
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \processador|PC|DOUT\(3) & ( \processador|PC|DOUT\(0) & ( \processador|PC|DOUT[2]~DUPLICATE_q\ ) ) ) # ( !\processador|PC|DOUT\(3) & ( \processador|PC|DOUT\(0) & ( (!\processador|PC|DOUT[1]~DUPLICATE_q\ & 
-- !\processador|PC|DOUT[2]~DUPLICATE_q\) ) ) ) # ( \processador|PC|DOUT\(3) & ( !\processador|PC|DOUT\(0) & ( !\processador|PC|DOUT[1]~DUPLICATE_q\ ) ) ) # ( !\processador|PC|DOUT\(3) & ( !\processador|PC|DOUT\(0) & ( (\processador|PC|DOUT[1]~DUPLICATE_q\ & 
-- !\processador|PC|DOUT[2]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000111100001111000011110000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \processador|PC|ALT_INV_DOUT\(3),
	dataf => \processador|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~3_combout\);

-- Location: LABCELL_X14_Y3_N18
\processador|decoderInstru1|saida~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida~4_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~0_combout\ & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \processador|decoderInstru1|saida~4_combout\);

-- Location: FF_X16_Y3_N37
\processador|REG_RET|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~9_sumout\,
	ena => \processador|decoderInstru1|saida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(2));

-- Location: LABCELL_X14_Y3_N57
\processador|MUX2|MUX_OUT[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[2]~2_combout\ = ( \processador|incrementaPC|Add0~9_sumout\ & ( (!\processador|decoderInstru1|saida~5_combout\ & ((!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\) # ((!\ROM1|memROM~6_combout\)))) # 
-- (\processador|decoderInstru1|saida~5_combout\ & (((\processador|REG_RET|DOUT\(2))))) ) ) # ( !\processador|incrementaPC|Add0~9_sumout\ & ( (!\processador|decoderInstru1|saida~5_combout\ & (\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & 
-- (!\ROM1|memROM~6_combout\))) # (\processador|decoderInstru1|saida~5_combout\ & (((\processador|REG_RET|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110101001000000111010110101000111111011010100011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~5_combout\,
	datab => \processador|LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \processador|REG_RET|ALT_INV_DOUT\(2),
	dataf => \processador|incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \processador|MUX2|MUX_OUT[2]~2_combout\);

-- Location: FF_X14_Y3_N58
\processador|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|MUX2|MUX_OUT[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y3_N39
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

-- Location: FF_X16_Y3_N40
\processador|REG_RET|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~13_sumout\,
	ena => \processador|decoderInstru1|saida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(3));

-- Location: LABCELL_X14_Y3_N9
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \processador|PC|DOUT\(3) & ( \processador|PC|DOUT[0]~DUPLICATE_q\ & ( !\processador|PC|DOUT[1]~DUPLICATE_q\ $ (\processador|PC|DOUT[2]~DUPLICATE_q\) ) ) ) # ( !\processador|PC|DOUT\(3) & ( \processador|PC|DOUT[0]~DUPLICATE_q\ & 
-- ( (!\processador|PC|DOUT[1]~DUPLICATE_q\) # (!\processador|PC|DOUT[2]~DUPLICATE_q\) ) ) ) # ( \processador|PC|DOUT\(3) & ( !\processador|PC|DOUT[0]~DUPLICATE_q\ ) ) # ( !\processador|PC|DOUT\(3) & ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( 
-- (!\processador|PC|DOUT[1]~DUPLICATE_q\ & \processador|PC|DOUT[2]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000111111111111111111111111111100001111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \processador|PC|ALT_INV_DOUT\(3),
	dataf => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~7_combout\);

-- Location: LABCELL_X14_Y3_N54
\processador|MUX2|MUX_OUT[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[3]~3_combout\ = ( \ROM1|memROM~7_combout\ & ( (!\processador|decoderInstru1|saida~5_combout\ & (!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & ((\processador|incrementaPC|Add0~13_sumout\)))) # 
-- (\processador|decoderInstru1|saida~5_combout\ & (((\processador|REG_RET|DOUT\(3))))) ) ) # ( !\ROM1|memROM~7_combout\ & ( (!\processador|decoderInstru1|saida~5_combout\ & (((\processador|incrementaPC|Add0~13_sumout\)) # 
-- (\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\))) # (\processador|decoderInstru1|saida~5_combout\ & (((\processador|REG_RET|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011110101111001001111010111100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~5_combout\,
	datab => \processador|LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datac => \processador|REG_RET|ALT_INV_DOUT\(3),
	datad => \processador|incrementaPC|ALT_INV_Add0~13_sumout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \processador|MUX2|MUX_OUT[3]~3_combout\);

-- Location: FF_X14_Y3_N56
\processador|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|MUX2|MUX_OUT[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y3_N24
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \processador|PC|DOUT[1]~DUPLICATE_q\ & ( (\processador|PC|DOUT[3]~DUPLICATE_q\) # (\processador|PC|DOUT[0]~DUPLICATE_q\) ) ) # ( !\processador|PC|DOUT[1]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[3]~DUPLICATE_q\ $ 
-- (!\processador|PC|DOUT\(2))) # (\processador|PC|DOUT[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111110011001111111111001100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~2_combout\);

-- Location: LABCELL_X14_Y3_N30
\processador|decoderInstru1|saida~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida~6_combout\ = ( \processador|PC|DOUT[0]~DUPLICATE_q\ & ( ((!\processador|PC|DOUT\(2)) # (\processador|PC|DOUT[3]~DUPLICATE_q\)) # (\processador|PC|DOUT[1]~DUPLICATE_q\) ) ) # ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( 
-- (!\processador|PC|DOUT[1]~DUPLICATE_q\) # (!\processador|PC|DOUT[3]~DUPLICATE_q\ $ (\processador|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011001111111111001100111111111111001111111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \processador|decoderInstru1|saida~6_combout\);

-- Location: LABCELL_X14_Y3_N39
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( !\processador|PC|DOUT\(2) & ( \processador|PC|DOUT[3]~DUPLICATE_q\ & ( (\processador|PC|DOUT[0]~DUPLICATE_q\ & \processador|PC|DOUT[1]~DUPLICATE_q\) ) ) ) # ( \processador|PC|DOUT\(2) & ( !\processador|PC|DOUT[3]~DUPLICATE_q\ & 
-- ( \processador|PC|DOUT[1]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM1|memROM~8_combout\);

-- Location: MLABCELL_X13_Y3_N54
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \processador|PC|DOUT[0]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[1]~DUPLICATE_q\) # (!\processador|PC|DOUT\(2) $ (\processador|PC|DOUT[3]~DUPLICATE_q\)) ) ) # ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( 
-- !\processador|PC|DOUT[1]~DUPLICATE_q\ $ (((!\processador|PC|DOUT\(2)) # (\processador|PC|DOUT[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000001111001111000000111111111100111100111111110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(2),
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~5_combout\);

-- Location: LABCELL_X14_Y3_N21
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \processador|PC|DOUT[0]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[3]~DUPLICATE_q\ & ((!\processador|PC|DOUT[1]~DUPLICATE_q\) # (\processador|PC|DOUT\(2)))) # (\processador|PC|DOUT[3]~DUPLICATE_q\ & 
-- (!\processador|PC|DOUT[1]~DUPLICATE_q\ $ (!\processador|PC|DOUT\(2)))) ) ) # ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[3]~DUPLICATE_q\ & (\processador|PC|DOUT[1]~DUPLICATE_q\)) # (\processador|PC|DOUT[3]~DUPLICATE_q\ & 
-- (!\processador|PC|DOUT[1]~DUPLICATE_q\ & \processador|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011010000010100101101010100101111110101010010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~4_combout\);

-- Location: LABCELL_X12_Y3_N30
\processador|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~1_sumout\ = SUM(( \processador|REGA|DOUT\(0) ) + ( ((!\ROM1|memROM~2_combout\) # (\ROM1|memROM~4_combout\)) # (\processador|decoderInstru1|saida~6_combout\) ) + ( !VCC ))
-- \processador|ULA1|Add0~2\ = CARRY(( \processador|REGA|DOUT\(0) ) + ( ((!\ROM1|memROM~2_combout\) # (\ROM1|memROM~4_combout\)) # (\processador|decoderInstru1|saida~6_combout\) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~6_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \processador|ULA1|Add0~1_sumout\,
	cout => \processador|ULA1|Add0~2\);

-- Location: MLABCELL_X13_Y3_N24
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

-- Location: MLABCELL_X13_Y3_N27
\processador|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~1_sumout\ = SUM(( (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~2_combout\ & !\processador|decoderInstru1|saida~6_combout\)) ) + ( \processador|REGA|DOUT\(0) ) + ( \processador|ULA1|Add1~34_cout\ ))
-- \processador|ULA1|Add1~2\ = CARRY(( (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~2_combout\ & !\processador|decoderInstru1|saida~6_combout\)) ) + ( \processador|REGA|DOUT\(0) ) + ( \processador|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \processador|decoderInstru1|ALT_INV_saida~6_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(0),
	cin => \processador|ULA1|Add1~34_cout\,
	sumout => \processador|ULA1|Add1~1_sumout\,
	cout => \processador|ULA1|Add1~2\);

-- Location: LABCELL_X12_Y3_N3
\processador|decoderInstru1|saida[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida[4]~1_combout\ = ( !\ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~2_combout\ $ (\ROM1|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \processador|decoderInstru1|saida[4]~1_combout\);

-- Location: MLABCELL_X13_Y3_N12
\processador|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[0]~0_combout\ = ( \ROM1|memROM~0_combout\ & ( (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\ & !\ROM1|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \processador|ULA1|saida[0]~0_combout\);

-- Location: MLABCELL_X13_Y3_N18
\processador|ULA1|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[0]~1_combout\ = ( \processador|ULA1|saida[0]~0_combout\ & ( ((\processador|ULA1|Add1~1_sumout\ & !\processador|decoderInstru1|saida[4]~1_combout\)) # (\ROM1|memROM~4_combout\) ) ) # ( !\processador|ULA1|saida[0]~0_combout\ & ( 
-- (\processador|ULA1|Add1~1_sumout\ & !\processador|decoderInstru1|saida[4]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000111111110101000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA1|ALT_INV_Add1~1_sumout\,
	datac => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \processador|ULA1|ALT_INV_saida[0]~0_combout\,
	combout => \processador|ULA1|saida[0]~1_combout\);

-- Location: LABCELL_X12_Y3_N12
\processador|decoderInstru1|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal8~0_combout\ = ( !\ROM1|memROM~1_combout\ & ( (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~0_combout\ & \ROM1|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \processador|decoderInstru1|Equal8~0_combout\);

-- Location: LABCELL_X12_Y3_N6
\processador|decoderInstru1|saida[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida[5]~2_combout\ = ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~0_combout\ $ (((\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111110000110000111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \processador|decoderInstru1|saida[5]~2_combout\);

-- Location: FF_X12_Y3_N31
\processador|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~1_sumout\,
	asdata => \processador|ULA1|saida[0]~1_combout\,
	sload => \processador|decoderInstru1|ALT_INV_Equal8~0_combout\,
	ena => \processador|decoderInstru1|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(0));

-- Location: LABCELL_X12_Y3_N33
\processador|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~5_sumout\ = SUM(( \processador|REGA|DOUT\(1) ) + ( ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~5_combout\)) # (\processador|decoderInstru1|saida~6_combout\) ) + ( \processador|ULA1|Add0~2\ ))
-- \processador|ULA1|Add0~6\ = CARRY(( \processador|REGA|DOUT\(1) ) + ( ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~5_combout\)) # (\processador|decoderInstru1|saida~6_combout\) ) + ( \processador|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~6_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(1),
	cin => \processador|ULA1|Add0~2\,
	sumout => \processador|ULA1|Add0~5_sumout\,
	cout => \processador|ULA1|Add0~6\);

-- Location: MLABCELL_X13_Y3_N30
\processador|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~5_sumout\ = SUM(( (\ROM1|memROM~2_combout\ & (!\processador|decoderInstru1|saida~6_combout\ & \ROM1|memROM~5_combout\)) ) + ( \processador|REGA|DOUT\(1) ) + ( \processador|ULA1|Add1~2\ ))
-- \processador|ULA1|Add1~6\ = CARRY(( (\ROM1|memROM~2_combout\ & (!\processador|decoderInstru1|saida~6_combout\ & \ROM1|memROM~5_combout\)) ) + ( \processador|REGA|DOUT\(1) ) + ( \processador|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \processador|decoderInstru1|ALT_INV_saida~6_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(1),
	cin => \processador|ULA1|Add1~2\,
	sumout => \processador|ULA1|Add1~5_sumout\,
	cout => \processador|ULA1|Add1~6\);

-- Location: LABCELL_X12_Y3_N27
\processador|ULA1|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[1]~2_combout\ = ( \processador|ULA1|Add1~5_sumout\ & ( (!\processador|decoderInstru1|saida[4]~1_combout\) # ((\processador|ULA1|saida[0]~0_combout\ & !\ROM1|memROM~5_combout\)) ) ) # ( !\processador|ULA1|Add1~5_sumout\ & ( 
-- (\processador|ULA1|saida[0]~0_combout\ & !\ROM1|memROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011111111001100001111111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ULA1|ALT_INV_saida[0]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \processador|ULA1|saida[1]~2_combout\);

-- Location: FF_X12_Y3_N34
\processador|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~5_sumout\,
	asdata => \processador|ULA1|saida[1]~2_combout\,
	sload => \processador|decoderInstru1|ALT_INV_Equal8~0_combout\,
	ena => \processador|decoderInstru1|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(1));

-- Location: LABCELL_X12_Y3_N36
\processador|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~9_sumout\ = SUM(( \processador|REGA|DOUT\(2) ) + ( ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~6_combout\)) # (\processador|decoderInstru1|saida~6_combout\) ) + ( \processador|ULA1|Add0~6\ ))
-- \processador|ULA1|Add0~10\ = CARRY(( \processador|REGA|DOUT\(2) ) + ( ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~6_combout\)) # (\processador|decoderInstru1|saida~6_combout\) ) + ( \processador|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~6_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(2),
	cin => \processador|ULA1|Add0~6\,
	sumout => \processador|ULA1|Add0~9_sumout\,
	cout => \processador|ULA1|Add0~10\);

-- Location: MLABCELL_X13_Y3_N33
\processador|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~9_sumout\ = SUM(( (!\processador|decoderInstru1|saida~6_combout\ & (\ROM1|memROM~2_combout\ & \ROM1|memROM~6_combout\)) ) + ( \processador|REGA|DOUT\(2) ) + ( \processador|ULA1|Add1~6\ ))
-- \processador|ULA1|Add1~10\ = CARRY(( (!\processador|decoderInstru1|saida~6_combout\ & (\ROM1|memROM~2_combout\ & \ROM1|memROM~6_combout\)) ) + ( \processador|REGA|DOUT\(2) ) + ( \processador|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~6_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(2),
	cin => \processador|ULA1|Add1~6\,
	sumout => \processador|ULA1|Add1~9_sumout\,
	cout => \processador|ULA1|Add1~10\);

-- Location: LABCELL_X12_Y3_N57
\processador|ULA1|saida[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[2]~3_combout\ = ( \processador|ULA1|Add1~9_sumout\ & ( (!\processador|decoderInstru1|saida[4]~1_combout\) # ((\processador|ULA1|saida[0]~0_combout\ & !\ROM1|memROM~6_combout\)) ) ) # ( !\processador|ULA1|Add1~9_sumout\ & ( 
-- (\processador|ULA1|saida[0]~0_combout\ & !\ROM1|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000010101111101010101010111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	datac => \processador|ULA1|ALT_INV_saida[0]~0_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \processador|ULA1|saida[2]~3_combout\);

-- Location: FF_X12_Y3_N37
\processador|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~9_sumout\,
	asdata => \processador|ULA1|saida[2]~3_combout\,
	sload => \processador|decoderInstru1|ALT_INV_Equal8~0_combout\,
	ena => \processador|decoderInstru1|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(2));

-- Location: LABCELL_X12_Y3_N39
\processador|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~13_sumout\ = SUM(( \processador|REGA|DOUT\(3) ) + ( ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~7_combout\)) # (\processador|decoderInstru1|saida~6_combout\) ) + ( \processador|ULA1|Add0~10\ ))
-- \processador|ULA1|Add0~14\ = CARRY(( \processador|REGA|DOUT\(3) ) + ( ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~7_combout\)) # (\processador|decoderInstru1|saida~6_combout\) ) + ( \processador|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~6_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(3),
	cin => \processador|ULA1|Add0~10\,
	sumout => \processador|ULA1|Add0~13_sumout\,
	cout => \processador|ULA1|Add0~14\);

-- Location: MLABCELL_X13_Y3_N36
\processador|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~13_sumout\ = SUM(( (!\processador|decoderInstru1|saida~6_combout\ & (\ROM1|memROM~2_combout\ & \ROM1|memROM~7_combout\)) ) + ( \processador|REGA|DOUT\(3) ) + ( \processador|ULA1|Add1~10\ ))
-- \processador|ULA1|Add1~14\ = CARRY(( (!\processador|decoderInstru1|saida~6_combout\ & (\ROM1|memROM~2_combout\ & \ROM1|memROM~7_combout\)) ) + ( \processador|REGA|DOUT\(3) ) + ( \processador|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~6_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(3),
	cin => \processador|ULA1|Add1~10\,
	sumout => \processador|ULA1|Add1~13_sumout\,
	cout => \processador|ULA1|Add1~14\);

-- Location: LABCELL_X12_Y3_N9
\processador|ULA1|saida[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[3]~4_combout\ = ( \processador|ULA1|Add1~13_sumout\ & ( (!\processador|decoderInstru1|saida[4]~1_combout\) # ((!\ROM1|memROM~7_combout\ & \processador|ULA1|saida[0]~0_combout\)) ) ) # ( !\processador|ULA1|Add1~13_sumout\ & ( 
-- (!\ROM1|memROM~7_combout\ & \processador|ULA1|saida[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101011111111000010101111111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \processador|ULA1|ALT_INV_saida[0]~0_combout\,
	datad => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \processador|ULA1|saida[3]~4_combout\);

-- Location: FF_X12_Y3_N40
\processador|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~13_sumout\,
	asdata => \processador|ULA1|saida[3]~4_combout\,
	sload => \processador|decoderInstru1|ALT_INV_Equal8~0_combout\,
	ena => \processador|decoderInstru1|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(3));

-- Location: LABCELL_X12_Y3_N42
\processador|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~17_sumout\ = SUM(( \processador|REGA|DOUT\(4) ) + ( ((!\ROM1|memROM~2_combout\) # (\ROM1|memROM~8_combout\)) # (\processador|decoderInstru1|saida~6_combout\) ) + ( \processador|ULA1|Add0~14\ ))
-- \processador|ULA1|Add0~18\ = CARRY(( \processador|REGA|DOUT\(4) ) + ( ((!\ROM1|memROM~2_combout\) # (\ROM1|memROM~8_combout\)) # (\processador|decoderInstru1|saida~6_combout\) ) + ( \processador|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~6_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(4),
	cin => \processador|ULA1|Add0~14\,
	sumout => \processador|ULA1|Add0~17_sumout\,
	cout => \processador|ULA1|Add0~18\);

-- Location: MLABCELL_X13_Y3_N39
\processador|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~17_sumout\ = SUM(( \processador|REGA|DOUT\(4) ) + ( (!\processador|decoderInstru1|saida~6_combout\ & (\ROM1|memROM~2_combout\ & !\ROM1|memROM~8_combout\)) ) + ( \processador|ULA1|Add1~14\ ))
-- \processador|ULA1|Add1~18\ = CARRY(( \processador|REGA|DOUT\(4) ) + ( (!\processador|decoderInstru1|saida~6_combout\ & (\ROM1|memROM~2_combout\ & !\ROM1|memROM~8_combout\)) ) + ( \processador|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110111111101111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~6_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(4),
	cin => \processador|ULA1|Add1~14\,
	sumout => \processador|ULA1|Add1~17_sumout\,
	cout => \processador|ULA1|Add1~18\);

-- Location: LABCELL_X12_Y3_N0
\processador|ULA1|saida[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[4]~5_combout\ = ( \processador|ULA1|Add1~17_sumout\ & ( (!\processador|decoderInstru1|saida[4]~1_combout\) # ((\processador|ULA1|saida[0]~0_combout\ & \ROM1|memROM~8_combout\)) ) ) # ( !\processador|ULA1|Add1~17_sumout\ & ( 
-- (\processador|ULA1|saida[0]~0_combout\ & \ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111110000111100111111000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ULA1|ALT_INV_saida[0]~0_combout\,
	datac => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \processador|ULA1|saida[4]~5_combout\);

-- Location: FF_X12_Y3_N43
\processador|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~17_sumout\,
	asdata => \processador|ULA1|saida[4]~5_combout\,
	sload => \processador|decoderInstru1|ALT_INV_Equal8~0_combout\,
	ena => \processador|decoderInstru1|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(4));

-- Location: LABCELL_X12_Y3_N45
\processador|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~21_sumout\ = SUM(( \processador|REGA|DOUT\(5) ) + ( ((!\ROM1|memROM~2_combout\) # (\ROM1|memROM~8_combout\)) # (\processador|decoderInstru1|saida~6_combout\) ) + ( \processador|ULA1|Add0~18\ ))
-- \processador|ULA1|Add0~22\ = CARRY(( \processador|REGA|DOUT\(5) ) + ( ((!\ROM1|memROM~2_combout\) # (\ROM1|memROM~8_combout\)) # (\processador|decoderInstru1|saida~6_combout\) ) + ( \processador|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~6_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(5),
	cin => \processador|ULA1|Add0~18\,
	sumout => \processador|ULA1|Add0~21_sumout\,
	cout => \processador|ULA1|Add0~22\);

-- Location: MLABCELL_X13_Y3_N42
\processador|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~21_sumout\ = SUM(( (!\processador|decoderInstru1|saida~6_combout\ & (\ROM1|memROM~2_combout\ & !\ROM1|memROM~8_combout\)) ) + ( \processador|REGA|DOUT\(5) ) + ( \processador|ULA1|Add1~18\ ))
-- \processador|ULA1|Add1~22\ = CARRY(( (!\processador|decoderInstru1|saida~6_combout\ & (\ROM1|memROM~2_combout\ & !\ROM1|memROM~8_combout\)) ) + ( \processador|REGA|DOUT\(5) ) + ( \processador|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~6_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(5),
	cin => \processador|ULA1|Add1~18\,
	sumout => \processador|ULA1|Add1~21_sumout\,
	cout => \processador|ULA1|Add1~22\);

-- Location: LABCELL_X12_Y3_N24
\processador|ULA1|saida[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[5]~6_combout\ = ( \processador|ULA1|Add1~21_sumout\ & ( (!\processador|decoderInstru1|saida[4]~1_combout\) # ((\processador|ULA1|saida[0]~0_combout\ & \ROM1|memROM~8_combout\)) ) ) # ( !\processador|ULA1|Add1~21_sumout\ & ( 
-- (\processador|ULA1|saida[0]~0_combout\ & \ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111111111000000111111111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ULA1|ALT_INV_saida[0]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \processador|ULA1|saida[5]~6_combout\);

-- Location: FF_X12_Y3_N46
\processador|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~21_sumout\,
	asdata => \processador|ULA1|saida[5]~6_combout\,
	sload => \processador|decoderInstru1|ALT_INV_Equal8~0_combout\,
	ena => \processador|decoderInstru1|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(5));

-- Location: LABCELL_X12_Y3_N48
\processador|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~25_sumout\ = SUM(( \processador|REGA|DOUT\(6) ) + ( (!\ROM1|memROM~0_combout\) # ((!\ROM1|memROM~2_combout\) # (\ROM1|memROM~3_combout\)) ) + ( \processador|ULA1|Add0~22\ ))
-- \processador|ULA1|Add0~26\ = CARRY(( \processador|REGA|DOUT\(6) ) + ( (!\ROM1|memROM~0_combout\) # ((!\ROM1|memROM~2_combout\) # (\ROM1|memROM~3_combout\)) ) + ( \processador|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(6),
	cin => \processador|ULA1|Add0~22\,
	sumout => \processador|ULA1|Add0~25_sumout\,
	cout => \processador|ULA1|Add0~26\);

-- Location: MLABCELL_X13_Y3_N45
\processador|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~25_sumout\ = SUM(( \processador|REGA|DOUT\(6) ) + ( (!\processador|decoderInstru1|saida~6_combout\ & \ROM1|memROM~2_combout\) ) + ( \processador|ULA1|Add1~22\ ))
-- \processador|ULA1|Add1~26\ = CARRY(( \processador|REGA|DOUT\(6) ) + ( (!\processador|decoderInstru1|saida~6_combout\ & \ROM1|memROM~2_combout\) ) + ( \processador|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~6_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(6),
	cin => \processador|ULA1|Add1~22\,
	sumout => \processador|ULA1|Add1~25_sumout\,
	cout => \processador|ULA1|Add1~26\);

-- Location: LABCELL_X12_Y3_N15
\processador|ULA1|saida[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[6]~7_combout\ = ( \processador|ULA1|Add1~25_sumout\ & ( !\processador|decoderInstru1|saida[4]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~25_sumout\,
	combout => \processador|ULA1|saida[6]~7_combout\);

-- Location: FF_X12_Y3_N49
\processador|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~25_sumout\,
	asdata => \processador|ULA1|saida[6]~7_combout\,
	sload => \processador|decoderInstru1|ALT_INV_Equal8~0_combout\,
	ena => \processador|decoderInstru1|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(6));

-- Location: LABCELL_X12_Y3_N51
\processador|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~29_sumout\ = SUM(( \processador|REGA|DOUT\(7) ) + ( (!\ROM1|memROM~0_combout\) # ((!\ROM1|memROM~2_combout\) # (\ROM1|memROM~3_combout\)) ) + ( \processador|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(7),
	cin => \processador|ULA1|Add0~26\,
	sumout => \processador|ULA1|Add0~29_sumout\);

-- Location: LABCELL_X12_Y3_N21
\processador|ULA1|saida[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[7]~8_combout\ = ( \processador|ULA1|Add1~29_sumout\ & ( !\processador|decoderInstru1|saida[4]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \processador|ULA1|saida[7]~8_combout\);

-- Location: FF_X12_Y3_N52
\processador|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~29_sumout\,
	asdata => \processador|ULA1|saida[7]~8_combout\,
	sload => \processador|decoderInstru1|ALT_INV_Equal8~0_combout\,
	ena => \processador|decoderInstru1|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(7));

-- Location: MLABCELL_X13_Y3_N48
\processador|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~29_sumout\ = SUM(( \processador|REGA|DOUT\(7) ) + ( (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\ & \ROM1|memROM~0_combout\)) ) + ( \processador|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111100111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|REGA|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	cin => \processador|ULA1|Add1~26\,
	sumout => \processador|ULA1|Add1~29_sumout\);

-- Location: FF_X13_Y3_N8
\processador|FLAG|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|FLAG|DOUT~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|FLAG|DOUT~q\);

-- Location: MLABCELL_X13_Y3_N3
\processador|FLAG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|FLAG|DOUT~0_combout\ = ( \ROM1|memROM~0_combout\ & ( \processador|FLAG|DOUT~q\ ) ) # ( !\ROM1|memROM~0_combout\ & ( (\processador|FLAG|DOUT~q\ & (((!\ROM1|memROM~1_combout\) # (!\ROM1|memROM~2_combout\)) # (\ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001101000011110000110100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \processador|FLAG|ALT_INV_DOUT~q\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \processador|FLAG|DOUT~0_combout\);

-- Location: MLABCELL_X13_Y3_N0
\processador|decoderInstru1|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida~0_combout\ = ( !\ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~3_combout\ & (\ROM1|memROM~1_combout\ & \ROM1|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \processador|decoderInstru1|saida~0_combout\);

-- Location: MLABCELL_X13_Y3_N21
\processador|FLAG|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|FLAG|DOUT~1_combout\ = ( !\processador|ULA1|Add1~9_sumout\ & ( (!\processador|ULA1|Add1~1_sumout\ & (!\processador|ULA1|Add1~5_sumout\ & (\processador|decoderInstru1|saida~0_combout\ & !\processador|ULA1|Add1~13_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA1|ALT_INV_Add1~1_sumout\,
	datab => \processador|ULA1|ALT_INV_Add1~5_sumout\,
	datac => \processador|decoderInstru1|ALT_INV_saida~0_combout\,
	datad => \processador|ULA1|ALT_INV_Add1~13_sumout\,
	dataf => \processador|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \processador|FLAG|DOUT~1_combout\);

-- Location: MLABCELL_X13_Y3_N6
\processador|FLAG|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|FLAG|DOUT~2_combout\ = ( \processador|FLAG|DOUT~1_combout\ & ( \processador|ULA1|Add1~21_sumout\ & ( \processador|FLAG|DOUT~0_combout\ ) ) ) # ( !\processador|FLAG|DOUT~1_combout\ & ( \processador|ULA1|Add1~21_sumout\ & ( 
-- \processador|FLAG|DOUT~0_combout\ ) ) ) # ( \processador|FLAG|DOUT~1_combout\ & ( !\processador|ULA1|Add1~21_sumout\ & ( ((!\processador|ULA1|Add1~29_sumout\ & (!\processador|ULA1|Add1~25_sumout\ & !\processador|ULA1|Add1~17_sumout\))) # 
-- (\processador|FLAG|DOUT~0_combout\) ) ) ) # ( !\processador|FLAG|DOUT~1_combout\ & ( !\processador|ULA1|Add1~21_sumout\ & ( \processador|FLAG|DOUT~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111100011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA1|ALT_INV_Add1~29_sumout\,
	datab => \processador|ULA1|ALT_INV_Add1~25_sumout\,
	datac => \processador|FLAG|ALT_INV_DOUT~0_combout\,
	datad => \processador|ULA1|ALT_INV_Add1~17_sumout\,
	datae => \processador|FLAG|ALT_INV_DOUT~1_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \processador|FLAG|DOUT~2_combout\);

-- Location: FF_X13_Y3_N7
\processador|FLAG|DOUT~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|FLAG|DOUT~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|FLAG|DOUT~DUPLICATE_q\);

-- Location: LABCELL_X14_Y3_N3
\processador|LOG_DESVIO|SelMuxPC[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ = ( \processador|FLAG|DOUT~DUPLICATE_q\ & ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\ & !\ROM1|memROM~0_combout\)) ) ) ) # ( !\processador|FLAG|DOUT~DUPLICATE_q\ & ( 
-- \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\ & !\ROM1|memROM~0_combout\)) ) ) ) # ( \processador|FLAG|DOUT~DUPLICATE_q\ & ( !\ROM1|memROM~1_combout\ & ( (\ROM1|memROM~3_combout\ & \ROM1|memROM~0_combout\) ) ) ) # ( 
-- !\processador|FLAG|DOUT~DUPLICATE_q\ & ( !\ROM1|memROM~1_combout\ & ( (\ROM1|memROM~2_combout\ & (\ROM1|memROM~3_combout\ & \ROM1|memROM~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000110000001110000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datae => \processador|FLAG|ALT_INV_DOUT~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \processador|LOG_DESVIO|SelMuxPC[0]~0_combout\);

-- Location: FF_X16_Y3_N34
\processador|REG_RET|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~5_sumout\,
	ena => \processador|decoderInstru1|saida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(1));

-- Location: LABCELL_X14_Y3_N15
\processador|MUX2|MUX_OUT[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[1]~1_combout\ = ( \processador|incrementaPC|Add0~5_sumout\ & ( (!\processador|decoderInstru1|saida~5_combout\ & ((!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\) # ((!\ROM1|memROM~5_combout\)))) # 
-- (\processador|decoderInstru1|saida~5_combout\ & (((\processador|REG_RET|DOUT\(1))))) ) ) # ( !\processador|incrementaPC|Add0~5_sumout\ & ( (!\processador|decoderInstru1|saida~5_combout\ & (\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & 
-- (!\ROM1|memROM~5_combout\))) # (\processador|decoderInstru1|saida~5_combout\ & (((\processador|REG_RET|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110101001000000111010110101000111111011010100011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~5_combout\,
	datab => \processador|LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \processador|REG_RET|ALT_INV_DOUT\(1),
	dataf => \processador|incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \processador|MUX2|MUX_OUT[1]~1_combout\);

-- Location: FF_X14_Y3_N16
\processador|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|MUX2|MUX_OUT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(1));

-- Location: LABCELL_X14_Y3_N48
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( \processador|PC|DOUT\(0) & ( (\processador|PC|DOUT\(1) & ((\processador|PC|DOUT\(2)) # (\processador|PC|DOUT[3]~DUPLICATE_q\))) ) ) # ( !\processador|PC|DOUT\(0) & ( (!\processador|PC|DOUT\(1) & 
-- (!\processador|PC|DOUT[3]~DUPLICATE_q\ & !\processador|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X14_Y3_N51
\processador|decoderInstru1|saida~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida~5_combout\ = ( \ROM1|memROM~2_combout\ & ( (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~0_combout\ & \ROM1|memROM~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \processador|decoderInstru1|saida~5_combout\);

-- Location: FF_X16_Y3_N31
\processador|REG_RET|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~1_sumout\,
	ena => \processador|decoderInstru1|saida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(0));

-- Location: LABCELL_X14_Y3_N12
\processador|MUX2|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[0]~0_combout\ = ( \ROM1|memROM~4_combout\ & ( (!\processador|decoderInstru1|saida~5_combout\ & (((\processador|incrementaPC|Add0~1_sumout\)) # (\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\))) # 
-- (\processador|decoderInstru1|saida~5_combout\ & (((\processador|REG_RET|DOUT\(0))))) ) ) # ( !\ROM1|memROM~4_combout\ & ( (!\processador|decoderInstru1|saida~5_combout\ & (!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & 
-- ((\processador|incrementaPC|Add0~1_sumout\)))) # (\processador|decoderInstru1|saida~5_combout\ & (((\processador|REG_RET|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~5_combout\,
	datab => \processador|LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datac => \processador|REG_RET|ALT_INV_DOUT\(0),
	datad => \processador|incrementaPC|ALT_INV_Add0~1_sumout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \processador|MUX2|MUX_OUT[0]~0_combout\);

-- Location: FF_X14_Y3_N14
\processador|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|MUX2|MUX_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[0]~DUPLICATE_q\);

-- Location: FF_X16_Y3_N2
\processador|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|MUX2|MUX_OUT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y3_N42
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

-- Location: FF_X16_Y3_N43
\processador|REG_RET|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~17_sumout\,
	ena => \processador|decoderInstru1|saida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(4));

-- Location: LABCELL_X16_Y3_N0
\processador|MUX2|MUX_OUT[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[4]~4_combout\ = ( \processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & ( \processador|REG_RET|DOUT\(4) & ( (\ROM1|memROM~8_combout\) # (\processador|decoderInstru1|saida~5_combout\) ) ) ) # ( 
-- !\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & ( \processador|REG_RET|DOUT\(4) & ( (\processador|incrementaPC|Add0~17_sumout\) # (\processador|decoderInstru1|saida~5_combout\) ) ) ) # ( \processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & ( 
-- !\processador|REG_RET|DOUT\(4) & ( (!\processador|decoderInstru1|saida~5_combout\ & \ROM1|memROM~8_combout\) ) ) ) # ( !\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & ( !\processador|REG_RET|DOUT\(4) & ( (!\processador|decoderInstru1|saida~5_combout\ & 
-- \processador|incrementaPC|Add0~17_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000011000000110000110011111111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|decoderInstru1|ALT_INV_saida~5_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \processador|incrementaPC|ALT_INV_Add0~17_sumout\,
	datae => \processador|LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	dataf => \processador|REG_RET|ALT_INV_DOUT\(4),
	combout => \processador|MUX2|MUX_OUT[4]~4_combout\);

-- Location: FF_X16_Y3_N1
\processador|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|MUX2|MUX_OUT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(4));

-- Location: LABCELL_X16_Y3_N45
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

-- Location: FF_X16_Y3_N46
\processador|REG_RET|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~21_sumout\,
	ena => \processador|decoderInstru1|saida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(5));

-- Location: LABCELL_X16_Y3_N21
\processador|MUX2|MUX_OUT[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[5]~5_combout\ = ( \processador|incrementaPC|Add0~21_sumout\ & ( \processador|decoderInstru1|saida~5_combout\ & ( \processador|REG_RET|DOUT\(5) ) ) ) # ( !\processador|incrementaPC|Add0~21_sumout\ & ( 
-- \processador|decoderInstru1|saida~5_combout\ & ( \processador|REG_RET|DOUT\(5) ) ) ) # ( \processador|incrementaPC|Add0~21_sumout\ & ( !\processador|decoderInstru1|saida~5_combout\ & ( (!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\) # 
-- (\ROM1|memROM~8_combout\) ) ) ) # ( !\processador|incrementaPC|Add0~21_sumout\ & ( !\processador|decoderInstru1|saida~5_combout\ & ( (\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & \ROM1|memROM~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datab => \processador|REG_RET|ALT_INV_DOUT\(5),
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \processador|incrementaPC|ALT_INV_Add0~21_sumout\,
	dataf => \processador|decoderInstru1|ALT_INV_saida~5_combout\,
	combout => \processador|MUX2|MUX_OUT[5]~5_combout\);

-- Location: FF_X16_Y3_N23
\processador|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|MUX2|MUX_OUT[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(5));

-- Location: FF_X16_Y3_N26
\processador|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|MUX2|MUX_OUT[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y3_N48
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

-- Location: FF_X16_Y3_N50
\processador|REG_RET|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~25_sumout\,
	ena => \processador|decoderInstru1|saida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(6));

-- Location: LABCELL_X16_Y3_N24
\processador|MUX2|MUX_OUT[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[6]~6_combout\ = ( !\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & ( \processador|REG_RET|DOUT\(6) & ( (\processador|incrementaPC|Add0~25_sumout\) # (\processador|decoderInstru1|saida~5_combout\) ) ) ) # ( 
-- !\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & ( !\processador|REG_RET|DOUT\(6) & ( (!\processador|decoderInstru1|saida~5_combout\ & \processador|incrementaPC|Add0~25_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000111111001111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|decoderInstru1|ALT_INV_saida~5_combout\,
	datac => \processador|incrementaPC|ALT_INV_Add0~25_sumout\,
	datae => \processador|LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	dataf => \processador|REG_RET|ALT_INV_DOUT\(6),
	combout => \processador|MUX2|MUX_OUT[6]~6_combout\);

-- Location: FF_X16_Y3_N25
\processador|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|MUX2|MUX_OUT[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(6));

-- Location: LABCELL_X16_Y3_N51
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

-- Location: FF_X16_Y3_N53
\processador|REG_RET|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~29_sumout\,
	ena => \processador|decoderInstru1|saida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(7));

-- Location: LABCELL_X16_Y3_N6
\processador|MUX2|MUX_OUT[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[7]~7_combout\ = ( \processador|REG_RET|DOUT\(7) & ( (!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & ((\processador|incrementaPC|Add0~29_sumout\) # (\processador|decoderInstru1|saida~5_combout\))) ) ) # ( 
-- !\processador|REG_RET|DOUT\(7) & ( (!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & (!\processador|decoderInstru1|saida~5_combout\ & \processador|incrementaPC|Add0~29_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000100010101010100010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida~5_combout\,
	datad => \processador|incrementaPC|ALT_INV_Add0~29_sumout\,
	dataf => \processador|REG_RET|ALT_INV_DOUT\(7),
	combout => \processador|MUX2|MUX_OUT[7]~7_combout\);

-- Location: FF_X16_Y3_N8
\processador|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|MUX2|MUX_OUT[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(7));

-- Location: LABCELL_X16_Y3_N54
\processador|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~33_sumout\ = SUM(( \processador|PC|DOUT\(8) ) + ( GND ) + ( \processador|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT\(8),
	cin => \processador|incrementaPC|Add0~30\,
	sumout => \processador|incrementaPC|Add0~33_sumout\);

-- Location: FF_X16_Y3_N55
\processador|REG_RET|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~33_sumout\,
	ena => \processador|decoderInstru1|saida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(8));

-- Location: LABCELL_X16_Y3_N9
\processador|MUX2|MUX_OUT[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[8]~8_combout\ = ( \processador|decoderInstru1|saida~5_combout\ & ( (!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & \processador|REG_RET|DOUT\(8)) ) ) # ( !\processador|decoderInstru1|saida~5_combout\ & ( 
-- (!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & \processador|incrementaPC|Add0~33_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datac => \processador|REG_RET|ALT_INV_DOUT\(8),
	datad => \processador|incrementaPC|ALT_INV_Add0~33_sumout\,
	dataf => \processador|decoderInstru1|ALT_INV_saida~5_combout\,
	combout => \processador|MUX2|MUX_OUT[8]~8_combout\);

-- Location: FF_X16_Y3_N10
\processador|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|MUX2|MUX_OUT[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(8));

-- Location: FF_X12_Y3_N38
\processador|REGA|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~9_sumout\,
	asdata => \processador|ULA1|saida[2]~3_combout\,
	sload => \processador|decoderInstru1|ALT_INV_Equal8~0_combout\,
	ena => \processador|decoderInstru1|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT[2]~DUPLICATE_q\);

-- Location: FF_X12_Y3_N44
\processador|REGA|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~17_sumout\,
	asdata => \processador|ULA1|saida[4]~5_combout\,
	sload => \processador|decoderInstru1|ALT_INV_Equal8~0_combout\,
	ena => \processador|decoderInstru1|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT[4]~DUPLICATE_q\);

-- Location: FF_X12_Y3_N47
\processador|REGA|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~21_sumout\,
	asdata => \processador|ULA1|saida[5]~6_combout\,
	sload => \processador|decoderInstru1|ALT_INV_Equal8~0_combout\,
	ena => \processador|decoderInstru1|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT[5]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y3_N33
\processador|decoderInstru1|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal5~0_combout\ = ( !\ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~3_combout\ & (\ROM1|memROM~0_combout\ & !\ROM1|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \processador|decoderInstru1|Equal5~0_combout\);

-- Location: LABCELL_X12_Y3_N54
\processador|decoderInstru1|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida~3_combout\ = ( \ROM1|memROM~1_combout\ ) # ( !\ROM1|memROM~1_combout\ & ( ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~0_combout\)) # (\ROM1|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110011111111111111001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \processador|decoderInstru1|saida~3_combout\);

-- Location: LABCELL_X12_Y3_N18
\processador|decoderInstru1|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal3~0_combout\ = ( !\ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~3_combout\ & \ROM1|memROM~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \processador|decoderInstru1|Equal3~0_combout\);

-- Location: LABCELL_X14_Y3_N27
\processador|decoderInstru1|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal4~0_combout\ = ( !\ROM1|memROM~1_combout\ & ( (\ROM1|memROM~2_combout\ & (\ROM1|memROM~0_combout\ & \ROM1|memROM~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \processador|decoderInstru1|Equal4~0_combout\);

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

-- Location: MLABCELL_X49_Y9_N0
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


